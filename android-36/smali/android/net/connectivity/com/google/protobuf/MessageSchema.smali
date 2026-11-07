.class final Landroid/net/connectivity/com/google/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "MessageSchema.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/Schema;


# annotations
.annotation runtime Landroid/net/connectivity/com/google/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/com/google/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_INT_ARRAY:[I

.field private static final blacklist ENFORCE_UTF8_MASK:I = 0x20000000

.field private static final blacklist FIELD_TYPE_MASK:I = 0xff00000

.field private static final blacklist INTS_PER_FIELD:I = 0x3

.field private static final blacklist NO_PRESENCE_SENTINEL:I = 0xfffff

.field private static final blacklist OFFSET_BITS:I = 0x14

.field private static final blacklist OFFSET_MASK:I = 0xfffff

.field static final blacklist ONEOF_TYPE_OFFSET:I = 0x33

.field private static final blacklist REQUIRED_MASK:I = 0x10000000

.field private static final blacklist UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private final blacklist buffer:[I

.field private final blacklist checkInitializedCount:I

.field private final blacklist defaultInstance:Landroid/net/connectivity/com/google/protobuf/MessageLite;

.field private final blacklist extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist hasExtensions:Z

.field private final blacklist intArray:[I

.field private final blacklist listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

.field private final blacklist lite:Z

.field private final blacklist mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

.field private final blacklist maxFieldNumber:I

.field private final blacklist minFieldNumber:I

.field private final blacklist newInstanceSchema:Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;

.field private final blacklist objects:[Ljava/lang/Object;

.field private final blacklist proto3:Z

.field private final blacklist repeatedFieldOffsetStart:I

.field private final blacklist unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private final blacklist useCachedSizeField:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 95
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 104
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor blacklist <init>([I[Ljava/lang/Object;IILandroid/net/connectivity/com/google/protobuf/MessageLite;ZZ[IIILandroid/net/connectivity/com/google/protobuf/NewInstanceSchema;Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;)V
    .registers 32
    .param p1, "buffer"    # [I
    .param p2, "objects"    # [Ljava/lang/Object;
    .param p3, "minFieldNumber"    # I
    .param p4, "maxFieldNumber"    # I
    .param p5, "defaultInstance"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .param p6, "proto3"    # Z
    .param p7, "useCachedSizeField"    # Z
    .param p8, "intArray"    # [I
    .param p9, "checkInitialized"    # I
    .param p10, "mapFieldPositions"    # I
    .param p11, "newInstanceSchema"    # Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;
    .param p12, "listFieldSchema"    # Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;
    .param p15, "mapFieldSchema"    # Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Landroid/net/connectivity/com/google/protobuf/MessageLite;",
            "ZZ[III",
            "Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;",
            "Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;",
            "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<",
            "**>;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<",
            "*>;",
            "Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;",
            ")V"
        }
    .end annotation

    .line 197
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p13, "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<**>;"
    .local p14, "extensionSchema":Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;, "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p14

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 198
    move-object/from16 v3, p1

    iput-object v3, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    .line 199
    move-object/from16 v4, p2

    iput-object v4, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 200
    move/from16 v5, p3

    iput v5, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->minFieldNumber:I

    .line 201
    move/from16 v6, p4

    iput v6, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->maxFieldNumber:I

    .line 203
    instance-of v7, v1, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    iput-boolean v7, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->lite:Z

    .line 204
    move/from16 v7, p6

    iput-boolean v7, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->proto3:Z

    .line 205
    if-eqz v2, :cond_2b

    invoke-virtual {v2, v1}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->hasExtensions(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v8, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v8, 0x0

    :goto_2c
    iput-boolean v8, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->hasExtensions:Z

    .line 206
    move/from16 v8, p7

    iput-boolean v8, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 208
    move-object/from16 v9, p8

    iput-object v9, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intArray:[I

    .line 209
    move/from16 v10, p9

    iput v10, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->checkInitializedCount:I

    .line 210
    move/from16 v11, p10

    iput v11, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 212
    move-object/from16 v12, p11

    iput-object v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->newInstanceSchema:Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;

    .line 213
    move-object/from16 v13, p12

    iput-object v13, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 214
    move-object/from16 v14, p13

    iput-object v14, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    .line 215
    iput-object v2, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    .line 216
    iput-object v1, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->defaultInstance:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 217
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    .line 218
    return-void
.end method

.method private blacklist arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 6
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 5918
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist booleanAt(Ljava/lang/Object;J)Z
    .registers 4
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 5893
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method private static blacklist checkMutable(Ljava/lang/Object;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/Object;

    .line 5871
    invoke-static {p0}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5874
    return-void

    .line 5872
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mutating immutable message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist decodeMapEntry([BIILandroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I
    .registers 22
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p6, "registers"    # Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([BII",
            "Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4447
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p4, "metadata":Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;, "Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .local p5, "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object/from16 v1, p1

    move-object/from16 v7, p4

    move-object/from16 v6, p6

    move/from16 v0, p2

    invoke-static {v1, v0, v6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4448
    .end local p2    # "position":I
    .local v0, "position":I
    iget v8, v6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 4449
    .local v8, "length":I
    if-ltz v8, :cond_8b

    sub-int v2, p3, v0

    if-gt v8, v2, :cond_8b

    .line 4452
    add-int v9, v0, v8

    .line 4453
    .local v9, "end":I
    iget-object v2, v7, Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 4454
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, v7, Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    move-object v10, v2

    move-object v11, v3

    .line 4455
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .local v10, "key":Ljava/lang/Object;, "TK;"
    .local v11, "value":Ljava/lang/Object;, "TV;"
    :goto_1c
    if-ge v0, v9, :cond_7a

    .line 4456
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "position":I
    .local v2, "position":I
    aget-byte v0, v1, v0

    .line 4457
    .local v0, "tag":I
    if-gez v0, :cond_2c

    .line 4458
    invoke-static {v0, v1, v2, v6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4459
    iget v0, v6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->int1:I

    move v12, v0

    goto :goto_2d

    .line 4457
    :cond_2c
    move v12, v0

    .line 4461
    .end local v0    # "tag":I
    .local v12, "tag":I
    :goto_2d
    ushr-int/lit8 v13, v12, 0x3

    .line 4462
    .local v13, "fieldNumber":I
    and-int/lit8 v14, v12, 0x7

    .line 4463
    .local v14, "wireType":I
    packed-switch v13, :pswitch_data_94

    move/from16 v3, p3

    goto :goto_75

    .line 4473
    :pswitch_37
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;->valueType:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    if-ne v14, v0, :cond_54

    .line 4474
    iget-object v4, v7, Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;->valueType:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 4480
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 4475
    move-object v0, p0

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->decodeMapEntryValue([BIILandroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4482
    iget-object v11, v6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4483
    move-object/from16 v1, p1

    move v0, v2

    goto :goto_1c

    .line 4473
    :cond_54
    move-object/from16 v1, p1

    move/from16 v3, p3

    goto :goto_75

    .line 4465
    :pswitch_59
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;->keyType:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    if-ne v14, v0, :cond_71

    .line 4466
    iget-object v4, v7, Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;->keyType:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    .line 4467
    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->decodeMapEntryValue([BIILandroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4468
    iget-object v10, v6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4469
    move v0, v2

    goto :goto_1c

    .line 4465
    :cond_71
    move-object/from16 v1, p1

    move/from16 v3, p3

    .line 4489
    :goto_75
    invoke-static {v12, v1, v2, v3, v6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->skipField(I[BIILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4490
    .end local v2    # "position":I
    .end local v12    # "tag":I
    .end local v13    # "fieldNumber":I
    .end local v14    # "wireType":I
    .local v0, "position":I
    goto :goto_1c

    .line 4491
    :cond_7a
    move/from16 v3, p3

    if-ne v0, v9, :cond_84

    .line 4494
    move-object/from16 v2, p5

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4495
    return v9

    .line 4492
    :cond_84
    move-object/from16 v2, p5

    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->parseFailure()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .line 4449
    .end local v9    # "end":I
    .end local v10    # "key":Ljava/lang/Object;, "TK;"
    .end local v11    # "value":Ljava/lang/Object;, "TV;"
    :cond_8b
    move/from16 v3, p3

    move-object/from16 v2, p5

    .line 4450
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_59
        :pswitch_37
    .end packed-switch
.end method

.method private blacklist decodeMapEntryValue([BIILandroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I
    .registers 11
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p4, "fieldType"    # Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;
    .param p6, "registers"    # Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4379
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p5, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p4}, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b4

    .line 4433
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4430
    :pswitch_13
    invoke-static {p1, p2, p6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4431
    goto/16 :goto_b3

    .line 4426
    :pswitch_19
    invoke-static {p1, p2, p6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint64([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4427
    iget-wide v0, p6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4428
    goto/16 :goto_b3

    .line 4422
    :pswitch_2b
    invoke-static {p1, p2, p6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4423
    iget v0, p6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4424
    goto/16 :goto_b3

    .line 4419
    :pswitch_3d
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->getInstance()Landroid/net/connectivity/com/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v0

    .line 4418
    invoke-static {v0, p1, p2, p3, p6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeMessageField(Landroid/net/connectivity/com/google/protobuf/Schema;[BIILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4420
    goto :goto_b3

    .line 4413
    :pswitch_4a
    invoke-static {p1, p2, p6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint64([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4414
    iget-wide v0, p6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4415
    goto :goto_b3

    .line 4408
    :pswitch_57
    invoke-static {p1, p2, p6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4409
    iget v0, p6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4410
    goto :goto_b3

    .line 4402
    :pswitch_64
    invoke-static {p1, p2}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4403
    add-int/lit8 p2, p2, 0x4

    .line 4404
    goto :goto_b3

    .line 4398
    :pswitch_71
    invoke-static {p1, p2}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4399
    add-int/lit8 p2, p2, 0x8

    .line 4400
    goto :goto_b3

    .line 4393
    :pswitch_7e
    invoke-static {p1, p2}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4394
    add-int/lit8 p2, p2, 0x4

    .line 4395
    goto :goto_b3

    .line 4388
    :pswitch_8b
    invoke-static {p1, p2}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4389
    add-int/lit8 p2, p2, 0x8

    .line 4390
    goto :goto_b3

    .line 4385
    :pswitch_98
    invoke-static {p1, p2, p6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeBytes([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4386
    goto :goto_b3

    .line 4381
    :pswitch_9d
    invoke-static {p1, p2, p6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint64([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4382
    iget-wide v0, p6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ab

    const/4 v0, 0x1

    goto :goto_ac

    :cond_ab
    const/4 v0, 0x0

    :goto_ac
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p6, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4383
    nop

    .line 4435
    :goto_b3
    return p2

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_98
        :pswitch_8b
        :pswitch_7e
        :pswitch_7e
        :pswitch_71
        :pswitch_71
        :pswitch_64
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_4a
        :pswitch_4a
        :pswitch_3d
        :pswitch_2b
        :pswitch_19
        :pswitch_13
    .end packed-switch
.end method

.method private static blacklist doubleAt(Ljava/lang/Object;J)D
    .registers 5
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 5877
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist equals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 14
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 820
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 821
    .local v0, "typeAndOffset":I
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 823
    .local v1, "offset":J
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_1da

    .line 945
    return v5

    .line 940
    :pswitch_12
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 942
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 941
    invoke-static {v3, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    move v4, v5

    goto :goto_29

    :cond_28
    nop

    .line 940
    :goto_29
    return v4

    .line 920
    :pswitch_2a
    nop

    .line 921
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 920
    invoke-static {v3, v4}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 917
    :pswitch_38
    nop

    .line 918
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 917
    invoke-static {v3, v4}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 881
    :pswitch_46
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 883
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 882
    invoke-static {v3, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    move v4, v5

    goto :goto_5d

    :cond_5c
    nop

    .line 881
    :goto_5d
    return v4

    .line 878
    :pswitch_5e
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 879
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_72

    move v4, v5

    goto :goto_73

    :cond_72
    nop

    .line 878
    :goto_73
    return v4

    .line 875
    :pswitch_74
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 876
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_86

    move v4, v5

    goto :goto_87

    :cond_86
    nop

    .line 875
    :goto_87
    return v4

    .line 872
    :pswitch_88
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 873
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_9c

    move v4, v5

    goto :goto_9d

    :cond_9c
    nop

    .line 872
    :goto_9d
    return v4

    .line 869
    :pswitch_9e
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 870
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_b0

    move v4, v5

    goto :goto_b1

    :cond_b0
    nop

    .line 869
    :goto_b1
    return v4

    .line 866
    :pswitch_b2
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 867
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_c4

    move v4, v5

    goto :goto_c5

    :cond_c4
    nop

    .line 866
    :goto_c5
    return v4

    .line 863
    :pswitch_c6
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 864
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_d8

    move v4, v5

    goto :goto_d9

    :cond_d8
    nop

    .line 863
    :goto_d9
    return v4

    .line 859
    :pswitch_da
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 861
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 860
    invoke-static {v3, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    move v4, v5

    goto :goto_f1

    :cond_f0
    nop

    .line 859
    :goto_f1
    return v4

    .line 855
    :pswitch_f2
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 857
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 856
    invoke-static {v3, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    move v4, v5

    goto :goto_109

    :cond_108
    nop

    .line 855
    :goto_109
    return v4

    .line 851
    :pswitch_10a
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_120

    .line 853
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 852
    invoke-static {v3, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    move v4, v5

    goto :goto_121

    :cond_120
    nop

    .line 851
    :goto_121
    return v4

    .line 848
    :pswitch_122
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_134

    .line 849
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v6

    if-ne v3, v6, :cond_134

    move v4, v5

    goto :goto_135

    :cond_134
    nop

    .line 848
    :goto_135
    return v4

    .line 845
    :pswitch_136
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_148

    .line 846
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_148

    move v4, v5

    goto :goto_149

    :cond_148
    nop

    .line 845
    :goto_149
    return v4

    .line 842
    :pswitch_14a
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_15e

    .line 843
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_15e

    move v4, v5

    goto :goto_15f

    :cond_15e
    nop

    .line 842
    :goto_15f
    return v4

    .line 839
    :pswitch_160
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_172

    .line 840
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_172

    move v4, v5

    goto :goto_173

    :cond_172
    nop

    .line 839
    :goto_173
    return v4

    .line 836
    :pswitch_174
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_188

    .line 837
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_188

    move v4, v5

    goto :goto_189

    :cond_188
    nop

    .line 836
    :goto_189
    return v4

    .line 833
    :pswitch_18a
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_19e

    .line 834
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_19e

    move v4, v5

    goto :goto_19f

    :cond_19e
    nop

    .line 833
    :goto_19f
    return v4

    .line 829
    :pswitch_1a0
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1ba

    .line 830
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 831
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    if-ne v3, v6, :cond_1ba

    move v4, v5

    goto :goto_1bb

    :cond_1ba
    nop

    .line 829
    :goto_1bb
    return v4

    .line 825
    :pswitch_1bc
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1d8

    .line 826
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 827
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_1d8

    move v4, v5

    goto :goto_1d9

    :cond_1d8
    nop

    .line 825
    :goto_1d9
    return v4

    :pswitch_data_1da
    .packed-switch 0x0
        :pswitch_1bc
        :pswitch_1a0
        :pswitch_18a
        :pswitch_174
        :pswitch_160
        :pswitch_14a
        :pswitch_136
        :pswitch_122
        :pswitch_10a
        :pswitch_f2
        :pswitch_da
        :pswitch_c6
        :pswitch_b2
        :pswitch_9e
        :pswitch_88
        :pswitch_74
        :pswitch_5e
        :pswitch_46
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_2a
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method private blacklist filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 17
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "pos"    # I
    .param p5, "containerMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Ljava/lang/Object;",
            ")TUB;"
        }
    .end annotation

    .line 5598
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p3, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p4, "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    invoke-direct {p0, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v2

    .line 5599
    .local v2, "fieldNumber":I
    invoke-direct {p0, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    .line 5600
    .local v8, "offset":J
    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 5601
    .local v10, "mapField":Ljava/lang/Object;
    if-nez v10, :cond_13

    .line 5602
    return-object p3

    .line 5604
    :cond_13
    invoke-direct {p0, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    move-result-object v4

    .line 5605
    .local v4, "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    if-nez v4, :cond_1a

    .line 5606
    return-object p3

    .line 5608
    :cond_1a
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    invoke-interface {v0, v10}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 5610
    .local v3, "mapData":Ljava/util/Map;, "Ljava/util/Map<**>;"
    nop

    .line 5611
    move-object v0, p0

    move v1, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->filterUnknownEnumMap(IILjava/util/Map;Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 5619
    return-object p3
.end method

.method private blacklist filterUnknownEnumMap(IILjava/util/Map;Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .param p1, "pos"    # I
    .param p2, "number"    # I
    .param p4, "enumVerifier"    # Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    .param p7, "containerMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Ljava/lang/Object;",
            ")TUB;"
        }
    .end annotation

    .line 5631
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p3, "mapData":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p5, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p6, "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    .line 5632
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    .line 5633
    .local v0, "metadata":Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;, "Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 5634
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5635
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p4, v3}, Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v3

    if-nez v3, :cond_67

    .line 5636
    if-nez p5, :cond_34

    .line 5637
    invoke-virtual {p6, p7}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 5639
    :cond_34
    nop

    .line 5640
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MapEntryLite;->computeSerializedSize(Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 5641
    .local v3, "entrySize":I
    invoke-static {v3}, Landroid/net/connectivity/com/google/protobuf/ByteString;->newCodedBuilder(I)Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;

    move-result-object v4

    .line 5642
    .local v4, "codedBuilder":Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;
    invoke-virtual {v4}, Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;->getCodedOutput()Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;

    move-result-object v5

    .line 5644
    .local v5, "codedOutput":Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;
    :try_start_49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v0, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MapEntryLite;->writeTo(Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_54} :catch_60

    .line 5648
    nop

    .line 5649
    invoke-virtual {v4}, Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;->build()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {p6, p5, p2, v6}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 5650
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_67

    .line 5645
    :catch_60
    move-exception v6

    .line 5647
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 5652
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "entrySize":I
    .end local v4    # "codedBuilder":Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;
    .end local v5    # "codedOutput":Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    :cond_67
    :goto_67
    goto :goto_12

    .line 5653
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_68
    return-object p5
.end method

.method private static blacklist floatAt(Ljava/lang/Object;J)F
    .registers 4
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 5881
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method private blacklist getEnumFieldVerifier(I)Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    .registers 4
    .param p1, "pos"    # I

    .line 4862
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method private blacklist getMapFieldDefaultEntry(I)Ljava/lang/Object;
    .registers 4
    .param p1, "pos"    # I

    .line 4858
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private blacklist getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;
    .registers 7
    .param p1, "pos"    # I

    .line 4847
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    div-int/lit8 v0, p1, 0x3

    mul-int/lit8 v0, v0, 0x2

    .line 4848
    .local v0, "index":I
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/Schema;

    .line 4849
    .local v1, "schema":Landroid/net/connectivity/com/google/protobuf/Schema;
    if-eqz v1, :cond_d

    .line 4850
    return-object v1

    .line 4852
    :cond_d
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->getInstance()Landroid/net/connectivity/com/google/protobuf/Protobuf;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v2, v3}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v1

    .line 4853
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 4854
    return-object v1
.end method

.method static blacklist getMutableUnknownFields(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;
    .registers 3
    .param p0, "message"    # Ljava/lang/Object;

    .line 4362
    move-object v0, p0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->unknownFields:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;

    .line 4363
    .local v0, "unknownFields":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 4364
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;->newInstance()Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    .line 4365
    move-object v1, p0

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    iput-object v0, v1, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->unknownFields:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;

    .line 4367
    :cond_14
    return-object v0
.end method

.method private blacklist getSerializedSizeProto2(Ljava/lang/Object;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1466
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1468
    .local v2, "size":I
    sget-object v3, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 1469
    .local v3, "unsafe":Lsun/misc/Unsafe;
    const v4, 0xfffff

    .line 1470
    .local v4, "currentPresenceFieldOffset":I
    const/4 v5, 0x0

    .line 1471
    .local v5, "currentPresenceField":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_c
    iget-object v7, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    array-length v7, v7

    if-ge v6, v7, :cond_686

    .line 1472
    invoke-direct {v0, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v7

    .line 1473
    .local v7, "typeAndOffset":I
    invoke-direct {v0, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v8

    .line 1475
    .local v8, "number":I
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->type(I)I

    move-result v9

    .line 1476
    .local v9, "fieldType":I
    const/4 v10, 0x0

    .line 1477
    .local v10, "presenceMaskAndOffset":I
    const/4 v11, 0x0

    .line 1478
    .local v11, "presenceMask":I
    const/16 v12, 0x11

    const v13, 0xfffff

    const/4 v14, 0x1

    if-gt v9, v12, :cond_3c

    .line 1479
    iget-object v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v15, v6, 0x2

    aget v10, v12, v15

    .line 1480
    and-int v12, v10, v13

    .line 1481
    .local v12, "presenceFieldOffset":I
    ushr-int/lit8 v13, v10, 0x14

    shl-int v11, v14, v13

    .line 1482
    if-eq v12, v4, :cond_3b

    .line 1483
    move v4, v12

    .line 1484
    int-to-long v14, v12

    invoke-virtual {v3, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    .line 1486
    .end local v12    # "presenceFieldOffset":I
    :cond_3b
    goto :goto_58

    :cond_3c
    iget-boolean v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_3b

    sget-object v12, Landroid/net/connectivity/com/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Landroid/net/connectivity/com/google/protobuf/FieldType;

    .line 1487
    invoke-virtual {v12}, Landroid/net/connectivity/com/google/protobuf/FieldType;->id()I

    move-result v12

    if-lt v9, v12, :cond_58

    sget-object v12, Landroid/net/connectivity/com/google/protobuf/FieldType;->SINT64_LIST_PACKED:Landroid/net/connectivity/com/google/protobuf/FieldType;

    .line 1488
    invoke-virtual {v12}, Landroid/net/connectivity/com/google/protobuf/FieldType;->id()I

    move-result v12

    if-gt v9, v12, :cond_58

    .line 1489
    iget-object v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v14, v6, 0x2

    aget v12, v12, v14

    and-int v10, v12, v13

    .line 1492
    :cond_58
    :goto_58
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v12

    .line 1494
    .local v12, "offset":J
    const/4 v14, 0x0

    packed-switch v9, :pswitch_data_6a0

    move/from16 v16, v2

    .end local v2    # "size":I
    .local v16, "size":I
    goto/16 :goto_680

    .line 2011
    .end local v16    # "size":I
    .restart local v2    # "size":I
    :pswitch_64
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_7c

    .line 2012
    nop

    .line 2015
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 2016
    invoke-direct {v0, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v15

    .line 2013
    invoke-static {v8, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeGroupSize(ILandroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/Schema;)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_682

    .line 2011
    :cond_7c
    move/from16 v16, v2

    goto/16 :goto_680

    .line 2006
    :pswitch_80
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_91

    .line 2007
    invoke-static {v1, v12, v13}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_682

    .line 2006
    :cond_91
    move/from16 v16, v2

    goto/16 :goto_680

    .line 2001
    :pswitch_95
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_a6

    .line 2002
    invoke-static {v1, v12, v13}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_682

    .line 2001
    :cond_a6
    move/from16 v16, v2

    goto/16 :goto_680

    .line 1996
    :pswitch_aa
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_b9

    .line 1997
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_682

    .line 1996
    :cond_b9
    move/from16 v16, v2

    goto/16 :goto_680

    .line 1991
    :pswitch_bd
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v15

    if-eqz v15, :cond_ca

    .line 1992
    invoke-static {v8, v14}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_682

    .line 1991
    :cond_ca
    move/from16 v16, v2

    goto/16 :goto_680

    .line 1986
    :pswitch_ce
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_df

    .line 1987
    invoke-static {v1, v12, v13}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_682

    .line 1986
    :cond_df
    move/from16 v16, v2

    goto/16 :goto_680

    .line 1981
    :pswitch_e3
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_f4

    .line 1982
    invoke-static {v1, v12, v13}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_682

    .line 1981
    :cond_f4
    move/from16 v16, v2

    goto/16 :goto_680

    .line 1974
    :pswitch_f8
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_10c

    .line 1975
    nop

    .line 1977
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 1976
    invoke-static {v8, v14}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeBytesSize(ILandroid/net/connectivity/com/google/protobuf/ByteString;)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_682

    .line 1974
    :cond_10c
    move/from16 v16, v2

    goto/16 :goto_680

    .line 1968
    :pswitch_110
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_125

    .line 1969
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    .line 1970
    .local v14, "value":Ljava/lang/Object;
    invoke-direct {v0, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v15

    invoke-static {v8, v14, v15}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)I

    move-result v15

    add-int/2addr v2, v15

    .line 1971
    .end local v14    # "value":Ljava/lang/Object;
    goto/16 :goto_682

    .line 1968
    :cond_125
    move/from16 v16, v2

    goto/16 :goto_680

    .line 1958
    :pswitch_129
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_14a

    .line 1959
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    .line 1960
    .restart local v14    # "value":Ljava/lang/Object;
    instance-of v15, v14, Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v15, :cond_140

    .line 1961
    move-object v15, v14

    check-cast v15, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-static {v8, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeBytesSize(ILandroid/net/connectivity/com/google/protobuf/ByteString;)I

    move-result v15

    add-int/2addr v2, v15

    goto :goto_148

    .line 1963
    :cond_140
    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    invoke-static {v8, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v15

    add-int/2addr v2, v15

    .line 1965
    .end local v14    # "value":Ljava/lang/Object;
    :goto_148
    goto/16 :goto_682

    .line 1958
    :cond_14a
    move/from16 v16, v2

    goto/16 :goto_680

    .line 1953
    :pswitch_14e
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_15c

    .line 1954
    const/4 v14, 0x1

    invoke-static {v8, v14}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_682

    .line 1953
    :cond_15c
    move/from16 v16, v2

    goto/16 :goto_680

    .line 1948
    :pswitch_160
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v15

    if-eqz v15, :cond_16d

    .line 1949
    invoke-static {v8, v14}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_682

    .line 1948
    :cond_16d
    move/from16 v16, v2

    goto/16 :goto_680

    .line 1943
    :pswitch_171
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_180

    .line 1944
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_682

    .line 1943
    :cond_180
    move/from16 v16, v2

    goto/16 :goto_680

    .line 1938
    :pswitch_184
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_195

    .line 1939
    invoke-static {v1, v12, v13}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_682

    .line 1938
    :cond_195
    move/from16 v16, v2

    goto/16 :goto_680

    .line 1933
    :pswitch_199
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1aa

    .line 1934
    invoke-static {v1, v12, v13}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_682

    .line 1933
    :cond_1aa
    move/from16 v16, v2

    goto/16 :goto_680

    .line 1928
    :pswitch_1ae
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1bf

    .line 1929
    invoke-static {v1, v12, v13}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_682

    .line 1928
    :cond_1bf
    move/from16 v16, v2

    goto/16 :goto_680

    .line 1923
    :pswitch_1c3
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1d1

    .line 1924
    const/4 v14, 0x0

    invoke-static {v8, v14}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_682

    .line 1923
    :cond_1d1
    move/from16 v16, v2

    goto/16 :goto_680

    .line 1918
    :pswitch_1d5
    invoke-direct {v0, v1, v8, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1e4

    .line 1919
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_682

    .line 1918
    :cond_1e4
    move/from16 v16, v2

    goto/16 :goto_680

    .line 1913
    :pswitch_1e8
    iget-object v14, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    .line 1915
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-direct {v0, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v2

    .line 1914
    invoke-interface {v14, v8, v15, v2}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    add-int v2, v16, v2

    .line 1916
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1905
    :pswitch_1fc
    move/from16 v16, v2

    .line 1908
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1909
    invoke-direct {v0, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v14

    .line 1906
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Schema;)I

    move-result v2

    add-int v2, v16, v2

    .line 1910
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1890
    :pswitch_210
    move/from16 v16, v2

    .line 1892
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1891
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v2

    .line 1893
    .local v2, "fieldSize":I
    if-lez v2, :cond_680

    .line 1894
    iget-boolean v14, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_226

    .line 1895
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1897
    :cond_226
    nop

    .line 1898
    invoke-static {v8}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1899
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v2

    add-int v14, v16, v14

    move v2, v14

    .end local v16    # "size":I
    .local v14, "size":I
    goto/16 :goto_682

    .line 1874
    .end local v14    # "size":I
    .local v2, "size":I
    :pswitch_236
    move/from16 v16, v2

    .line 1876
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1875
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v2

    .line 1877
    .local v2, "fieldSize":I
    if-lez v2, :cond_680

    .line 1878
    iget-boolean v14, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_24c

    .line 1879
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1881
    :cond_24c
    nop

    .line 1882
    invoke-static {v8}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1883
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v2

    add-int v14, v16, v14

    move v2, v14

    .end local v16    # "size":I
    .restart local v14    # "size":I
    goto/16 :goto_682

    .line 1858
    .end local v14    # "size":I
    .local v2, "size":I
    :pswitch_25c
    move/from16 v16, v2

    .line 1860
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1859
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v2

    .line 1861
    .local v2, "fieldSize":I
    if-lez v2, :cond_680

    .line 1862
    iget-boolean v14, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_272

    .line 1863
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1865
    :cond_272
    nop

    .line 1866
    invoke-static {v8}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1867
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v2

    add-int v14, v16, v14

    move v2, v14

    .end local v16    # "size":I
    .restart local v14    # "size":I
    goto/16 :goto_682

    .line 1842
    .end local v14    # "size":I
    .local v2, "size":I
    :pswitch_282
    move/from16 v16, v2

    .line 1844
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1843
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v2

    .line 1845
    .local v2, "fieldSize":I
    if-lez v2, :cond_680

    .line 1846
    iget-boolean v14, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_298

    .line 1847
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1849
    :cond_298
    nop

    .line 1850
    invoke-static {v8}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1851
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v2

    add-int v14, v16, v14

    move v2, v14

    .end local v16    # "size":I
    .restart local v14    # "size":I
    goto/16 :goto_682

    .line 1826
    .end local v14    # "size":I
    .local v2, "size":I
    :pswitch_2a8
    move/from16 v16, v2

    .line 1828
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1827
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v2

    .line 1829
    .local v2, "fieldSize":I
    if-lez v2, :cond_680

    .line 1830
    iget-boolean v14, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_2be

    .line 1831
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1833
    :cond_2be
    nop

    .line 1834
    invoke-static {v8}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1835
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v2

    add-int v14, v16, v14

    move v2, v14

    .end local v16    # "size":I
    .restart local v14    # "size":I
    goto/16 :goto_682

    .line 1810
    .end local v14    # "size":I
    .local v2, "size":I
    :pswitch_2ce
    move/from16 v16, v2

    .line 1812
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1811
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v2

    .line 1813
    .local v2, "fieldSize":I
    if-lez v2, :cond_680

    .line 1814
    iget-boolean v14, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_2e4

    .line 1815
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1817
    :cond_2e4
    nop

    .line 1818
    invoke-static {v8}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1819
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v2

    add-int v14, v16, v14

    move v2, v14

    .end local v16    # "size":I
    .restart local v14    # "size":I
    goto/16 :goto_682

    .line 1794
    .end local v14    # "size":I
    .local v2, "size":I
    :pswitch_2f4
    move/from16 v16, v2

    .line 1796
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1795
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v2

    .line 1797
    .local v2, "fieldSize":I
    if-lez v2, :cond_680

    .line 1798
    iget-boolean v14, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_30a

    .line 1799
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1801
    :cond_30a
    nop

    .line 1802
    invoke-static {v8}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1803
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v2

    add-int v14, v16, v14

    move v2, v14

    .end local v16    # "size":I
    .restart local v14    # "size":I
    goto/16 :goto_682

    .line 1778
    .end local v14    # "size":I
    .local v2, "size":I
    :pswitch_31a
    move/from16 v16, v2

    .line 1780
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1779
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v2

    .line 1781
    .local v2, "fieldSize":I
    if-lez v2, :cond_680

    .line 1782
    iget-boolean v14, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_330

    .line 1783
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1785
    :cond_330
    nop

    .line 1786
    invoke-static {v8}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1787
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v2

    add-int v14, v16, v14

    move v2, v14

    .end local v16    # "size":I
    .restart local v14    # "size":I
    goto/16 :goto_682

    .line 1762
    .end local v14    # "size":I
    .local v2, "size":I
    :pswitch_340
    move/from16 v16, v2

    .line 1764
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1763
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v2

    .line 1765
    .local v2, "fieldSize":I
    if-lez v2, :cond_680

    .line 1766
    iget-boolean v14, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_356

    .line 1767
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1769
    :cond_356
    nop

    .line 1770
    invoke-static {v8}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1771
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v2

    add-int v14, v16, v14

    move v2, v14

    .end local v16    # "size":I
    .restart local v14    # "size":I
    goto/16 :goto_682

    .line 1746
    .end local v14    # "size":I
    .local v2, "size":I
    :pswitch_366
    move/from16 v16, v2

    .line 1748
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1747
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v2

    .line 1749
    .local v2, "fieldSize":I
    if-lez v2, :cond_680

    .line 1750
    iget-boolean v14, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_37c

    .line 1751
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1753
    :cond_37c
    nop

    .line 1754
    invoke-static {v8}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1755
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v2

    add-int v14, v16, v14

    move v2, v14

    .end local v16    # "size":I
    .restart local v14    # "size":I
    goto/16 :goto_682

    .line 1730
    .end local v14    # "size":I
    .local v2, "size":I
    :pswitch_38c
    move/from16 v16, v2

    .line 1732
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1731
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v2

    .line 1733
    .local v2, "fieldSize":I
    if-lez v2, :cond_680

    .line 1734
    iget-boolean v14, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_3a2

    .line 1735
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1737
    :cond_3a2
    nop

    .line 1738
    invoke-static {v8}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1739
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v2

    add-int v14, v16, v14

    move v2, v14

    .end local v16    # "size":I
    .restart local v14    # "size":I
    goto/16 :goto_682

    .line 1714
    .end local v14    # "size":I
    .local v2, "size":I
    :pswitch_3b2
    move/from16 v16, v2

    .line 1716
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1715
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v2

    .line 1717
    .local v2, "fieldSize":I
    if-lez v2, :cond_680

    .line 1718
    iget-boolean v14, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_3c8

    .line 1719
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1721
    :cond_3c8
    nop

    .line 1722
    invoke-static {v8}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1723
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v2

    add-int v14, v16, v14

    move v2, v14

    .end local v16    # "size":I
    .restart local v14    # "size":I
    goto/16 :goto_682

    .line 1698
    .end local v14    # "size":I
    .local v2, "size":I
    :pswitch_3d8
    move/from16 v16, v2

    .line 1700
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1699
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v2

    .line 1701
    .local v2, "fieldSize":I
    if-lez v2, :cond_680

    .line 1702
    iget-boolean v14, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_3ee

    .line 1703
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1705
    :cond_3ee
    nop

    .line 1706
    invoke-static {v8}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1707
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v2

    add-int v14, v16, v14

    move v2, v14

    .end local v16    # "size":I
    .restart local v14    # "size":I
    goto/16 :goto_682

    .line 1682
    .end local v14    # "size":I
    .local v2, "size":I
    :pswitch_3fe
    move/from16 v16, v2

    .line 1684
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1683
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v2

    .line 1685
    .local v2, "fieldSize":I
    if-lez v2, :cond_680

    .line 1686
    iget-boolean v14, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_414

    .line 1687
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1689
    :cond_414
    nop

    .line 1690
    invoke-static {v8}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1691
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v2

    add-int v14, v16, v14

    move v2, v14

    .end local v16    # "size":I
    .restart local v14    # "size":I
    goto/16 :goto_682

    .line 1676
    .end local v14    # "size":I
    .local v2, "size":I
    :pswitch_424
    move/from16 v16, v2

    .line 1678
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1677
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v2

    add-int v2, v16, v2

    .line 1679
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1671
    :pswitch_434
    move/from16 v16, v2

    .line 1673
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1672
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v2

    add-int v2, v16, v2

    .line 1674
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1666
    :pswitch_444
    move/from16 v16, v2

    .line 1668
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1667
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v2

    add-int v2, v16, v2

    .line 1669
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1661
    :pswitch_454
    move/from16 v16, v2

    .line 1663
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1662
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v2

    add-int v2, v16, v2

    .line 1664
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1656
    :pswitch_464
    move/from16 v16, v2

    .line 1658
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1657
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v2

    add-int v2, v16, v2

    .line 1659
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1651
    :pswitch_474
    move/from16 v16, v2

    .line 1653
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1652
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v2

    add-int v2, v16, v2

    .line 1654
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1646
    :pswitch_484
    move/from16 v16, v2

    .line 1648
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1647
    invoke-static {v8, v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v2

    add-int v2, v16, v2

    .line 1649
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1641
    :pswitch_494
    move/from16 v16, v2

    .line 1643
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v14

    .line 1642
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Schema;)I

    move-result v2

    add-int v2, v16, v2

    .line 1644
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1637
    :pswitch_4a8
    move/from16 v16, v2

    .line 1638
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v8, v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v2

    add-int v2, v16, v2

    .line 1639
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1632
    :pswitch_4b8
    move/from16 v16, v2

    .line 1634
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1633
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v2

    add-int v2, v16, v2

    .line 1635
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1627
    :pswitch_4c8
    move/from16 v16, v2

    .line 1629
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1628
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v2

    add-int v2, v16, v2

    .line 1630
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1622
    :pswitch_4d8
    move/from16 v16, v2

    .line 1624
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1623
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v2

    add-int v2, v16, v2

    .line 1625
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1617
    :pswitch_4e8
    move/from16 v16, v2

    .line 1619
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1618
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v2

    add-int v2, v16, v2

    .line 1620
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1612
    :pswitch_4f8
    move/from16 v16, v2

    .line 1614
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1613
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v2

    add-int v2, v16, v2

    .line 1615
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1607
    :pswitch_508
    move/from16 v16, v2

    .line 1609
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1608
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v2

    add-int v2, v16, v2

    .line 1610
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1602
    :pswitch_518
    move/from16 v16, v2

    .line 1604
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1603
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v2

    add-int v2, v16, v2

    .line 1605
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1597
    :pswitch_528
    move/from16 v16, v2

    .line 1599
    .end local v2    # "size":I
    .restart local v16    # "size":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1598
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v2

    add-int v2, v16, v2

    .line 1600
    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1588
    :pswitch_538
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1589
    nop

    .line 1592
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 1593
    invoke-direct {v0, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v14

    .line 1590
    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeGroupSize(ILandroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/Schema;)I

    move-result v2

    add-int v2, v16, v2

    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1583
    :pswitch_551
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1584
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v2

    add-int v2, v16, v2

    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1578
    :pswitch_563
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1579
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v8, v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v2

    add-int v2, v16, v2

    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1573
    :pswitch_575
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1574
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v2

    add-int v2, v16, v2

    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1568
    :pswitch_585
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1569
    invoke-static {v8, v14}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v2

    add-int v2, v16, v2

    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1563
    :pswitch_593
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1564
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v8, v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int v2, v16, v2

    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1558
    :pswitch_5a5
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1559
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v8, v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int v2, v16, v2

    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1552
    :pswitch_5b7
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1553
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 1554
    .local v2, "value":Landroid/net/connectivity/com/google/protobuf/ByteString;
    invoke-static {v8, v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeBytesSize(ILandroid/net/connectivity/com/google/protobuf/ByteString;)I

    move-result v14

    add-int v2, v16, v14

    .line 1555
    .end local v16    # "size":I
    .local v2, "size":I
    goto/16 :goto_682

    .line 1546
    :pswitch_5cb
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1547
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 1548
    .local v2, "value":Ljava/lang/Object;
    invoke-direct {v0, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v14

    invoke-static {v8, v2, v14}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)I

    move-result v14

    add-int v2, v16, v14

    .line 1549
    .end local v16    # "size":I
    .local v2, "size":I
    goto/16 :goto_682

    .line 1536
    :pswitch_5e1
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1537
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 1538
    .local v2, "value":Ljava/lang/Object;
    instance-of v14, v2, Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v14, :cond_5f9

    .line 1539
    move-object v14, v2

    check-cast v14, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-static {v8, v14}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeBytesSize(ILandroid/net/connectivity/com/google/protobuf/ByteString;)I

    move-result v14

    add-int v14, v16, v14

    .end local v16    # "size":I
    .restart local v14    # "size":I
    goto :goto_602

    .line 1541
    .end local v14    # "size":I
    .restart local v16    # "size":I
    :cond_5f9
    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    invoke-static {v8, v14}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v14

    add-int v14, v16, v14

    .line 1543
    .end local v2    # "value":Ljava/lang/Object;
    .end local v16    # "size":I
    .restart local v14    # "size":I
    :goto_602
    move v2, v14

    goto/16 :goto_682

    .line 1531
    .end local v14    # "size":I
    .local v2, "size":I
    :pswitch_605
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1532
    const/4 v14, 0x1

    invoke-static {v8, v14}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int v2, v16, v2

    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_682

    .line 1526
    :pswitch_614
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1527
    invoke-static {v8, v14}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v2

    add-int v2, v16, v2

    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto :goto_682

    .line 1521
    :pswitch_621
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1522
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v2

    add-int v2, v16, v2

    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto :goto_682

    .line 1516
    :pswitch_630
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1517
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v8, v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int v2, v16, v2

    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto :goto_682

    .line 1511
    :pswitch_641
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1512
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int v2, v16, v2

    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto :goto_682

    .line 1506
    :pswitch_652
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1507
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int v2, v16, v2

    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto :goto_682

    .line 1501
    :pswitch_663
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1502
    const/4 v14, 0x0

    invoke-static {v8, v14}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int v2, v16, v2

    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto :goto_682

    .line 1496
    :pswitch_671
    move/from16 v16, v2

    .end local v2    # "size":I
    .restart local v16    # "size":I
    and-int v2, v5, v11

    if-eqz v2, :cond_680

    .line 1497
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int v2, v16, v2

    .end local v16    # "size":I
    .restart local v2    # "size":I
    goto :goto_682

    .line 1471
    .end local v2    # "size":I
    .end local v7    # "typeAndOffset":I
    .end local v8    # "number":I
    .end local v9    # "fieldType":I
    .end local v10    # "presenceMaskAndOffset":I
    .end local v11    # "presenceMask":I
    .end local v12    # "offset":J
    .restart local v16    # "size":I
    :cond_680
    :goto_680
    move/from16 v2, v16

    .end local v16    # "size":I
    .restart local v2    # "size":I
    :goto_682
    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_c

    :cond_686
    move/from16 v16, v2

    .line 2024
    .end local v2    # "size":I
    .end local v6    # "i":I
    .restart local v16    # "size":I
    iget-object v2, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v2, v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v2

    add-int v2, v16, v2

    .line 2026
    .end local v16    # "size":I
    .restart local v2    # "size":I
    iget-boolean v6, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v6, :cond_69f

    .line 2027
    iget-object v6, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v6, v1}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->getSerializedSize()I

    move-result v6

    add-int/2addr v2, v6

    .line 2030
    :cond_69f
    return v2

    :pswitch_data_6a0
    .packed-switch 0x0
        :pswitch_671
        :pswitch_663
        :pswitch_652
        :pswitch_641
        :pswitch_630
        :pswitch_621
        :pswitch_614
        :pswitch_605
        :pswitch_5e1
        :pswitch_5cb
        :pswitch_5b7
        :pswitch_5a5
        :pswitch_593
        :pswitch_585
        :pswitch_575
        :pswitch_563
        :pswitch_551
        :pswitch_538
        :pswitch_528
        :pswitch_518
        :pswitch_508
        :pswitch_4f8
        :pswitch_4e8
        :pswitch_4d8
        :pswitch_4c8
        :pswitch_4b8
        :pswitch_4a8
        :pswitch_494
        :pswitch_484
        :pswitch_474
        :pswitch_464
        :pswitch_454
        :pswitch_444
        :pswitch_434
        :pswitch_424
        :pswitch_3fe
        :pswitch_3d8
        :pswitch_3b2
        :pswitch_38c
        :pswitch_366
        :pswitch_340
        :pswitch_31a
        :pswitch_2f4
        :pswitch_2ce
        :pswitch_2a8
        :pswitch_282
        :pswitch_25c
        :pswitch_236
        :pswitch_210
        :pswitch_1fc
        :pswitch_1e8
        :pswitch_1d5
        :pswitch_1c3
        :pswitch_1ae
        :pswitch_199
        :pswitch_184
        :pswitch_171
        :pswitch_160
        :pswitch_14e
        :pswitch_129
        :pswitch_110
        :pswitch_f8
        :pswitch_e3
        :pswitch_ce
        :pswitch_bd
        :pswitch_aa
        :pswitch_95
        :pswitch_80
        :pswitch_64
    .end packed-switch
.end method

.method private blacklist getSerializedSizeProto3(Ljava/lang/Object;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 2034
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 2035
    .local v2, "unsafe":Lsun/misc/Unsafe;
    const/4 v3, 0x0

    .line 2036
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    iget-object v5, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    array-length v5, v5

    if-ge v4, v5, :cond_57f

    .line 2037
    invoke-direct {v0, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v5

    .line 2038
    .local v5, "typeAndOffset":I
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->type(I)I

    move-result v6

    .line 2039
    .local v6, "fieldType":I
    invoke-direct {v0, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 2041
    .local v7, "number":I
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    .line 2044
    .local v8, "offset":J
    sget-object v10, Landroid/net/connectivity/com/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Landroid/net/connectivity/com/google/protobuf/FieldType;

    .line 2043
    invoke-virtual {v10}, Landroid/net/connectivity/com/google/protobuf/FieldType;->id()I

    move-result v10

    const/4 v11, 0x0

    if-lt v6, v10, :cond_39

    sget-object v10, Landroid/net/connectivity/com/google/protobuf/FieldType;->SINT64_LIST_PACKED:Landroid/net/connectivity/com/google/protobuf/FieldType;

    .line 2044
    invoke-virtual {v10}, Landroid/net/connectivity/com/google/protobuf/FieldType;->id()I

    move-result v10

    if-gt v6, v10, :cond_39

    .line 2045
    iget-object v10, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v12, v4, 0x2

    aget v10, v10, v12

    const v12, 0xfffff

    and-int/2addr v10, v12

    goto :goto_3a

    .line 2046
    :cond_39
    move v10, v11

    :goto_3a
    nop

    .line 2048
    .local v10, "cachedSizeOffset":I
    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    packed-switch v6, :pswitch_data_588

    goto/16 :goto_57b

    .line 2547
    :pswitch_44
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2548
    nop

    .line 2551
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 2552
    invoke-direct {v0, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v12

    .line 2549
    invoke-static {v7, v11, v12}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeGroupSize(ILandroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2542
    :pswitch_5c
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2543
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2537
    :pswitch_6d
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2538
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2532
    :pswitch_7e
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2533
    invoke-static {v7, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2527
    :pswitch_8b
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_57b

    .line 2528
    invoke-static {v7, v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2522
    :pswitch_98
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2523
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2517
    :pswitch_a9
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2518
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2510
    :pswitch_ba
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2511
    nop

    .line 2513
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 2512
    invoke-static {v7, v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeBytesSize(ILandroid/net/connectivity/com/google/protobuf/ByteString;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2504
    :pswitch_ce
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2505
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 2506
    .local v11, "value":Ljava/lang/Object;
    invoke-direct {v0, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2507
    .end local v11    # "value":Ljava/lang/Object;
    goto/16 :goto_57b

    .line 2494
    :pswitch_e3
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2495
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 2496
    .restart local v11    # "value":Ljava/lang/Object;
    instance-of v12, v11, Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v12, :cond_fa

    .line 2497
    move-object v12, v11

    check-cast v12, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-static {v7, v12}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeBytesSize(ILandroid/net/connectivity/com/google/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_102

    .line 2499
    :cond_fa
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2501
    .end local v11    # "value":Ljava/lang/Object;
    :goto_102
    goto/16 :goto_57b

    .line 2489
    :pswitch_104
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2490
    invoke-static {v7, v12}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2484
    :pswitch_111
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_57b

    .line 2485
    invoke-static {v7, v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2479
    :pswitch_11e
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2480
    invoke-static {v7, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2474
    :pswitch_12b
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2475
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2469
    :pswitch_13c
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2470
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2464
    :pswitch_14d
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2465
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2459
    :pswitch_15e
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2460
    invoke-static {v7, v13}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2454
    :pswitch_16b
    invoke-direct {v0, v1, v7, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2455
    const-wide/16 v11, 0x0

    invoke-static {v7, v11, v12}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2449
    :pswitch_17a
    iget-object v11, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    .line 2451
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v0, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v13

    .line 2450
    invoke-interface {v11, v7, v12, v13}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2452
    goto/16 :goto_57b

    .line 2443
    :pswitch_18b
    nop

    .line 2445
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v12

    .line 2444
    invoke-static {v7, v11, v12}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2446
    goto/16 :goto_57b

    .line 2428
    :pswitch_19b
    nop

    .line 2430
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2429
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2431
    .local v11, "fieldSize":I
    if-lez v11, :cond_57b

    .line 2432
    iget-boolean v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_1b0

    .line 2433
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2435
    :cond_1b0
    nop

    .line 2436
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2437
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    .line 2412
    .end local v11    # "fieldSize":I
    :pswitch_1be
    nop

    .line 2414
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2413
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2415
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57b

    .line 2416
    iget-boolean v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_1d3

    .line 2417
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2419
    :cond_1d3
    nop

    .line 2420
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2421
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    .line 2396
    .end local v11    # "fieldSize":I
    :pswitch_1e1
    nop

    .line 2398
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2397
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2399
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57b

    .line 2400
    iget-boolean v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_1f6

    .line 2401
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2403
    :cond_1f6
    nop

    .line 2404
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2405
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    .line 2380
    .end local v11    # "fieldSize":I
    :pswitch_204
    nop

    .line 2382
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2381
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2383
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57b

    .line 2384
    iget-boolean v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_219

    .line 2385
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2387
    :cond_219
    nop

    .line 2388
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2389
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    .line 2364
    .end local v11    # "fieldSize":I
    :pswitch_227
    nop

    .line 2366
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2365
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2367
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57b

    .line 2368
    iget-boolean v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_23c

    .line 2369
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2371
    :cond_23c
    nop

    .line 2372
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2373
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    .line 2348
    .end local v11    # "fieldSize":I
    :pswitch_24a
    nop

    .line 2350
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2349
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2351
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57b

    .line 2352
    iget-boolean v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_25f

    .line 2353
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2355
    :cond_25f
    nop

    .line 2356
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2357
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    .line 2332
    .end local v11    # "fieldSize":I
    :pswitch_26d
    nop

    .line 2334
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2333
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2335
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57b

    .line 2336
    iget-boolean v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_282

    .line 2337
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2339
    :cond_282
    nop

    .line 2340
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2341
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    .line 2316
    .end local v11    # "fieldSize":I
    :pswitch_290
    nop

    .line 2318
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2317
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2319
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57b

    .line 2320
    iget-boolean v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_2a5

    .line 2321
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2323
    :cond_2a5
    nop

    .line 2324
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2325
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    .line 2300
    .end local v11    # "fieldSize":I
    :pswitch_2b3
    nop

    .line 2302
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2301
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2303
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57b

    .line 2304
    iget-boolean v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_2c8

    .line 2305
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2307
    :cond_2c8
    nop

    .line 2308
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2309
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    .line 2284
    .end local v11    # "fieldSize":I
    :pswitch_2d6
    nop

    .line 2286
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2285
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2287
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57b

    .line 2288
    iget-boolean v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_2eb

    .line 2289
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2291
    :cond_2eb
    nop

    .line 2292
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2293
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    .line 2268
    .end local v11    # "fieldSize":I
    :pswitch_2f9
    nop

    .line 2270
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2269
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2271
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57b

    .line 2272
    iget-boolean v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_30e

    .line 2273
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2275
    :cond_30e
    nop

    .line 2276
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2277
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    .line 2252
    .end local v11    # "fieldSize":I
    :pswitch_31c
    nop

    .line 2254
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2253
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2255
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57b

    .line 2256
    iget-boolean v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_331

    .line 2257
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2259
    :cond_331
    nop

    .line 2260
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2261
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    .line 2236
    .end local v11    # "fieldSize":I
    :pswitch_33f
    nop

    .line 2238
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2237
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2239
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57b

    .line 2240
    iget-boolean v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_354

    .line 2241
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2243
    :cond_354
    nop

    .line 2244
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2245
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    .line 2220
    .end local v11    # "fieldSize":I
    :pswitch_362
    nop

    .line 2222
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2221
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2223
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_57b

    .line 2224
    iget-boolean v12, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_377

    .line 2225
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2227
    :cond_377
    nop

    .line 2228
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2229
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    .line 2215
    .end local v11    # "fieldSize":I
    :pswitch_385
    nop

    .line 2216
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2217
    goto/16 :goto_57b

    .line 2210
    :pswitch_391
    nop

    .line 2212
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    .line 2211
    invoke-static {v7, v12, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2213
    goto/16 :goto_57b

    .line 2207
    :pswitch_39d
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2208
    goto/16 :goto_57b

    .line 2204
    :pswitch_3a8
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2205
    goto/16 :goto_57b

    .line 2199
    :pswitch_3b3
    nop

    .line 2201
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    .line 2200
    invoke-static {v7, v12, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2202
    goto/16 :goto_57b

    .line 2194
    :pswitch_3bf
    nop

    .line 2196
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    .line 2195
    invoke-static {v7, v12, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2197
    goto/16 :goto_57b

    .line 2189
    :pswitch_3cb
    nop

    .line 2191
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    .line 2190
    invoke-static {v7, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2192
    goto/16 :goto_57b

    .line 2184
    :pswitch_3d7
    nop

    .line 2186
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v12

    .line 2185
    invoke-static {v7, v11, v12}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2187
    goto/16 :goto_57b

    .line 2181
    :pswitch_3e7
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2182
    goto/16 :goto_57b

    .line 2178
    :pswitch_3f2
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2179
    goto/16 :goto_57b

    .line 2175
    :pswitch_3fd
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2176
    goto/16 :goto_57b

    .line 2172
    :pswitch_408
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2173
    goto/16 :goto_57b

    .line 2167
    :pswitch_413
    nop

    .line 2169
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    .line 2168
    invoke-static {v7, v12, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2170
    goto/16 :goto_57b

    .line 2163
    :pswitch_41f
    nop

    .line 2164
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2165
    goto/16 :goto_57b

    .line 2159
    :pswitch_42b
    nop

    .line 2160
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2161
    goto/16 :goto_57b

    .line 2156
    :pswitch_437
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2157
    goto/16 :goto_57b

    .line 2153
    :pswitch_442
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2154
    goto/16 :goto_57b

    .line 2144
    :pswitch_44d
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2145
    nop

    .line 2148
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 2149
    invoke-direct {v0, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v12

    .line 2146
    invoke-static {v7, v11, v12}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeGroupSize(ILandroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2138
    :pswitch_465
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2139
    nop

    .line 2140
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2133
    :pswitch_477
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2134
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2128
    :pswitch_488
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2129
    invoke-static {v7, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2123
    :pswitch_495
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_57b

    .line 2124
    invoke-static {v7, v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2118
    :pswitch_4a2
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2119
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2113
    :pswitch_4b3
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2114
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    .line 2107
    :pswitch_4c4
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2108
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 2109
    .local v11, "value":Landroid/net/connectivity/com/google/protobuf/ByteString;
    invoke-static {v7, v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeBytesSize(ILandroid/net/connectivity/com/google/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2110
    .end local v11    # "value":Landroid/net/connectivity/com/google/protobuf/ByteString;
    goto/16 :goto_57b

    .line 2101
    :pswitch_4d7
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2102
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 2103
    .local v11, "value":Ljava/lang/Object;
    invoke-direct {v0, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2104
    .end local v11    # "value":Ljava/lang/Object;
    goto/16 :goto_57b

    .line 2091
    :pswitch_4ec
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2092
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 2093
    .restart local v11    # "value":Ljava/lang/Object;
    instance-of v12, v11, Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v12, :cond_503

    .line 2094
    move-object v12, v11

    check-cast v12, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-static {v7, v12}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeBytesSize(ILandroid/net/connectivity/com/google/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_50b

    .line 2096
    :cond_503
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2098
    .end local v11    # "value":Ljava/lang/Object;
    :goto_50b
    goto/16 :goto_57b

    .line 2086
    :pswitch_50d
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2087
    invoke-static {v7, v12}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    .line 2081
    :pswitch_519
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_57b

    .line 2082
    invoke-static {v7, v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    .line 2076
    :pswitch_525
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2077
    invoke-static {v7, v14, v15}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    .line 2071
    :pswitch_531
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2072
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    .line 2065
    :pswitch_541
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2066
    nop

    .line 2067
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    .line 2060
    :pswitch_552
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2061
    invoke-static {v1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    .line 2055
    :pswitch_562
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2056
    invoke-static {v7, v13}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    .line 2050
    :pswitch_56e
    invoke-direct {v0, v1, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    .line 2051
    const-wide/16 v11, 0x0

    invoke-static {v7, v11, v12}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v11

    add-int/2addr v3, v11

    .line 2036
    .end local v5    # "typeAndOffset":I
    .end local v6    # "fieldType":I
    .end local v7    # "number":I
    .end local v8    # "offset":J
    .end local v10    # "cachedSizeOffset":I
    :cond_57b
    :goto_57b
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_8

    .line 2560
    .end local v4    # "i":I
    :cond_57f
    iget-object v4, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v4, v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2562
    return v3

    nop

    :pswitch_data_588
    .packed-switch 0x0
        :pswitch_56e
        :pswitch_562
        :pswitch_552
        :pswitch_541
        :pswitch_531
        :pswitch_525
        :pswitch_519
        :pswitch_50d
        :pswitch_4ec
        :pswitch_4d7
        :pswitch_4c4
        :pswitch_4b3
        :pswitch_4a2
        :pswitch_495
        :pswitch_488
        :pswitch_477
        :pswitch_465
        :pswitch_44d
        :pswitch_442
        :pswitch_437
        :pswitch_42b
        :pswitch_41f
        :pswitch_413
        :pswitch_408
        :pswitch_3fd
        :pswitch_3f2
        :pswitch_3e7
        :pswitch_3d7
        :pswitch_3cb
        :pswitch_3bf
        :pswitch_3b3
        :pswitch_3a8
        :pswitch_39d
        :pswitch_391
        :pswitch_385
        :pswitch_362
        :pswitch_33f
        :pswitch_31c
        :pswitch_2f9
        :pswitch_2d6
        :pswitch_2b3
        :pswitch_290
        :pswitch_26d
        :pswitch_24a
        :pswitch_227
        :pswitch_204
        :pswitch_1e1
        :pswitch_1be
        :pswitch_19b
        :pswitch_18b
        :pswitch_17a
        :pswitch_16b
        :pswitch_15e
        :pswitch_14d
        :pswitch_13c
        :pswitch_12b
        :pswitch_11e
        :pswitch_111
        :pswitch_104
        :pswitch_e3
        :pswitch_ce
        :pswitch_ba
        :pswitch_a9
        :pswitch_98
        :pswitch_8b
        :pswitch_7e
        :pswitch_6d
        :pswitch_5c
        :pswitch_44
    .end packed-switch
.end method

.method private blacklist getUnknownFieldsSerializedSize(Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 2567
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "schema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2568
    .local v0, "unknowns":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p1, v0}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private static blacklist intAt(Ljava/lang/Object;J)I
    .registers 4
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 5885
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method private static blacklist isEnforceUtf8(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 5847
    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private blacklist isFieldPresent(Ljava/lang/Object;I)Z
    .registers 16
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 5931
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5932
    .local v0, "presenceMaskAndOffset":I
    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    .line 5933
    .local v2, "presenceFieldOffset":J
    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_ea

    .line 5934
    invoke-direct {p0, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    .line 5935
    .local v1, "typeAndOffset":I
    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    .line 5936
    .local v7, "offset":J
    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->type(I)I

    move-result v4

    const-wide/16 v9, 0x0

    packed-switch v4, :pswitch_data_fa

    .line 5981
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 5979
    :pswitch_2a
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_31

    move v5, v6

    :cond_31
    return v5

    .line 5977
    :pswitch_32
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    cmp-long v4, v11, v9

    if-eqz v4, :cond_3b

    move v5, v6

    :cond_3b
    return v5

    .line 5975
    :pswitch_3c
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    if-eqz v4, :cond_43

    move v5, v6

    :cond_43
    return v5

    .line 5973
    :pswitch_44
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    cmp-long v4, v11, v9

    if-eqz v4, :cond_4d

    move v5, v6

    :cond_4d
    return v5

    .line 5971
    :pswitch_4e
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    if-eqz v4, :cond_55

    move v5, v6

    :cond_55
    return v5

    .line 5969
    :pswitch_56
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    if-eqz v4, :cond_5d

    move v5, v6

    :cond_5d
    return v5

    .line 5967
    :pswitch_5e
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    if-eqz v4, :cond_65

    move v5, v6

    :cond_65
    return v5

    .line 5965
    :pswitch_66
    sget-object v4, Landroid/net/connectivity/com/google/protobuf/ByteString;->EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/connectivity/com/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v6

    return v4

    .line 5963
    :pswitch_72
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_79

    move v5, v6

    :cond_79
    return v5

    .line 5954
    :pswitch_7a
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 5955
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_8b

    .line 5956
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v6

    return v5

    .line 5957
    :cond_8b
    instance-of v5, v4, Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v5, :cond_97

    .line 5958
    sget-object v5, Landroid/net/connectivity/com/google/protobuf/ByteString;->EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {v5, v4}, Landroid/net/connectivity/com/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v6

    return v5

    .line 5960
    :cond_97
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 5952
    .end local v4    # "value":Ljava/lang/Object;
    :pswitch_9d
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v4

    return v4

    .line 5950
    :pswitch_a2
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    if-eqz v4, :cond_a9

    move v5, v6

    :cond_a9
    return v5

    .line 5948
    :pswitch_aa
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    cmp-long v4, v11, v9

    if-eqz v4, :cond_b3

    move v5, v6

    :cond_b3
    return v5

    .line 5946
    :pswitch_b4
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    if-eqz v4, :cond_bb

    move v5, v6

    :cond_bb
    return v5

    .line 5944
    :pswitch_bc
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    cmp-long v4, v11, v9

    if-eqz v4, :cond_c5

    move v5, v6

    :cond_c5
    return v5

    .line 5942
    :pswitch_c6
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    cmp-long v4, v11, v9

    if-eqz v4, :cond_cf

    move v5, v6

    :cond_cf
    return v5

    .line 5940
    :pswitch_d0
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    if-eqz v4, :cond_db

    move v5, v6

    :cond_db
    return v5

    .line 5938
    :pswitch_dc
    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v11

    cmp-long v4, v11, v9

    if-eqz v4, :cond_e9

    move v5, v6

    :cond_e9
    return v5

    .line 5984
    .end local v1    # "typeAndOffset":I
    .end local v7    # "offset":J
    :cond_ea
    ushr-int/lit8 v4, v0, 0x14

    shl-int v4, v6, v4

    .line 5985
    .local v4, "presenceMask":I
    and-int/2addr v1, v0

    int-to-long v7, v1

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    and-int/2addr v1, v4

    if-eqz v1, :cond_f8

    move v5, v6

    :cond_f8
    return v5

    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_d0
        :pswitch_c6
        :pswitch_bc
        :pswitch_b4
        :pswitch_aa
        :pswitch_a2
        :pswitch_9d
        :pswitch_7a
        :pswitch_72
        :pswitch_66
        :pswitch_5e
        :pswitch_56
        :pswitch_4e
        :pswitch_44
        :pswitch_3c
        :pswitch_32
        :pswitch_2a
    .end packed-switch
.end method

.method private blacklist isFieldPresent(Ljava/lang/Object;IIII)Z
    .registers 7
    .param p2, "pos"    # I
    .param p3, "presenceFieldOffset"    # I
    .param p4, "presenceField"    # I
    .param p5, "presenceMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    .line 5923
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const v0, 0xfffff

    if-ne p3, v0, :cond_a

    .line 5924
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    return v0

    .line 5926
    :cond_a
    and-int v0, p4, p5

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static blacklist isInitialized(Ljava/lang/Object;ILandroid/net/connectivity/com/google/protobuf/Schema;)Z
    .registers 5
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "typeAndOffset"    # I
    .param p2, "schema"    # Landroid/net/connectivity/com/google/protobuf/Schema;

    .line 5727
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 5728
    .local v0, "nested":Ljava/lang/Object;
    invoke-interface {p2, v0}, Landroid/net/connectivity/com/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private blacklist isListInitialized(Ljava/lang/Object;II)Z
    .registers 10
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    .line 5733
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    invoke-static {p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5734
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TN;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 5735
    return v2

    .line 5738
    :cond_12
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v1

    .line 5739
    .local v1, "schema":Landroid/net/connectivity/com/google/protobuf/Schema;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 5740
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 5741
    .local v4, "nested":Ljava/lang/Object;, "TN;"
    invoke-interface {v1, v4}, Landroid/net/connectivity/com/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 5742
    const/4 v2, 0x0

    return v2

    .line 5739
    .end local v4    # "nested":Ljava/lang/Object;, "TN;"
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 5745
    .end local v3    # "i":I
    :cond_2c
    return v2
.end method

.method private blacklist isMapInitialized(Ljava/lang/Object;II)Z
    .registers 13
    .param p2, "typeAndOffset"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 5749
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    invoke-static {p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 5750
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    .line 5751
    return v2

    .line 5753
    :cond_16
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    .line 5754
    .local v1, "mapDefaultEntry":Ljava/lang/Object;
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    invoke-interface {v3, v1}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;

    move-result-object v3

    .line 5755
    .local v3, "metadata":Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;, "Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata<**>;"
    iget-object v4, v3, Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;->valueType:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->getJavaType()Landroid/net/connectivity/com/google/protobuf/WireFormat$JavaType;

    move-result-object v4

    sget-object v5, Landroid/net/connectivity/com/google/protobuf/WireFormat$JavaType;->MESSAGE:Landroid/net/connectivity/com/google/protobuf/WireFormat$JavaType;

    if-eq v4, v5, :cond_2b

    .line 5756
    return v2

    .line 5759
    :cond_2b
    const/4 v4, 0x0

    .line 5760
    .local v4, "schema":Landroid/net/connectivity/com/google/protobuf/Schema;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 5761
    .local v6, "nested":Ljava/lang/Object;
    if-nez v4, :cond_4c

    .line 5762
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->getInstance()Landroid/net/connectivity/com/google/protobuf/Protobuf;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v4

    .line 5764
    :cond_4c
    invoke-interface {v4, v6}, Landroid/net/connectivity/com/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    .line 5765
    const/4 v2, 0x0

    return v2

    .line 5767
    .end local v6    # "nested":Ljava/lang/Object;
    :cond_54
    goto :goto_34

    .line 5768
    :cond_55
    return v2
.end method

.method private static blacklist isMutable(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "message"    # Ljava/lang/Object;

    .line 5855
    if-nez p0, :cond_4

    .line 5856
    const/4 v0, 0x0

    return v0

    .line 5861
    :cond_4
    instance-of v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_10

    .line 5862
    move-object v0, p0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    return v0

    .line 5867
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 9
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 6008
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 6009
    .local v0, "presenceMaskAndOffset":I
    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v2

    and-int/2addr v1, v0

    int-to-long v3, v1

    .line 6010
    invoke-static {p2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    if-ne v2, v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 6009
    :goto_19
    return v1
.end method

.method private blacklist isOneofPresent(Ljava/lang/Object;II)Z
    .registers 7
    .param p2, "fieldNumber"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 6003
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 6004
    .local v0, "presenceMaskAndOffset":I
    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    if-ne v1, p2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method private static blacklist isRequired(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 5843
    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static blacklist listAt(Ljava/lang/Object;J)Ljava/util/List;
    .registers 4
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 2572
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static blacklist longAt(Ljava/lang/Object;J)J
    .registers 5
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 5889
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist mergeFromHelper(Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Reader;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V
    .registers 22
    .param p4, "reader"    # Landroid/net/connectivity/com/google/protobuf/Reader;
    .param p5, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<",
            "TET;>;TT;",
            "Landroid/net/connectivity/com/google/protobuf/Reader;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3909
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "extensionSchema":Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;, "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<TET;>;"
    .local p3, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v1, p0

    move-object/from16 v7, p5

    const/4 v0, 0x0

    .line 3910
    .local v0, "unknownFields":Ljava/lang/Object;, "TUB;"
    const/4 v2, 0x0

    move-object v5, v0

    move-object v8, v2

    .line 3913
    .end local v0    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v5, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v8, "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<TET;>;"
    :goto_8
    :try_start_8
    invoke-interface/range {p4 .. p4}, Landroid/net/connectivity/com/google/protobuf/Reader;->getFieldNumber()I

    move-result v2

    move v9, v2

    .line 3914
    .local v9, "number":I
    invoke-direct {v1, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v3
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_88a

    move v10, v3

    .line 3915
    .local v10, "pos":I
    if-gez v10, :cond_ed

    .line 3916
    const v0, 0x7fffffff

    if-ne v9, v0, :cond_3e

    .line 4347
    iget v0, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->checkInitializedCount:I

    move-object v4, v5

    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v0, "i":I
    .local v4, "unknownFields":Ljava/lang/Object;, "TUB;"
    :goto_1c
    iget v2, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v2, :cond_33

    .line 4348
    iget-object v2, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intArray:[I

    aget v3, v2, v0

    .line 4349
    move-object/from16 v6, p3

    move-object/from16 v5, p1

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 4347
    move-object v11, v1

    move-object v6, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_33
    move-object/from16 v6, p1

    move-object/from16 v2, p3

    move-object v11, v1

    .line 4352
    .end local v0    # "i":I
    if-eqz v4, :cond_3d

    .line 4353
    invoke-virtual {v6, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3917
    :cond_3d
    return-void

    .line 3921
    .end local v4    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :cond_3e
    move-object/from16 v6, p1

    move-object/from16 v2, p3

    move-object v11, v1

    :try_start_43
    iget-boolean v0, v11, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->hasExtensions:Z

    if-nez v0, :cond_4c

    .line 3922
    const/4 v0, 0x0

    move-object/from16 v1, p2

    move-object v4, v0

    goto :goto_55

    .line 3923
    :cond_4c
    iget-object v0, v11, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->defaultInstance:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-object/from16 v1, p2

    invoke-virtual {v1, v7, v0, v9}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->findExtensionByNumber(Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_e0

    move-object v4, v0

    :goto_55
    nop

    .line 3925
    .local v4, "extension":Ljava/lang/Object;
    if-eqz v4, :cond_8b

    .line 3926
    if-nez v8, :cond_66

    .line 3927
    :try_start_5a
    invoke-virtual/range {p2 .. p3}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_60

    move-object v8, v0

    goto :goto_66

    .line 4347
    .end local v4    # "extension":Ljava/lang/Object;
    .end local v9    # "number":I
    .end local v10    # "pos":I
    :catchall_60
    move-exception v0

    move-object/from16 v13, p4

    move-object v1, v11

    goto/16 :goto_892

    .line 3929
    .restart local v4    # "extension":Ljava/lang/Object;
    .restart local v9    # "number":I
    .restart local v10    # "pos":I
    :cond_66
    :goto_66
    nop

    .line 3930
    move-object v3, v7

    move-object v7, v5

    move-object v5, v3

    move-object v3, v8

    move-object v8, v6

    move-object v6, v3

    move-object/from16 v3, p4

    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v8    # "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<TET;>;"
    .local v6, "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<TET;>;"
    .local v7, "unknownFields":Ljava/lang/Object;, "TUB;"
    :try_start_6f
    invoke-virtual/range {v1 .. v8}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->parseExtension(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Reader;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/FieldSet;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v0
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_7d

    move-object v14, v4

    move-object v13, v5

    move-object v12, v7

    move-object v5, v8

    move-object v7, v3

    .line 3938
    .end local v4    # "extension":Ljava/lang/Object;
    .end local v7    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v0, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v14, "extension":Ljava/lang/Object;
    move-object v5, v0

    move-object v8, v6

    move-object v1, v11

    move-object v7, v13

    goto :goto_8

    .line 4347
    .end local v0    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v9    # "number":I
    .end local v10    # "pos":I
    .end local v14    # "extension":Ljava/lang/Object;
    .restart local v7    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :catchall_7d
    move-exception v0

    move-object v13, v5

    move-object v12, v7

    move-object v5, v8

    move-object v7, v3

    move-object v1, v13

    move-object v13, v7

    move-object v7, v1

    move-object v8, v6

    move-object v1, v11

    move-object v6, v5

    move-object v5, v12

    .end local v7    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v12, "unknownFields":Ljava/lang/Object;, "TUB;"
    goto/16 :goto_892

    .line 3940
    .end local v6    # "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<TET;>;"
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v4    # "extension":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v8    # "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<TET;>;"
    .restart local v9    # "number":I
    .restart local v10    # "pos":I
    :cond_8b
    move-object v14, v4

    move-object v12, v5

    move-object v5, v6

    move-object v13, v7

    move-object/from16 v7, p4

    .end local v4    # "extension":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v14    # "extension":Ljava/lang/Object;
    :try_start_91
    invoke-virtual {v5, v7}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Landroid/net/connectivity/com/google/protobuf/Reader;)Z

    move-result v0
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_db

    if-eqz v0, :cond_aa

    .line 3941
    :try_start_97
    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->skipField()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 3942
    move-object v1, v11

    move-object v5, v12

    move-object v7, v13

    goto/16 :goto_8

    .line 4347
    .end local v9    # "number":I
    .end local v10    # "pos":I
    .end local v14    # "extension":Ljava/lang/Object;
    :catchall_a2
    move-exception v0

    move-object v1, v13

    move-object v13, v7

    move-object v7, v1

    move-object v6, v5

    move-object v1, v11

    goto/16 :goto_888

    .line 3945
    .restart local v9    # "number":I
    .restart local v10    # "pos":I
    .restart local v14    # "extension":Ljava/lang/Object;
    :cond_aa
    if-nez v12, :cond_b1

    .line 3946
    invoke-virtual {v5, v2}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b0
    .catchall {:try_start_97 .. :try_end_b0} :catchall_a2

    move-object v12, v0

    .line 3949
    :cond_b1
    :try_start_b1
    invoke-virtual {v5, v12, v7}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Reader;)Z

    move-result v0
    :try_end_b5
    .catchall {:try_start_b1 .. :try_end_b5} :catchall_db

    if-eqz v0, :cond_bc

    .line 3950
    move-object v1, v11

    move-object v5, v12

    move-object v7, v13

    goto/16 :goto_8

    .line 4347
    :cond_bc
    iget v0, v11, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->checkInitializedCount:I

    move-object v4, v12

    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v0, "i":I
    .local v4, "unknownFields":Ljava/lang/Object;, "TUB;"
    :goto_bf
    iget v1, v11, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_d3

    .line 4348
    iget-object v1, v11, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intArray:[I

    aget v3, v1, v0

    .line 4349
    move-object/from16 v6, p3

    move-object v1, v11

    invoke-direct/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 4347
    move-object v11, v5

    add-int/lit8 v0, v0, 0x1

    move-object v11, v1

    goto :goto_bf

    :cond_d3
    move-object v1, v11

    move-object v11, v5

    .line 4352
    .end local v0    # "i":I
    if-eqz v4, :cond_da

    .line 4353
    invoke-virtual {v11, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3954
    :cond_da
    return-void

    .line 4347
    .end local v4    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v9    # "number":I
    .end local v10    # "pos":I
    .end local v14    # "extension":Ljava/lang/Object;
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :catchall_db
    move-exception v0

    move-object v1, v11

    move-object v11, v5

    goto/16 :goto_2c1

    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :catchall_e0
    move-exception v0

    move-object v12, v5

    move-object v13, v7

    move-object v1, v11

    move-object/from16 v7, p4

    move-object v11, v6

    move-object v5, v13

    move-object v13, v7

    move-object v7, v5

    move-object v5, v12

    goto/16 :goto_892

    .line 3956
    .restart local v9    # "number":I
    .restart local v10    # "pos":I
    :cond_ed
    move-object/from16 v11, p1

    move-object/from16 v2, p3

    move-object v12, v5

    move-object v13, v7

    move-object/from16 v7, p4

    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :try_start_f5
    invoke-direct {v1, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v3
    :try_end_f9
    .catchall {:try_start_f5 .. :try_end_f9} :catchall_883

    move v14, v3

    .line 3959
    .local v14, "typeAndOffset":I
    :try_start_fa
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->type(I)I

    move-result v0
    :try_end_fe
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_fa .. :try_end_fe} :catch_824
    .catchall {:try_start_fa .. :try_end_fe} :catchall_883

    packed-switch v0, :pswitch_data_8b4

    .line 4321
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    if-nez v12, :cond_7f5

    .line 4322
    :try_start_106
    invoke-virtual {v11, v2}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_10a
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_106 .. :try_end_10a} :catch_7f1
    .catchall {:try_start_106 .. :try_end_10a} :catchall_7ee

    goto/16 :goto_7f3

    .line 4312
    :pswitch_10c
    nop

    .line 4313
    :try_start_10d
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 4314
    .local v0, "current":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    nop

    .line 4315
    invoke-direct {v1, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v3

    .line 4314
    invoke-interface {v7, v0, v3, v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->mergeGroupField(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V

    .line 4316
    invoke-direct {v1, v2, v9, v10, v0}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 4317
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4306
    .end local v0    # "current":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    :pswitch_123
    nop

    .line 4307
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSInt64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4306
    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4308
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4309
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4301
    :pswitch_13b
    nop

    .line 4302
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4301
    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4303
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4304
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4296
    :pswitch_153
    nop

    .line 4297
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSFixed64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4296
    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4298
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4299
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4291
    :pswitch_16b
    nop

    .line 4292
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4291
    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4293
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4294
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4278
    :pswitch_183
    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->readEnum()I

    move-result v0

    .line 4279
    .local v0, "enumValue":I
    invoke-direct {v1, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    move-result-object v3

    .line 4280
    .local v3, "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    if-eqz v3, :cond_1a0

    invoke-interface {v3, v0}, Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_194

    goto :goto_1a0

    .line 4284
    :cond_194
    nop

    .line 4285
    invoke-static {v2, v9, v0, v12, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    .line 4288
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    move-object v6, v13

    move-object v13, v7

    move-object v7, v6

    move-object v6, v11

    goto/16 :goto_81b

    .line 4281
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :cond_1a0
    :goto_1a0
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4282
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4272
    .end local v0    # "enumValue":I
    .end local v3    # "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    :pswitch_1b3
    nop

    .line 4273
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4272
    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4274
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4275
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4268
    :pswitch_1cb
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->readBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4269
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4270
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4260
    :pswitch_1de
    nop

    .line 4261
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 4262
    .local v0, "current":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    nop

    .line 4263
    invoke-direct {v1, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v3

    .line 4262
    invoke-interface {v7, v0, v3, v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->mergeMessageField(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V

    .line 4264
    invoke-direct {v1, v2, v9, v10, v0}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 4265
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4255
    .end local v0    # "current":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    :pswitch_1f5
    invoke-direct {v1, v2, v14, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILandroid/net/connectivity/com/google/protobuf/Reader;)V

    .line 4256
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4257
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4250
    :pswitch_200
    nop

    .line 4251
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4250
    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4252
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4253
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4245
    :pswitch_218
    nop

    .line 4246
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4245
    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4247
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4248
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4240
    :pswitch_230
    nop

    .line 4241
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFixed64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4240
    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4242
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4243
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4235
    :pswitch_248
    nop

    .line 4236
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4235
    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4237
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4238
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4230
    :pswitch_260
    nop

    .line 4231
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->readUInt64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4230
    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4232
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4233
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4225
    :pswitch_278
    nop

    .line 4226
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->readInt64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4225
    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4227
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4228
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4220
    :pswitch_290
    nop

    .line 4221
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 4220
    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4222
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4223
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4215
    :pswitch_2a8
    nop

    .line 4216
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->readDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 4215
    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4217
    invoke-direct {v1, v2, v9, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V
    :try_end_2bb
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_10d .. :try_end_2bb} :catch_2c6
    .catchall {:try_start_10d .. :try_end_2bb} :catchall_2c0

    .line 4218
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    goto/16 :goto_7eb

    .line 4347
    .end local v9    # "number":I
    .end local v10    # "pos":I
    .end local v14    # "typeAndOffset":I
    :catchall_2c0
    move-exception v0

    :goto_2c1
    move-object v5, v13

    move-object v13, v7

    move-object v7, v5

    goto/16 :goto_887

    .line 4329
    .restart local v9    # "number":I
    .restart local v10    # "pos":I
    .restart local v14    # "typeAndOffset":I
    :catch_2c6
    move-exception v0

    move-object v5, v13

    move-object v13, v7

    move-object v7, v5

    goto/16 :goto_828

    .line 4212
    :pswitch_2cc
    :try_start_2cc
    invoke-direct {v1, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4
    :try_end_2d0
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2cc .. :try_end_2d0} :catch_2f1
    .catchall {:try_start_2cc .. :try_end_2d0} :catchall_2ea

    move-object v6, v7

    move v3, v10

    move-object v5, v13

    .end local v10    # "pos":I
    .local v3, "pos":I
    :try_start_2d3
    invoke-direct/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mergeMap(Ljava/lang/Object;ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/Reader;)V
    :try_end_2d6
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2d3 .. :try_end_2d6} :catch_2de
    .catchall {:try_start_2d3 .. :try_end_2d6} :catchall_2ea

    .line 4213
    .end local v3    # "pos":I
    .restart local v10    # "pos":I
    move-object/from16 v2, p3

    move-object/from16 v13, p4

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4329
    .end local v10    # "pos":I
    .restart local v3    # "pos":I
    :catch_2de
    move-exception v0

    move v10, v3

    move-object/from16 v2, p3

    move-object/from16 v13, p4

    move-object/from16 v7, p5

    move-object v6, v11

    move-object v5, v12

    .end local v3    # "pos":I
    .restart local v10    # "pos":I
    goto/16 :goto_82a

    .line 4347
    .end local v9    # "number":I
    .end local v10    # "pos":I
    .end local v14    # "typeAndOffset":I
    :catchall_2ea
    move-exception v0

    move-object/from16 v2, p3

    move-object/from16 v13, p4

    goto/16 :goto_5e4

    .line 4329
    .restart local v9    # "number":I
    .restart local v10    # "pos":I
    .restart local v14    # "typeAndOffset":I
    :catch_2f1
    move-exception v0

    move-object/from16 v2, p3

    move-object/from16 v13, p4

    goto/16 :goto_5ea

    .line 4203
    :pswitch_2f8
    nop

    .line 4205
    :try_start_2f9
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    .line 4207
    invoke-direct {v1, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v6
    :try_end_301
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2f9 .. :try_end_301} :catch_32f
    .catchall {:try_start_2f9 .. :try_end_301} :catchall_323

    .line 4203
    move-object/from16 v2, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    :try_start_307
    invoke-direct/range {v1 .. v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->readGroupList(Ljava/lang/Object;JLandroid/net/connectivity/com/google/protobuf/Reader;Landroid/net/connectivity/com/google/protobuf/Schema;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V
    :try_end_30a
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_307 .. :try_end_30a} :catch_31a
    .catchall {:try_start_307 .. :try_end_30a} :catchall_311

    move-object v7, v1

    move-object v13, v5

    .line 4209
    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4347
    .end local v9    # "number":I
    .end local v10    # "pos":I
    .end local v14    # "typeAndOffset":I
    :catchall_311
    move-exception v0

    move-object v7, v1

    move-object v13, v5

    move-object v6, v11

    move-object v5, v12

    move-object/from16 v7, p5

    goto/16 :goto_892

    .line 4329
    .restart local v9    # "number":I
    .restart local v10    # "pos":I
    .restart local v14    # "typeAndOffset":I
    :catch_31a
    move-exception v0

    move-object v7, v1

    move-object v13, v5

    move-object v6, v11

    move-object v5, v12

    move-object/from16 v7, p5

    goto/16 :goto_82a

    .line 4347
    .end local v9    # "number":I
    .end local v10    # "pos":I
    .end local v14    # "typeAndOffset":I
    :catchall_323
    move-exception v0

    move-object/from16 v2, p3

    move-object/from16 v13, p4

    move-object v7, v1

    move-object v6, v11

    move-object v5, v12

    move-object/from16 v7, p5

    goto/16 :goto_892

    .line 4329
    .restart local v9    # "number":I
    .restart local v10    # "pos":I
    .restart local v14    # "typeAndOffset":I
    :catch_32f
    move-exception v0

    move-object/from16 v2, p3

    move-object/from16 v13, p4

    move-object v7, v1

    move-object v6, v11

    move-object v5, v12

    move-object/from16 v7, p5

    goto/16 :goto_82a

    .line 4198
    :pswitch_33b
    move-object v13, v7

    move-object v7, v1

    :try_start_33d
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4199
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4198
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 4200
    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4194
    :pswitch_34f
    move-object v13, v7

    move-object v7, v1

    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4195
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4194
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 4196
    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4190
    :pswitch_363
    move-object v13, v7

    move-object v7, v1

    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4191
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4190
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 4192
    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4186
    :pswitch_377
    move-object v13, v7

    move-object v7, v1

    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4187
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4186
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V
    :try_end_386
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_33d .. :try_end_386} :catch_5bd
    .catchall {:try_start_33d .. :try_end_386} :catchall_5b5

    .line 4188
    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4172
    :pswitch_38b
    move-object v13, v7

    move-object v7, v1

    :try_start_38d
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4173
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4174
    .local v3, "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v13, v3}, Landroid/net/connectivity/com/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 4175
    nop

    .line 4180
    invoke-direct {v7, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    move-result-object v4
    :try_end_39f
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_38d .. :try_end_39f} :catch_3d1
    .catchall {:try_start_38d .. :try_end_39f} :catchall_3c8

    .line 4176
    move-object v1, v2

    move v2, v9

    move-object v6, v11

    move-object v5, v12

    .end local v9    # "number":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v2, "number":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :try_start_3a3
    invoke-static/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3a7
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3a3 .. :try_end_3a7} :catch_3bc
    .catchall {:try_start_3a3 .. :try_end_3a7} :catchall_3b3

    move v15, v2

    move-object v2, v1

    move v1, v15

    .end local v2    # "number":I
    .local v1, "number":I
    move-object v5, v0

    .line 4183
    move-object/from16 v6, p1

    move v9, v1

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_81b

    .line 4347
    .end local v1    # "number":I
    .end local v3    # "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "pos":I
    .end local v14    # "typeAndOffset":I
    :catchall_3b3
    move-exception v0

    move-object v2, v1

    move-object/from16 v6, p1

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_892

    .line 4329
    .restart local v2    # "number":I
    .restart local v10    # "pos":I
    .restart local v14    # "typeAndOffset":I
    :catch_3bc
    move-exception v0

    move v15, v2

    move-object v2, v1

    move v1, v15

    move-object/from16 v6, p1

    move v9, v1

    move-object v1, v7

    move-object/from16 v7, p5

    .end local v2    # "number":I
    .restart local v1    # "number":I
    goto/16 :goto_82a

    .line 4347
    .end local v1    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v10    # "pos":I
    .end local v14    # "typeAndOffset":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :catchall_3c8
    move-exception v0

    move-object v5, v12

    move-object/from16 v6, p1

    move-object v1, v7

    move-object/from16 v7, p5

    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    goto/16 :goto_892

    .line 4329
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v10    # "pos":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v14    # "typeAndOffset":I
    :catch_3d1
    move-exception v0

    move v1, v9

    move-object v5, v12

    move-object/from16 v6, p1

    move-object v1, v7

    move-object/from16 v7, p5

    .end local v9    # "number":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v1    # "number":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    goto/16 :goto_82a

    .line 4167
    .end local v1    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :pswitch_3db
    move-object v13, v7

    move-object v5, v12

    move-object v7, v1

    move v1, v9

    .end local v9    # "number":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v1    # "number":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :try_start_3df
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4168
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4167
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 4169
    move-object/from16 v11, p1

    move v9, v1

    move-object v12, v5

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4163
    .end local v1    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :pswitch_3f5
    move-object v13, v7

    move-object v5, v12

    move-object v7, v1

    move v1, v9

    .end local v9    # "number":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v1    # "number":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4164
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4163
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 4165
    move-object/from16 v11, p1

    move v9, v1

    move-object v12, v5

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4159
    .end local v1    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :pswitch_40f
    move-object v13, v7

    move-object v5, v12

    move-object v7, v1

    move v1, v9

    .end local v9    # "number":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v1    # "number":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4160
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4159
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 4161
    move-object/from16 v11, p1

    move v9, v1

    move-object v12, v5

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4155
    .end local v1    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :pswitch_429
    move-object v13, v7

    move-object v5, v12

    move-object v7, v1

    move v1, v9

    .end local v9    # "number":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v1    # "number":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4156
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4155
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 4157
    move-object/from16 v11, p1

    move v9, v1

    move-object v12, v5

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4151
    .end local v1    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :pswitch_443
    move-object v13, v7

    move-object v5, v12

    move-object v7, v1

    move v1, v9

    .end local v9    # "number":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v1    # "number":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4152
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4151
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 4153
    move-object/from16 v11, p1

    move v9, v1

    move-object v12, v5

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4147
    .end local v1    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :pswitch_45d
    move-object v13, v7

    move-object v5, v12

    move-object v7, v1

    move v1, v9

    .end local v9    # "number":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v1    # "number":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4148
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4147
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 4149
    move-object/from16 v11, p1

    move v9, v1

    move-object v12, v5

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4143
    .end local v1    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :pswitch_477
    move-object v13, v7

    move-object v5, v12

    move-object v7, v1

    move v1, v9

    .end local v9    # "number":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v1    # "number":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4144
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4143
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 4145
    move-object/from16 v11, p1

    move v9, v1

    move-object v12, v5

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4139
    .end local v1    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :pswitch_491
    move-object v13, v7

    move-object v5, v12

    move-object v7, v1

    move v1, v9

    .end local v9    # "number":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v1    # "number":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4140
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4139
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 4141
    move-object/from16 v11, p1

    move v9, v1

    move-object v12, v5

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4135
    .end local v1    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :pswitch_4ab
    move-object v13, v7

    move-object v5, v12

    move-object v7, v1

    move v1, v9

    .end local v9    # "number":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v1    # "number":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4136
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4135
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 4137
    move-object/from16 v11, p1

    move v9, v1

    move-object v12, v5

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4131
    .end local v1    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :pswitch_4c5
    move-object v13, v7

    move-object v5, v12

    move-object v7, v1

    move v1, v9

    .end local v9    # "number":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v1    # "number":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4132
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4131
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 4133
    move-object/from16 v11, p1

    move v9, v1

    move-object v12, v5

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4127
    .end local v1    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :pswitch_4df
    move-object v13, v7

    move-object v5, v12

    move-object v7, v1

    move v1, v9

    .end local v9    # "number":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v1    # "number":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4128
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4127
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 4129
    move-object/from16 v11, p1

    move v9, v1

    move-object v12, v5

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4123
    .end local v1    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :pswitch_4f9
    move-object v13, v7

    move-object v5, v12

    move-object v7, v1

    move v1, v9

    .end local v9    # "number":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v1    # "number":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4124
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4123
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 4125
    move-object/from16 v11, p1

    move v9, v1

    move-object v12, v5

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4119
    .end local v1    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :pswitch_513
    move-object v13, v7

    move-object v5, v12

    move-object v7, v1

    move v1, v9

    .end local v9    # "number":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v1    # "number":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4120
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4119
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V
    :try_end_524
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3df .. :try_end_524} :catch_535
    .catchall {:try_start_3df .. :try_end_524} :catchall_52d

    .line 4121
    move-object/from16 v11, p1

    move v9, v1

    move-object v12, v5

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4347
    .end local v1    # "number":I
    .end local v10    # "pos":I
    .end local v14    # "typeAndOffset":I
    :catchall_52d
    move-exception v0

    move-object/from16 v6, p1

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_892

    .line 4329
    .restart local v1    # "number":I
    .restart local v10    # "pos":I
    .restart local v14    # "typeAndOffset":I
    :catch_535
    move-exception v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_82a

    .line 4105
    .end local v1    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :pswitch_53e
    move-object v13, v7

    move-object v5, v12

    move-object v7, v1

    move v1, v9

    .end local v9    # "number":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v1    # "number":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :try_start_542
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4106
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4107
    .restart local v3    # "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v13, v3}, Landroid/net/connectivity/com/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 4108
    nop

    .line 4113
    invoke-direct {v7, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    move-result-object v4
    :try_end_554
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_542 .. :try_end_554} :catch_582
    .catchall {:try_start_542 .. :try_end_554} :catchall_578

    .line 4109
    move-object v6, v2

    move v2, v1

    move-object v1, v6

    move-object/from16 v6, p1

    .end local v1    # "number":I
    .restart local v2    # "number":I
    :try_start_559
    invoke-static/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v0
    :try_end_55d
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_559 .. :try_end_55d} :catch_56e
    .catchall {:try_start_559 .. :try_end_55d} :catchall_568

    move v9, v2

    move-object v12, v5

    move-object v11, v6

    move-object v2, v1

    .end local v2    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    move-object v5, v0

    .line 4116
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    move-object v1, v7

    move-object v6, v11

    move-object/from16 v7, p5

    goto/16 :goto_81b

    .line 4347
    .end local v3    # "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "number":I
    .end local v10    # "pos":I
    .end local v14    # "typeAndOffset":I
    :catchall_568
    move-exception v0

    move-object v2, v1

    move-object v12, v5

    move-object v11, v6

    move-object v1, v7

    goto :goto_57e

    .line 4329
    .restart local v2    # "number":I
    .restart local v10    # "pos":I
    .restart local v14    # "typeAndOffset":I
    :catch_56e
    move-exception v0

    move v9, v2

    move-object v12, v5

    move-object v11, v6

    move-object v2, v1

    move-object v1, v7

    move-object/from16 v7, p5

    .end local v2    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    goto/16 :goto_82a

    .line 4347
    .end local v9    # "number":I
    .end local v10    # "pos":I
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v14    # "typeAndOffset":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :catchall_578
    move-exception v0

    move-object/from16 v11, p1

    move-object v12, v5

    move-object v1, v7

    move-object v6, v11

    :goto_57e
    move-object/from16 v7, p5

    goto/16 :goto_892

    .line 4329
    .restart local v1    # "number":I
    .restart local v10    # "pos":I
    .restart local v14    # "typeAndOffset":I
    :catch_582
    move-exception v0

    move-object/from16 v11, p1

    move v9, v1

    move-object v12, v5

    move-object v1, v7

    move-object v6, v11

    move-object/from16 v7, p5

    .end local v1    # "number":I
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v9    # "number":I
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    goto/16 :goto_82a

    .line 4100
    :pswitch_58d
    move-object v13, v7

    move-object v7, v1

    :try_start_58f
    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4101
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4100
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 4102
    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4096
    :pswitch_5a1
    move-object v13, v7

    move-object v7, v1

    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4097
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4096
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readBytesList(Ljava/util/List;)V
    :try_end_5b0
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_58f .. :try_end_5b0} :catch_5bd
    .catchall {:try_start_58f .. :try_end_5b0} :catchall_5b5

    .line 4098
    move-object v1, v7

    move-object/from16 v7, p5

    goto/16 :goto_7eb

    .line 4347
    .end local v9    # "number":I
    .end local v10    # "pos":I
    .end local v14    # "typeAndOffset":I
    :catchall_5b5
    move-exception v0

    move-object v1, v7

    move-object v6, v11

    move-object v5, v12

    move-object/from16 v7, p5

    goto/16 :goto_892

    .line 4329
    .restart local v9    # "number":I
    .restart local v10    # "pos":I
    .restart local v14    # "typeAndOffset":I
    :catch_5bd
    move-exception v0

    move-object v1, v7

    move-object v6, v11

    move-object v5, v12

    move-object/from16 v7, p5

    goto/16 :goto_82a

    .line 4087
    :pswitch_5c5
    move-object v13, v7

    move-object v7, v1

    .line 4091
    :try_start_5c7
    invoke-direct {v7, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v5
    :try_end_5cb
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5c7 .. :try_end_5cb} :catch_5e8
    .catchall {:try_start_5c7 .. :try_end_5cb} :catchall_5e2

    .line 4087
    move-object/from16 v6, p5

    move-object v1, v7

    move-object v4, v13

    move v3, v14

    .end local v14    # "typeAndOffset":I
    .local v3, "typeAndOffset":I
    :try_start_5d0
    invoke-direct/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->readMessageList(Ljava/lang/Object;ILandroid/net/connectivity/com/google/protobuf/Reader;Landroid/net/connectivity/com/google/protobuf/Schema;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V
    :try_end_5d3
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5d0 .. :try_end_5d3} :catch_5da
    .catchall {:try_start_5d0 .. :try_end_5d3} :catchall_5d6

    move-object v7, v6

    .line 4093
    .end local v3    # "typeAndOffset":I
    .restart local v14    # "typeAndOffset":I
    goto/16 :goto_7eb

    .line 4347
    .end local v9    # "number":I
    .end local v10    # "pos":I
    .end local v14    # "typeAndOffset":I
    :catchall_5d6
    move-exception v0

    move-object v13, v4

    goto/16 :goto_886

    .line 4329
    .restart local v3    # "typeAndOffset":I
    .restart local v9    # "number":I
    .restart local v10    # "pos":I
    :catch_5da
    move-exception v0

    move v14, v3

    move-object v13, v4

    move-object v7, v6

    move-object v6, v11

    move-object v5, v12

    .end local v3    # "typeAndOffset":I
    .restart local v14    # "typeAndOffset":I
    goto/16 :goto_82a

    .line 4347
    .end local v9    # "number":I
    .end local v10    # "pos":I
    .end local v14    # "typeAndOffset":I
    :catchall_5e2
    move-exception v0

    move-object v1, v7

    :goto_5e4
    move-object/from16 v7, p5

    goto/16 :goto_887

    .line 4329
    .restart local v9    # "number":I
    .restart local v10    # "pos":I
    .restart local v14    # "typeAndOffset":I
    :catch_5e8
    move-exception v0

    move-object v1, v7

    :goto_5ea
    move-object/from16 v7, p5

    goto/16 :goto_828

    .line 4083
    :pswitch_5ee
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    :try_start_5f1
    invoke-direct {v1, v2, v14, v13}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->readStringList(Ljava/lang/Object;ILandroid/net/connectivity/com/google/protobuf/Reader;)V

    .line 4084
    goto/16 :goto_7eb

    .line 4079
    :pswitch_5f6
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    iget-object v0, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4080
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4079
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 4081
    goto/16 :goto_7eb

    .line 4075
    :pswitch_608
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    iget-object v0, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4076
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4075
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 4077
    goto/16 :goto_7eb

    .line 4071
    :pswitch_61a
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    iget-object v0, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4072
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4071
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 4073
    goto/16 :goto_7eb

    .line 4067
    :pswitch_62c
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    iget-object v0, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4068
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4067
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 4069
    goto/16 :goto_7eb

    .line 4063
    :pswitch_63e
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    iget-object v0, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4064
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4063
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 4065
    goto/16 :goto_7eb

    .line 4059
    :pswitch_650
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    iget-object v0, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4060
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4059
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 4061
    goto/16 :goto_7eb

    .line 4055
    :pswitch_662
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    iget-object v0, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4056
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4055
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 4057
    goto/16 :goto_7eb

    .line 4051
    :pswitch_674
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    iget-object v0, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 4052
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 4051
    invoke-interface {v13, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 4053
    goto/16 :goto_7eb

    .line 4044
    :pswitch_686
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 4045
    .restart local v0    # "current":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    nop

    .line 4046
    invoke-direct {v1, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v3

    .line 4045
    invoke-interface {v13, v0, v3, v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->mergeGroupField(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V

    .line 4047
    invoke-direct {v1, v2, v10, v0}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4048
    goto/16 :goto_7eb

    .line 4039
    .end local v0    # "current":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    :pswitch_69c
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSInt64()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 4040
    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4041
    goto/16 :goto_7eb

    .line 4035
    :pswitch_6af
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSInt32()I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 4036
    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4037
    goto/16 :goto_7eb

    .line 4031
    :pswitch_6c2
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSFixed64()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 4032
    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4033
    goto/16 :goto_7eb

    .line 4027
    :pswitch_6d5
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSFixed32()I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 4028
    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4029
    goto/16 :goto_7eb

    .line 4014
    :pswitch_6e8
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-interface {v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->readEnum()I

    move-result v0

    .line 4015
    .local v0, "enumValue":I
    invoke-direct {v1, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    move-result-object v3

    .line 4016
    .local v3, "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    if-eqz v3, :cond_705

    invoke-interface {v3, v0}, Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_6fc

    goto :goto_705

    .line 4020
    :cond_6fc
    nop

    .line 4021
    invoke-static {v2, v9, v0, v12, v11}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    .line 4024
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    move-object v6, v11

    goto/16 :goto_81b

    .line 4017
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :cond_705
    :goto_705
    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 4018
    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_7eb

    .line 4009
    .end local v0    # "enumValue":I
    .end local v3    # "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    :pswitch_711
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->readUInt32()I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 4010
    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4011
    goto/16 :goto_7eb

    .line 4005
    :pswitch_724
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->readBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4006
    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4007
    goto/16 :goto_7eb

    .line 3998
    :pswitch_737
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 3999
    .local v0, "current":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    nop

    .line 4000
    invoke-direct {v1, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v3

    .line 3999
    invoke-interface {v13, v0, v3, v7}, Landroid/net/connectivity/com/google/protobuf/Reader;->mergeMessageField(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V

    .line 4001
    invoke-direct {v1, v2, v10, v0}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4002
    goto/16 :goto_7eb

    .line 3993
    .end local v0    # "current":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    :pswitch_74d
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-direct {v1, v2, v14, v13}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILandroid/net/connectivity/com/google/protobuf/Reader;)V

    .line 3994
    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3995
    goto/16 :goto_7eb

    .line 3989
    :pswitch_758
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->readBool()Z

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 3990
    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3991
    goto/16 :goto_7eb

    .line 3985
    :pswitch_76b
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFixed32()I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3986
    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3987
    goto/16 :goto_7eb

    .line 3981
    :pswitch_77e
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFixed64()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3982
    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3983
    goto/16 :goto_7eb

    .line 3977
    :pswitch_791
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->readInt32()I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3978
    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3979
    goto :goto_7eb

    .line 3973
    :pswitch_7a3
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->readUInt64()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3974
    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3975
    goto :goto_7eb

    .line 3969
    :pswitch_7b5
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->readInt64()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3970
    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3971
    goto :goto_7eb

    .line 3965
    :pswitch_7c7
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFloat()F

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 3966
    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3967
    goto :goto_7eb

    .line 3961
    :pswitch_7d9
    move-object v15, v13

    move-object v13, v7

    move-object v7, v15

    invoke-static {v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-interface {v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->readDouble()D

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 3962
    invoke-direct {v1, v2, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V
    :try_end_7ea
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5f1 .. :try_end_7ea} :catch_7f1
    .catchall {:try_start_5f1 .. :try_end_7ea} :catchall_7ee

    .line 3963
    nop

    .line 4344
    :goto_7eb
    move-object v6, v11

    move-object v5, v12

    goto :goto_81b

    .line 4347
    .end local v9    # "number":I
    .end local v10    # "pos":I
    .end local v14    # "typeAndOffset":I
    :catchall_7ee
    move-exception v0

    goto/16 :goto_887

    .line 4329
    .restart local v9    # "number":I
    .restart local v10    # "pos":I
    .restart local v14    # "typeAndOffset":I
    :catch_7f1
    move-exception v0

    goto :goto_828

    .line 4322
    :goto_7f3
    move-object v5, v0

    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    goto :goto_7f6

    .line 4321
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :cond_7f5
    move-object v5, v12

    .line 4324
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :goto_7f6
    :try_start_7f6
    invoke-virtual {v11, v5, v13}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Reader;)Z

    move-result v0
    :try_end_7fa
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7f6 .. :try_end_7fa} :catch_821
    .catchall {:try_start_7f6 .. :try_end_7fa} :catchall_81d

    if-nez v0, :cond_81a

    .line 4347
    iget v0, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->checkInitializedCount:I

    move-object v4, v5

    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v0, "i":I
    .restart local v4    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :goto_7ff
    iget v3, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v3, :cond_813

    .line 4348
    iget-object v3, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v0

    .line 4349
    move-object/from16 v6, p3

    move-object v5, v11

    invoke-direct/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 4347
    move-object v6, v5

    add-int/lit8 v0, v0, 0x1

    move-object v11, v6

    goto :goto_7ff

    :cond_813
    move-object v6, v11

    .line 4352
    .end local v0    # "i":I
    if-eqz v4, :cond_819

    .line 4353
    invoke-virtual {v6, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4325
    :cond_819
    return-void

    .line 4324
    .end local v4    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :cond_81a
    move-object v6, v11

    .line 4344
    :goto_81b
    goto/16 :goto_87f

    .line 4347
    .end local v9    # "number":I
    .end local v10    # "pos":I
    .end local v14    # "typeAndOffset":I
    :catchall_81d
    move-exception v0

    move-object v6, v11

    goto/16 :goto_892

    .line 4329
    .restart local v9    # "number":I
    .restart local v10    # "pos":I
    .restart local v14    # "typeAndOffset":I
    :catch_821
    move-exception v0

    move-object v6, v11

    goto :goto_82a

    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :catch_824
    move-exception v0

    move-object v6, v13

    move-object v13, v7

    move-object v7, v6

    :goto_828
    move-object v6, v11

    move-object v5, v12

    .line 4332
    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v0, "e":Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :goto_82a
    :try_start_82a
    invoke-virtual {v6, v13}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Landroid/net/connectivity/com/google/protobuf/Reader;)Z

    move-result v3

    if-eqz v3, :cond_854

    .line 4333
    invoke-interface {v13}, Landroid/net/connectivity/com/google/protobuf/Reader;->skipField()Z

    move-result v3
    :try_end_834
    .catchall {:try_start_82a .. :try_end_834} :catchall_881

    if-nez v3, :cond_87f

    .line 4347
    iget v3, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->checkInitializedCount:I

    move v11, v3

    move-object v4, v5

    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v4    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v11, "i":I
    :goto_83a
    iget v3, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v11, v3, :cond_84e

    .line 4348
    iget-object v3, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v11

    .line 4349
    move-object/from16 v6, p3

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 4347
    move-object v6, v5

    add-int/lit8 v11, v11, 0x1

    goto :goto_83a

    .line 4352
    .end local v11    # "i":I
    :cond_84e
    if-eqz v4, :cond_853

    .line 4353
    invoke-virtual {v6, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4334
    :cond_853
    return-void

    .line 4337
    .end local v4    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :cond_854
    if-nez v5, :cond_85b

    .line 4338
    :try_start_856
    invoke-virtual {v6, v2}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    .line 4340
    :cond_85b
    invoke-virtual {v6, v5, v13}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Reader;)Z

    move-result v3
    :try_end_85f
    .catchall {:try_start_856 .. :try_end_85f} :catchall_881

    if-nez v3, :cond_87f

    .line 4347
    iget v3, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->checkInitializedCount:I

    move v11, v3

    move-object v4, v5

    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v4    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v11    # "i":I
    :goto_865
    iget v3, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v11, v3, :cond_879

    .line 4348
    iget-object v3, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v11

    .line 4349
    move-object/from16 v6, p3

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 4347
    move-object v6, v5

    add-int/lit8 v11, v11, 0x1

    goto :goto_865

    .line 4352
    .end local v11    # "i":I
    :cond_879
    if-eqz v4, :cond_87e

    .line 4353
    invoke-virtual {v6, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4341
    :cond_87e
    return-void

    .line 4345
    .end local v0    # "e":Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .end local v4    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v9    # "number":I
    .end local v10    # "pos":I
    .end local v14    # "typeAndOffset":I
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :cond_87f
    :goto_87f
    goto/16 :goto_8

    .line 4347
    :catchall_881
    move-exception v0

    goto :goto_892

    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :catchall_883
    move-exception v0

    move-object v6, v13

    move-object v13, v7

    :goto_886
    move-object v7, v6

    :goto_887
    move-object v6, v11

    :goto_888
    move-object v5, v12

    goto :goto_892

    .end local v12    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    :catchall_88a
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v2, p3

    move-object/from16 v13, p4

    move-object v12, v5

    :goto_892
    iget v3, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->checkInitializedCount:I

    move v9, v3

    move-object v4, v5

    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v4    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v9, "i":I
    :goto_896
    iget v3, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v9, v3, :cond_8ac

    .line 4348
    iget-object v3, v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v9

    .line 4349
    move-object/from16 v6, p3

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 4347
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move-object v6, v5

    goto :goto_896

    :cond_8ac
    move-object v5, v6

    .line 4352
    .end local v9    # "i":I
    if-eqz v4, :cond_8b2

    .line 4353
    invoke-virtual {v5, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4355
    :cond_8b2
    throw v0

    nop

    :pswitch_data_8b4
    .packed-switch 0x0
        :pswitch_7d9
        :pswitch_7c7
        :pswitch_7b5
        :pswitch_7a3
        :pswitch_791
        :pswitch_77e
        :pswitch_76b
        :pswitch_758
        :pswitch_74d
        :pswitch_737
        :pswitch_724
        :pswitch_711
        :pswitch_6e8
        :pswitch_6d5
        :pswitch_6c2
        :pswitch_6af
        :pswitch_69c
        :pswitch_686
        :pswitch_674
        :pswitch_662
        :pswitch_650
        :pswitch_63e
        :pswitch_62c
        :pswitch_61a
        :pswitch_608
        :pswitch_5f6
        :pswitch_5ee
        :pswitch_5c5
        :pswitch_5a1
        :pswitch_58d
        :pswitch_53e
        :pswitch_513
        :pswitch_4f9
        :pswitch_4df
        :pswitch_4c5
        :pswitch_4ab
        :pswitch_491
        :pswitch_477
        :pswitch_45d
        :pswitch_443
        :pswitch_429
        :pswitch_40f
        :pswitch_3f5
        :pswitch_3db
        :pswitch_38b
        :pswitch_377
        :pswitch_363
        :pswitch_34f
        :pswitch_33b
        :pswitch_2f8
        :pswitch_2cc
        :pswitch_2a8
        :pswitch_290
        :pswitch_278
        :pswitch_260
        :pswitch_248
        :pswitch_230
        :pswitch_218
        :pswitch_200
        :pswitch_1f5
        :pswitch_1de
        :pswitch_1cb
        :pswitch_1b3
        :pswitch_183
        :pswitch_16b
        :pswitch_153
        :pswitch_13b
        :pswitch_123
        :pswitch_10c
    .end packed-switch
.end method

.method private final blacklist mergeMap(Ljava/lang/Object;ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/Reader;)V
    .registers 11
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "pos"    # I
    .param p3, "mapDefaultEntry"    # Ljava/lang/Object;
    .param p4, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .param p5, "reader"    # Landroid/net/connectivity/com/google/protobuf/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            "Landroid/net/connectivity/com/google/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5571
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    invoke-direct {p0, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 5572
    .local v0, "offset":J
    invoke-static {p1, v0, v1}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5577
    .local v2, "mapField":Ljava/lang/Object;
    if-nez v2, :cond_18

    .line 5578
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    invoke-interface {v3, p3}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5579
    invoke-static {p1, v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2f

    .line 5580
    :cond_18
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    invoke-interface {v3, v2}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 5581
    move-object v3, v2

    .line 5582
    .local v3, "oldMapField":Ljava/lang/Object;
    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    invoke-interface {v4, p3}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5583
    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    invoke-interface {v4, v2, v3}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5584
    invoke-static {p1, v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5586
    .end local v3    # "oldMapField":Ljava/lang/Object;
    :cond_2f
    :goto_2f
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    .line 5587
    invoke-interface {v3, v2}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    .line 5588
    invoke-interface {v4, p3}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;

    move-result-object v4

    .line 5586
    invoke-interface {p5, v3, v4, p4}, Landroid/net/connectivity/com/google/protobuf/Reader;->readMap(Ljava/util/Map;Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V

    .line 5590
    return-void
.end method

.method private blacklist mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 12
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1381
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "targetParent":Ljava/lang/Object;, "TT;"
    .local p2, "sourceParent":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1382
    return-void

    .line 1385
    :cond_7
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1386
    .local v0, "typeAndOffset":I
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 1388
    .local v1, "offset":J
    sget-object v3, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 1389
    .local v3, "source":Ljava/lang/Object;
    if-eqz v3, :cond_5a

    .line 1394
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v4

    .line 1395
    .local v4, "fieldSchema":Landroid/net/connectivity/com/google/protobuf/Schema;
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 1396
    invoke-static {v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 1398
    sget-object v5, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_39

    .line 1401
    :cond_2d
    invoke-interface {v4}, Landroid/net/connectivity/com/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 1402
    .local v5, "copyOfSource":Ljava/lang/Object;
    invoke-interface {v4, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1403
    sget-object v6, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6, p1, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1405
    .end local v5    # "copyOfSource":Ljava/lang/Object;
    :goto_39
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 1406
    return-void

    .line 1410
    :cond_3d
    sget-object v5, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 1411
    .local v5, "target":Ljava/lang/Object;
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_56

    .line 1412
    invoke-interface {v4}, Landroid/net/connectivity/com/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 1413
    .local v6, "newInstance":Ljava/lang/Object;
    invoke-interface {v4, v6, v5}, Landroid/net/connectivity/com/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1414
    sget-object v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v7, p1, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1415
    move-object v5, v6

    .line 1417
    .end local v6    # "newInstance":Ljava/lang/Object;
    :cond_56
    invoke-interface {v4, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1418
    return-void

    .line 1390
    .end local v4    # "fieldSchema":Landroid/net/connectivity/com/google/protobuf/Schema;
    .end local v5    # "target":Ljava/lang/Object;
    :cond_5a
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Source subfield "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1391
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is present but null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private blacklist mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 12
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1421
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "targetParent":Ljava/lang/Object;, "TT;"
    .local p2, "sourceParent":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v0

    .line 1422
    .local v0, "number":I
    invoke-direct {p0, p2, v0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1423
    return-void

    .line 1426
    :cond_b
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 1427
    .local v1, "offset":J
    sget-object v3, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 1428
    .local v3, "source":Ljava/lang/Object;
    if-eqz v3, :cond_5e

    .line 1433
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v4

    .line 1434
    .local v4, "fieldSchema":Landroid/net/connectivity/com/google/protobuf/Schema;
    invoke-direct {p0, p1, v0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_41

    .line 1435
    invoke-static {v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 1437
    sget-object v5, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3d

    .line 1440
    :cond_31
    invoke-interface {v4}, Landroid/net/connectivity/com/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 1441
    .local v5, "copyOfSource":Ljava/lang/Object;
    invoke-interface {v4, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1442
    sget-object v6, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6, p1, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1444
    .end local v5    # "copyOfSource":Ljava/lang/Object;
    :goto_3d
    invoke-direct {p0, p1, v0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 1445
    return-void

    .line 1449
    :cond_41
    sget-object v5, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 1450
    .local v5, "target":Ljava/lang/Object;
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5a

    .line 1451
    invoke-interface {v4}, Landroid/net/connectivity/com/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 1452
    .local v6, "newInstance":Ljava/lang/Object;
    invoke-interface {v4, v6, v5}, Landroid/net/connectivity/com/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1453
    sget-object v7, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v7, p1, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1454
    move-object v5, v6

    .line 1456
    .end local v6    # "newInstance":Ljava/lang/Object;
    :cond_5a
    invoke-interface {v4, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1457
    return-void

    .line 1429
    .end local v4    # "fieldSchema":Landroid/net/connectivity/com/google/protobuf/Schema;
    .end local v5    # "target":Ljava/lang/Object;
    :cond_5e
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Source subfield "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1430
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is present but null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private blacklist mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 10
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1198
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1199
    .local v0, "typeAndOffset":I
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 1200
    .local v1, "offset":J
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 1202
    .local v3, "number":I
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->type(I)I

    move-result v4

    packed-switch v4, :pswitch_data_174

    goto/16 :goto_173

    .line 1373
    :pswitch_15
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1374
    goto/16 :goto_173

    .line 1367
    :pswitch_1a
    invoke-direct {p0, p2, v3, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1368
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1369
    invoke-direct {p0, p1, v3, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_173

    .line 1358
    :pswitch_2c
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1359
    goto/16 :goto_173

    .line 1351
    :pswitch_31
    invoke-direct {p0, p2, v3, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1352
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1353
    invoke-direct {p0, p1, v3, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_173

    .line 1340
    :pswitch_43
    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    invoke-static {v4, p1, p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->mergeMap(Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 1341
    goto/16 :goto_173

    .line 1337
    :pswitch_4a
    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    invoke-virtual {v4, p1, p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 1338
    goto/16 :goto_173

    .line 1303
    :pswitch_51
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1304
    goto/16 :goto_173

    .line 1297
    :pswitch_56
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1298
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1299
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1291
    :pswitch_68
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1292
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1293
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1285
    :pswitch_7a
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1286
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1287
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1279
    :pswitch_8c
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1280
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1281
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1273
    :pswitch_9e
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1274
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1275
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1267
    :pswitch_b0
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1268
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1269
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1261
    :pswitch_c2
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1262
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1263
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1258
    :pswitch_d4
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1259
    goto/16 :goto_173

    .line 1252
    :pswitch_d9
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1253
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1254
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1246
    :pswitch_eb
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1247
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p1, v1, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 1248
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1240
    :pswitch_fd
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1241
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1242
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1234
    :pswitch_10e
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1235
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1236
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1228
    :pswitch_11f
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1229
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1230
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1222
    :pswitch_130
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1223
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1224
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1216
    :pswitch_141
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1217
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1218
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1210
    :pswitch_152
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1211
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {p1, v1, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 1212
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1204
    :pswitch_163
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    .line 1205
    invoke-static {p2, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 1206
    invoke-direct {p0, p1, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 1378
    :cond_173
    :goto_173
    return-void

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_163
        :pswitch_152
        :pswitch_141
        :pswitch_130
        :pswitch_11f
        :pswitch_10e
        :pswitch_fd
        :pswitch_eb
        :pswitch_d9
        :pswitch_d4
        :pswitch_c2
        :pswitch_b0
        :pswitch_9e
        :pswitch_8c
        :pswitch_7a
        :pswitch_68
        :pswitch_56
        :pswitch_51
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_43
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_2c
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method private blacklist mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 8
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 5174
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v0

    .line 5175
    .local v0, "fieldSchema":Landroid/net/connectivity/com/google/protobuf/Schema;
    invoke-direct {p0, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 5178
    .local v1, "offset":J
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_17

    .line 5179
    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 5183
    :cond_17
    sget-object v3, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 5184
    .local v3, "current":Ljava/lang/Object;
    invoke-static {v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 5185
    return-object v3

    .line 5189
    :cond_24
    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 5190
    .local v4, "newMessage":Ljava/lang/Object;
    if-eqz v3, :cond_2d

    .line 5191
    invoke-interface {v0, v4, v3}, Landroid/net/connectivity/com/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5193
    :cond_2d
    return-object v4
.end method

.method private blacklist mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 8
    .param p2, "fieldNumber"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 5202
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v0

    .line 5205
    .local v0, "fieldSchema":Landroid/net/connectivity/com/google/protobuf/Schema;
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_f

    .line 5206
    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 5210
    :cond_f
    sget-object v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 5211
    .local v1, "current":Ljava/lang/Object;
    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 5212
    return-object v1

    .line 5216
    :cond_24
    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 5217
    .local v2, "newMessage":Ljava/lang/Object;
    if-eqz v1, :cond_2d

    .line 5218
    invoke-interface {v0, v2, v1}, Landroid/net/connectivity/com/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5220
    :cond_2d
    return-object v2
.end method

.method static blacklist newSchema(Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/MessageInfo;Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;)Landroid/net/connectivity/com/google/protobuf/MessageSchema;
    .registers 14
    .param p1, "messageInfo"    # Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    .param p2, "newInstanceSchema"    # Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;
    .param p3, "listFieldSchema"    # Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;
    .param p6, "mapFieldSchema"    # Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/net/connectivity/com/google/protobuf/MessageInfo;",
            "Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;",
            "Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;",
            "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<",
            "**>;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<",
            "*>;",
            "Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;",
            ")",
            "Landroid/net/connectivity/com/google/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 228
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<**>;"
    .local p5, "extensionSchema":Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;, "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<*>;"
    instance-of v0, p1, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;

    if-eqz v0, :cond_16

    .line 229
    move-object v1, p1

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p2    # "newInstanceSchema":Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;
    .end local p3    # "listFieldSchema":Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;
    .end local p4    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<**>;"
    .end local p5    # "extensionSchema":Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;, "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<*>;"
    .end local p6    # "mapFieldSchema":Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;
    .local v2, "newInstanceSchema":Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;
    .local v3, "listFieldSchema":Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;
    .local v4, "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<**>;"
    .local v5, "extensionSchema":Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;, "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<*>;"
    .local v6, "mapFieldSchema":Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;
    invoke-static/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->newSchemaForRawMessageInfo(Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;)Landroid/net/connectivity/com/google/protobuf/MessageSchema;

    move-result-object p2

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .end local v6    # "mapFieldSchema":Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;
    .local v1, "newInstanceSchema":Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;
    .local v2, "listFieldSchema":Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;
    .local v3, "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<**>;"
    .local v4, "extensionSchema":Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;, "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<*>;"
    .local v5, "mapFieldSchema":Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;
    return-object p2

    .line 238
    .end local v1    # "newInstanceSchema":Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;
    .end local v2    # "listFieldSchema":Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;
    .end local v3    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<**>;"
    .end local v4    # "extensionSchema":Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;, "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<*>;"
    .end local v5    # "mapFieldSchema":Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;
    .restart local p2    # "newInstanceSchema":Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;
    .restart local p3    # "listFieldSchema":Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;
    .restart local p4    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<**>;"
    .restart local p5    # "extensionSchema":Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;, "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<*>;"
    .restart local p6    # "mapFieldSchema":Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;
    :cond_16
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .end local p2    # "newInstanceSchema":Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;
    .end local p3    # "listFieldSchema":Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;
    .end local p4    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<**>;"
    .end local p5    # "extensionSchema":Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;, "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<*>;"
    .end local p6    # "mapFieldSchema":Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;
    .restart local v1    # "newInstanceSchema":Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;
    .restart local v2    # "listFieldSchema":Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;
    .restart local v3    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<**>;"
    .restart local v4    # "extensionSchema":Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;, "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<*>;"
    .restart local v5    # "mapFieldSchema":Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/StructuralMessageInfo;

    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->newSchemaForMessageInfo(Landroid/net/connectivity/com/google/protobuf/StructuralMessageInfo;Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;)Landroid/net/connectivity/com/google/protobuf/MessageSchema;

    move-result-object p2

    return-object p2
.end method

.method static blacklist newSchemaForMessageInfo(Landroid/net/connectivity/com/google/protobuf/StructuralMessageInfo;Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;)Landroid/net/connectivity/com/google/protobuf/MessageSchema;
    .registers 31
    .param p0, "messageInfo"    # Landroid/net/connectivity/com/google/protobuf/StructuralMessageInfo;
    .param p1, "newInstanceSchema"    # Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;
    .param p2, "listFieldSchema"    # Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;
    .param p5, "mapFieldSchema"    # Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/StructuralMessageInfo;",
            "Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;",
            "Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;",
            "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<",
            "**>;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<",
            "*>;",
            "Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;",
            ")",
            "Landroid/net/connectivity/com/google/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 627
    .local p3, "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<**>;"
    .local p4, "extensionSchema":Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;, "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<*>;"
    invoke-virtual/range {p0 .. p0}, Landroid/net/connectivity/com/google/protobuf/StructuralMessageInfo;->getSyntax()Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;->PROTO3:Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_c

    move v0, v3

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    move v10, v0

    .line 628
    .local v10, "isProto3":Z
    invoke-virtual/range {p0 .. p0}, Landroid/net/connectivity/com/google/protobuf/StructuralMessageInfo;->getFields()[Landroid/net/connectivity/com/google/protobuf/FieldInfo;

    move-result-object v0

    .line 631
    .local v0, "fis":[Landroid/net/connectivity/com/google/protobuf/FieldInfo;
    array-length v1, v0

    if-nez v1, :cond_1a

    .line 632
    const/4 v1, 0x0

    .line 633
    .local v1, "minFieldNumber":I
    const/4 v3, 0x0

    move v7, v1

    move v8, v3

    .local v3, "maxFieldNumber":I
    goto :goto_2a

    .line 635
    .end local v1    # "minFieldNumber":I
    .end local v3    # "maxFieldNumber":I
    :cond_1a
    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v1

    .line 636
    .restart local v1    # "minFieldNumber":I
    array-length v4, v0

    sub-int/2addr v4, v3

    aget-object v3, v0, v4

    invoke-virtual {v3}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v3

    move v7, v1

    move v8, v3

    .line 639
    .end local v1    # "minFieldNumber":I
    .local v7, "minFieldNumber":I
    .local v8, "maxFieldNumber":I
    :goto_2a
    array-length v1, v0

    .line 641
    .local v1, "numEntries":I
    mul-int/lit8 v3, v1, 0x3

    new-array v5, v3, [I

    .line 642
    .local v5, "buffer":[I
    mul-int/lit8 v3, v1, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    .line 644
    .local v6, "objects":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 645
    .local v3, "mapFieldCount":I
    const/4 v4, 0x0

    .line 646
    .local v4, "repeatedFieldCount":I
    array-length v9, v0

    move v11, v2

    :goto_37
    const/16 v12, 0x31

    const/16 v13, 0x12

    if-ge v11, v9, :cond_64

    aget-object v14, v0, v11

    .line 647
    .local v14, "fi":Landroid/net/connectivity/com/google/protobuf/FieldInfo;
    invoke-virtual {v14}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getType()Landroid/net/connectivity/com/google/protobuf/FieldType;

    move-result-object v15

    sget-object v2, Landroid/net/connectivity/com/google/protobuf/FieldType;->MAP:Landroid/net/connectivity/com/google/protobuf/FieldType;

    if-ne v15, v2, :cond_4a

    .line 648
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 649
    :cond_4a
    invoke-virtual {v14}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getType()Landroid/net/connectivity/com/google/protobuf/FieldType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/com/google/protobuf/FieldType;->id()I

    move-result v2

    if-lt v2, v13, :cond_60

    invoke-virtual {v14}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getType()Landroid/net/connectivity/com/google/protobuf/FieldType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/com/google/protobuf/FieldType;->id()I

    move-result v2

    if-gt v2, v12, :cond_60

    .line 652
    add-int/lit8 v4, v4, 0x1

    .line 646
    .end local v14    # "fi":Landroid/net/connectivity/com/google/protobuf/FieldInfo;
    :cond_60
    :goto_60
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    goto :goto_37

    .line 655
    :cond_64
    const/4 v2, 0x0

    if-lez v3, :cond_6a

    new-array v9, v3, [I

    goto :goto_6b

    :cond_6a
    move-object v9, v2

    .line 656
    .local v9, "mapFieldPositions":[I
    :goto_6b
    if-lez v4, :cond_6f

    new-array v2, v4, [I

    .line 657
    .local v2, "repeatedFieldOffsets":[I
    :cond_6f
    const/4 v3, 0x0

    .line 658
    const/4 v4, 0x0

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/net/connectivity/com/google/protobuf/StructuralMessageInfo;->getCheckInitialized()[I

    move-result-object v11

    .line 661
    .local v11, "checkInitialized":[I
    if-nez v11, :cond_79

    .line 662
    sget-object v11, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 664
    :cond_79
    const/4 v14, 0x0

    .line 666
    .local v14, "checkInitializedIndex":I
    const/4 v15, 0x0

    .line 667
    .local v15, "fieldIndex":I
    const/16 v17, 0x0

    move/from16 v20, v4

    move v4, v14

    move v14, v15

    move/from16 v15, v17

    .local v4, "checkInitializedIndex":I
    .local v14, "fieldIndex":I
    .local v15, "bufferIndex":I
    .local v20, "repeatedFieldCount":I
    :goto_83
    array-length v12, v0

    if-ge v14, v12, :cond_eb

    .line 668
    aget-object v12, v0, v14

    .line 669
    .local v12, "fi":Landroid/net/connectivity/com/google/protobuf/FieldInfo;
    invoke-virtual {v12}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v13

    .line 673
    .local v13, "fieldNumber":I
    invoke-static {v12, v5, v15, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->storeFieldData(Landroid/net/connectivity/com/google/protobuf/FieldInfo;[II[Ljava/lang/Object;)V

    .line 676
    move-object/from16 v21, v0

    .end local v0    # "fis":[Landroid/net/connectivity/com/google/protobuf/FieldInfo;
    .local v21, "fis":[Landroid/net/connectivity/com/google/protobuf/FieldInfo;
    array-length v0, v11

    if-ge v4, v0, :cond_9d

    aget v0, v11, v4

    if-ne v0, v13, :cond_9d

    .line 678
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "checkInitializedIndex":I
    .local v0, "checkInitializedIndex":I
    aput v15, v11, v4

    move v4, v0

    .line 681
    .end local v0    # "checkInitializedIndex":I
    .restart local v4    # "checkInitializedIndex":I
    :cond_9d
    invoke-virtual {v12}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getType()Landroid/net/connectivity/com/google/protobuf/FieldType;

    move-result-object v0

    move/from16 v22, v1

    .end local v1    # "numEntries":I
    .local v22, "numEntries":I
    sget-object v1, Landroid/net/connectivity/com/google/protobuf/FieldType;->MAP:Landroid/net/connectivity/com/google/protobuf/FieldType;

    if-ne v0, v1, :cond_af

    .line 682
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "mapFieldCount":I
    .local v0, "mapFieldCount":I
    aput v15, v9, v3

    move v3, v0

    move-object/from16 v19, v2

    goto :goto_db

    .line 683
    .end local v0    # "mapFieldCount":I
    .restart local v3    # "mapFieldCount":I
    :cond_af
    invoke-virtual {v12}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getType()Landroid/net/connectivity/com/google/protobuf/FieldType;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/FieldType;->id()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_d9

    invoke-virtual {v12}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getType()Landroid/net/connectivity/com/google/protobuf/FieldType;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/FieldType;->id()I

    move-result v0

    const/16 v1, 0x31

    if-gt v0, v1, :cond_d9

    .line 686
    add-int/lit8 v0, v20, 0x1

    .line 687
    .end local v20    # "repeatedFieldCount":I
    .local v0, "repeatedFieldCount":I
    invoke-virtual {v12}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v17

    move-object/from16 v19, v2

    .end local v2    # "repeatedFieldOffsets":[I
    .local v19, "repeatedFieldOffsets":[I
    invoke-static/range {v17 .. v17}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    aput v1, v19, v20

    move/from16 v20, v0

    goto :goto_db

    .line 683
    .end local v0    # "repeatedFieldCount":I
    .end local v19    # "repeatedFieldOffsets":[I
    .restart local v2    # "repeatedFieldOffsets":[I
    .restart local v20    # "repeatedFieldCount":I
    :cond_d9
    move-object/from16 v19, v2

    .line 690
    .end local v2    # "repeatedFieldOffsets":[I
    .restart local v19    # "repeatedFieldOffsets":[I
    :goto_db
    nop

    .end local v12    # "fi":Landroid/net/connectivity/com/google/protobuf/FieldInfo;
    .end local v13    # "fieldNumber":I
    add-int/lit8 v14, v14, 0x1

    .line 667
    add-int/lit8 v15, v15, 0x3

    move-object/from16 v2, v19

    move-object/from16 v0, v21

    move/from16 v1, v22

    const/16 v12, 0x31

    const/16 v13, 0x12

    goto :goto_83

    .end local v19    # "repeatedFieldOffsets":[I
    .end local v21    # "fis":[Landroid/net/connectivity/com/google/protobuf/FieldInfo;
    .end local v22    # "numEntries":I
    .local v0, "fis":[Landroid/net/connectivity/com/google/protobuf/FieldInfo;
    .restart local v1    # "numEntries":I
    .restart local v2    # "repeatedFieldOffsets":[I
    :cond_eb
    move-object/from16 v21, v0

    move/from16 v22, v1

    move-object/from16 v19, v2

    .line 693
    .end local v0    # "fis":[Landroid/net/connectivity/com/google/protobuf/FieldInfo;
    .end local v1    # "numEntries":I
    .end local v2    # "repeatedFieldOffsets":[I
    .end local v15    # "bufferIndex":I
    .restart local v19    # "repeatedFieldOffsets":[I
    .restart local v21    # "fis":[Landroid/net/connectivity/com/google/protobuf/FieldInfo;
    .restart local v22    # "numEntries":I
    if-nez v9, :cond_f7

    .line 694
    sget-object v9, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move-object v0, v9

    goto :goto_f8

    .line 693
    :cond_f7
    move-object v0, v9

    .line 696
    .end local v9    # "mapFieldPositions":[I
    .local v0, "mapFieldPositions":[I
    :goto_f8
    if-nez v19, :cond_fd

    .line 697
    sget-object v2, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .end local v19    # "repeatedFieldOffsets":[I
    .restart local v2    # "repeatedFieldOffsets":[I
    goto :goto_ff

    .line 696
    .end local v2    # "repeatedFieldOffsets":[I
    .restart local v19    # "repeatedFieldOffsets":[I
    :cond_fd
    move-object/from16 v2, v19

    .line 699
    .end local v19    # "repeatedFieldOffsets":[I
    .restart local v2    # "repeatedFieldOffsets":[I
    :goto_ff
    array-length v1, v11

    array-length v9, v0

    add-int/2addr v1, v9

    array-length v9, v2

    add-int/2addr v1, v9

    new-array v12, v1, [I

    .line 701
    .local v12, "combined":[I
    array-length v1, v11

    const/4 v9, 0x0

    invoke-static {v11, v9, v12, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    array-length v1, v11

    array-length v13, v0

    invoke-static {v0, v9, v12, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 704
    array-length v1, v11

    array-length v13, v0

    add-int/2addr v1, v13

    array-length v13, v2

    invoke-static {v2, v9, v12, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 711
    move v1, v4

    .end local v4    # "checkInitializedIndex":I
    .local v1, "checkInitializedIndex":I
    new-instance v4, Landroid/net/connectivity/com/google/protobuf/MessageSchema;

    .line 716
    invoke-virtual/range {p0 .. p0}, Landroid/net/connectivity/com/google/protobuf/StructuralMessageInfo;->getDefaultInstance()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v9

    array-length v13, v11

    array-length v15, v11

    move/from16 v16, v1

    .end local v1    # "checkInitializedIndex":I
    .local v16, "checkInitializedIndex":I
    array-length v1, v0

    add-int/2addr v15, v1

    move-object v1, v11

    .end local v11    # "checkInitialized":[I
    .local v1, "checkInitialized":[I
    const/4 v11, 0x1

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v24, v1

    move v1, v14

    move v14, v15

    move/from16 v23, v16

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    .end local v14    # "fieldIndex":I
    .end local v16    # "checkInitializedIndex":I
    .local v1, "fieldIndex":I
    .local v23, "checkInitializedIndex":I
    .local v24, "checkInitialized":[I
    invoke-direct/range {v4 .. v19}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILandroid/net/connectivity/com/google/protobuf/MessageLite;ZZ[IIILandroid/net/connectivity/com/google/protobuf/NewInstanceSchema;Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;)V

    .line 711
    return-object v4
.end method

.method static blacklist newSchemaForRawMessageInfo(Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;)Landroid/net/connectivity/com/google/protobuf/MessageSchema;
    .registers 48
    .param p0, "messageInfo"    # Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;
    .param p1, "newInstanceSchema"    # Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;
    .param p2, "listFieldSchema"    # Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;
    .param p5, "mapFieldSchema"    # Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;",
            "Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;",
            "Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;",
            "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<",
            "**>;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<",
            "*>;",
            "Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;",
            ")",
            "Landroid/net/connectivity/com/google/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 255
    .local p3, "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<**>;"
    .local p4, "extensionSchema":Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;, "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<*>;"
    invoke-virtual/range {p0 .. p0}, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;->getSyntax()Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;->PROTO3:Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    move v10, v0

    .line 257
    .local v10, "isProto3":Z
    invoke-virtual/range {p0 .. p0}, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;->getStringInfo()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "info":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 259
    .local v1, "length":I
    const/4 v4, 0x0

    .line 261
    .local v4, "i":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 262
    .local v4, "next":I
    const v6, 0xd800

    if-lt v4, v6, :cond_3a

    .line 263
    and-int/lit16 v7, v4, 0x1fff

    .line 264
    .local v7, "result":I
    const/16 v8, 0xd

    .line 265
    .local v8, "shift":I
    :goto_24
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "i":I
    .local v9, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    if-lt v5, v6, :cond_35

    .line 266
    and-int/lit16 v5, v4, 0x1fff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    .line 267
    add-int/lit8 v8, v8, 0xd

    move v5, v9

    goto :goto_24

    .line 269
    :cond_35
    shl-int v5, v4, v8

    or-int v4, v7, v5

    move v5, v9

    .line 271
    .end local v7    # "result":I
    .end local v8    # "shift":I
    .end local v9    # "i":I
    .restart local v5    # "i":I
    :cond_3a
    move/from16 v20, v4

    .line 273
    .local v20, "unusedFlags":I
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "i":I
    .local v7, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 274
    if-lt v4, v6, :cond_5e

    .line 275
    and-int/lit16 v5, v4, 0x1fff

    .line 276
    .local v5, "result":I
    const/16 v8, 0xd

    .line 277
    .restart local v8    # "shift":I
    :goto_48
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    if-lt v7, v6, :cond_59

    .line 278
    and-int/lit16 v7, v4, 0x1fff

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    .line 279
    add-int/lit8 v8, v8, 0xd

    move v7, v9

    goto :goto_48

    .line 281
    :cond_59
    shl-int v7, v4, v8

    or-int v4, v5, v7

    move v7, v9

    .line 283
    .end local v5    # "result":I
    .end local v8    # "shift":I
    .end local v9    # "i":I
    .restart local v7    # "i":I
    :cond_5e
    move/from16 v21, v4

    .line 295
    .local v21, "fieldCount":I
    if-nez v21, :cond_7f

    .line 296
    const/4 v5, 0x0

    .line 297
    .local v5, "oneofCount":I
    const/4 v8, 0x0

    .line 298
    .local v8, "hasBitsCount":I
    const/4 v9, 0x0

    .line 299
    .local v9, "minFieldNumber":I
    const/4 v11, 0x0

    .line 300
    .local v11, "maxFieldNumber":I
    const/4 v12, 0x0

    .line 301
    .local v12, "numEntries":I
    const/4 v13, 0x0

    .line 302
    .local v13, "mapFieldCount":I
    const/4 v14, 0x0

    .line 303
    .local v14, "repeatedFieldCount":I
    const/4 v15, 0x0

    .line 304
    .local v15, "checkInitialized":I
    sget-object v16, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 305
    .local v16, "intArray":[I
    const/16 v17, 0x0

    move v2, v5

    move/from16 v22, v8

    move v8, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move v13, v15

    move-object/from16 v12, v16

    move/from16 v16, v17

    .local v17, "objectsPosition":I
    goto/16 :goto_1b7

    .line 307
    .end local v5    # "oneofCount":I
    .end local v8    # "hasBitsCount":I
    .end local v9    # "minFieldNumber":I
    .end local v11    # "maxFieldNumber":I
    .end local v12    # "numEntries":I
    .end local v13    # "mapFieldCount":I
    .end local v14    # "repeatedFieldCount":I
    .end local v15    # "checkInitialized":I
    .end local v16    # "intArray":[I
    .end local v17    # "objectsPosition":I
    :cond_7f
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "i":I
    .local v5, "i":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 308
    if-lt v4, v6, :cond_a1

    .line 309
    and-int/lit16 v7, v4, 0x1fff

    .line 310
    .local v7, "result":I
    const/16 v8, 0xd

    .line 311
    .local v8, "shift":I
    :goto_8b
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "i":I
    .local v9, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    if-lt v5, v6, :cond_9c

    .line 312
    and-int/lit16 v5, v4, 0x1fff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    .line 313
    add-int/lit8 v8, v8, 0xd

    move v5, v9

    goto :goto_8b

    .line 315
    :cond_9c
    shl-int v5, v4, v8

    or-int v4, v7, v5

    move v5, v9

    .line 317
    .end local v7    # "result":I
    .end local v8    # "shift":I
    .end local v9    # "i":I
    .restart local v5    # "i":I
    :cond_a1
    move v7, v4

    .line 319
    .local v7, "oneofCount":I
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 320
    if-lt v4, v6, :cond_c4

    .line 321
    and-int/lit16 v5, v4, 0x1fff

    .line 322
    .local v5, "result":I
    const/16 v9, 0xd

    .line 323
    .local v9, "shift":I
    :goto_ae
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "i":I
    .local v11, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v4, v8

    if-lt v8, v6, :cond_bf

    .line 324
    and-int/lit16 v8, v4, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    .line 325
    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_ae

    .line 327
    :cond_bf
    shl-int v8, v4, v9

    or-int v4, v5, v8

    move v8, v11

    .line 329
    .end local v5    # "result":I
    .end local v9    # "shift":I
    .end local v11    # "i":I
    .restart local v8    # "i":I
    :cond_c4
    move v5, v4

    .line 331
    .local v5, "hasBitsCount":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 332
    if-lt v4, v6, :cond_e7

    .line 333
    and-int/lit16 v8, v4, 0x1fff

    .line 334
    .local v8, "result":I
    const/16 v11, 0xd

    .line 335
    .local v11, "shift":I
    :goto_d1
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "i":I
    .local v12, "i":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v4, v9

    if-lt v9, v6, :cond_e2

    .line 336
    and-int/lit16 v9, v4, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    .line 337
    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_d1

    .line 339
    :cond_e2
    shl-int v9, v4, v11

    or-int v4, v8, v9

    move v9, v12

    .line 341
    .end local v8    # "result":I
    .end local v11    # "shift":I
    .end local v12    # "i":I
    .restart local v9    # "i":I
    :cond_e7
    move v8, v4

    .line 343
    .local v8, "minFieldNumber":I
    add-int/lit8 v11, v9, 0x1

    .end local v9    # "i":I
    .local v11, "i":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 344
    if-lt v4, v6, :cond_10a

    .line 345
    and-int/lit16 v9, v4, 0x1fff

    .line 346
    .local v9, "result":I
    const/16 v12, 0xd

    .line 347
    .local v12, "shift":I
    :goto_f4
    add-int/lit8 v13, v11, 0x1

    .end local v11    # "i":I
    .local v13, "i":I
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v4, v11

    if-lt v11, v6, :cond_105

    .line 348
    and-int/lit16 v11, v4, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    .line 349
    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_f4

    .line 351
    :cond_105
    shl-int v11, v4, v12

    or-int v4, v9, v11

    move v11, v13

    .line 353
    .end local v9    # "result":I
    .end local v12    # "shift":I
    .end local v13    # "i":I
    .restart local v11    # "i":I
    :cond_10a
    move v9, v4

    .line 355
    .local v9, "maxFieldNumber":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .local v12, "i":I
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 356
    if-lt v4, v6, :cond_12d

    .line 357
    and-int/lit16 v11, v4, 0x1fff

    .line 358
    .local v11, "result":I
    const/16 v13, 0xd

    .line 359
    .local v13, "shift":I
    :goto_117
    add-int/lit8 v14, v12, 0x1

    .end local v12    # "i":I
    .local v14, "i":I
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v4, v12

    if-lt v12, v6, :cond_128

    .line 360
    and-int/lit16 v12, v4, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    .line 361
    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_117

    .line 363
    :cond_128
    shl-int v12, v4, v13

    or-int v4, v11, v12

    move v12, v14

    .line 365
    .end local v11    # "result":I
    .end local v13    # "shift":I
    .end local v14    # "i":I
    .restart local v12    # "i":I
    :cond_12d
    move v11, v4

    .line 367
    .local v11, "numEntries":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "i":I
    .local v13, "i":I
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 368
    if-lt v4, v6, :cond_150

    .line 369
    and-int/lit16 v12, v4, 0x1fff

    .line 370
    .local v12, "result":I
    const/16 v14, 0xd

    .line 371
    .local v14, "shift":I
    :goto_13a
    add-int/lit8 v15, v13, 0x1

    .end local v13    # "i":I
    .local v15, "i":I
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v4, v13

    if-lt v13, v6, :cond_14b

    .line 372
    and-int/lit16 v13, v4, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    .line 373
    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_13a

    .line 375
    :cond_14b
    shl-int v13, v4, v14

    or-int v4, v12, v13

    move v13, v15

    .line 377
    .end local v12    # "result":I
    .end local v14    # "shift":I
    .end local v15    # "i":I
    .restart local v13    # "i":I
    :cond_150
    move v12, v4

    .line 379
    .local v12, "mapFieldCount":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "i":I
    .local v14, "i":I
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 380
    if-lt v4, v6, :cond_175

    .line 381
    and-int/lit16 v13, v4, 0x1fff

    .line 382
    .local v13, "result":I
    const/16 v15, 0xd

    .line 383
    .local v15, "shift":I
    :goto_15d
    add-int/lit8 v16, v14, 0x1

    .end local v14    # "i":I
    .local v16, "i":I
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move v4, v14

    if-lt v14, v6, :cond_16f

    .line 384
    and-int/lit16 v14, v4, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    .line 385
    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_15d

    .line 387
    :cond_16f
    shl-int v14, v4, v15

    or-int v4, v13, v14

    move/from16 v14, v16

    .line 389
    .end local v13    # "result":I
    .end local v15    # "shift":I
    .end local v16    # "i":I
    .restart local v14    # "i":I
    :cond_175
    move v13, v4

    .line 391
    .local v13, "repeatedFieldCount":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .local v15, "i":I
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 392
    if-lt v4, v6, :cond_19b

    .line 393
    and-int/lit16 v14, v4, 0x1fff

    .line 394
    .local v14, "result":I
    const/16 v16, 0xd

    .line 395
    .local v16, "shift":I
    :goto_182
    add-int/lit8 v17, v15, 0x1

    .end local v15    # "i":I
    .local v17, "i":I
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move v4, v15

    if-lt v15, v6, :cond_195

    .line 396
    and-int/lit16 v15, v4, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    .line 397
    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_182

    .line 399
    :cond_195
    shl-int v15, v4, v16

    or-int v4, v14, v15

    move/from16 v15, v17

    .line 401
    .end local v14    # "result":I
    .end local v16    # "shift":I
    .end local v17    # "i":I
    .restart local v15    # "i":I
    :cond_19b
    move v14, v4

    .line 402
    .local v14, "checkInitialized":I
    add-int v16, v14, v12

    add-int v2, v16, v13

    new-array v2, v2, [I

    .line 404
    .local v2, "intArray":[I
    mul-int/lit8 v16, v7, 0x2

    add-int v16, v16, v5

    move/from16 v22, v9

    move v9, v8

    move/from16 v8, v22

    move/from16 v22, v5

    move/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move v13, v14

    move-object v12, v2

    move v2, v7

    move v7, v15

    .line 407
    .end local v5    # "hasBitsCount":I
    .end local v11    # "numEntries":I
    .end local v14    # "checkInitialized":I
    .end local v15    # "i":I
    .local v2, "oneofCount":I
    .local v7, "i":I
    .local v8, "maxFieldNumber":I
    .local v9, "minFieldNumber":I
    .local v12, "intArray":[I
    .local v13, "checkInitialized":I
    .local v16, "objectsPosition":I
    .local v22, "hasBitsCount":I
    .local v23, "numEntries":I
    .local v24, "mapFieldCount":I
    .local v25, "repeatedFieldCount":I
    :goto_1b7
    sget-object v5, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 408
    .local v5, "unsafe":Lsun/misc/Unsafe;
    invoke-virtual/range {p0 .. p0}, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;->getObjects()[Ljava/lang/Object;

    move-result-object v26

    .line 409
    .local v26, "messageInfoObjects":[Ljava/lang/Object;
    const/4 v11, 0x0

    .line 410
    .local v11, "checkInitializedPosition":I
    invoke-virtual/range {p0 .. p0}, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;->getDefaultInstance()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 411
    .local v14, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    mul-int/lit8 v15, v23, 0x3

    new-array v15, v15, [I

    .line 412
    .local v15, "buffer":[I
    const/16 v18, 0x1

    mul-int/lit8 v3, v23, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 414
    .local v3, "objects":[Ljava/lang/Object;
    move/from16 v19, v13

    .line 415
    .local v19, "mapFieldIndex":I
    add-int v27, v13, v24

    .line 417
    .local v27, "repeatedFieldIndex":I
    const/16 v28, 0x0

    move/from16 v29, v16

    move/from16 v30, v19

    move/from16 v31, v27

    move/from16 v32, v28

    move/from16 v27, v4

    move v4, v7

    move/from16 v28, v11

    .line 418
    .end local v7    # "i":I
    .end local v11    # "checkInitializedPosition":I
    .end local v16    # "objectsPosition":I
    .end local v19    # "mapFieldIndex":I
    .local v4, "i":I
    .local v27, "next":I
    .local v28, "checkInitializedPosition":I
    .local v29, "objectsPosition":I
    .local v30, "mapFieldIndex":I
    .local v31, "repeatedFieldIndex":I
    .local v32, "bufferIndex":I
    :goto_1e3
    if-ge v4, v1, :cond_46c

    .line 423
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 424
    .end local v27    # "next":I
    .local v4, "next":I
    if-lt v4, v6, :cond_20a

    .line 425
    and-int/lit16 v11, v4, 0x1fff

    .line 426
    .local v11, "result":I
    const/16 v16, 0xd

    .line 427
    .local v16, "shift":I
    :goto_1f1
    add-int/lit8 v19, v7, 0x1

    .end local v7    # "i":I
    .local v19, "i":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    if-lt v7, v6, :cond_204

    .line 428
    and-int/lit16 v7, v4, 0x1fff

    shl-int v7, v7, v16

    or-int/2addr v11, v7

    .line 429
    add-int/lit8 v16, v16, 0xd

    move/from16 v7, v19

    goto :goto_1f1

    .line 431
    :cond_204
    shl-int v7, v4, v16

    or-int v4, v11, v7

    move/from16 v7, v19

    .line 433
    .end local v11    # "result":I
    .end local v16    # "shift":I
    .end local v19    # "i":I
    .restart local v7    # "i":I
    :cond_20a
    move v11, v4

    .line 435
    .local v11, "fieldNumber":I
    add-int/lit8 v16, v7, 0x1

    .end local v7    # "i":I
    .local v16, "i":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 436
    if-lt v4, v6, :cond_23c

    .line 437
    and-int/lit16 v7, v4, 0x1fff

    .line 438
    .local v7, "result":I
    const/16 v19, 0xd

    move/from16 v6, v16

    move/from16 v16, v19

    .line 439
    .local v6, "i":I
    .local v16, "shift":I
    :goto_21b
    add-int/lit8 v27, v6, 0x1

    .end local v6    # "i":I
    .local v27, "i":I
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v4, v6

    move/from16 v33, v1

    const v1, 0xd800

    .end local v1    # "length":I
    .local v33, "length":I
    if-lt v6, v1, :cond_235

    .line 440
    and-int/lit16 v1, v4, 0x1fff

    shl-int v1, v1, v16

    or-int/2addr v7, v1

    .line 441
    add-int/lit8 v16, v16, 0xd

    move/from16 v6, v27

    move/from16 v1, v33

    goto :goto_21b

    .line 443
    :cond_235
    shl-int v1, v4, v16

    or-int v4, v7, v1

    move/from16 v1, v27

    goto :goto_240

    .line 436
    .end local v7    # "result":I
    .end local v27    # "i":I
    .end local v33    # "length":I
    .restart local v1    # "length":I
    .local v16, "i":I
    :cond_23c
    move/from16 v33, v1

    .end local v1    # "length":I
    .restart local v33    # "length":I
    move/from16 v1, v16

    .line 445
    .end local v16    # "i":I
    .local v1, "i":I
    :goto_240
    move v6, v4

    .line 446
    .local v6, "fieldTypeWithExtraBits":I
    and-int/lit16 v7, v6, 0xff

    .line 448
    .local v7, "fieldType":I
    move/from16 v34, v2

    .end local v2    # "oneofCount":I
    .local v34, "oneofCount":I
    and-int/lit16 v2, v6, 0x400

    if-eqz v2, :cond_24f

    .line 449
    add-int/lit8 v2, v28, 0x1

    .end local v28    # "checkInitializedPosition":I
    .local v2, "checkInitializedPosition":I
    aput v32, v12, v28

    move/from16 v28, v2

    .line 457
    .end local v2    # "checkInitializedPosition":I
    .restart local v28    # "checkInitializedPosition":I
    :cond_24f
    const/16 v2, 0x33

    move-object/from16 v35, v3

    .end local v3    # "objects":[Ljava/lang/Object;
    .local v35, "objects":[Ljava/lang/Object;
    if-lt v7, v2, :cond_304

    .line 458
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 459
    .end local v4    # "next":I
    .local v1, "next":I
    const v4, 0xd800

    if-lt v1, v4, :cond_280

    .line 460
    and-int/lit16 v4, v1, 0x1fff

    .line 461
    .local v4, "result":I
    const/16 v36, 0xd

    .line 462
    .local v36, "shift":I
    :goto_264
    add-int/lit8 v37, v2, 0x1

    .end local v2    # "i":I
    .local v37, "i":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v1, v2

    const v3, 0xd800

    if-lt v2, v3, :cond_27a

    .line 463
    and-int/lit16 v2, v1, 0x1fff

    shl-int v2, v2, v36

    or-int/2addr v4, v2

    .line 464
    add-int/lit8 v36, v36, 0xd

    move/from16 v2, v37

    goto :goto_264

    .line 466
    :cond_27a
    shl-int v2, v1, v36

    or-int v1, v4, v2

    move/from16 v2, v37

    .line 468
    .end local v4    # "result":I
    .end local v36    # "shift":I
    .end local v37    # "i":I
    .restart local v2    # "i":I
    :cond_280
    move v3, v1

    .line 470
    .local v3, "oneofIndex":I
    add-int/lit8 v4, v7, -0x33

    .line 471
    .local v4, "oneofFieldType":I
    move/from16 v36, v1

    const/16 v1, 0x9

    .end local v1    # "next":I
    .local v36, "next":I
    if-eq v4, v1, :cond_2a3

    const/16 v1, 0x11

    if-ne v4, v1, :cond_28e

    goto :goto_2a3

    .line 474
    :cond_28e
    const/16 v1, 0xc

    if-ne v4, v1, :cond_2b1

    .line 475
    if-nez v10, :cond_2b1

    .line 476
    div-int/lit8 v1, v32, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v16, v29, 0x1

    .end local v29    # "objectsPosition":I
    .local v16, "objectsPosition":I
    aget-object v27, v26, v29

    aput-object v27, v35, v1

    move/from16 v29, v16

    goto :goto_2b1

    .line 473
    .end local v16    # "objectsPosition":I
    .restart local v29    # "objectsPosition":I
    :cond_2a3
    :goto_2a3
    div-int/lit8 v1, v32, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v16, v29, 0x1

    .end local v29    # "objectsPosition":I
    .restart local v16    # "objectsPosition":I
    aget-object v27, v26, v29

    aput-object v27, v35, v1

    move/from16 v29, v16

    .line 481
    .end local v16    # "objectsPosition":I
    .restart local v29    # "objectsPosition":I
    :cond_2b1
    :goto_2b1
    mul-int/lit8 v1, v3, 0x2

    .line 482
    .local v1, "index":I
    move/from16 v16, v1

    .end local v1    # "index":I
    .local v16, "index":I
    aget-object v1, v26, v16

    .line 483
    .local v1, "o":Ljava/lang/Object;
    move/from16 v27, v2

    .end local v2    # "i":I
    .restart local v27    # "i":I
    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2c1

    .line 484
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/Field;

    .local v2, "oneofField":Ljava/lang/reflect/Field;
    goto :goto_2ca

    .line 486
    .end local v2    # "oneofField":Ljava/lang/reflect/Field;
    :cond_2c1
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v14, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 491
    .restart local v2    # "oneofField":Ljava/lang/reflect/Field;
    aput-object v2, v26, v16

    .line 494
    :goto_2ca
    move/from16 v37, v3

    move/from16 v38, v4

    .end local v3    # "oneofIndex":I
    .end local v4    # "oneofFieldType":I
    .local v37, "oneofIndex":I
    .local v38, "oneofFieldType":I
    invoke-virtual {v5, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 497
    .local v3, "fieldOffset":I
    add-int/lit8 v4, v16, 0x1

    .line 498
    .end local v16    # "index":I
    .local v4, "index":I
    aget-object v1, v26, v4

    .line 499
    move-object/from16 v16, v2

    .end local v2    # "oneofField":Ljava/lang/reflect/Field;
    .local v16, "oneofField":Ljava/lang/reflect/Field;
    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2e1

    .line 500
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/Field;

    .local v2, "oneofCaseField":Ljava/lang/reflect/Field;
    goto :goto_2ea

    .line 502
    .end local v2    # "oneofCaseField":Ljava/lang/reflect/Field;
    :cond_2e1
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v14, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 503
    .restart local v2    # "oneofCaseField":Ljava/lang/reflect/Field;
    aput-object v2, v26, v4

    .line 506
    :goto_2ea
    move/from16 v39, v3

    move/from16 v40, v4

    .end local v3    # "fieldOffset":I
    .end local v4    # "index":I
    .local v39, "fieldOffset":I
    .local v40, "index":I
    invoke-virtual {v5, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 507
    .local v3, "presenceFieldOffset":I
    const/4 v1, 0x0

    .line 508
    .end local v2    # "oneofCaseField":Ljava/lang/reflect/Field;
    .end local v16    # "oneofField":Ljava/lang/reflect/Field;
    .end local v37    # "oneofIndex":I
    .end local v38    # "oneofFieldType":I
    .end local v40    # "index":I
    .local v1, "presenceMaskShift":I
    move/from16 v4, v39

    move-object/from16 v39, v0

    move v0, v3

    move v3, v4

    move/from16 v16, v9

    move/from16 v4, v27

    move/from16 v27, v36

    move/from16 v36, v8

    goto/16 :goto_434

    .line 509
    .end local v3    # "presenceFieldOffset":I
    .end local v27    # "i":I
    .end local v36    # "next":I
    .end local v39    # "fieldOffset":I
    .local v1, "i":I
    .local v4, "next":I
    :cond_304
    add-int/lit8 v2, v29, 0x1

    .end local v29    # "objectsPosition":I
    .local v2, "objectsPosition":I
    aget-object v3, v26, v29

    check-cast v3, Ljava/lang/String;

    invoke-static {v14, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 510
    .local v3, "field":Ljava/lang/reflect/Field;
    move/from16 v36, v2

    .end local v2    # "objectsPosition":I
    .local v36, "objectsPosition":I
    const/16 v2, 0x9

    if-eq v7, v2, :cond_37e

    const/16 v2, 0x11

    if-ne v7, v2, :cond_31a

    goto/16 :goto_37e

    .line 512
    :cond_31a
    const/16 v2, 0x1b

    if-eq v7, v2, :cond_36f

    const/16 v2, 0x31

    if-ne v7, v2, :cond_323

    goto :goto_36f

    .line 515
    :cond_323
    const/16 v2, 0xc

    if-eq v7, v2, :cond_35e

    const/16 v2, 0x1e

    if-eq v7, v2, :cond_35e

    const/16 v2, 0x2c

    if-ne v7, v2, :cond_330

    goto :goto_35e

    .line 521
    :cond_330
    const/16 v2, 0x32

    if-ne v7, v2, :cond_38a

    .line 522
    add-int/lit8 v2, v30, 0x1

    .end local v30    # "mapFieldIndex":I
    .local v2, "mapFieldIndex":I
    aput v32, v12, v30

    .line 523
    div-int/lit8 v16, v32, 0x3

    mul-int/lit8 v16, v16, 0x2

    add-int/lit8 v27, v36, 0x1

    .end local v36    # "objectsPosition":I
    .local v27, "objectsPosition":I
    aget-object v30, v26, v36

    aput-object v30, v35, v16

    .line 524
    move/from16 v16, v2

    .end local v2    # "mapFieldIndex":I
    .local v16, "mapFieldIndex":I
    and-int/lit16 v2, v6, 0x800

    if-eqz v2, :cond_359

    .line 525
    div-int/lit8 v2, v32, 0x3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v30, v27, 0x1

    .end local v27    # "objectsPosition":I
    .local v30, "objectsPosition":I
    aget-object v27, v26, v27

    aput-object v27, v35, v2

    move/from16 v2, v30

    move/from16 v30, v16

    goto :goto_38c

    .line 524
    .end local v30    # "objectsPosition":I
    .restart local v27    # "objectsPosition":I
    :cond_359
    move/from16 v30, v16

    move/from16 v2, v27

    goto :goto_38c

    .line 518
    .end local v16    # "mapFieldIndex":I
    .end local v27    # "objectsPosition":I
    .local v30, "mapFieldIndex":I
    .restart local v36    # "objectsPosition":I
    :cond_35e
    :goto_35e
    if-nez v10, :cond_38a

    .line 519
    div-int/lit8 v2, v32, 0x3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v16, v36, 0x1

    .end local v36    # "objectsPosition":I
    .local v16, "objectsPosition":I
    aget-object v27, v26, v36

    aput-object v27, v35, v2

    move/from16 v2, v16

    goto :goto_38c

    .line 514
    .end local v16    # "objectsPosition":I
    .restart local v36    # "objectsPosition":I
    :cond_36f
    :goto_36f
    div-int/lit8 v2, v32, 0x3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v16, v36, 0x1

    .end local v36    # "objectsPosition":I
    .restart local v16    # "objectsPosition":I
    aget-object v27, v26, v36

    aput-object v27, v35, v2

    move/from16 v2, v16

    goto :goto_38c

    .line 511
    .end local v16    # "objectsPosition":I
    .restart local v36    # "objectsPosition":I
    :cond_37e
    :goto_37e
    div-int/lit8 v2, v32, 0x3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v35, v2

    .line 529
    :cond_38a
    move/from16 v2, v36

    .end local v36    # "objectsPosition":I
    .local v2, "objectsPosition":I
    :goto_38c
    move/from16 v36, v8

    move/from16 v16, v9

    .end local v8    # "maxFieldNumber":I
    .end local v9    # "minFieldNumber":I
    .local v16, "minFieldNumber":I
    .local v36, "maxFieldNumber":I
    invoke-virtual {v5, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v8, v8

    .line 530
    .local v8, "fieldOffset":I
    and-int/lit16 v9, v6, 0x1000

    move/from16 v27, v2

    .end local v2    # "objectsPosition":I
    .restart local v27    # "objectsPosition":I
    const/16 v2, 0x1000

    if-ne v9, v2, :cond_3a0

    move/from16 v2, v18

    goto :goto_3a1

    :cond_3a0
    const/4 v2, 0x0

    .line 531
    .local v2, "hasHasBit":Z
    :goto_3a1
    if-eqz v2, :cond_407

    const/16 v9, 0x11

    if-gt v7, v9, :cond_407

    .line 532
    add-int/lit8 v9, v1, 0x1

    .end local v1    # "i":I
    .local v9, "i":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 533
    .end local v4    # "next":I
    .local v1, "next":I
    const v4, 0xd800

    if-lt v1, v4, :cond_3d8

    .line 534
    and-int/lit16 v4, v1, 0x1fff

    .line 535
    .local v4, "result":I
    const/16 v37, 0xd

    .line 536
    .local v37, "shift":I
    :goto_3b6
    add-int/lit8 v38, v9, 0x1

    .end local v9    # "i":I
    .local v38, "i":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v1, v9

    move-object/from16 v39, v0

    const v0, 0xd800

    .end local v0    # "info":Ljava/lang/String;
    .local v39, "info":Ljava/lang/String;
    if-lt v9, v0, :cond_3d0

    .line 537
    and-int/lit16 v9, v1, 0x1fff

    shl-int v9, v9, v37

    or-int/2addr v4, v9

    .line 538
    add-int/lit8 v37, v37, 0xd

    move/from16 v9, v38

    move-object/from16 v0, v39

    goto :goto_3b6

    .line 540
    :cond_3d0
    shl-int v9, v1, v37

    or-int v1, v4, v9

    move v4, v1

    move/from16 v1, v38

    goto :goto_3dd

    .line 533
    .end local v4    # "result":I
    .end local v37    # "shift":I
    .end local v38    # "i":I
    .end local v39    # "info":Ljava/lang/String;
    .restart local v0    # "info":Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_3d8
    move-object/from16 v39, v0

    move v0, v4

    .end local v0    # "info":Ljava/lang/String;
    .restart local v39    # "info":Ljava/lang/String;
    move v4, v1

    move v1, v9

    .line 542
    .end local v9    # "i":I
    .local v1, "i":I
    .local v4, "next":I
    :goto_3dd
    move v9, v4

    .line 545
    .local v9, "hasBitsIndex":I
    mul-int/lit8 v19, v34, 0x2

    div-int/lit8 v37, v9, 0x20

    add-int v19, v19, v37

    .line 546
    .local v19, "index":I
    aget-object v0, v26, v19

    .line 547
    .local v0, "o":Ljava/lang/Object;
    move/from16 v38, v1

    .end local v1    # "i":I
    .restart local v38    # "i":I
    instance-of v1, v0, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3f0

    .line 548
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/Field;

    .local v1, "hasBitsField":Ljava/lang/reflect/Field;
    goto :goto_3f9

    .line 550
    .end local v1    # "hasBitsField":Ljava/lang/reflect/Field;
    :cond_3f0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v14, v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 551
    .restart local v1    # "hasBitsField":Ljava/lang/reflect/Field;
    aput-object v1, v26, v19

    .line 554
    :goto_3f9
    move/from16 v41, v2

    move-object/from16 v40, v3

    .end local v2    # "hasHasBit":Z
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .local v40, "field":Ljava/lang/reflect/Field;
    .local v41, "hasHasBit":Z
    invoke-virtual {v5, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 555
    .local v2, "presenceFieldOffset":I
    rem-int/lit8 v9, v9, 0x20

    .line 556
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "hasBitsField":Ljava/lang/reflect/Field;
    .end local v19    # "index":I
    .local v9, "presenceMaskShift":I
    move v3, v2

    move v1, v9

    goto :goto_415

    .line 531
    .end local v9    # "presenceMaskShift":I
    .end local v38    # "i":I
    .end local v39    # "info":Ljava/lang/String;
    .end local v40    # "field":Ljava/lang/reflect/Field;
    .end local v41    # "hasHasBit":Z
    .local v0, "info":Ljava/lang/String;
    .local v1, "i":I
    .local v2, "hasHasBit":Z
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    :cond_407
    move-object/from16 v39, v0

    move/from16 v41, v2

    move-object/from16 v40, v3

    .line 557
    .end local v0    # "info":Ljava/lang/String;
    .end local v2    # "hasHasBit":Z
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v39    # "info":Ljava/lang/String;
    .restart local v40    # "field":Ljava/lang/reflect/Field;
    .restart local v41    # "hasHasBit":Z
    const v0, 0xfffff

    .line 558
    .local v0, "presenceFieldOffset":I
    const/4 v2, 0x0

    move v3, v0

    move/from16 v38, v1

    move v1, v2

    .line 561
    .end local v0    # "presenceFieldOffset":I
    .local v1, "presenceMaskShift":I
    .local v3, "presenceFieldOffset":I
    .restart local v38    # "i":I
    :goto_415
    const/16 v0, 0x12

    if-lt v7, v0, :cond_42c

    const/16 v2, 0x31

    if-gt v7, v2, :cond_42c

    .line 564
    add-int/lit8 v0, v31, 0x1

    .end local v31    # "repeatedFieldIndex":I
    .local v0, "repeatedFieldIndex":I
    aput v8, v12, v31

    move/from16 v31, v0

    move v0, v3

    move v3, v8

    move/from16 v29, v27

    move/from16 v27, v4

    move/from16 v4, v38

    goto :goto_434

    .line 568
    .end local v0    # "repeatedFieldIndex":I
    .end local v40    # "field":Ljava/lang/reflect/Field;
    .end local v41    # "hasHasBit":Z
    .restart local v31    # "repeatedFieldIndex":I
    :cond_42c
    move v0, v3

    move v3, v8

    move/from16 v29, v27

    move/from16 v27, v4

    move/from16 v4, v38

    .end local v8    # "fieldOffset":I
    .end local v38    # "i":I
    .local v0, "presenceFieldOffset":I
    .local v3, "fieldOffset":I
    .local v4, "i":I
    .local v27, "next":I
    .restart local v29    # "objectsPosition":I
    :goto_434
    add-int/lit8 v2, v32, 0x1

    .end local v32    # "bufferIndex":I
    .local v2, "bufferIndex":I
    aput v11, v15, v32

    .line 569
    add-int/lit8 v8, v2, 0x1

    .line 570
    .end local v2    # "bufferIndex":I
    .local v8, "bufferIndex":I
    and-int/lit16 v9, v6, 0x200

    if-eqz v9, :cond_441

    const/high16 v9, 0x20000000

    goto :goto_442

    :cond_441
    const/4 v9, 0x0

    .line 571
    :goto_442
    move/from16 v19, v0

    .end local v0    # "presenceFieldOffset":I
    .local v19, "presenceFieldOffset":I
    and-int/lit16 v0, v6, 0x100

    if-eqz v0, :cond_44b

    const/high16 v0, 0x10000000

    goto :goto_44c

    :cond_44b
    const/4 v0, 0x0

    :goto_44c
    or-int/2addr v0, v9

    shl-int/lit8 v9, v7, 0x14

    or-int/2addr v0, v9

    or-int/2addr v0, v3

    aput v0, v15, v2

    .line 574
    add-int/lit8 v32, v8, 0x1

    .end local v8    # "bufferIndex":I
    .restart local v32    # "bufferIndex":I
    shl-int/lit8 v0, v1, 0x14

    or-int v0, v0, v19

    aput v0, v15, v8

    .line 575
    .end local v1    # "presenceMaskShift":I
    .end local v3    # "fieldOffset":I
    .end local v6    # "fieldTypeWithExtraBits":I
    .end local v7    # "fieldType":I
    .end local v11    # "fieldNumber":I
    .end local v19    # "presenceFieldOffset":I
    move/from16 v9, v16

    move/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, v35

    move/from16 v8, v36

    move-object/from16 v0, v39

    const v6, 0xd800

    goto/16 :goto_1e3

    .line 577
    .end local v16    # "minFieldNumber":I
    .end local v33    # "length":I
    .end local v34    # "oneofCount":I
    .end local v35    # "objects":[Ljava/lang/Object;
    .end local v36    # "maxFieldNumber":I
    .end local v39    # "info":Ljava/lang/String;
    .local v0, "info":Ljava/lang/String;
    .local v1, "length":I
    .local v2, "oneofCount":I
    .local v3, "objects":[Ljava/lang/Object;
    .local v8, "maxFieldNumber":I
    .local v9, "minFieldNumber":I
    :cond_46c
    move-object/from16 v39, v0

    move/from16 v33, v1

    move/from16 v34, v2

    move-object/from16 v35, v3

    move/from16 v16, v9

    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "oneofCount":I
    .end local v3    # "objects":[Ljava/lang/Object;
    .end local v9    # "minFieldNumber":I
    .restart local v16    # "minFieldNumber":I
    .restart local v33    # "length":I
    .restart local v34    # "oneofCount":I
    .restart local v35    # "objects":[Ljava/lang/Object;
    .restart local v39    # "info":Ljava/lang/String;
    move v7, v4

    .end local v4    # "i":I
    .local v7, "i":I
    new-instance v4, Landroid/net/connectivity/com/google/protobuf/MessageSchema;

    .line 582
    invoke-virtual/range {p0 .. p0}, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;->getDefaultInstance()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v9

    const/4 v11, 0x0

    move-object v0, v14

    .end local v14    # "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int v14, v13, v24

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object v1, v0

    move-object v0, v5

    move v2, v7

    move-object v5, v15

    move/from16 v7, v16

    move-object/from16 v6, v35

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    .end local v15    # "buffer":[I
    .end local v16    # "minFieldNumber":I
    .end local v35    # "objects":[Ljava/lang/Object;
    .local v0, "unsafe":Lsun/misc/Unsafe;
    .local v1, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "i":I
    .local v5, "buffer":[I
    .local v6, "objects":[Ljava/lang/Object;
    .local v7, "minFieldNumber":I
    invoke-direct/range {v4 .. v19}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILandroid/net/connectivity/com/google/protobuf/MessageLite;ZZ[IIILandroid/net/connectivity/com/google/protobuf/NewInstanceSchema;Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;)V

    .line 577
    move/from16 v16, v7

    .end local v6    # "objects":[Ljava/lang/Object;
    .end local v7    # "minFieldNumber":I
    .restart local v16    # "minFieldNumber":I
    .restart local v35    # "objects":[Ljava/lang/Object;
    return-object v4
.end method

.method private blacklist numberAt(I)I
    .registers 3
    .param p1, "pos"    # I

    .line 5827
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    aget v0, v0, p1

    return v0
.end method

.method private static blacklist offset(I)J
    .registers 3
    .param p0, "value"    # I

    .line 5851
    const v0, 0xfffff

    and-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static blacklist oneofBooleanAt(Ljava/lang/Object;J)Z
    .registers 4
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 5913
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static blacklist oneofDoubleAt(Ljava/lang/Object;J)D
    .registers 5
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 5897
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist oneofFloatAt(Ljava/lang/Object;J)F
    .registers 4
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 5901
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static blacklist oneofIntAt(Ljava/lang/Object;J)I
    .registers 4
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 5905
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static blacklist oneofLongAt(Ljava/lang/Object;J)J
    .registers 5
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 5909
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist parseMapField(Ljava/lang/Object;[BIIIJLandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I
    .registers 22
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "bufferPosition"    # I
    .param p6, "fieldOffset"    # J
    .param p8, "registers"    # Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4674
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-wide/from16 v7, p6

    sget-object v9, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 4675
    .local v9, "unsafe":Lsun/misc/Unsafe;
    move/from16 v10, p5

    invoke-direct {p0, v10}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v11

    .line 4676
    .local v11, "mapDefaultEntry":Ljava/lang/Object;
    invoke-virtual {v9, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 4677
    .local v1, "mapField":Ljava/lang/Object;
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    invoke-interface {v2, v1}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 4678
    move-object v2, v1

    .line 4679
    .local v2, "oldMapField":Ljava/lang/Object;
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    invoke-interface {v3, v11}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4680
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    invoke-interface {v3, v1, v2}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4681
    invoke-virtual {v9, p1, v7, v8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v12, v1

    goto :goto_28

    .line 4677
    .end local v2    # "oldMapField":Ljava/lang/Object;
    :cond_27
    move-object v12, v1

    .line 4683
    .end local v1    # "mapField":Ljava/lang/Object;
    .local v12, "mapField":Ljava/lang/Object;
    :goto_28
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    .line 4687
    invoke-interface {v1, v11}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;

    move-result-object v4

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    .line 4688
    invoke-interface {v1, v12}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 4683
    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->decodeMapEntry([BIILandroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    return v4
.end method

.method private blacklist parseOneofField(Ljava/lang/Object;[BIIIIIIIJILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I
    .registers 34
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "tag"    # I
    .param p6, "number"    # I
    .param p7, "wireType"    # I
    .param p8, "typeAndOffset"    # I
    .param p9, "fieldType"    # I
    .param p10, "fieldOffset"    # J
    .param p12, "bufferPosition"    # I
    .param p13, "registers"    # Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4706
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p10

    move/from16 v14, p12

    sget-object v15, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 4707
    .local v15, "unsafe":Lsun/misc/Unsafe;
    iget-object v2, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v3, v14, 0x2

    aget v2, v2, v3

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 4708
    .local v2, "oneofCaseOffset":J
    const/4 v4, 0x5

    const/4 v6, 0x2

    packed-switch p9, :pswitch_data_24a

    move-object/from16 v7, p13

    move-wide v8, v2

    move-object/from16 v2, p2

    move/from16 v3, p3

    .end local v2    # "oneofCaseOffset":J
    .local v8, "oneofCaseOffset":J
    goto/16 :goto_248

    .line 4825
    .end local v8    # "oneofCaseOffset":J
    .restart local v2    # "oneofCaseOffset":J
    :pswitch_29
    const/4 v4, 0x3

    if-ne v11, v4, :cond_53

    .line 4826
    move-wide v3, v2

    .end local v2    # "oneofCaseOffset":J
    .local v3, "oneofCaseOffset":J
    invoke-direct {v0, v1, v10, v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    .line 4827
    .local v2, "current":Ljava/lang/Object;
    and-int/lit8 v5, v9, -0x8

    or-int/lit8 v7, v5, 0x4

    .line 4828
    .local v7, "endTag":I
    nop

    .line 4831
    move-wide v4, v3

    .end local v3    # "oneofCaseOffset":J
    .local v4, "oneofCaseOffset":J
    invoke-direct {v0, v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v3

    .line 4829
    move/from16 v6, p4

    move-object/from16 v8, p13

    move-wide/from16 v16, v4

    move-object/from16 v4, p2

    move/from16 v5, p3

    .end local v4    # "oneofCaseOffset":J
    .local v16, "oneofCaseOffset":J
    invoke-static/range {v2 .. v8}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->mergeGroupField(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;[BIIILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 4837
    move v5, v7

    move-object v7, v8

    .end local v7    # "endTag":I
    .end local p3    # "position":I
    .local v3, "position":I
    .local v5, "endTag":I
    invoke-direct {v0, v1, v10, v14, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 4838
    .end local v2    # "current":Ljava/lang/Object;
    .end local v5    # "endTag":I
    move-object v2, v4

    move-wide/from16 v8, v16

    goto/16 :goto_248

    .line 4825
    .end local v3    # "position":I
    .end local v16    # "oneofCaseOffset":J
    .local v2, "oneofCaseOffset":J
    .restart local p3    # "position":I
    :cond_53
    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p13

    move-wide/from16 v16, v2

    .end local v2    # "oneofCaseOffset":J
    .restart local v16    # "oneofCaseOffset":J
    move-object v2, v4

    move v3, v5

    move-wide/from16 v8, v16

    goto/16 :goto_248

    .line 4818
    .end local v16    # "oneofCaseOffset":J
    .restart local v2    # "oneofCaseOffset":J
    :pswitch_61
    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p13

    move-wide/from16 v16, v2

    .end local v2    # "oneofCaseOffset":J
    .restart local v16    # "oneofCaseOffset":J
    if-nez v11, :cond_86

    .line 4819
    invoke-static {v4, v5, v7}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint64([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4820
    .end local p3    # "position":I
    .local v2, "position":I
    iget-wide v5, v7, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v5, v6}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4821
    move-wide/from16 v5, v16

    .end local v16    # "oneofCaseOffset":J
    .local v5, "oneofCaseOffset":J
    invoke-virtual {v15, v1, v5, v6, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v3, v2

    move-object v2, v4

    move-wide v8, v5

    goto/16 :goto_248

    .line 4818
    .end local v2    # "position":I
    .end local v5    # "oneofCaseOffset":J
    .restart local v16    # "oneofCaseOffset":J
    .restart local p3    # "position":I
    :cond_86
    move-wide/from16 v2, v16

    .end local v16    # "oneofCaseOffset":J
    .local v2, "oneofCaseOffset":J
    move-wide v8, v2

    move-object v2, v4

    move v3, v5

    goto/16 :goto_248

    .line 4811
    :pswitch_8d
    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p13

    if-nez v11, :cond_ae

    .line 4812
    invoke-static {v4, v5, v7}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    .line 4813
    .end local p3    # "position":I
    .local v5, "position":I
    iget v6, v7, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v6}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v1, v12, v13, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4814
    invoke-virtual {v15, v1, v2, v3, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-wide v8, v2

    move-object v2, v4

    move v3, v5

    goto/16 :goto_248

    .line 4811
    .end local v5    # "position":I
    .restart local p3    # "position":I
    :cond_ae
    move-wide v8, v2

    move-object v2, v4

    move v3, v5

    goto/16 :goto_248

    .line 4797
    :pswitch_b3
    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p13

    if-nez v11, :cond_f9

    .line 4798
    invoke-static {v4, v5, v7}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    .line 4799
    .end local p3    # "position":I
    .restart local v5    # "position":I
    iget v6, v7, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 4800
    .local v6, "enumValue":I
    invoke-direct {v0, v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    move-result-object v8

    .line 4801
    .local v8, "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    if-eqz v8, :cond_e3

    invoke-interface {v8, v6}, Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v16

    if-eqz v16, :cond_d2

    move/from16 p3, v5

    move-object/from16 v16, v8

    goto :goto_e7

    .line 4806
    :cond_d2
    move/from16 p3, v5

    .end local v5    # "position":I
    .restart local p3    # "position":I
    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;

    move-result-object v5

    move-object/from16 v16, v8

    .end local v8    # "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    .local v16, "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    int-to-long v7, v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_f1

    .line 4801
    .end local v16    # "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    .end local p3    # "position":I
    .restart local v5    # "position":I
    .restart local v8    # "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    :cond_e3
    move/from16 p3, v5

    move-object/from16 v16, v8

    .line 4802
    .end local v5    # "position":I
    .end local v8    # "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    .restart local v16    # "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    .restart local p3    # "position":I
    :goto_e7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v1, v12, v13, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4803
    invoke-virtual {v15, v1, v2, v3, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4808
    .end local v6    # "enumValue":I
    .end local v16    # "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    :goto_f1
    move-object/from16 v7, p13

    move-wide v8, v2

    move-object v2, v4

    move/from16 v3, p3

    goto/16 :goto_248

    .line 4797
    :cond_f9
    move-object/from16 v7, p13

    move-wide v8, v2

    move-object v2, v4

    move v3, v5

    goto/16 :goto_248

    .line 4790
    :pswitch_100
    move-object/from16 v4, p2

    move/from16 v5, p3

    if-ne v11, v6, :cond_119

    .line 4791
    move-object/from16 v7, p13

    invoke-static {v4, v5, v7}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeBytes([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    .line 4792
    .end local p3    # "position":I
    .restart local v5    # "position":I
    iget-object v6, v7, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v15, v1, v12, v13, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4793
    invoke-virtual {v15, v1, v2, v3, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-wide v8, v2

    move-object v2, v4

    move v3, v5

    goto/16 :goto_248

    .line 4790
    .end local v5    # "position":I
    .restart local p3    # "position":I
    :cond_119
    move-object/from16 v7, p13

    move-wide v8, v2

    move-object v2, v4

    move v3, v5

    goto/16 :goto_248

    .line 4781
    :pswitch_120
    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p13

    if-ne v11, v6, :cond_145

    .line 4782
    move-wide/from16 v16, v2

    .end local v2    # "oneofCaseOffset":J
    .local v16, "oneofCaseOffset":J
    invoke-direct {v0, v1, v10, v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    .line 4783
    .local v2, "current":Ljava/lang/Object;
    nop

    .line 4785
    invoke-direct {v0, v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v3

    .line 4784
    move/from16 v6, p4

    move-wide/from16 v8, v16

    .end local v16    # "oneofCaseOffset":J
    .local v8, "oneofCaseOffset":J
    invoke-static/range {v2 .. v7}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;[BIILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 4786
    move-object/from16 v19, v4

    move-object v4, v2

    move-object/from16 v2, v19

    .end local v2    # "current":Ljava/lang/Object;
    .end local p3    # "position":I
    .restart local v3    # "position":I
    .local v4, "current":Ljava/lang/Object;
    invoke-direct {v0, v1, v10, v14, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 4787
    .end local v4    # "current":Ljava/lang/Object;
    goto/16 :goto_248

    .line 4781
    .end local v3    # "position":I
    .end local v8    # "oneofCaseOffset":J
    .local v2, "oneofCaseOffset":J
    .restart local p3    # "position":I
    :cond_145
    move-wide v8, v2

    move-object v2, v4

    move v3, v5

    .end local v2    # "oneofCaseOffset":J
    .restart local v8    # "oneofCaseOffset":J
    goto/16 :goto_248

    .line 4763
    .end local v8    # "oneofCaseOffset":J
    .restart local v2    # "oneofCaseOffset":J
    :pswitch_14a
    move-object/from16 v7, p13

    move-wide v8, v2

    move-object/from16 v2, p2

    move/from16 v3, p3

    .end local v2    # "oneofCaseOffset":J
    .restart local v8    # "oneofCaseOffset":J
    if-ne v11, v6, :cond_248

    .line 4764
    invoke-static {v2, v3, v7}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 4765
    .end local p3    # "position":I
    .restart local v3    # "position":I
    iget v4, v7, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 4766
    .local v4, "length":I
    if-nez v4, :cond_161

    .line 4767
    const-string v5, ""

    invoke-virtual {v15, v1, v12, v13, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_180

    .line 4769
    :cond_161
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_175

    add-int v5, v3, v4

    .line 4770
    invoke-static {v2, v3, v5}, Landroid/net/connectivity/com/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v5

    if-eqz v5, :cond_170

    goto :goto_175

    .line 4771
    :cond_170
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5

    .line 4773
    :cond_175
    :goto_175
    new-instance v5, Ljava/lang/String;

    sget-object v6, Landroid/net/connectivity/com/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4774
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v15, v1, v12, v13, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4775
    add-int/2addr v3, v4

    .line 4777
    .end local v5    # "value":Ljava/lang/String;
    :goto_180
    invoke-virtual {v15, v1, v8, v9, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4778
    .end local v4    # "length":I
    goto/16 :goto_248

    .line 4756
    .end local v3    # "position":I
    .end local v8    # "oneofCaseOffset":J
    .restart local v2    # "oneofCaseOffset":J
    .restart local p3    # "position":I
    :pswitch_185
    move-object/from16 v7, p13

    move-wide v8, v2

    move-object/from16 v2, p2

    move/from16 v3, p3

    .end local v2    # "oneofCaseOffset":J
    .restart local v8    # "oneofCaseOffset":J
    if-nez v11, :cond_248

    .line 4757
    invoke-static {v2, v3, v7}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint64([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 4758
    .end local p3    # "position":I
    .restart local v3    # "position":I
    iget-wide v5, v7, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v17, 0x0

    cmp-long v4, v5, v17

    if-eqz v4, :cond_19c

    const/4 v5, 0x1

    goto :goto_19d

    :cond_19c
    const/4 v5, 0x0

    :goto_19d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v15, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4759
    invoke-virtual {v15, v1, v8, v9, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_248

    .line 4749
    .end local v3    # "position":I
    .end local v8    # "oneofCaseOffset":J
    .restart local v2    # "oneofCaseOffset":J
    .restart local p3    # "position":I
    :pswitch_1a9
    move-object/from16 v7, p13

    move-wide v8, v2

    move-object/from16 v2, p2

    move/from16 v3, p3

    .end local v2    # "oneofCaseOffset":J
    .restart local v8    # "oneofCaseOffset":J
    if-ne v11, v4, :cond_248

    .line 4750
    invoke-static/range {p2 .. p3}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4751
    add-int/lit8 v3, v3, 0x4

    .line 4752
    .end local p3    # "position":I
    .restart local v3    # "position":I
    invoke-virtual {v15, v1, v8, v9, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_248

    .line 4741
    .end local v3    # "position":I
    .end local v8    # "oneofCaseOffset":J
    .restart local v2    # "oneofCaseOffset":J
    .restart local p3    # "position":I
    :pswitch_1c4
    move-object/from16 v7, p13

    move-wide v8, v2

    move-object/from16 v2, p2

    move/from16 v3, p3

    .end local v2    # "oneofCaseOffset":J
    .restart local v8    # "oneofCaseOffset":J
    const/4 v4, 0x1

    if-ne v11, v4, :cond_248

    .line 4742
    invoke-static/range {p2 .. p3}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4743
    add-int/lit8 v3, v3, 0x8

    .line 4744
    .end local p3    # "position":I
    .restart local v3    # "position":I
    invoke-virtual {v15, v1, v8, v9, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_248

    .line 4733
    .end local v3    # "position":I
    .end local v8    # "oneofCaseOffset":J
    .restart local v2    # "oneofCaseOffset":J
    .restart local p3    # "position":I
    :pswitch_1e0
    move-object/from16 v7, p13

    move-wide v8, v2

    move-object/from16 v2, p2

    move/from16 v3, p3

    .end local v2    # "oneofCaseOffset":J
    .restart local v8    # "oneofCaseOffset":J
    if-nez v11, :cond_248

    .line 4734
    invoke-static {v2, v3, v7}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 4735
    .end local p3    # "position":I
    .restart local v3    # "position":I
    iget v4, v7, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4736
    invoke-virtual {v15, v1, v8, v9, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_248

    .line 4725
    .end local v3    # "position":I
    .end local v8    # "oneofCaseOffset":J
    .restart local v2    # "oneofCaseOffset":J
    .restart local p3    # "position":I
    :pswitch_1fa
    move-object/from16 v7, p13

    move-wide v8, v2

    move-object/from16 v2, p2

    move/from16 v3, p3

    .end local v2    # "oneofCaseOffset":J
    .restart local v8    # "oneofCaseOffset":J
    if-nez v11, :cond_248

    .line 4726
    invoke-static {v2, v3, v7}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint64([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 4727
    .end local p3    # "position":I
    .restart local v3    # "position":I
    iget-wide v4, v7, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4728
    invoke-virtual {v15, v1, v8, v9, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_248

    .line 4717
    .end local v3    # "position":I
    .end local v8    # "oneofCaseOffset":J
    .restart local v2    # "oneofCaseOffset":J
    .restart local p3    # "position":I
    :pswitch_214
    move-object/from16 v7, p13

    move-wide v8, v2

    move-object/from16 v2, p2

    move/from16 v3, p3

    .end local v2    # "oneofCaseOffset":J
    .restart local v8    # "oneofCaseOffset":J
    if-ne v11, v4, :cond_248

    .line 4718
    invoke-static/range {p2 .. p3}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v15, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4719
    add-int/lit8 v3, v3, 0x4

    .line 4720
    .end local p3    # "position":I
    .restart local v3    # "position":I
    invoke-virtual {v15, v1, v8, v9, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_248

    .line 4710
    .end local v3    # "position":I
    .end local v8    # "oneofCaseOffset":J
    .restart local v2    # "oneofCaseOffset":J
    .restart local p3    # "position":I
    :pswitch_22e
    move-object/from16 v7, p13

    move-wide v8, v2

    move-object/from16 v2, p2

    move/from16 v3, p3

    .end local v2    # "oneofCaseOffset":J
    .restart local v8    # "oneofCaseOffset":J
    const/4 v4, 0x1

    if-ne v11, v4, :cond_248

    .line 4711
    invoke-static/range {p2 .. p3}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v15, v1, v12, v13, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4712
    add-int/lit8 v3, v3, 0x8

    .line 4713
    .end local p3    # "position":I
    .restart local v3    # "position":I
    invoke-virtual {v15, v1, v8, v9, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4843
    :cond_248
    :goto_248
    return v3

    nop

    :pswitch_data_24a
    .packed-switch 0x33
        :pswitch_22e
        :pswitch_214
        :pswitch_1fa
        :pswitch_1fa
        :pswitch_1e0
        :pswitch_1c4
        :pswitch_1a9
        :pswitch_185
        :pswitch_14a
        :pswitch_120
        :pswitch_100
        :pswitch_1e0
        :pswitch_b3
        :pswitch_1a9
        :pswitch_1c4
        :pswitch_8d
        :pswitch_61
        :pswitch_29
    .end packed-switch
.end method

.method private blacklist parseProto3Message(Ljava/lang/Object;[BIILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I
    .registers 35
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "registers"    # Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5232
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v13, p5

    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->checkMutable(Ljava/lang/Object;)V

    .line 5233
    sget-object v2, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 5234
    .local v2, "unsafe":Lsun/misc/Unsafe;
    const v3, 0xfffff

    .line 5235
    .local v3, "currentPresenceFieldOffset":I
    const/4 v4, 0x0

    .line 5236
    .local v4, "currentPresenceField":I
    const/4 v5, 0x0

    .line 5237
    .local v5, "tag":I
    const/4 v6, -0x1

    .line 5238
    .local v6, "oldNumber":I
    const/4 v9, 0x0

    move v15, v9

    move v9, v4

    move v4, v15

    move v15, v3

    move/from16 v3, p3

    .line 5239
    .end local p3    # "position":I
    .local v3, "position":I
    .local v4, "pos":I
    .local v9, "currentPresenceField":I
    .local v15, "currentPresenceFieldOffset":I
    :goto_1c
    if-ge v3, v8, :cond_4d8

    .line 5240
    add-int/lit8 v11, v3, 0x1

    .end local v3    # "position":I
    .local v11, "position":I
    aget-byte v3, v7, v3

    .line 5241
    .end local v5    # "tag":I
    .local v3, "tag":I
    if-gez v3, :cond_30

    .line 5242
    invoke-static {v3, v7, v11, v13}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v11

    .line 5243
    iget v3, v13, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->int1:I

    move/from16 v26, v11

    move v11, v3

    move/from16 v3, v26

    goto :goto_35

    .line 5241
    :cond_30
    move/from16 v26, v11

    move v11, v3

    move/from16 v3, v26

    .line 5245
    .local v3, "position":I
    .local v11, "tag":I
    :goto_35
    ushr-int/lit8 v12, v11, 0x3

    .line 5246
    .local v12, "number":I
    and-int/lit8 v14, v11, 0x7

    .line 5247
    .local v14, "wireType":I
    if-le v12, v6, :cond_42

    .line 5248
    div-int/lit8 v5, v4, 0x3

    invoke-direct {v0, v12, v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v4

    goto :goto_46

    .line 5250
    :cond_42
    invoke-direct {v0, v12}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v4

    .line 5252
    :goto_46
    move/from16 v16, v12

    .line 5253
    .end local v6    # "oldNumber":I
    .local v16, "oldNumber":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_56

    .line 5255
    const/4 v4, 0x0

    move-object/from16 v25, v2

    move v2, v3

    move v5, v11

    move v6, v12

    move v7, v14

    move-object v12, v1

    move v11, v4

    goto/16 :goto_4b7

    .line 5257
    :cond_56
    iget-object v5, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v6, v4, 0x1

    aget v5, v5, v6

    .line 5258
    .local v5, "typeAndOffset":I
    move/from16 v17, v11

    .end local v11    # "tag":I
    .local v17, "tag":I
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->type(I)I

    move-result v11

    .line 5259
    .local v11, "fieldType":I
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v18

    .line 5260
    .local v18, "fieldOffset":J
    const/16 v6, 0x11

    const p3, 0xfffff

    if-gt v11, v6, :cond_35b

    .line 5262
    iget-object v6, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v20, v4, 0x2

    aget v20, v6, v20

    .line 5263
    .local v20, "presenceMaskAndOffset":I
    ushr-int/lit8 v6, v20, 0x14

    const/4 v10, 0x1

    shl-int v21, v10, v6

    .line 5264
    .local v21, "presenceMask":I
    and-int v6, v20, p3

    .line 5270
    .local v6, "presenceFieldOffset":I
    if-eq v6, v15, :cond_96

    .line 5271
    move/from16 v10, p3

    if-eq v15, v10, :cond_87

    .line 5272
    move/from16 p3, v11

    .end local v11    # "fieldType":I
    .local p3, "fieldType":I
    int-to-long v10, v15

    invoke-virtual {v2, v1, v10, v11, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_89

    .line 5271
    .end local p3    # "fieldType":I
    .restart local v11    # "fieldType":I
    :cond_87
    move/from16 p3, v11

    .line 5274
    .end local v11    # "fieldType":I
    .restart local p3    # "fieldType":I
    :goto_89
    const v10, 0xfffff

    if-eq v6, v10, :cond_93

    .line 5275
    int-to-long v10, v6

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    .line 5277
    :cond_93
    move v10, v6

    move v15, v10

    .end local v15    # "currentPresenceFieldOffset":I
    .local v10, "currentPresenceFieldOffset":I
    goto :goto_98

    .line 5270
    .end local v10    # "currentPresenceFieldOffset":I
    .end local p3    # "fieldType":I
    .restart local v11    # "fieldType":I
    .restart local v15    # "currentPresenceFieldOffset":I
    :cond_96
    move/from16 p3, v11

    .line 5279
    .end local v11    # "fieldType":I
    .restart local p3    # "fieldType":I
    :goto_98
    const/4 v10, 0x5

    packed-switch p3, :pswitch_data_4fa

    move v8, v3

    move v11, v4

    move v10, v5

    move/from16 v26, v12

    move-object v12, v1

    move-object v1, v2

    move-wide/from16 v2, v18

    move/from16 v19, v6

    move/from16 v18, v26

    .end local v3    # "position":I
    .end local v4    # "pos":I
    .end local v5    # "typeAndOffset":I
    .end local v6    # "presenceFieldOffset":I
    .end local v12    # "number":I
    .local v1, "unsafe":Lsun/misc/Unsafe;
    .local v2, "fieldOffset":J
    .local v8, "position":I
    .local v10, "typeAndOffset":I
    .local v11, "pos":I
    .local v18, "number":I
    .local v19, "presenceFieldOffset":I
    goto/16 :goto_351

    .line 5389
    .end local v1    # "unsafe":Lsun/misc/Unsafe;
    .end local v8    # "position":I
    .end local v10    # "typeAndOffset":I
    .end local v11    # "pos":I
    .end local v19    # "presenceFieldOffset":I
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "position":I
    .restart local v4    # "pos":I
    .restart local v5    # "typeAndOffset":I
    .restart local v6    # "presenceFieldOffset":I
    .restart local v12    # "number":I
    .local v18, "fieldOffset":J
    :pswitch_ab
    if-nez v14, :cond_d9

    .line 5390
    invoke-static {v7, v3, v13}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint64([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v10

    .line 5391
    .end local v3    # "position":I
    .local v10, "position":I
    move-object v11, v2

    .end local v2    # "unsafe":Lsun/misc/Unsafe;
    .local v11, "unsafe":Lsun/misc/Unsafe;
    iget-wide v1, v13, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 5392
    invoke-static {v1, v2}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v1

    .line 5391
    move-wide/from16 v26, v1

    move-object/from16 v2, p1

    move-object v1, v11

    move v11, v4

    move-wide/from16 v3, v18

    move/from16 v19, v6

    move/from16 v18, v10

    move v10, v5

    move-wide/from16 v5, v26

    .end local v4    # "pos":I
    .end local v5    # "typeAndOffset":I
    .end local v6    # "presenceFieldOffset":I
    .restart local v1    # "unsafe":Lsun/misc/Unsafe;
    .local v3, "fieldOffset":J
    .local v10, "typeAndOffset":I
    .local v11, "pos":I
    .local v18, "position":I
    .restart local v19    # "presenceFieldOffset":I
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 5393
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-wide v4, v3

    .end local v1    # "unsafe":Lsun/misc/Unsafe;
    .end local v3    # "fieldOffset":J
    .restart local v2    # "unsafe":Lsun/misc/Unsafe;
    .local v4, "fieldOffset":J
    or-int v9, v9, v21

    .line 5394
    move v4, v11

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v3, v18

    goto/16 :goto_1c

    .line 5389
    .end local v10    # "typeAndOffset":I
    .end local v11    # "pos":I
    .end local v19    # "presenceFieldOffset":I
    .local v3, "position":I
    .local v4, "pos":I
    .restart local v5    # "typeAndOffset":I
    .restart local v6    # "presenceFieldOffset":I
    .local v18, "fieldOffset":J
    :cond_d9
    move v11, v4

    move v10, v5

    move-wide/from16 v4, v18

    move/from16 v19, v6

    .end local v5    # "typeAndOffset":I
    .end local v6    # "presenceFieldOffset":I
    .end local v18    # "fieldOffset":J
    .local v4, "fieldOffset":J
    .restart local v10    # "typeAndOffset":I
    .restart local v11    # "pos":I
    .restart local v19    # "presenceFieldOffset":I
    move v8, v3

    move/from16 v18, v12

    move-object v12, v1

    move-object v1, v2

    move-wide v2, v4

    goto/16 :goto_351

    .line 5380
    .end local v10    # "typeAndOffset":I
    .end local v11    # "pos":I
    .end local v19    # "presenceFieldOffset":I
    .local v4, "pos":I
    .restart local v5    # "typeAndOffset":I
    .restart local v6    # "presenceFieldOffset":I
    .restart local v18    # "fieldOffset":J
    :pswitch_e7
    move v11, v4

    move v10, v5

    move-wide/from16 v4, v18

    move/from16 v19, v6

    .end local v5    # "typeAndOffset":I
    .end local v6    # "presenceFieldOffset":I
    .end local v18    # "fieldOffset":J
    .local v4, "fieldOffset":J
    .restart local v10    # "typeAndOffset":I
    .restart local v11    # "pos":I
    .restart local v19    # "presenceFieldOffset":I
    if-nez v14, :cond_105

    .line 5381
    invoke-static {v7, v3, v13}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 5382
    iget v6, v13, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5383
    invoke-static {v6}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v6

    .line 5382
    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5384
    or-int v9, v9, v21

    .line 5385
    move v4, v11

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_1c

    .line 5380
    :cond_105
    move v8, v3

    move/from16 v18, v12

    move-object v12, v1

    move-object v1, v2

    move-wide v2, v4

    goto/16 :goto_351

    .line 5372
    .end local v10    # "typeAndOffset":I
    .end local v11    # "pos":I
    .end local v19    # "presenceFieldOffset":I
    .local v4, "pos":I
    .restart local v5    # "typeAndOffset":I
    .restart local v6    # "presenceFieldOffset":I
    .restart local v18    # "fieldOffset":J
    :pswitch_10d
    move v11, v4

    move v10, v5

    move-wide/from16 v4, v18

    move/from16 v19, v6

    .end local v5    # "typeAndOffset":I
    .end local v6    # "presenceFieldOffset":I
    .end local v18    # "fieldOffset":J
    .local v4, "fieldOffset":J
    .restart local v10    # "typeAndOffset":I
    .restart local v11    # "pos":I
    .restart local v19    # "presenceFieldOffset":I
    if-nez v14, :cond_127

    .line 5373
    invoke-static {v7, v3, v13}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 5374
    iget v6, v13, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5375
    or-int v9, v9, v21

    .line 5376
    move v4, v11

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_1c

    .line 5372
    :cond_127
    move v8, v3

    move/from16 v18, v12

    move-object v12, v1

    move-object v1, v2

    move-wide v2, v4

    goto/16 :goto_351

    .line 5364
    .end local v10    # "typeAndOffset":I
    .end local v11    # "pos":I
    .end local v19    # "presenceFieldOffset":I
    .local v4, "pos":I
    .restart local v5    # "typeAndOffset":I
    .restart local v6    # "presenceFieldOffset":I
    .restart local v18    # "fieldOffset":J
    :pswitch_12f
    move v11, v4

    move v10, v5

    move-wide/from16 v4, v18

    move/from16 v19, v6

    .end local v5    # "typeAndOffset":I
    .end local v6    # "presenceFieldOffset":I
    .end local v18    # "fieldOffset":J
    .local v4, "fieldOffset":J
    .restart local v10    # "typeAndOffset":I
    .restart local v11    # "pos":I
    .restart local v19    # "presenceFieldOffset":I
    const/4 v6, 0x2

    if-ne v14, v6, :cond_14a

    .line 5365
    invoke-static {v7, v3, v13}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeBytes([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 5366
    iget-object v6, v13, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5367
    or-int v9, v9, v21

    .line 5368
    move v4, v11

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_1c

    .line 5364
    :cond_14a
    move v8, v3

    move/from16 v18, v12

    move-object v12, v1

    move-object v1, v2

    move-wide v2, v4

    goto/16 :goto_351

    .line 5353
    .end local v10    # "typeAndOffset":I
    .end local v11    # "pos":I
    .end local v19    # "presenceFieldOffset":I
    .local v4, "pos":I
    .restart local v5    # "typeAndOffset":I
    .restart local v6    # "presenceFieldOffset":I
    .restart local v18    # "fieldOffset":J
    :pswitch_152
    move v11, v4

    move v10, v5

    move-wide/from16 v4, v18

    move/from16 v19, v6

    .end local v5    # "typeAndOffset":I
    .end local v6    # "presenceFieldOffset":I
    .end local v18    # "fieldOffset":J
    .local v4, "fieldOffset":J
    .restart local v10    # "typeAndOffset":I
    .restart local v11    # "pos":I
    .restart local v19    # "presenceFieldOffset":I
    const/4 v6, 0x2

    if-ne v14, v6, :cond_18f

    .line 5354
    move-object v6, v1

    invoke-direct {v0, v6, v11}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 5355
    .local v1, "current":Ljava/lang/Object;
    nop

    .line 5357
    move-object/from16 v18, v2

    .end local v2    # "unsafe":Lsun/misc/Unsafe;
    .local v18, "unsafe":Lsun/misc/Unsafe;
    invoke-direct {v0, v11}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v2

    .line 5356
    move-wide/from16 v26, v4

    move v4, v3

    move-object v3, v7

    move v5, v8

    move-object/from16 v8, v18

    move-object v7, v6

    move/from16 v18, v12

    move-object v6, v13

    move-wide/from16 v12, v26

    .end local v3    # "position":I
    .local v4, "position":I
    .local v8, "unsafe":Lsun/misc/Unsafe;
    .local v12, "fieldOffset":J
    .local v18, "number":I
    invoke-static/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;[BIILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 5358
    move-object v4, v1

    move-object v1, v3

    move-object v3, v6

    .end local v1    # "current":Ljava/lang/Object;
    .local v2, "position":I
    .local v4, "current":Ljava/lang/Object;
    invoke-direct {v0, v7, v11, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 5359
    or-int v9, v9, v21

    .line 5360
    move-object v4, v7

    move-object v7, v1

    move-object v1, v4

    move-object v13, v3

    move v4, v11

    move/from16 v6, v16

    move/from16 v5, v17

    move v3, v2

    move-object v2, v8

    move/from16 v8, p4

    goto/16 :goto_1c

    .line 5353
    .end local v8    # "unsafe":Lsun/misc/Unsafe;
    .end local v18    # "number":I
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "position":I
    .local v4, "fieldOffset":J
    .local v12, "number":I
    :cond_18f
    move-object v8, v7

    move-object v7, v1

    move-object v1, v8

    move-object v8, v2

    move v2, v3

    move/from16 v18, v12

    move-object v3, v13

    move-wide v12, v4

    .end local v3    # "position":I
    .end local v4    # "fieldOffset":J
    .local v2, "position":I
    .restart local v8    # "unsafe":Lsun/misc/Unsafe;
    .local v12, "fieldOffset":J
    .restart local v18    # "number":I
    move-object/from16 v26, v7

    move-object v7, v1

    move-object v1, v8

    move v8, v2

    move-wide/from16 v27, v12

    move-object v13, v3

    move-object/from16 v12, v26

    move-wide/from16 v2, v27

    goto/16 :goto_351

    .line 5341
    .end local v8    # "unsafe":Lsun/misc/Unsafe;
    .end local v10    # "typeAndOffset":I
    .end local v11    # "pos":I
    .end local v19    # "presenceFieldOffset":I
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "position":I
    .local v4, "pos":I
    .restart local v5    # "typeAndOffset":I
    .restart local v6    # "presenceFieldOffset":I
    .local v12, "number":I
    .local v18, "fieldOffset":J
    :pswitch_1a6
    move-object v8, v7

    move-object v7, v1

    move-object v1, v8

    move-object v8, v2

    move v2, v3

    move v11, v4

    move v10, v5

    move-object v3, v13

    move-wide/from16 v26, v18

    move/from16 v19, v6

    move/from16 v18, v12

    move-wide/from16 v12, v26

    .end local v3    # "position":I
    .end local v4    # "pos":I
    .end local v5    # "typeAndOffset":I
    .end local v6    # "presenceFieldOffset":I
    .local v2, "position":I
    .restart local v8    # "unsafe":Lsun/misc/Unsafe;
    .restart local v10    # "typeAndOffset":I
    .restart local v11    # "pos":I
    .local v12, "fieldOffset":J
    .local v18, "number":I
    .restart local v19    # "presenceFieldOffset":I
    const/4 v6, 0x2

    if-ne v14, v6, :cond_1dd

    .line 5342
    const/high16 v4, 0x20000000

    and-int/2addr v4, v10

    if-nez v4, :cond_1c3

    .line 5343
    invoke-static {v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeString([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_1c7

    .line 5345
    :cond_1c3
    invoke-static {v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 5347
    :goto_1c7
    iget-object v4, v3, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v8, v7, v12, v13, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5348
    or-int v9, v9, v21

    .line 5349
    move-object v4, v7

    move-object v7, v1

    move-object v1, v4

    move-object v13, v3

    move v4, v11

    move/from16 v6, v16

    move/from16 v5, v17

    move v3, v2

    move-object v2, v8

    move/from16 v8, p4

    goto/16 :goto_1c

    .line 5341
    :cond_1dd
    move-object/from16 v26, v7

    move-object v7, v1

    move-object v1, v8

    move v8, v2

    move-wide/from16 v27, v12

    move-object v13, v3

    move-object/from16 v12, v26

    move-wide/from16 v2, v27

    goto/16 :goto_351

    .line 5333
    .end local v8    # "unsafe":Lsun/misc/Unsafe;
    .end local v10    # "typeAndOffset":I
    .end local v11    # "pos":I
    .end local v19    # "presenceFieldOffset":I
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "position":I
    .restart local v4    # "pos":I
    .restart local v5    # "typeAndOffset":I
    .restart local v6    # "presenceFieldOffset":I
    .local v12, "number":I
    .local v18, "fieldOffset":J
    :pswitch_1eb
    move-object v8, v7

    move-object v7, v1

    move-object v1, v8

    move-object v8, v2

    move v2, v3

    move v11, v4

    move v10, v5

    move-object v3, v13

    move-wide/from16 v26, v18

    move/from16 v19, v6

    move/from16 v18, v12

    move-wide/from16 v12, v26

    .end local v3    # "position":I
    .end local v4    # "pos":I
    .end local v5    # "typeAndOffset":I
    .end local v6    # "presenceFieldOffset":I
    .local v2, "position":I
    .restart local v8    # "unsafe":Lsun/misc/Unsafe;
    .restart local v10    # "typeAndOffset":I
    .restart local v11    # "pos":I
    .local v12, "fieldOffset":J
    .local v18, "number":I
    .restart local v19    # "presenceFieldOffset":I
    if-nez v14, :cond_220

    .line 5334
    invoke-static {v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint64([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 5335
    iget-wide v4, v3, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v22, 0x0

    cmp-long v4, v4, v22

    if-eqz v4, :cond_20b

    const/4 v4, 0x1

    goto :goto_20c

    :cond_20b
    const/4 v4, 0x0

    :goto_20c
    invoke-static {v7, v12, v13, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 5336
    or-int v9, v9, v21

    .line 5337
    move-object v4, v7

    move-object v7, v1

    move-object v1, v4

    move-object v13, v3

    move v4, v11

    move/from16 v6, v16

    move/from16 v5, v17

    move v3, v2

    move-object v2, v8

    move/from16 v8, p4

    goto/16 :goto_1c

    .line 5333
    :cond_220
    move-object/from16 v26, v7

    move-object v7, v1

    move-object v1, v8

    move v8, v2

    move-wide/from16 v27, v12

    move-object v13, v3

    move-object/from16 v12, v26

    move-wide/from16 v2, v27

    goto/16 :goto_351

    .line 5325
    .end local v8    # "unsafe":Lsun/misc/Unsafe;
    .end local v10    # "typeAndOffset":I
    .end local v11    # "pos":I
    .end local v19    # "presenceFieldOffset":I
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "position":I
    .restart local v4    # "pos":I
    .restart local v5    # "typeAndOffset":I
    .restart local v6    # "presenceFieldOffset":I
    .local v12, "number":I
    .local v18, "fieldOffset":J
    :pswitch_22e
    move-object v8, v7

    move-object v7, v1

    move-object v1, v8

    move-object v8, v2

    move v2, v3

    move v11, v4

    move v4, v10

    move-object v3, v13

    move v10, v5

    move-wide/from16 v26, v18

    move/from16 v19, v6

    move/from16 v18, v12

    move-wide/from16 v12, v26

    .end local v3    # "position":I
    .end local v4    # "pos":I
    .end local v5    # "typeAndOffset":I
    .end local v6    # "presenceFieldOffset":I
    .local v2, "position":I
    .restart local v8    # "unsafe":Lsun/misc/Unsafe;
    .restart local v10    # "typeAndOffset":I
    .restart local v11    # "pos":I
    .local v12, "fieldOffset":J
    .local v18, "number":I
    .restart local v19    # "presenceFieldOffset":I
    if-ne v14, v4, :cond_25b

    .line 5326
    invoke-static {v1, v2}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v4

    invoke-virtual {v8, v7, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5327
    add-int/lit8 v2, v2, 0x4

    .line 5328
    or-int v9, v9, v21

    .line 5329
    move-object v4, v7

    move-object v7, v1

    move-object v1, v4

    move-object v13, v3

    move v4, v11

    move/from16 v6, v16

    move/from16 v5, v17

    move v3, v2

    move-object v2, v8

    move/from16 v8, p4

    goto/16 :goto_1c

    .line 5325
    :cond_25b
    move-object/from16 v26, v7

    move-object v7, v1

    move-object v1, v8

    move v8, v2

    move-wide/from16 v27, v12

    move-object v13, v3

    move-object/from16 v12, v26

    move-wide/from16 v2, v27

    goto/16 :goto_351

    .line 5316
    .end local v8    # "unsafe":Lsun/misc/Unsafe;
    .end local v10    # "typeAndOffset":I
    .end local v11    # "pos":I
    .end local v19    # "presenceFieldOffset":I
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "position":I
    .restart local v4    # "pos":I
    .restart local v5    # "typeAndOffset":I
    .restart local v6    # "presenceFieldOffset":I
    .local v12, "number":I
    .local v18, "fieldOffset":J
    :pswitch_269
    move-object v8, v7

    move-object v7, v1

    move-object v1, v8

    move-object v8, v2

    move v2, v3

    move v11, v4

    move v10, v5

    move-object v3, v13

    move-wide/from16 v26, v18

    move/from16 v19, v6

    move/from16 v18, v12

    move-wide/from16 v12, v26

    .end local v3    # "position":I
    .end local v4    # "pos":I
    .end local v5    # "typeAndOffset":I
    .end local v6    # "presenceFieldOffset":I
    .local v2, "position":I
    .restart local v8    # "unsafe":Lsun/misc/Unsafe;
    .restart local v10    # "typeAndOffset":I
    .restart local v11    # "pos":I
    .local v12, "fieldOffset":J
    .local v18, "number":I
    .restart local v19    # "presenceFieldOffset":I
    const/4 v4, 0x1

    if-ne v14, v4, :cond_2a0

    .line 5317
    invoke-static {v1, v2}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v5

    move-object v4, v7

    move-object v7, v1

    move-object v1, v8

    move v8, v2

    move-object v2, v4

    move-wide/from16 v26, v12

    move-object v13, v3

    move-wide/from16 v3, v26

    .end local v2    # "position":I
    .end local v12    # "fieldOffset":J
    .local v1, "unsafe":Lsun/misc/Unsafe;
    .local v3, "fieldOffset":J
    .local v8, "position":I
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 5318
    move-object/from16 v26, v2

    move-object v2, v1

    move-object/from16 v1, v26

    .end local v1    # "unsafe":Lsun/misc/Unsafe;
    .local v2, "unsafe":Lsun/misc/Unsafe;
    add-int/lit8 v5, v8, 0x8

    .line 5319
    .end local v8    # "position":I
    .local v5, "position":I
    or-int v9, v9, v21

    .line 5320
    move/from16 v8, p4

    move v3, v5

    move v4, v11

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_1c

    .line 5316
    .end local v3    # "fieldOffset":J
    .end local v5    # "position":I
    .local v2, "position":I
    .local v8, "unsafe":Lsun/misc/Unsafe;
    .restart local v12    # "fieldOffset":J
    :cond_2a0
    move-object v4, v7

    move-object v7, v1

    move-object v1, v4

    move-object v4, v8

    move v8, v2

    move-object v2, v4

    move-wide/from16 v26, v12

    move-object v13, v3

    move-wide/from16 v3, v26

    .end local v12    # "fieldOffset":J
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "fieldOffset":J
    .local v8, "position":I
    move-object v12, v1

    move-object v1, v2

    move-wide v2, v3

    goto/16 :goto_351

    .line 5307
    .end local v8    # "position":I
    .end local v10    # "typeAndOffset":I
    .end local v11    # "pos":I
    .end local v19    # "presenceFieldOffset":I
    .local v3, "position":I
    .restart local v4    # "pos":I
    .local v5, "typeAndOffset":I
    .restart local v6    # "presenceFieldOffset":I
    .local v12, "number":I
    .local v18, "fieldOffset":J
    :pswitch_2b0
    move v8, v3

    move v11, v4

    move v10, v5

    move-wide/from16 v3, v18

    move/from16 v19, v6

    move/from16 v18, v12

    .end local v4    # "pos":I
    .end local v5    # "typeAndOffset":I
    .end local v6    # "presenceFieldOffset":I
    .end local v12    # "number":I
    .local v3, "fieldOffset":J
    .restart local v8    # "position":I
    .restart local v10    # "typeAndOffset":I
    .restart local v11    # "pos":I
    .local v18, "number":I
    .restart local v19    # "presenceFieldOffset":I
    if-nez v14, :cond_2d0

    .line 5308
    invoke-static {v7, v8, v13}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    .line 5309
    .end local v8    # "position":I
    .local v5, "position":I
    iget v6, v13, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v2, v1, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5310
    or-int v9, v9, v21

    .line 5311
    move/from16 v8, p4

    move v3, v5

    move v4, v11

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_1c

    .line 5307
    .end local v5    # "position":I
    .restart local v8    # "position":I
    :cond_2d0
    move-object v12, v1

    move-object v1, v2

    move-wide v2, v3

    goto/16 :goto_351

    .line 5298
    .end local v8    # "position":I
    .end local v10    # "typeAndOffset":I
    .end local v11    # "pos":I
    .end local v19    # "presenceFieldOffset":I
    .local v3, "position":I
    .restart local v4    # "pos":I
    .local v5, "typeAndOffset":I
    .restart local v6    # "presenceFieldOffset":I
    .restart local v12    # "number":I
    .local v18, "fieldOffset":J
    :pswitch_2d5
    move v8, v3

    move v11, v4

    move v10, v5

    move-wide/from16 v3, v18

    move/from16 v19, v6

    move/from16 v18, v12

    .end local v4    # "pos":I
    .end local v5    # "typeAndOffset":I
    .end local v6    # "presenceFieldOffset":I
    .end local v12    # "number":I
    .local v3, "fieldOffset":J
    .restart local v8    # "position":I
    .restart local v10    # "typeAndOffset":I
    .restart local v11    # "pos":I
    .local v18, "number":I
    .restart local v19    # "presenceFieldOffset":I
    if-nez v14, :cond_2fe

    .line 5299
    invoke-static {v7, v8, v13}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint64([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 5300
    iget-wide v5, v13, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->long1:J

    move-object/from16 v26, v2

    move-object v2, v1

    move-object/from16 v1, v26

    .end local v2    # "unsafe":Lsun/misc/Unsafe;
    .restart local v1    # "unsafe":Lsun/misc/Unsafe;
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 5301
    move-object v12, v2

    move-wide v2, v3

    .end local v3    # "fieldOffset":J
    .local v2, "fieldOffset":J
    or-int v9, v9, v21

    .line 5302
    move-object v2, v1

    move v3, v8

    move v4, v11

    move-object v1, v12

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v8, p4

    goto/16 :goto_1c

    .line 5298
    .end local v1    # "unsafe":Lsun/misc/Unsafe;
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "fieldOffset":J
    :cond_2fe
    move-object v12, v1

    move-object v1, v2

    move-wide v2, v3

    .end local v3    # "fieldOffset":J
    .restart local v1    # "unsafe":Lsun/misc/Unsafe;
    .local v2, "fieldOffset":J
    goto/16 :goto_351

    .line 5289
    .end local v1    # "unsafe":Lsun/misc/Unsafe;
    .end local v8    # "position":I
    .end local v10    # "typeAndOffset":I
    .end local v11    # "pos":I
    .end local v19    # "presenceFieldOffset":I
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .local v3, "position":I
    .restart local v4    # "pos":I
    .restart local v5    # "typeAndOffset":I
    .restart local v6    # "presenceFieldOffset":I
    .restart local v12    # "number":I
    .local v18, "fieldOffset":J
    :pswitch_303
    move v8, v3

    move v11, v4

    move v4, v10

    move v10, v5

    move/from16 v26, v12

    move-object v12, v1

    move-object v1, v2

    move-wide/from16 v2, v18

    move/from16 v19, v6

    move/from16 v18, v26

    .end local v3    # "position":I
    .end local v4    # "pos":I
    .end local v5    # "typeAndOffset":I
    .end local v6    # "presenceFieldOffset":I
    .end local v12    # "number":I
    .restart local v1    # "unsafe":Lsun/misc/Unsafe;
    .local v2, "fieldOffset":J
    .restart local v8    # "position":I
    .restart local v10    # "typeAndOffset":I
    .restart local v11    # "pos":I
    .local v18, "number":I
    .restart local v19    # "presenceFieldOffset":I
    if-ne v14, v4, :cond_351

    .line 5290
    invoke-static {v7, v8}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v4

    invoke-static {v12, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 5291
    add-int/lit8 v4, v8, 0x4

    .line 5292
    .end local v8    # "position":I
    .local v4, "position":I
    or-int v9, v9, v21

    .line 5293
    move/from16 v8, p4

    move-object v2, v1

    move v3, v4

    move v4, v11

    move-object v1, v12

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_1c

    .line 5281
    .end local v1    # "unsafe":Lsun/misc/Unsafe;
    .end local v10    # "typeAndOffset":I
    .end local v11    # "pos":I
    .end local v19    # "presenceFieldOffset":I
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "position":I
    .local v4, "pos":I
    .restart local v5    # "typeAndOffset":I
    .restart local v6    # "presenceFieldOffset":I
    .restart local v12    # "number":I
    .local v18, "fieldOffset":J
    :pswitch_32a
    move v8, v3

    move v11, v4

    move v10, v5

    move/from16 v26, v12

    move-object v12, v1

    move-object v1, v2

    move-wide/from16 v2, v18

    move/from16 v19, v6

    move/from16 v18, v26

    .end local v3    # "position":I
    .end local v4    # "pos":I
    .end local v5    # "typeAndOffset":I
    .end local v6    # "presenceFieldOffset":I
    .end local v12    # "number":I
    .restart local v1    # "unsafe":Lsun/misc/Unsafe;
    .local v2, "fieldOffset":J
    .restart local v8    # "position":I
    .restart local v10    # "typeAndOffset":I
    .restart local v11    # "pos":I
    .local v18, "number":I
    .restart local v19    # "presenceFieldOffset":I
    const/4 v4, 0x1

    if-ne v14, v4, :cond_351

    .line 5282
    invoke-static {v7, v8}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v4

    invoke-static {v12, v2, v3, v4, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 5283
    add-int/lit8 v4, v8, 0x8

    .line 5284
    .end local v8    # "position":I
    .local v4, "position":I
    or-int v9, v9, v21

    .line 5285
    move/from16 v8, p4

    move-object v2, v1

    move v3, v4

    move v4, v11

    move-object v1, v12

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_1c

    .line 5400
    .end local v4    # "position":I
    .end local v19    # "presenceFieldOffset":I
    .end local v20    # "presenceMaskAndOffset":I
    .end local v21    # "presenceMask":I
    .restart local v8    # "position":I
    :cond_351
    :goto_351
    move-object/from16 v25, v1

    move v2, v8

    move v7, v14

    move/from16 v5, v17

    move/from16 v6, v18

    goto/16 :goto_4b7

    .end local v1    # "unsafe":Lsun/misc/Unsafe;
    .end local v8    # "position":I
    .end local v10    # "typeAndOffset":I
    .end local p3    # "fieldType":I
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "position":I
    .local v4, "pos":I
    .restart local v5    # "typeAndOffset":I
    .local v11, "fieldType":I
    .restart local v12    # "number":I
    .local v18, "fieldOffset":J
    :cond_35b
    move v8, v3

    move v10, v5

    move/from16 p3, v11

    move v11, v4

    move/from16 v26, v12

    move-object v12, v1

    move-object v1, v2

    move-wide/from16 v2, v18

    move/from16 v18, v26

    .end local v3    # "position":I
    .end local v4    # "pos":I
    .end local v5    # "typeAndOffset":I
    .end local v12    # "number":I
    .restart local v1    # "unsafe":Lsun/misc/Unsafe;
    .local v2, "fieldOffset":J
    .restart local v8    # "position":I
    .restart local v10    # "typeAndOffset":I
    .local v11, "pos":I
    .local v18, "number":I
    .restart local p3    # "fieldType":I
    const/16 v4, 0x1b

    move/from16 v5, p3

    .end local p3    # "fieldType":I
    .local v5, "fieldType":I
    if-ne v5, v4, :cond_3d5

    .line 5402
    const/4 v6, 0x2

    if-ne v14, v6, :cond_3c0

    .line 5403
    invoke-virtual {v1, v12, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    .line 5404
    .local v4, "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    invoke-interface {v4}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v6

    if-nez v6, :cond_396

    .line 5405
    invoke-interface {v4}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->size()I

    move-result v6

    .line 5406
    .local v6, "size":I
    nop

    .line 5408
    if-nez v6, :cond_387

    const/16 v19, 0xa

    goto :goto_389

    :cond_387
    mul-int/lit8 v19, v6, 0x2

    :goto_389
    move/from16 p3, v5

    move/from16 v5, v19

    .line 5407
    .end local v5    # "fieldType":I
    .restart local p3    # "fieldType":I
    invoke-interface {v4, v5}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    move-result-object v4

    .line 5409
    invoke-virtual {v1, v12, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v6, v4

    goto :goto_399

    .line 5404
    .end local v6    # "size":I
    .end local p3    # "fieldType":I
    .restart local v5    # "fieldType":I
    :cond_396
    move/from16 p3, v5

    .end local v5    # "fieldType":I
    .restart local p3    # "fieldType":I
    move-object v6, v4

    .line 5411
    .end local v4    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .local v6, "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    :goto_399
    nop

    .line 5413
    move-object v4, v1

    .end local v1    # "unsafe":Lsun/misc/Unsafe;
    .local v4, "unsafe":Lsun/misc/Unsafe;
    invoke-direct {v0, v11}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v1

    .line 5412
    move v5, v8

    move-object v8, v4

    move v4, v5

    move/from16 v5, p4

    move-wide/from16 v19, v2

    move-object v3, v7

    move-object v7, v13

    move/from16 v2, v17

    move v13, v11

    move/from16 v11, p3

    .end local v17    # "tag":I
    .end local p3    # "fieldType":I
    .local v2, "tag":I
    .local v4, "position":I
    .local v8, "unsafe":Lsun/misc/Unsafe;
    .local v11, "fieldType":I
    .local v13, "pos":I
    .local v19, "fieldOffset":J
    invoke-static/range {v1 .. v7}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeMessageList(Landroid/net/connectivity/com/google/protobuf/Schema;I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 5414
    move v5, v2

    .end local v2    # "tag":I
    .end local v4    # "position":I
    .local v1, "position":I
    .local v5, "tag":I
    move-object/from16 v7, p2

    move v3, v1

    move-object v2, v8

    move-object v1, v12

    move v4, v13

    move/from16 v6, v16

    move/from16 v8, p4

    move-object/from16 v13, p5

    goto/16 :goto_1c

    .line 5402
    .end local v6    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .end local v13    # "pos":I
    .end local v19    # "fieldOffset":J
    .local v1, "unsafe":Lsun/misc/Unsafe;
    .local v2, "fieldOffset":J
    .local v5, "fieldType":I
    .local v8, "position":I
    .local v11, "pos":I
    .restart local v17    # "tag":I
    :cond_3c0
    move-wide/from16 v19, v2

    move v3, v8

    move v13, v11

    move-object v8, v1

    move v11, v5

    move/from16 v5, v17

    .end local v1    # "unsafe":Lsun/misc/Unsafe;
    .end local v2    # "fieldOffset":J
    .end local v17    # "tag":I
    .restart local v3    # "position":I
    .local v5, "tag":I
    .local v8, "unsafe":Lsun/misc/Unsafe;
    .local v11, "fieldType":I
    .restart local v13    # "pos":I
    .restart local v19    # "fieldOffset":J
    move-object/from16 v25, v8

    move/from16 v24, v9

    move v11, v13

    move v12, v14

    move/from16 v10, v18

    move v9, v5

    move/from16 v18, v15

    goto/16 :goto_474

    .line 5416
    .end local v3    # "position":I
    .end local v13    # "pos":I
    .end local v19    # "fieldOffset":J
    .restart local v1    # "unsafe":Lsun/misc/Unsafe;
    .restart local v2    # "fieldOffset":J
    .local v5, "fieldType":I
    .local v8, "position":I
    .local v11, "pos":I
    .restart local v17    # "tag":I
    :cond_3d5
    move-wide/from16 v19, v2

    move v3, v8

    move v13, v11

    move-object v8, v1

    move v11, v5

    move/from16 v5, v17

    .end local v1    # "unsafe":Lsun/misc/Unsafe;
    .end local v2    # "fieldOffset":J
    .end local v17    # "tag":I
    .restart local v3    # "position":I
    .local v5, "tag":I
    .local v8, "unsafe":Lsun/misc/Unsafe;
    .local v11, "fieldType":I
    .restart local v13    # "pos":I
    .restart local v19    # "fieldOffset":J
    const/16 v1, 0x31

    if-gt v11, v1, :cond_428

    .line 5418
    move v1, v3

    .line 5419
    .local v1, "oldPosition":I
    move v4, v9

    move v2, v10

    .end local v9    # "currentPresenceField":I
    .end local v10    # "typeAndOffset":I
    .local v2, "typeAndOffset":I
    .local v4, "currentPresenceField":I
    int-to-long v9, v2

    .line 5420
    move/from16 v17, v2

    move/from16 v24, v4

    move-object/from16 v25, v8

    move v8, v13

    move v7, v14

    move/from16 v6, v18

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v14, p5

    move/from16 v18, v15

    move v15, v1

    move-object v1, v12

    move-wide/from16 v12, v19

    .end local v1    # "oldPosition":I
    .end local v2    # "typeAndOffset":I
    .end local v4    # "currentPresenceField":I
    .end local v13    # "pos":I
    .end local v14    # "wireType":I
    .end local v19    # "fieldOffset":J
    .local v6, "number":I
    .local v7, "wireType":I
    .local v8, "pos":I
    .local v12, "fieldOffset":J
    .local v15, "oldPosition":I
    .local v17, "typeAndOffset":I
    .local v18, "currentPresenceFieldOffset":I
    .local v24, "currentPresenceField":I
    .local v25, "unsafe":Lsun/misc/Unsafe;
    invoke-direct/range {v0 .. v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 5433
    move v9, v5

    move v10, v6

    move v12, v7

    move v13, v11

    move v11, v8

    .end local v5    # "tag":I
    .end local v6    # "number":I
    .end local v7    # "wireType":I
    .end local v8    # "pos":I
    .local v9, "tag":I
    .local v10, "number":I
    .local v11, "pos":I
    .local v12, "wireType":I
    .local v13, "fieldType":I
    .restart local v19    # "fieldOffset":J
    if-eq v3, v15, :cond_41c

    .line 5434
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v13, p5

    move v5, v9

    move v4, v11

    move/from16 v6, v16

    move/from16 v15, v18

    move/from16 v9, v24

    move-object/from16 v2, v25

    goto/16 :goto_1c

    .line 5436
    .end local v15    # "oldPosition":I
    :cond_41c
    move v2, v3

    move v5, v9

    move v6, v10

    move v7, v12

    move/from16 v15, v18

    move/from16 v9, v24

    move-object/from16 v12, p1

    goto/16 :goto_4b7

    .end local v12    # "wireType":I
    .end local v17    # "typeAndOffset":I
    .end local v24    # "currentPresenceField":I
    .end local v25    # "unsafe":Lsun/misc/Unsafe;
    .restart local v5    # "tag":I
    .local v8, "unsafe":Lsun/misc/Unsafe;
    .local v9, "currentPresenceField":I
    .local v10, "typeAndOffset":I
    .local v11, "fieldType":I
    .local v13, "pos":I
    .restart local v14    # "wireType":I
    .local v15, "currentPresenceFieldOffset":I
    .local v18, "number":I
    :cond_428
    move v12, v13

    move v13, v11

    move v11, v12

    move-object/from16 v25, v8

    move/from16 v24, v9

    move/from16 v17, v10

    move v12, v14

    move/from16 v10, v18

    move v9, v5

    move/from16 v18, v15

    .end local v5    # "tag":I
    .end local v8    # "unsafe":Lsun/misc/Unsafe;
    .end local v14    # "wireType":I
    .end local v15    # "currentPresenceFieldOffset":I
    .local v9, "tag":I
    .local v10, "number":I
    .local v11, "pos":I
    .restart local v12    # "wireType":I
    .local v13, "fieldType":I
    .restart local v17    # "typeAndOffset":I
    .local v18, "currentPresenceFieldOffset":I
    .restart local v24    # "currentPresenceField":I
    .restart local v25    # "unsafe":Lsun/misc/Unsafe;
    const/16 v0, 0x32

    if-ne v13, v0, :cond_47f

    .line 5437
    const/4 v6, 0x2

    if-ne v12, v6, :cond_474

    .line 5438
    move v14, v3

    .line 5439
    .local v14, "oldPosition":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v8, p5

    move v5, v11

    move-wide/from16 v6, v19

    .end local v11    # "pos":I
    .end local v19    # "fieldOffset":J
    .local v5, "pos":I
    .local v6, "fieldOffset":J
    invoke-direct/range {v0 .. v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 5440
    .end local v5    # "pos":I
    .end local v6    # "fieldOffset":J
    .restart local v11    # "pos":I
    .restart local v19    # "fieldOffset":J
    if-eq v3, v14, :cond_468

    .line 5441
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v13, p5

    move v5, v9

    move v4, v11

    move/from16 v6, v16

    move/from16 v15, v18

    move/from16 v9, v24

    move-object/from16 v2, v25

    goto/16 :goto_1c

    .line 5443
    .end local v14    # "oldPosition":I
    :cond_468
    move v2, v3

    move v5, v9

    move v6, v10

    move v7, v12

    move/from16 v15, v18

    move/from16 v9, v24

    move-object/from16 v12, p1

    goto/16 :goto_4b7

    .line 5465
    .end local v10    # "number":I
    .end local v11    # "pos":I
    .end local v12    # "wireType":I
    .end local v17    # "typeAndOffset":I
    .end local v19    # "fieldOffset":J
    .end local v24    # "currentPresenceField":I
    .end local v25    # "unsafe":Lsun/misc/Unsafe;
    .local v5, "tag":I
    .restart local v8    # "unsafe":Lsun/misc/Unsafe;
    .local v9, "currentPresenceField":I
    .local v13, "pos":I
    .local v14, "wireType":I
    .restart local v15    # "currentPresenceFieldOffset":I
    .local v18, "number":I
    :cond_474
    :goto_474
    move v2, v3

    move v5, v9

    move v6, v10

    move v7, v12

    move/from16 v15, v18

    move/from16 v9, v24

    move-object/from16 v12, p1

    .end local v5    # "tag":I
    .end local v8    # "unsafe":Lsun/misc/Unsafe;
    .end local v13    # "pos":I
    .end local v14    # "wireType":I
    .end local v15    # "currentPresenceFieldOffset":I
    .local v9, "tag":I
    .restart local v10    # "number":I
    .restart local v11    # "pos":I
    .restart local v12    # "wireType":I
    .local v18, "currentPresenceFieldOffset":I
    .restart local v24    # "currentPresenceField":I
    .restart local v25    # "unsafe":Lsun/misc/Unsafe;
    goto :goto_4b7

    .line 5445
    .local v13, "fieldType":I
    .restart local v17    # "typeAndOffset":I
    .restart local v19    # "fieldOffset":J
    :cond_47f
    move v14, v3

    .line 5446
    .local v14, "oldPosition":I
    nop

    .line 5447
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v5, v9

    move v6, v10

    move v7, v12

    move v9, v13

    move/from16 v8, v17

    move-object/from16 v13, p5

    move v12, v11

    move-wide/from16 v10, v19

    .end local v11    # "pos":I
    .end local v13    # "fieldType":I
    .end local v17    # "typeAndOffset":I
    .end local v19    # "fieldOffset":J
    .restart local v5    # "tag":I
    .local v6, "number":I
    .restart local v7    # "wireType":I
    .local v8, "typeAndOffset":I
    .local v9, "fieldType":I
    .local v10, "fieldOffset":J
    .local v12, "pos":I
    invoke-direct/range {v0 .. v13}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 5460
    move v13, v9

    move v11, v12

    move-object v12, v1

    move v10, v8

    .end local v8    # "typeAndOffset":I
    .end local v9    # "fieldType":I
    .end local v12    # "pos":I
    .local v10, "typeAndOffset":I
    .restart local v11    # "pos":I
    .restart local v13    # "fieldType":I
    .restart local v19    # "fieldOffset":J
    if-eq v3, v14, :cond_4b2

    .line 5461
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v13, p5

    move v4, v11

    move-object v1, v12

    move/from16 v6, v16

    move/from16 v15, v18

    move/from16 v9, v24

    move-object/from16 v2, v25

    goto/16 :goto_1c

    .line 5460
    :cond_4b2
    move v2, v3

    move/from16 v15, v18

    move/from16 v9, v24

    .line 5465
    .end local v3    # "position":I
    .end local v10    # "typeAndOffset":I
    .end local v13    # "fieldType":I
    .end local v14    # "oldPosition":I
    .end local v18    # "currentPresenceFieldOffset":I
    .end local v19    # "fieldOffset":J
    .end local v24    # "currentPresenceField":I
    .local v2, "position":I
    .local v9, "currentPresenceField":I
    .restart local v15    # "currentPresenceFieldOffset":I
    :goto_4b7
    nop

    .line 5466
    invoke-static {v12}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    .line 5465
    move-object/from16 v1, p2

    move/from16 v3, p4

    move v0, v5

    move-object/from16 v5, p5

    .end local v5    # "tag":I
    .local v0, "tag":I
    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILandroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 5467
    move v5, v0

    move v8, v3

    .end local v0    # "tag":I
    .end local v6    # "number":I
    .end local v7    # "wireType":I
    .restart local v5    # "tag":I
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v13, p5

    move v3, v2

    move v4, v11

    move-object v1, v12

    move/from16 v6, v16

    move-object/from16 v2, v25

    goto/16 :goto_1c

    .line 5468
    .end local v11    # "pos":I
    .end local v16    # "oldNumber":I
    .end local v25    # "unsafe":Lsun/misc/Unsafe;
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "position":I
    .local v4, "pos":I
    .local v6, "oldNumber":I
    :cond_4d8
    move-object v12, v1

    move-object/from16 v25, v2

    move/from16 v24, v9

    move/from16 v18, v15

    .end local v2    # "unsafe":Lsun/misc/Unsafe;
    .end local v9    # "currentPresenceField":I
    .end local v15    # "currentPresenceFieldOffset":I
    .restart local v18    # "currentPresenceFieldOffset":I
    .restart local v24    # "currentPresenceField":I
    .restart local v25    # "unsafe":Lsun/misc/Unsafe;
    const v10, 0xfffff

    .end local v18    # "currentPresenceFieldOffset":I
    .restart local v15    # "currentPresenceFieldOffset":I
    if-eq v15, v10, :cond_4ed

    .line 5469
    int-to-long v0, v15

    move/from16 v9, v24

    move-object/from16 v2, v25

    .end local v24    # "currentPresenceField":I
    .end local v25    # "unsafe":Lsun/misc/Unsafe;
    .restart local v2    # "unsafe":Lsun/misc/Unsafe;
    .restart local v9    # "currentPresenceField":I
    invoke-virtual {v2, v12, v0, v1, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4f1

    .line 5468
    .end local v2    # "unsafe":Lsun/misc/Unsafe;
    .end local v9    # "currentPresenceField":I
    .restart local v24    # "currentPresenceField":I
    .restart local v25    # "unsafe":Lsun/misc/Unsafe;
    :cond_4ed
    move/from16 v9, v24

    move-object/from16 v2, v25

    .line 5471
    .end local v24    # "currentPresenceField":I
    .end local v25    # "unsafe":Lsun/misc/Unsafe;
    .restart local v2    # "unsafe":Lsun/misc/Unsafe;
    .restart local v9    # "currentPresenceField":I
    :goto_4f1
    if-ne v3, v8, :cond_4f4

    .line 5474
    return v3

    .line 5472
    :cond_4f4
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->parseFailure()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_4fa
    .packed-switch 0x0
        :pswitch_32a
        :pswitch_303
        :pswitch_2d5
        :pswitch_2d5
        :pswitch_2b0
        :pswitch_269
        :pswitch_22e
        :pswitch_1eb
        :pswitch_1a6
        :pswitch_152
        :pswitch_12f
        :pswitch_2b0
        :pswitch_10d
        :pswitch_22e
        :pswitch_269
        :pswitch_e7
        :pswitch_ab
    .end packed-switch
.end method

.method private blacklist parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I
    .registers 28
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "tag"    # I
    .param p6, "number"    # I
    .param p7, "wireType"    # I
    .param p8, "bufferPosition"    # I
    .param p9, "typeAndOffset"    # J
    .param p11, "fieldType"    # I
    .param p12, "fieldOffset"    # J
    .param p14, "registers"    # Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4513
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p12

    sget-object v1, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    .line 4514
    .local v1, "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    invoke-interface {v1}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 4515
    invoke-interface {v1}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    .line 4516
    .local v2, "size":I
    nop

    .line 4518
    if-nez v2, :cond_1e

    const/16 v3, 0xa

    goto :goto_20

    :cond_1e
    mul-int/lit8 v3, v2, 0x2

    .line 4517
    :goto_20
    invoke-interface {v1, v3}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    .line 4519
    sget-object v3, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, p1, v10, v11, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v4, v1

    goto :goto_2c

    .line 4514
    .end local v2    # "size":I
    :cond_2b
    move-object v4, v1

    .line 4521
    .end local v1    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .local v4, "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    :goto_2c
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch p11, :pswitch_data_1f2

    goto/16 :goto_1ef

    .line 4647
    :pswitch_34
    const/4 v1, 0x3

    if-ne v8, v1, :cond_50

    .line 4648
    nop

    .line 4650
    invoke-direct {p0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v1

    .line 4649
    move-object v3, p2

    move/from16 v5, p4

    move/from16 v2, p5

    move-object/from16 v7, p14

    move-object v6, v4

    move/from16 v4, p3

    .end local v4    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .local v6, "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    invoke-static/range {v1 .. v7}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeGroupList(Landroid/net/connectivity/com/google/protobuf/Schema;I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    move-object v2, v3

    move-object v5, v7

    move v2, v1

    move-object v4, v6

    .end local v6    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .end local p3    # "position":I
    .local v1, "position":I
    .restart local v4    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    goto/16 :goto_1f1

    .line 4647
    .end local v1    # "position":I
    .restart local p3    # "position":I
    :cond_50
    move-object v2, p2

    move/from16 v1, p3

    move-object/from16 v5, p14

    goto/16 :goto_1ef

    .line 4640
    :pswitch_57
    move-object v2, p2

    move/from16 v1, p3

    move-object/from16 v5, p14

    if-ne v8, v3, :cond_65

    .line 4641
    invoke-static {p2, v1, v4, v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodePackedSInt64List([BILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    move v2, v1

    .end local p3    # "position":I
    .restart local v1    # "position":I
    goto/16 :goto_1f1

    .line 4642
    .end local v1    # "position":I
    .restart local p3    # "position":I
    :cond_65
    if-nez v8, :cond_78

    .line 4643
    move v3, v1

    move-object v6, v5

    move/from16 v1, p5

    move-object v5, v4

    move/from16 v4, p4

    .end local v4    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .local v5, "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    invoke-static/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeSInt64List(I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    move-object v1, v2

    move-object v4, v5

    move-object v5, v6

    move v2, v3

    .end local v5    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .end local p3    # "position":I
    .local v3, "position":I
    .restart local v4    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    goto/16 :goto_1f1

    .line 4642
    .end local v3    # "position":I
    .restart local p3    # "position":I
    :cond_78
    move-object v12, v2

    move v2, v1

    move-object v1, v12

    goto/16 :goto_1ef

    .line 4632
    :pswitch_7d
    move-object v1, p2

    move/from16 v2, p3

    move-object/from16 v5, p14

    if-ne v8, v3, :cond_8a

    .line 4633
    invoke-static {p2, v2, v4, v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodePackedSInt32List([BILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .local v2, "position":I
    goto/16 :goto_1f1

    .line 4634
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_8a
    if-nez v8, :cond_1ef

    .line 4635
    move v3, v2

    move-object v6, v5

    move-object v2, v1

    move-object v5, v4

    move/from16 v4, p4

    move/from16 v1, p5

    .end local v4    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v5    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    invoke-static/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeSInt32List(I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    move-object v1, v2

    move-object v4, v5

    move-object v5, v6

    move v2, v3

    .end local v5    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .end local p3    # "position":I
    .restart local v3    # "position":I
    .restart local v4    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    goto/16 :goto_1f1

    .line 4615
    .end local v3    # "position":I
    .restart local p3    # "position":I
    :pswitch_9e
    move-object v1, p2

    move/from16 v2, p3

    move-object/from16 v5, p14

    if-ne v8, v3, :cond_ab

    .line 4616
    invoke-static {p2, v2, v4, v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodePackedVarint32List([BILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move v6, v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_bb

    .line 4617
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_ab
    if-nez v8, :cond_1ef

    .line 4618
    move v3, v2

    move-object v6, v5

    move-object v2, v1

    move-object v5, v4

    move/from16 v4, p4

    move/from16 v1, p5

    .end local v4    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v5    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    invoke-static/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    move-object v4, v5

    move v6, v3

    .line 4622
    .end local v5    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .end local p3    # "position":I
    .restart local v4    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .local v6, "position":I
    :goto_bb
    nop

    .line 4626
    invoke-direct {p0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    move-result-object v3

    iget-object v5, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    .line 4622
    move-object v2, v4

    .end local v4    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .local v2, "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    const/4 v4, 0x0

    move-object v0, p1

    move/from16 v1, p6

    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 4629
    move-object v4, v2

    .end local v2    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v4    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    move v2, v6

    goto/16 :goto_1f1

    .line 4609
    .end local v6    # "position":I
    .restart local p3    # "position":I
    :pswitch_ce
    if-ne v8, v3, :cond_1ef

    .line 4610
    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v0, p5

    move-object/from16 v5, p14

    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeBytesList(I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .local v2, "position":I
    goto/16 :goto_1f1

    .line 4596
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :pswitch_df
    if-ne v8, v3, :cond_1ef

    .line 4597
    nop

    .line 4599
    invoke-direct {p0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v0

    .line 4598
    move-object v2, p2

    move/from16 v3, p3

    move/from16 v1, p5

    move-object/from16 v6, p14

    move-object v5, v4

    move/from16 v4, p4

    .end local v4    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v5    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    invoke-static/range {v0 .. v6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeMessageList(Landroid/net/connectivity/com/google/protobuf/Schema;I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move v2, v0

    move-object v4, v5

    .end local v5    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .end local p3    # "position":I
    .local v0, "position":I
    .restart local v4    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    goto/16 :goto_1f1

    .line 4587
    .end local v0    # "position":I
    .restart local p3    # "position":I
    :pswitch_f8
    if-ne v8, v3, :cond_123

    .line 4588
    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_114

    .line 4589
    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v0, p5

    move-object/from16 v5, p14

    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeStringList(I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_1f1

    .line 4591
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_114
    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v0, p5

    move-object/from16 v5, p14

    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeStringListRequireUtf8(I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_1f1

    .line 4587
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_123
    move-object v1, p2

    move/from16 v2, p3

    move-object/from16 v5, p14

    goto/16 :goto_1ef

    .line 4580
    :pswitch_12a
    move-object v1, p2

    move/from16 v2, p3

    move-object/from16 v5, p14

    if-ne v8, v3, :cond_138

    .line 4581
    invoke-static {p2, v2, v4, v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodePackedBoolList([BILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move v2, v0

    .end local p3    # "position":I
    .restart local v0    # "position":I
    goto/16 :goto_1f1

    .line 4582
    .end local v0    # "position":I
    .restart local p3    # "position":I
    :cond_138
    if-nez v8, :cond_145

    .line 4583
    move/from16 v3, p4

    move/from16 v0, p5

    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeBoolList(I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move-object v0, v1

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_1f1

    .line 4582
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_145
    move-object v0, v1

    goto/16 :goto_1ef

    .line 4572
    :pswitch_148
    move-object v0, p2

    move/from16 v2, p3

    move-object/from16 v5, p14

    if-ne v8, v3, :cond_156

    .line 4573
    invoke-static {p2, v2, v4, v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodePackedFixed32List([BILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    move v2, v1

    .end local p3    # "position":I
    .restart local v1    # "position":I
    goto/16 :goto_1f1

    .line 4574
    .end local v1    # "position":I
    .restart local p3    # "position":I
    :cond_156
    if-ne v8, v1, :cond_163

    .line 4575
    move/from16 v3, p4

    move-object v1, v0

    move/from16 v0, p5

    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeFixed32List(I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_1f1

    .line 4574
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_163
    move-object v1, v0

    move v0, v2

    goto/16 :goto_1ef

    .line 4562
    :pswitch_167
    move-object v1, p2

    move/from16 v0, p3

    move-object/from16 v5, p14

    if-ne v8, v3, :cond_175

    .line 4563
    invoke-static {p2, v0, v4, v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodePackedFixed64List([BILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move v2, v0

    .end local p3    # "position":I
    .restart local v0    # "position":I
    goto/16 :goto_1f1

    .line 4564
    .end local v0    # "position":I
    .restart local p3    # "position":I
    :cond_175
    if-ne v8, v2, :cond_182

    .line 4565
    move/from16 v3, p4

    move v2, v0

    move/from16 v0, p5

    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeFixed64List(I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_1f1

    .line 4564
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_182
    move v2, v0

    goto/16 :goto_1ef

    .line 4552
    :pswitch_185
    move-object v1, p2

    move/from16 v2, p3

    move-object/from16 v5, p14

    if-ne v8, v3, :cond_193

    .line 4553
    invoke-static {p2, v2, v4, v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodePackedVarint32List([BILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move v2, v0

    .end local p3    # "position":I
    .restart local v0    # "position":I
    goto/16 :goto_1f1

    .line 4554
    .end local v0    # "position":I
    .restart local p3    # "position":I
    :cond_193
    if-nez v8, :cond_1ef

    .line 4555
    move/from16 v3, p4

    move/from16 v0, p5

    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_1f1

    .line 4542
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :pswitch_19f
    move-object v1, p2

    move/from16 v2, p3

    move-object/from16 v5, p14

    if-ne v8, v3, :cond_1ac

    .line 4543
    invoke-static {p2, v2, v4, v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodePackedVarint64List([BILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move v2, v0

    .end local p3    # "position":I
    .restart local v0    # "position":I
    goto :goto_1f1

    .line 4544
    .end local v0    # "position":I
    .restart local p3    # "position":I
    :cond_1ac
    if-nez v8, :cond_1b8

    .line 4545
    move/from16 v3, p4

    move/from16 v0, p5

    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint64List(I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move-object v0, v1

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_1f1

    .line 4544
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_1b8
    move-object v0, v1

    goto :goto_1ef

    .line 4532
    :pswitch_1ba
    move-object v0, p2

    move/from16 v2, p3

    move-object/from16 v5, p14

    if-ne v8, v3, :cond_1c7

    .line 4533
    invoke-static {p2, v2, v4, v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodePackedFloatList([BILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    move v2, v1

    .end local p3    # "position":I
    .restart local v1    # "position":I
    goto :goto_1f1

    .line 4534
    .end local v1    # "position":I
    .restart local p3    # "position":I
    :cond_1c7
    if-ne v8, v1, :cond_1d3

    .line 4535
    move/from16 v3, p4

    move-object v1, v0

    move/from16 v0, p5

    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeFloatList(I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_1f1

    .line 4534
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_1d3
    move-object v1, v0

    move v0, v2

    goto :goto_1ef

    .line 4524
    :pswitch_1d6
    move-object v1, p2

    move/from16 v0, p3

    move-object/from16 v5, p14

    if-ne v8, v3, :cond_1e3

    .line 4525
    invoke-static {p2, v0, v4, v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodePackedDoubleList([BILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move v2, v0

    .end local p3    # "position":I
    .restart local v0    # "position":I
    goto :goto_1f1

    .line 4526
    .end local v0    # "position":I
    .restart local p3    # "position":I
    :cond_1e3
    if-ne v8, v2, :cond_1ef

    .line 4527
    move/from16 v3, p4

    move v2, v0

    move/from16 v0, p5

    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeDoubleList(I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_1f1

    .line 4662
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_1ef
    :goto_1ef
    move/from16 v2, p3

    .end local p3    # "position":I
    .restart local v2    # "position":I
    :goto_1f1
    return v2

    :pswitch_data_1f2
    .packed-switch 0x12
        :pswitch_1d6
        :pswitch_1ba
        :pswitch_19f
        :pswitch_19f
        :pswitch_185
        :pswitch_167
        :pswitch_148
        :pswitch_12a
        :pswitch_f8
        :pswitch_df
        :pswitch_ce
        :pswitch_185
        :pswitch_9e
        :pswitch_148
        :pswitch_167
        :pswitch_7d
        :pswitch_57
        :pswitch_1d6
        :pswitch_1ba
        :pswitch_19f
        :pswitch_19f
        :pswitch_185
        :pswitch_167
        :pswitch_148
        :pswitch_12a
        :pswitch_185
        :pswitch_9e
        :pswitch_148
        :pswitch_167
        :pswitch_7d
        :pswitch_57
        :pswitch_34
    .end packed-switch
.end method

.method private blacklist positionForFieldNumber(I)I
    .registers 3
    .param p1, "number"    # I

    .line 6019
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_e

    .line 6020
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v0

    return v0

    .line 6022
    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist positionForFieldNumber(II)I
    .registers 4
    .param p1, "number"    # I
    .param p2, "min"    # I

    .line 6026
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_d

    .line 6027
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v0

    return v0

    .line 6029
    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist presenceMaskAndOffsetAt(I)I
    .registers 4
    .param p1, "pos"    # I

    .line 5835
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private blacklist readGroupList(Ljava/lang/Object;JLandroid/net/connectivity/com/google/protobuf/Reader;Landroid/net/connectivity/com/google/protobuf/Schema;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "reader"    # Landroid/net/connectivity/com/google/protobuf/Reader;
    .param p6, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Landroid/net/connectivity/com/google/protobuf/Reader;",
            "Landroid/net/connectivity/com/google/protobuf/Schema<",
            "TE;>;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5822
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p5, "schema":Landroid/net/connectivity/com/google/protobuf/Schema;, "Landroid/net/connectivity/com/google/protobuf/Schema<TE;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 5823
    invoke-virtual {v0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 5822
    invoke-interface {p4, v0, p5, p6}, Landroid/net/connectivity/com/google/protobuf/Reader;->readGroupList(Ljava/util/List;Landroid/net/connectivity/com/google/protobuf/Schema;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V

    .line 5824
    return-void
.end method

.method private blacklist readMessageList(Ljava/lang/Object;ILandroid/net/connectivity/com/google/protobuf/Reader;Landroid/net/connectivity/com/google/protobuf/Schema;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Landroid/net/connectivity/com/google/protobuf/Reader;
    .param p5, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Landroid/net/connectivity/com/google/protobuf/Reader;",
            "Landroid/net/connectivity/com/google/protobuf/Schema<",
            "TE;>;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5810
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p4, "schema":Landroid/net/connectivity/com/google/protobuf/Schema;, "Landroid/net/connectivity/com/google/protobuf/Schema<TE;>;"
    invoke-static {p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 5811
    .local v0, "offset":J
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 5812
    invoke-virtual {v2, p1, v0, v1}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 5811
    invoke-interface {p3, v2, p4, p5}, Landroid/net/connectivity/com/google/protobuf/Reader;->readMessageList(Ljava/util/List;Landroid/net/connectivity/com/google/protobuf/Schema;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V

    .line 5813
    return-void
.end method

.method private blacklist readString(Ljava/lang/Object;ILandroid/net/connectivity/com/google/protobuf/Reader;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Landroid/net/connectivity/com/google/protobuf/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5780
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    invoke-static {p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5782
    invoke-static {p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Landroid/net/connectivity/com/google/protobuf/Reader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2d

    .line 5783
    :cond_12
    iget-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->lite:Z

    if-eqz v0, :cond_22

    .line 5786
    invoke-static {p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Landroid/net/connectivity/com/google/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2d

    .line 5790
    :cond_22
    invoke-static {p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Landroid/net/connectivity/com/google/protobuf/Reader;->readBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5792
    :goto_2d
    return-void
.end method

.method private blacklist readStringList(Ljava/lang/Object;ILandroid/net/connectivity/com/google/protobuf/Reader;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Landroid/net/connectivity/com/google/protobuf/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5795
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    invoke-static {p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5796
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    .line 5797
    invoke-static {p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 5796
    invoke-interface {p3, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readStringListRequireUtf8(Ljava/util/List;)V

    goto :goto_21

    .line 5799
    :cond_14
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    invoke-static {p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Landroid/net/connectivity/com/google/protobuf/Reader;->readStringList(Ljava/util/List;)V

    .line 5801
    :goto_21
    return-void
.end method

.method private static blacklist reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 597
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 598
    :catch_5
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 602
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 603
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 604
    return-object v4

    .line 602
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 610
    :cond_1e
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 614
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found. Known fields are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 616
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist setFieldPresent(Ljava/lang/Object;I)V
    .registers 8
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 5990
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5991
    .local v0, "presenceMaskAndOffset":I
    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    .line 5992
    .local v1, "presenceFieldOffset":J
    const-wide/32 v3, 0xfffff

    cmp-long v3, v1, v3

    if-nez v3, :cond_11

    .line 5993
    return-void

    .line 5995
    :cond_11
    ushr-int/lit8 v3, v0, 0x14

    const/4 v4, 0x1

    shl-int v3, v4, v3

    .line 5996
    .local v3, "presenceMask":I
    nop

    .line 5999
    invoke-static {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    or-int/2addr v4, v3

    .line 5996
    invoke-static {p1, v1, v2, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 6000
    return-void
.end method

.method private blacklist setOneofPresent(Ljava/lang/Object;II)V
    .registers 7
    .param p2, "fieldNumber"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 6014
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 6015
    .local v0, "presenceMaskAndOffset":I
    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    invoke-static {p1, v1, v2, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 6016
    return-void
.end method

.method private blacklist slowPositionForFieldNumber(II)I
    .registers 7
    .param p1, "number"    # I
    .param p2, "min"    # I

    .line 6033
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    .line 6034
    .local v0, "max":I
    :goto_7
    if-gt p2, v0, :cond_1e

    .line 6036
    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    .line 6037
    .local v1, "mid":I
    mul-int/lit8 v2, v1, 0x3

    .line 6038
    .local v2, "pos":I
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 6039
    .local v3, "midFieldNumber":I
    if-ne p1, v3, :cond_16

    .line 6041
    return v2

    .line 6043
    :cond_16
    if-ge p1, v3, :cond_1b

    .line 6045
    add-int/lit8 v0, v1, -0x1

    goto :goto_1d

    .line 6048
    :cond_1b
    add-int/lit8 p2, v1, 0x1

    .line 6050
    .end local v1    # "mid":I
    .end local v2    # "pos":I
    .end local v3    # "midFieldNumber":I
    :goto_1d
    goto :goto_7

    .line 6051
    :cond_1e
    const/4 v1, -0x1

    return v1
.end method

.method private static blacklist storeFieldData(Landroid/net/connectivity/com/google/protobuf/FieldInfo;[II[Ljava/lang/Object;)V
    .registers 13
    .param p0, "fi"    # Landroid/net/connectivity/com/google/protobuf/FieldInfo;
    .param p1, "buffer"    # [I
    .param p2, "bufferIndex"    # I
    .param p3, "objects"    # [Ljava/lang/Object;

    .line 736
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getOneof()Landroid/net/connectivity/com/google/protobuf/OneofInfo;

    move-result-object v0

    .line 737
    .local v0, "oneof":Landroid/net/connectivity/com/google/protobuf/OneofInfo;
    if-eqz v0, :cond_24

    .line 738
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getType()Landroid/net/connectivity/com/google/protobuf/FieldType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/FieldType;->id()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    .line 739
    .local v1, "typeId":I
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/OneofInfo;->getValueField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 740
    .local v2, "fieldOffset":I
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/OneofInfo;->getCaseField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 741
    .local v3, "presenceFieldOffset":I
    const/4 v4, 0x0

    .local v4, "presenceMaskShift":I
    goto :goto_74

    .line 743
    .end local v1    # "typeId":I
    .end local v2    # "fieldOffset":I
    .end local v3    # "presenceFieldOffset":I
    .end local v4    # "presenceMaskShift":I
    :cond_24
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getType()Landroid/net/connectivity/com/google/protobuf/FieldType;

    move-result-object v1

    .line 744
    .local v1, "type":Landroid/net/connectivity/com/google/protobuf/FieldType;
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 745
    .restart local v2    # "fieldOffset":I
    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/FieldType;->id()I

    move-result v3

    .line 746
    .local v3, "typeId":I
    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/FieldType;->isList()Z

    move-result v4

    if-nez v4, :cond_5b

    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/FieldType;->isMap()Z

    move-result v4

    if-nez v4, :cond_5b

    .line 747
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getPresenceField()Ljava/lang/reflect/Field;

    move-result-object v4

    .line 748
    .local v4, "presenceField":Ljava/lang/reflect/Field;
    if-nez v4, :cond_4b

    .line 749
    const v5, 0xfffff

    .local v5, "presenceFieldOffset":I
    goto :goto_50

    .line 751
    .end local v5    # "presenceFieldOffset":I
    :cond_4b
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v5, v5

    .line 753
    .restart local v5    # "presenceFieldOffset":I
    :goto_50
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getPresenceMask()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    .line 754
    .local v4, "presenceMaskShift":I
    move v1, v3

    move v3, v5

    goto :goto_74

    .line 755
    .end local v4    # "presenceMaskShift":I
    .end local v5    # "presenceFieldOffset":I
    :cond_5b
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v4

    if-nez v4, :cond_67

    .line 756
    const/4 v4, 0x0

    .line 757
    .local v4, "presenceFieldOffset":I
    const/4 v5, 0x0

    move v1, v3

    move v3, v4

    move v4, v5

    .local v5, "presenceMaskShift":I
    goto :goto_74

    .line 759
    .end local v4    # "presenceFieldOffset":I
    .end local v5    # "presenceMaskShift":I
    :cond_67
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    .line 760
    .restart local v4    # "presenceFieldOffset":I
    const/4 v5, 0x0

    move v1, v3

    move v3, v4

    move v4, v5

    .line 765
    .local v1, "typeId":I
    .local v3, "presenceFieldOffset":I
    .local v4, "presenceMaskShift":I
    :goto_74
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v5

    aput v5, p1, p2

    .line 766
    add-int/lit8 v5, p2, 0x1

    .line 767
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->isEnforceUtf8()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_86

    const/high16 v6, 0x20000000

    goto :goto_87

    :cond_86
    move v6, v7

    .line 768
    :goto_87
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->isRequired()Z

    move-result v8

    if-eqz v8, :cond_8f

    const/high16 v7, 0x10000000

    :cond_8f
    or-int/2addr v6, v7

    shl-int/lit8 v7, v1, 0x14

    or-int/2addr v6, v7

    or-int/2addr v6, v2

    aput v6, p1, v5

    .line 771
    add-int/lit8 v5, p2, 0x2

    shl-int/lit8 v6, v4, 0x14

    or-int/2addr v6, v3

    aput v6, p1, v5

    .line 773
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getMessageFieldClass()Ljava/lang/Class;

    move-result-object v5

    .line 774
    .local v5, "messageFieldClass":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_cf

    .line 775
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, p3, v6

    .line 776
    if-eqz v5, :cond_bc

    .line 777
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aput-object v5, p3, v6

    goto :goto_ec

    .line 778
    :cond_bc
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getEnumVerifier()Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    move-result-object v6

    if-eqz v6, :cond_ec

    .line 779
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getEnumVerifier()Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    move-result-object v7

    aput-object v7, p3, v6

    goto :goto_ec

    .line 782
    :cond_cf
    if-eqz v5, :cond_da

    .line 783
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aput-object v5, p3, v6

    goto :goto_ec

    .line 784
    :cond_da
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getEnumVerifier()Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    move-result-object v6

    if-eqz v6, :cond_ec

    .line 785
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->getEnumVerifier()Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    move-result-object v7

    aput-object v7, p3, v6

    .line 788
    :cond_ec
    :goto_ec
    return-void
.end method

.method private blacklist storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 7
    .param p2, "pos"    # I
    .param p3, "field"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 5197
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5198
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 5199
    return-void
.end method

.method private blacklist storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 8
    .param p2, "fieldNumber"    # I
    .param p3, "pos"    # I
    .param p4, "field"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 5224
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5225
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 5226
    return-void
.end method

.method private static blacklist type(I)I
    .registers 2
    .param p0, "value"    # I

    .line 5839
    const/high16 v0, 0xff00000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method private blacklist typeAndOffsetAt(I)I
    .registers 4
    .param p1, "pos"    # I

    .line 5831
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private blacklist writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V
    .registers 24
    .param p2, "writer"    # Landroid/net/connectivity/com/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/net/connectivity/com/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2593
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 2594
    .local v3, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    const/4 v4, 0x0

    .line 2595
    .local v4, "nextExtension":Ljava/util/Map$Entry;
    iget-boolean v5, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v5, :cond_23

    .line 2596
    iget-object v5, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v5, v1}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v5

    .line 2597
    .local v5, "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<*>;"
    invoke-virtual {v5}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_23

    .line 2598
    invoke-virtual {v5}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2599
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Ljava/util/Map$Entry;

    .line 2602
    .end local v5    # "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<*>;"
    :cond_23
    const v5, 0xfffff

    .line 2603
    .local v5, "currentPresenceFieldOffset":I
    const/4 v6, 0x0

    .line 2604
    .local v6, "currentPresenceField":I
    iget-object v7, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    array-length v7, v7

    .line 2605
    .local v7, "bufferLength":I
    sget-object v8, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 2606
    .local v8, "unsafe":Lsun/misc/Unsafe;
    const/4 v9, 0x0

    .local v9, "pos":I
    :goto_2d
    if-ge v9, v7, :cond_617

    .line 2607
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v11

    .line 2608
    .local v11, "typeAndOffset":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v12

    .line 2609
    .local v12, "number":I
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->type(I)I

    move-result v13

    .line 2611
    .local v13, "fieldType":I
    const/4 v14, 0x0

    .line 2612
    .local v14, "presenceMaskAndOffset":I
    const/4 v15, 0x0

    .line 2613
    .local v15, "presenceMask":I
    const/16 v10, 0x11

    move-object/from16 v16, v3

    .end local v3    # "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    .local v16, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    if-gt v13, v10, :cond_65

    .line 2614
    iget-object v10, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v17, v9, 0x2

    aget v14, v10, v17

    .line 2615
    const v10, 0xfffff

    and-int/2addr v10, v14

    .line 2616
    .local v10, "presenceFieldOffset":I
    if-eq v10, v5, :cond_5a

    .line 2617
    move v5, v10

    .line 2618
    move-object/from16 v17, v4

    const/16 v18, 0x1

    .end local v4    # "nextExtension":Ljava/util/Map$Entry;
    .local v17, "nextExtension":Ljava/util/Map$Entry;
    int-to-long v3, v10

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    goto :goto_5e

    .line 2616
    .end local v17    # "nextExtension":Ljava/util/Map$Entry;
    .restart local v4    # "nextExtension":Ljava/util/Map$Entry;
    :cond_5a
    move-object/from16 v17, v4

    const/16 v18, 0x1

    .line 2620
    .end local v4    # "nextExtension":Ljava/util/Map$Entry;
    .restart local v17    # "nextExtension":Ljava/util/Map$Entry;
    :goto_5e
    ushr-int/lit8 v3, v14, 0x14

    shl-int v15, v18, v3

    move-object/from16 v4, v17

    goto :goto_69

    .line 2613
    .end local v10    # "presenceFieldOffset":I
    .end local v17    # "nextExtension":Ljava/util/Map$Entry;
    .restart local v4    # "nextExtension":Ljava/util/Map$Entry;
    :cond_65
    move-object/from16 v17, v4

    const/16 v18, 0x1

    .line 2624
    :goto_69
    if-eqz v4, :cond_88

    iget-object v3, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v3, v4}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v3

    if-gt v3, v12, :cond_88

    .line 2625
    iget-object v3, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v3, v2, v4}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->serializeExtension(Landroid/net/connectivity/com/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2626
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_86

    :cond_85
    const/4 v3, 0x0

    :goto_86
    move-object v4, v3

    goto :goto_69

    .line 2628
    :cond_88
    move-object v10, v4

    .end local v4    # "nextExtension":Ljava/util/Map$Entry;
    .local v10, "nextExtension":Ljava/util/Map$Entry;
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    .line 2630
    .local v3, "offset":J
    move/from16 v17, v5

    .end local v5    # "currentPresenceFieldOffset":I
    .local v17, "currentPresenceFieldOffset":I
    const/4 v5, 0x0

    packed-switch v13, :pswitch_data_63a

    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .local v19, "currentPresenceField":I
    .local v20, "bufferLength":I
    goto/16 :goto_60a

    .line 2950
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_99
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 2951
    nop

    .line 2952
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v6

    .line 2951
    invoke-interface {v2, v12, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2950
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :cond_b1
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2945
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_b7
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 2946
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v12, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSInt64(IJ)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2945
    :cond_ca
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2940
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_ce
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 2941
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSInt32(II)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2940
    :cond_e1
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2935
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_e5
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_f8

    .line 2936
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v12, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSFixed64(IJ)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2935
    :cond_f8
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2930
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_fc
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 2931
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSFixed32(II)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2930
    :cond_10f
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2925
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_113
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_126

    .line 2926
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeEnum(II)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2925
    :cond_126
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2920
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_12a
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_13d

    .line 2921
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeUInt32(II)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2920
    :cond_13d
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2915
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_141
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_156

    .line 2916
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2915
    :cond_156
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2909
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_15a
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_171

    .line 2910
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2911
    .local v5, "value":Ljava/lang/Object;
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v6

    invoke-interface {v2, v12, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 2912
    .end local v5    # "value":Ljava/lang/Object;
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2909
    :cond_171
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2904
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_175
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_188

    .line 2905
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2904
    :cond_188
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2899
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_18c
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_19f

    .line 2900
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v5

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBool(IZ)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2899
    :cond_19f
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2894
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_1a3
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1b6

    .line 2895
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFixed32(II)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2894
    :cond_1b6
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2889
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_1ba
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1cd

    .line 2890
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v12, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFixed64(IJ)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2889
    :cond_1cd
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2884
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_1d1
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1e4

    .line 2885
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt32(II)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2884
    :cond_1e4
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2879
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_1e8
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1fb

    .line 2880
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v12, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeUInt64(IJ)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2879
    :cond_1fb
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2874
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_1ff
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_212

    .line 2875
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v12, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt64(IJ)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2874
    :cond_212
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2869
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_216
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_229

    .line 2870
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v5

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFloat(IF)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2869
    :cond_229
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2864
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_22d
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v1, v12, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_240

    .line 2865
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-interface {v2, v12, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeDouble(ID)V

    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2864
    :cond_240
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2861
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_244
    move/from16 v19, v6

    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2, v12, v5, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->writeMapHelper(Landroid/net/connectivity/com/google/protobuf/Writer;ILjava/lang/Object;I)V

    .line 2862
    move/from16 v20, v7

    goto/16 :goto_60a

    .line 2853
    .end local v19    # "currentPresenceField":I
    .restart local v6    # "currentPresenceField":I
    :pswitch_251
    move/from16 v19, v6

    .line 2854
    .end local v6    # "currentPresenceField":I
    .restart local v19    # "currentPresenceField":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2855
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2857
    move/from16 v20, v7

    .end local v7    # "bufferLength":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v7

    .line 2853
    invoke-static {v5, v6, v2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 2858
    goto/16 :goto_60a

    .line 2849
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_268
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2850
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2849
    move/from16 v7, v18

    invoke-static {v5, v6, v2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2851
    goto/16 :goto_60a

    .line 2845
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_27d
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v7, v18

    .line 2846
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2845
    invoke-static {v5, v6, v2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2847
    goto/16 :goto_60a

    .line 2841
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_292
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v7, v18

    .line 2842
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2841
    invoke-static {v5, v6, v2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2843
    goto/16 :goto_60a

    .line 2837
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_2a7
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v7, v18

    .line 2838
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2837
    invoke-static {v5, v6, v2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2839
    goto/16 :goto_60a

    .line 2833
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_2bc
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v7, v18

    .line 2834
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2833
    invoke-static {v5, v6, v2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2835
    goto/16 :goto_60a

    .line 2829
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_2d1
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v7, v18

    .line 2830
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2829
    invoke-static {v5, v6, v2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2831
    goto/16 :goto_60a

    .line 2825
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_2e6
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v7, v18

    .line 2826
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2825
    invoke-static {v5, v6, v2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2827
    goto/16 :goto_60a

    .line 2820
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_2fb
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v7, v18

    .line 2821
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2820
    invoke-static {v5, v6, v2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2823
    goto/16 :goto_60a

    .line 2816
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_310
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v7, v18

    .line 2817
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2816
    invoke-static {v5, v6, v2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2818
    goto/16 :goto_60a

    .line 2812
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_325
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v7, v18

    .line 2813
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2812
    invoke-static {v5, v6, v2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2814
    goto/16 :goto_60a

    .line 2808
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_33a
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v7, v18

    .line 2809
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2808
    invoke-static {v5, v6, v2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2810
    goto/16 :goto_60a

    .line 2804
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_34f
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v7, v18

    .line 2805
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2804
    invoke-static {v5, v6, v2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2806
    goto/16 :goto_60a

    .line 2800
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_364
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v7, v18

    .line 2801
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2800
    invoke-static {v5, v6, v2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2802
    goto/16 :goto_60a

    .line 2796
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_379
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v7, v18

    .line 2797
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2796
    invoke-static {v5, v6, v2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2798
    goto/16 :goto_60a

    .line 2791
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_38e
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2792
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2791
    invoke-static {v6, v7, v2, v5}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2793
    goto/16 :goto_60a

    .line 2787
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_3a1
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2788
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2787
    invoke-static {v6, v7, v2, v5}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2789
    goto/16 :goto_60a

    .line 2783
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_3b4
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2784
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2783
    invoke-static {v6, v7, v2, v5}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2785
    goto/16 :goto_60a

    .line 2779
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_3c7
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2780
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2779
    invoke-static {v6, v7, v2, v5}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2781
    goto/16 :goto_60a

    .line 2775
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_3da
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2776
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2775
    invoke-static {v6, v7, v2, v5}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2777
    goto/16 :goto_60a

    .line 2771
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_3ed
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2772
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2771
    invoke-static {v6, v7, v2, v5}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2773
    goto/16 :goto_60a

    .line 2767
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_400
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2768
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2767
    invoke-static {v5, v6, v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 2769
    goto/16 :goto_60a

    .line 2760
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_413
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2761
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2762
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2764
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v7

    .line 2760
    invoke-static {v5, v6, v2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 2765
    goto/16 :goto_60a

    .line 2756
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_42a
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2757
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2756
    invoke-static {v5, v6, v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 2758
    goto/16 :goto_60a

    .line 2752
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_43d
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2753
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2752
    invoke-static {v6, v7, v2, v5}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2754
    goto/16 :goto_60a

    .line 2748
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_450
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2749
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2748
    invoke-static {v6, v7, v2, v5}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2750
    goto/16 :goto_60a

    .line 2744
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_463
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2745
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2744
    invoke-static {v6, v7, v2, v5}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2746
    goto/16 :goto_60a

    .line 2740
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_476
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2741
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2740
    invoke-static {v6, v7, v2, v5}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2742
    goto/16 :goto_60a

    .line 2736
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_489
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2737
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2736
    invoke-static {v6, v7, v2, v5}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2738
    goto/16 :goto_60a

    .line 2732
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_49c
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2733
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2732
    invoke-static {v6, v7, v2, v5}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2734
    goto/16 :goto_60a

    .line 2728
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_4af
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2729
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2728
    invoke-static {v6, v7, v2, v5}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2730
    goto/16 :goto_60a

    .line 2724
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_4c2
    move/from16 v19, v6

    move/from16 v20, v7

    .line 2725
    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2724
    invoke-static {v6, v7, v2, v5}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 2726
    goto/16 :goto_60a

    .line 2718
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_4d5
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2719
    nop

    .line 2720
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v6

    .line 2719
    invoke-interface {v2, v12, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    goto/16 :goto_60a

    .line 2713
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_4eb
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2714
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v12, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_60a

    .line 2708
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_4fc
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2709
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_60a

    .line 2703
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_50d
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2704
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v12, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_60a

    .line 2698
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_51e
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2699
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_60a

    .line 2693
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_52f
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2694
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_60a

    .line 2688
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_540
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2689
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_60a

    .line 2683
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_551
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2684
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    goto/16 :goto_60a

    .line 2677
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_564
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2678
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2679
    .restart local v5    # "value":Ljava/lang/Object;
    invoke-direct {v0, v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v6

    invoke-interface {v2, v12, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 2680
    .end local v5    # "value":Ljava/lang/Object;
    goto/16 :goto_60a

    .line 2672
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_579
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2673
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    goto/16 :goto_60a

    .line 2667
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_58a
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2668
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v5

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_60a

    .line 2662
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_59b
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2663
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_60a

    .line 2657
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_5ab
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2658
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v12, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_60a

    .line 2652
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_5bb
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2653
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_60a

    .line 2647
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_5cb
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2648
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v12, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_60a

    .line 2642
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_5db
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2643
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v12, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_60a

    .line 2637
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_5eb
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2638
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v5

    invoke-interface {v2, v12, v5}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_60a

    .line 2632
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :pswitch_5fb
    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "currentPresenceField":I
    .end local v7    # "bufferLength":I
    .restart local v19    # "currentPresenceField":I
    .restart local v20    # "bufferLength":I
    and-int v5, v19, v15

    if-eqz v5, :cond_60a

    .line 2633
    invoke-static {v1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-interface {v2, v12, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeDouble(ID)V

    .line 2606
    .end local v3    # "offset":J
    .end local v11    # "typeAndOffset":I
    .end local v12    # "number":I
    .end local v13    # "fieldType":I
    .end local v14    # "presenceMaskAndOffset":I
    .end local v15    # "presenceMask":I
    :cond_60a
    :goto_60a
    add-int/lit8 v9, v9, 0x3

    move-object v4, v10

    move-object/from16 v3, v16

    move/from16 v5, v17

    move/from16 v6, v19

    move/from16 v7, v20

    goto/16 :goto_2d

    .end local v10    # "nextExtension":Ljava/util/Map$Entry;
    .end local v16    # "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    .end local v17    # "currentPresenceFieldOffset":I
    .end local v19    # "currentPresenceField":I
    .end local v20    # "bufferLength":I
    .local v3, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    .restart local v4    # "nextExtension":Ljava/util/Map$Entry;
    .local v5, "currentPresenceFieldOffset":I
    .restart local v6    # "currentPresenceField":I
    .restart local v7    # "bufferLength":I
    :cond_617
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v20, v7

    .line 2960
    .end local v3    # "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    .end local v7    # "bufferLength":I
    .end local v9    # "pos":I
    .restart local v16    # "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    .restart local v20    # "bufferLength":I
    :goto_61d
    if-eqz v4, :cond_634

    .line 2961
    iget-object v3, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v3, v2, v4}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->serializeExtension(Landroid/net/connectivity/com/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2962
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_631

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_632

    :cond_631
    const/4 v3, 0x0

    :goto_632
    move-object v4, v3

    goto :goto_61d

    .line 2964
    :cond_634
    iget-object v3, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v3, v1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->writeUnknownInMessageTo(Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 2965
    return-void

    :pswitch_data_63a
    .packed-switch 0x0
        :pswitch_5fb
        :pswitch_5eb
        :pswitch_5db
        :pswitch_5cb
        :pswitch_5bb
        :pswitch_5ab
        :pswitch_59b
        :pswitch_58a
        :pswitch_579
        :pswitch_564
        :pswitch_551
        :pswitch_540
        :pswitch_52f
        :pswitch_51e
        :pswitch_50d
        :pswitch_4fc
        :pswitch_4eb
        :pswitch_4d5
        :pswitch_4c2
        :pswitch_4af
        :pswitch_49c
        :pswitch_489
        :pswitch_476
        :pswitch_463
        :pswitch_450
        :pswitch_43d
        :pswitch_42a
        :pswitch_413
        :pswitch_400
        :pswitch_3ed
        :pswitch_3da
        :pswitch_3c7
        :pswitch_3b4
        :pswitch_3a1
        :pswitch_38e
        :pswitch_379
        :pswitch_364
        :pswitch_34f
        :pswitch_33a
        :pswitch_325
        :pswitch_310
        :pswitch_2fb
        :pswitch_2e6
        :pswitch_2d1
        :pswitch_2bc
        :pswitch_2a7
        :pswitch_292
        :pswitch_27d
        :pswitch_268
        :pswitch_251
        :pswitch_244
        :pswitch_22d
        :pswitch_216
        :pswitch_1ff
        :pswitch_1e8
        :pswitch_1d1
        :pswitch_1ba
        :pswitch_1a3
        :pswitch_18c
        :pswitch_175
        :pswitch_15a
        :pswitch_141
        :pswitch_12a
        :pswitch_113
        :pswitch_fc
        :pswitch_e5
        :pswitch_ce
        :pswitch_b7
        :pswitch_99
    .end packed-switch
.end method

.method private blacklist writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V
    .registers 14
    .param p2, "writer"    # Landroid/net/connectivity/com/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/net/connectivity/com/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2969
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 2970
    .local v0, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    const/4 v1, 0x0

    .line 2971
    .local v1, "nextExtension":Ljava/util/Map$Entry;
    iget-boolean v2, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_1d

    .line 2972
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v2

    .line 2973
    .local v2, "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<*>;"
    invoke-virtual {v2}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 2974
    invoke-virtual {v2}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2975
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/Map$Entry;

    .line 2978
    .end local v2    # "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<*>;"
    :cond_1d
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    array-length v2, v2

    .line 2979
    .local v2, "bufferLength":I
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_21
    const/4 v4, 0x0

    if-ge v3, v2, :cond_5ab

    .line 2980
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v5

    .line 2981
    .local v5, "typeAndOffset":I
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    .line 2984
    .local v6, "number":I
    :goto_2c
    if-eqz v1, :cond_4b

    iget-object v7, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v7, v1}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v7

    if-gt v7, v6, :cond_4b

    .line 2985
    iget-object v7, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v7, p2, v1}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->serializeExtension(Landroid/net/connectivity/com/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2986
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_49

    :cond_48
    move-object v7, v4

    :goto_49
    move-object v1, v7

    goto :goto_2c

    .line 2989
    :cond_4b
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->type(I)I

    move-result v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v4, :pswitch_data_5c8

    goto/16 :goto_5a7

    .line 3401
    :pswitch_56
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3402
    nop

    .line 3404
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3405
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v7

    .line 3402
    invoke-interface {p2, v6, v4, v7}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    goto/16 :goto_5a7

    .line 3396
    :pswitch_6e
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3397
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5a7

    .line 3391
    :pswitch_81
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3392
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5a7

    .line 3386
    :pswitch_94
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3387
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5a7

    .line 3381
    :pswitch_a7
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3382
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5a7

    .line 3376
    :pswitch_ba
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3377
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5a7

    .line 3371
    :pswitch_cd
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3372
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5a7

    .line 3365
    :pswitch_e0
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3366
    nop

    .line 3367
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 3366
    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    goto/16 :goto_5a7

    .line 3359
    :pswitch_f6
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3360
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3361
    .local v4, "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 3362
    .end local v4    # "value":Ljava/lang/Object;
    goto/16 :goto_5a7

    .line 3354
    :pswitch_10d
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3355
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v6, v4, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    goto/16 :goto_5a7

    .line 3349
    :pswitch_120
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3350
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5a7

    .line 3344
    :pswitch_133
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3345
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_5a7

    .line 3339
    :pswitch_146
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3340
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_5a7

    .line 3334
    :pswitch_159
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3335
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_5a7

    .line 3329
    :pswitch_16c
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3330
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_5a7

    .line 3324
    :pswitch_17f
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3325
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_5a7

    .line 3319
    :pswitch_192
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3320
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_5a7

    .line 3314
    :pswitch_1a5
    invoke-direct {p0, p1, v6, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3315
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_5a7

    .line 3311
    :pswitch_1b8
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v6, v4, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->writeMapHelper(Landroid/net/connectivity/com/google/protobuf/Writer;ILjava/lang/Object;I)V

    .line 3312
    goto/16 :goto_5a7

    .line 3303
    :pswitch_1c5
    nop

    .line 3304
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3305
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3307
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v8

    .line 3303
    invoke-static {v4, v7, p2, v8}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 3308
    goto/16 :goto_5a7

    .line 3296
    :pswitch_1dd
    nop

    .line 3297
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3298
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3296
    invoke-static {v4, v8, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3301
    goto/16 :goto_5a7

    .line 3289
    :pswitch_1f1
    nop

    .line 3290
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3291
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3289
    invoke-static {v4, v8, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3294
    goto/16 :goto_5a7

    .line 3282
    :pswitch_205
    nop

    .line 3283
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3284
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3282
    invoke-static {v4, v8, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3287
    goto/16 :goto_5a7

    .line 3275
    :pswitch_219
    nop

    .line 3276
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3277
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3275
    invoke-static {v4, v8, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3280
    goto/16 :goto_5a7

    .line 3268
    :pswitch_22d
    nop

    .line 3269
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3270
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3268
    invoke-static {v4, v8, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3273
    goto/16 :goto_5a7

    .line 3261
    :pswitch_241
    nop

    .line 3262
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3263
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3261
    invoke-static {v4, v8, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3266
    goto/16 :goto_5a7

    .line 3254
    :pswitch_255
    nop

    .line 3255
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3256
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3254
    invoke-static {v4, v8, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3259
    goto/16 :goto_5a7

    .line 3246
    :pswitch_269
    nop

    .line 3247
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3248
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3246
    invoke-static {v4, v8, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3252
    goto/16 :goto_5a7

    .line 3239
    :pswitch_27d
    nop

    .line 3240
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3241
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3239
    invoke-static {v4, v8, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3244
    goto/16 :goto_5a7

    .line 3232
    :pswitch_291
    nop

    .line 3233
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3234
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3232
    invoke-static {v4, v8, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3237
    goto/16 :goto_5a7

    .line 3225
    :pswitch_2a5
    nop

    .line 3226
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3227
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3225
    invoke-static {v4, v8, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3230
    goto/16 :goto_5a7

    .line 3218
    :pswitch_2b9
    nop

    .line 3219
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3220
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3218
    invoke-static {v4, v8, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3223
    goto/16 :goto_5a7

    .line 3211
    :pswitch_2cd
    nop

    .line 3212
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3213
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3211
    invoke-static {v4, v8, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3216
    goto/16 :goto_5a7

    .line 3204
    :pswitch_2e1
    nop

    .line 3205
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3206
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3204
    invoke-static {v4, v8, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3209
    goto/16 :goto_5a7

    .line 3196
    :pswitch_2f5
    nop

    .line 3197
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3198
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3196
    invoke-static {v4, v7, p2, v8}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3201
    goto/16 :goto_5a7

    .line 3189
    :pswitch_309
    nop

    .line 3190
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3191
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3189
    invoke-static {v4, v7, p2, v8}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3194
    goto/16 :goto_5a7

    .line 3182
    :pswitch_31d
    nop

    .line 3183
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3184
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3182
    invoke-static {v4, v7, p2, v8}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3187
    goto/16 :goto_5a7

    .line 3175
    :pswitch_331
    nop

    .line 3176
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3177
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3175
    invoke-static {v4, v7, p2, v8}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3180
    goto/16 :goto_5a7

    .line 3168
    :pswitch_345
    nop

    .line 3169
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3170
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3168
    invoke-static {v4, v7, p2, v8}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3173
    goto/16 :goto_5a7

    .line 3161
    :pswitch_359
    nop

    .line 3162
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3163
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3161
    invoke-static {v4, v7, p2, v8}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3166
    goto/16 :goto_5a7

    .line 3155
    :pswitch_36d
    nop

    .line 3156
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3157
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3155
    invoke-static {v4, v7, p2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 3159
    goto/16 :goto_5a7

    .line 3148
    :pswitch_381
    nop

    .line 3149
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3150
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3152
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v8

    .line 3148
    invoke-static {v4, v7, p2, v8}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 3153
    goto/16 :goto_5a7

    .line 3142
    :pswitch_399
    nop

    .line 3143
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3144
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3142
    invoke-static {v4, v7, p2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 3146
    goto/16 :goto_5a7

    .line 3135
    :pswitch_3ad
    nop

    .line 3136
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3137
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3135
    invoke-static {v4, v7, p2, v8}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3140
    goto/16 :goto_5a7

    .line 3128
    :pswitch_3c1
    nop

    .line 3129
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3130
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3128
    invoke-static {v4, v7, p2, v8}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3133
    goto/16 :goto_5a7

    .line 3121
    :pswitch_3d5
    nop

    .line 3122
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3123
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3121
    invoke-static {v4, v7, p2, v8}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3126
    goto/16 :goto_5a7

    .line 3114
    :pswitch_3e9
    nop

    .line 3115
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3116
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3114
    invoke-static {v4, v7, p2, v8}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3119
    goto/16 :goto_5a7

    .line 3107
    :pswitch_3fd
    nop

    .line 3108
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3109
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3107
    invoke-static {v4, v7, p2, v8}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3112
    goto/16 :goto_5a7

    .line 3100
    :pswitch_411
    nop

    .line 3101
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3102
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3100
    invoke-static {v4, v7, p2, v8}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3105
    goto/16 :goto_5a7

    .line 3093
    :pswitch_425
    nop

    .line 3094
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3095
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3093
    invoke-static {v4, v7, p2, v8}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3098
    goto/16 :goto_5a7

    .line 3086
    :pswitch_439
    nop

    .line 3087
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3088
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3086
    invoke-static {v4, v7, p2, v8}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3091
    goto/16 :goto_5a7

    .line 3078
    :pswitch_44d
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3079
    nop

    .line 3081
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3082
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v7

    .line 3079
    invoke-interface {p2, v6, v4, v7}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    goto/16 :goto_5a7

    .line 3073
    :pswitch_465
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3074
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5a7

    .line 3068
    :pswitch_478
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3069
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5a7

    .line 3063
    :pswitch_48b
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3064
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5a7

    .line 3058
    :pswitch_49e
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3059
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5a7

    .line 3053
    :pswitch_4b1
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3054
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5a7

    .line 3048
    :pswitch_4c4
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3049
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5a7

    .line 3042
    :pswitch_4d7
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3043
    nop

    .line 3044
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 3043
    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    goto/16 :goto_5a7

    .line 3036
    :pswitch_4ed
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3037
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3038
    .restart local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 3039
    .end local v4    # "value":Ljava/lang/Object;
    goto/16 :goto_5a7

    .line 3031
    :pswitch_504
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3032
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v6, v4, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    goto/16 :goto_5a7

    .line 3026
    :pswitch_517
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3027
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5a7

    .line 3021
    :pswitch_52a
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3022
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_5a7

    .line 3016
    :pswitch_53c
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3017
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_5a7

    .line 3011
    :pswitch_54e
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3012
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_5a7

    .line 3006
    :pswitch_560
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3007
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_5a7

    .line 3001
    :pswitch_572
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 3002
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_5a7

    .line 2996
    :pswitch_584
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 2997
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v6, v4}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_5a7

    .line 2991
    :pswitch_596
    invoke-direct {p0, p1, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    .line 2992
    invoke-static {v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeDouble(ID)V

    .line 2979
    .end local v5    # "typeAndOffset":I
    .end local v6    # "number":I
    :cond_5a7
    :goto_5a7
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_21

    .line 3413
    .end local v3    # "pos":I
    :cond_5ab
    :goto_5ab
    if-eqz v1, :cond_5c2

    .line 3414
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v3, p2, v1}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->serializeExtension(Landroid/net/connectivity/com/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3415
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5bf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_5c0

    :cond_5bf
    move-object v3, v4

    :goto_5c0
    move-object v1, v3

    goto :goto_5ab

    .line 3417
    :cond_5c2
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v3, p1, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->writeUnknownInMessageTo(Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 3418
    return-void

    :pswitch_data_5c8
    .packed-switch 0x0
        :pswitch_596
        :pswitch_584
        :pswitch_572
        :pswitch_560
        :pswitch_54e
        :pswitch_53c
        :pswitch_52a
        :pswitch_517
        :pswitch_504
        :pswitch_4ed
        :pswitch_4d7
        :pswitch_4c4
        :pswitch_4b1
        :pswitch_49e
        :pswitch_48b
        :pswitch_478
        :pswitch_465
        :pswitch_44d
        :pswitch_439
        :pswitch_425
        :pswitch_411
        :pswitch_3fd
        :pswitch_3e9
        :pswitch_3d5
        :pswitch_3c1
        :pswitch_3ad
        :pswitch_399
        :pswitch_381
        :pswitch_36d
        :pswitch_359
        :pswitch_345
        :pswitch_331
        :pswitch_31d
        :pswitch_309
        :pswitch_2f5
        :pswitch_2e1
        :pswitch_2cd
        :pswitch_2b9
        :pswitch_2a5
        :pswitch_291
        :pswitch_27d
        :pswitch_269
        :pswitch_255
        :pswitch_241
        :pswitch_22d
        :pswitch_219
        :pswitch_205
        :pswitch_1f1
        :pswitch_1dd
        :pswitch_1c5
        :pswitch_1b8
        :pswitch_1a5
        :pswitch_192
        :pswitch_17f
        :pswitch_16c
        :pswitch_159
        :pswitch_146
        :pswitch_133
        :pswitch_120
        :pswitch_10d
        :pswitch_f6
        :pswitch_e0
        :pswitch_cd
        :pswitch_ba
        :pswitch_a7
        :pswitch_94
        :pswitch_81
        :pswitch_6e
        :pswitch_56
    .end packed-switch
.end method

.method private blacklist writeFieldsInDescendingOrder(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V
    .registers 13
    .param p2, "writer"    # Landroid/net/connectivity/com/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/net/connectivity/com/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3422
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->writeUnknownInMessageTo(Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 3424
    const/4 v0, 0x0

    .line 3425
    .local v0, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    const/4 v1, 0x0

    .line 3426
    .local v1, "nextExtension":Ljava/util/Map$Entry;
    iget-boolean v2, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_22

    .line 3427
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v2

    .line 3428
    .local v2, "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<*>;"
    invoke-virtual {v2}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    .line 3429
    invoke-virtual {v2}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3430
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/Map$Entry;

    .line 3434
    .end local v2    # "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<*>;"
    :cond_22
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x3

    .local v2, "pos":I
    :goto_27
    const/4 v3, 0x0

    if-ltz v2, :cond_5b1

    .line 3435
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v4

    .line 3436
    .local v4, "typeAndOffset":I
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3439
    .local v5, "number":I
    :goto_32
    if-eqz v1, :cond_51

    iget-object v6, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v6, v1}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v6

    if-le v6, v5, :cond_51

    .line 3440
    iget-object v6, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v6, p2, v1}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->serializeExtension(Landroid/net/connectivity/com/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3441
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    goto :goto_4f

    :cond_4e
    move-object v6, v3

    :goto_4f
    move-object v1, v6

    goto :goto_32

    .line 3444
    :cond_51
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_5ca

    goto/16 :goto_5ad

    .line 3855
    :pswitch_5c
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3856
    nop

    .line 3858
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3859
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v6

    .line 3856
    invoke-interface {p2, v5, v3, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    goto/16 :goto_5ad

    .line 3850
    :pswitch_74
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3851
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5ad

    .line 3845
    :pswitch_87
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3846
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5ad

    .line 3840
    :pswitch_9a
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3841
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5ad

    .line 3835
    :pswitch_ad
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3836
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5ad

    .line 3830
    :pswitch_c0
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3831
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5ad

    .line 3825
    :pswitch_d3
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3826
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5ad

    .line 3819
    :pswitch_e6
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3820
    nop

    .line 3821
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 3820
    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    goto/16 :goto_5ad

    .line 3813
    :pswitch_fc
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3814
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3815
    .local v3, "value":Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v3, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 3816
    .end local v3    # "value":Ljava/lang/Object;
    goto/16 :goto_5ad

    .line 3808
    :pswitch_113
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3809
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5, v3, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    goto/16 :goto_5ad

    .line 3803
    :pswitch_126
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3804
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5ad

    .line 3798
    :pswitch_139
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3799
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_5ad

    .line 3793
    :pswitch_14c
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3794
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_5ad

    .line 3788
    :pswitch_15f
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3789
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_5ad

    .line 3783
    :pswitch_172
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3784
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_5ad

    .line 3778
    :pswitch_185
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3779
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_5ad

    .line 3773
    :pswitch_198
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3774
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v3

    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_5ad

    .line 3768
    :pswitch_1ab
    invoke-direct {p0, p1, v5, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3769
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_5ad

    .line 3765
    :pswitch_1be
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p2, v5, v3, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->writeMapHelper(Landroid/net/connectivity/com/google/protobuf/Writer;ILjava/lang/Object;I)V

    .line 3766
    goto/16 :goto_5ad

    .line 3757
    :pswitch_1cb
    nop

    .line 3758
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3759
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3761
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v7

    .line 3757
    invoke-static {v3, v6, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 3762
    goto/16 :goto_5ad

    .line 3750
    :pswitch_1e3
    nop

    .line 3751
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3752
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3750
    invoke-static {v3, v7, p2, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3755
    goto/16 :goto_5ad

    .line 3743
    :pswitch_1f7
    nop

    .line 3744
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3745
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3743
    invoke-static {v3, v7, p2, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3748
    goto/16 :goto_5ad

    .line 3736
    :pswitch_20b
    nop

    .line 3737
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3738
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3736
    invoke-static {v3, v7, p2, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3741
    goto/16 :goto_5ad

    .line 3729
    :pswitch_21f
    nop

    .line 3730
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3731
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3729
    invoke-static {v3, v7, p2, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3734
    goto/16 :goto_5ad

    .line 3722
    :pswitch_233
    nop

    .line 3723
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3724
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3722
    invoke-static {v3, v7, p2, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3727
    goto/16 :goto_5ad

    .line 3715
    :pswitch_247
    nop

    .line 3716
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3717
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3715
    invoke-static {v3, v7, p2, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3720
    goto/16 :goto_5ad

    .line 3708
    :pswitch_25b
    nop

    .line 3709
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3710
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3708
    invoke-static {v3, v7, p2, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3713
    goto/16 :goto_5ad

    .line 3700
    :pswitch_26f
    nop

    .line 3701
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3702
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3700
    invoke-static {v3, v7, p2, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3706
    goto/16 :goto_5ad

    .line 3693
    :pswitch_283
    nop

    .line 3694
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3695
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3693
    invoke-static {v3, v7, p2, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3698
    goto/16 :goto_5ad

    .line 3686
    :pswitch_297
    nop

    .line 3687
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3688
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3686
    invoke-static {v3, v7, p2, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3691
    goto/16 :goto_5ad

    .line 3679
    :pswitch_2ab
    nop

    .line 3680
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3681
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3679
    invoke-static {v3, v7, p2, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3684
    goto/16 :goto_5ad

    .line 3672
    :pswitch_2bf
    nop

    .line 3673
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3674
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3672
    invoke-static {v3, v7, p2, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3677
    goto/16 :goto_5ad

    .line 3665
    :pswitch_2d3
    nop

    .line 3666
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3667
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3665
    invoke-static {v3, v7, p2, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3670
    goto/16 :goto_5ad

    .line 3658
    :pswitch_2e7
    nop

    .line 3659
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3660
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3658
    invoke-static {v3, v7, p2, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3663
    goto/16 :goto_5ad

    .line 3651
    :pswitch_2fb
    nop

    .line 3652
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3653
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3651
    invoke-static {v3, v6, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3656
    goto/16 :goto_5ad

    .line 3644
    :pswitch_30f
    nop

    .line 3645
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3646
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3644
    invoke-static {v3, v6, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3649
    goto/16 :goto_5ad

    .line 3637
    :pswitch_323
    nop

    .line 3638
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3639
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3637
    invoke-static {v3, v6, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3642
    goto/16 :goto_5ad

    .line 3630
    :pswitch_337
    nop

    .line 3631
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3632
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3630
    invoke-static {v3, v6, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3635
    goto/16 :goto_5ad

    .line 3623
    :pswitch_34b
    nop

    .line 3624
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3625
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3623
    invoke-static {v3, v6, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3628
    goto/16 :goto_5ad

    .line 3616
    :pswitch_35f
    nop

    .line 3617
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3618
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3616
    invoke-static {v3, v6, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3621
    goto/16 :goto_5ad

    .line 3610
    :pswitch_373
    nop

    .line 3611
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3612
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3610
    invoke-static {v3, v6, p2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 3614
    goto/16 :goto_5ad

    .line 3603
    :pswitch_387
    nop

    .line 3604
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3605
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3607
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v7

    .line 3603
    invoke-static {v3, v6, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 3608
    goto/16 :goto_5ad

    .line 3597
    :pswitch_39f
    nop

    .line 3598
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3599
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3597
    invoke-static {v3, v6, p2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 3601
    goto/16 :goto_5ad

    .line 3590
    :pswitch_3b3
    nop

    .line 3591
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3592
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3590
    invoke-static {v3, v6, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3595
    goto/16 :goto_5ad

    .line 3583
    :pswitch_3c7
    nop

    .line 3584
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3585
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3583
    invoke-static {v3, v6, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3588
    goto/16 :goto_5ad

    .line 3576
    :pswitch_3db
    nop

    .line 3577
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3578
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3576
    invoke-static {v3, v6, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3581
    goto/16 :goto_5ad

    .line 3569
    :pswitch_3ef
    nop

    .line 3570
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3571
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3569
    invoke-static {v3, v6, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3574
    goto/16 :goto_5ad

    .line 3562
    :pswitch_403
    nop

    .line 3563
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3564
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3562
    invoke-static {v3, v6, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3567
    goto/16 :goto_5ad

    .line 3555
    :pswitch_417
    nop

    .line 3556
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3557
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3555
    invoke-static {v3, v6, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3560
    goto/16 :goto_5ad

    .line 3548
    :pswitch_42b
    nop

    .line 3549
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3550
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3548
    invoke-static {v3, v6, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3553
    goto/16 :goto_5ad

    .line 3541
    :pswitch_43f
    nop

    .line 3542
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3543
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3541
    invoke-static {v3, v6, p2, v7}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 3546
    goto/16 :goto_5ad

    .line 3533
    :pswitch_453
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3534
    nop

    .line 3536
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3537
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v6

    .line 3534
    invoke-interface {p2, v5, v3, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    goto/16 :goto_5ad

    .line 3528
    :pswitch_46b
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3529
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5ad

    .line 3523
    :pswitch_47e
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3524
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5ad

    .line 3518
    :pswitch_491
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3519
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5ad

    .line 3513
    :pswitch_4a4
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3514
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5ad

    .line 3508
    :pswitch_4b7
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3509
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5ad

    .line 3503
    :pswitch_4ca
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3504
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5ad

    .line 3497
    :pswitch_4dd
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3498
    nop

    .line 3499
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 3498
    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    goto/16 :goto_5ad

    .line 3491
    :pswitch_4f3
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3492
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3493
    .restart local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v3, v6}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 3494
    .end local v3    # "value":Ljava/lang/Object;
    goto/16 :goto_5ad

    .line 3486
    :pswitch_50a
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3487
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5, v3, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    goto/16 :goto_5ad

    .line 3481
    :pswitch_51d
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3482
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5ad

    .line 3476
    :pswitch_530
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3477
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_5ad

    .line 3471
    :pswitch_542
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3472
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_5ad

    .line 3466
    :pswitch_554
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3467
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_5ad

    .line 3461
    :pswitch_566
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3462
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_5ad

    .line 3456
    :pswitch_578
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3457
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_5ad

    .line 3451
    :pswitch_58a
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3452
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v3

    invoke-interface {p2, v5, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_5ad

    .line 3446
    :pswitch_59c
    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    .line 3447
    invoke-static {v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeDouble(ID)V

    .line 3434
    .end local v4    # "typeAndOffset":I
    .end local v5    # "number":I
    :cond_5ad
    :goto_5ad
    add-int/lit8 v2, v2, -0x3

    goto/16 :goto_27

    .line 3866
    .end local v2    # "pos":I
    :cond_5b1
    :goto_5b1
    if-eqz v1, :cond_5c8

    .line 3867
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v2, p2, v1}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->serializeExtension(Landroid/net/connectivity/com/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3868
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_5c6

    :cond_5c5
    move-object v2, v3

    :goto_5c6
    move-object v1, v2

    goto :goto_5b1

    .line 3870
    :cond_5c8
    return-void

    nop

    :pswitch_data_5ca
    .packed-switch 0x0
        :pswitch_59c
        :pswitch_58a
        :pswitch_578
        :pswitch_566
        :pswitch_554
        :pswitch_542
        :pswitch_530
        :pswitch_51d
        :pswitch_50a
        :pswitch_4f3
        :pswitch_4dd
        :pswitch_4ca
        :pswitch_4b7
        :pswitch_4a4
        :pswitch_491
        :pswitch_47e
        :pswitch_46b
        :pswitch_453
        :pswitch_43f
        :pswitch_42b
        :pswitch_417
        :pswitch_403
        :pswitch_3ef
        :pswitch_3db
        :pswitch_3c7
        :pswitch_3b3
        :pswitch_39f
        :pswitch_387
        :pswitch_373
        :pswitch_35f
        :pswitch_34b
        :pswitch_337
        :pswitch_323
        :pswitch_30f
        :pswitch_2fb
        :pswitch_2e7
        :pswitch_2d3
        :pswitch_2bf
        :pswitch_2ab
        :pswitch_297
        :pswitch_283
        :pswitch_26f
        :pswitch_25b
        :pswitch_247
        :pswitch_233
        :pswitch_21f
        :pswitch_20b
        :pswitch_1f7
        :pswitch_1e3
        :pswitch_1cb
        :pswitch_1be
        :pswitch_1ab
        :pswitch_198
        :pswitch_185
        :pswitch_172
        :pswitch_15f
        :pswitch_14c
        :pswitch_139
        :pswitch_126
        :pswitch_113
        :pswitch_fc
        :pswitch_e6
        :pswitch_d3
        :pswitch_c0
        :pswitch_ad
        :pswitch_9a
        :pswitch_87
        :pswitch_74
        :pswitch_5c
    .end packed-switch
.end method

.method private blacklist writeMapHelper(Landroid/net/connectivity/com/google/protobuf/Writer;ILjava/lang/Object;I)V
    .registers 7
    .param p1, "writer"    # Landroid/net/connectivity/com/google/protobuf/Writer;
    .param p2, "number"    # I
    .param p3, "mapField"    # Ljava/lang/Object;
    .param p4, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/Writer;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3875
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    if-eqz p3, :cond_15

    .line 3876
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    .line 3878
    invoke-direct {p0, p4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    .line 3879
    invoke-interface {v1, p3}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 3876
    invoke-interface {p1, p2, v0, v1}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeMap(ILandroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 3881
    :cond_15
    return-void
.end method

.method private blacklist writeString(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "writer"    # Landroid/net/connectivity/com/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5772
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 5773
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, p1, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto :goto_11

    .line 5775
    :cond_b
    move-object v0, p2

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-interface {p3, p1, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 5777
    :goto_11
    return-void
.end method

.method private blacklist writeUnknownInMessageTo(Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V
    .registers 5
    .param p3, "writer"    # Landroid/net/connectivity/com/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;",
            "Landroid/net/connectivity/com/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3885
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "schema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 3886
    return-void
.end method


# virtual methods
.method public blacklist equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 798
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    .line 799
    .local v0, "bufferLength":I
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_4
    const/4 v2, 0x0

    if-ge v1, v0, :cond_11

    .line 800
    invoke-direct {p0, p1, p2, v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->equals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 801
    return v2

    .line 799
    :cond_e
    add-int/lit8 v1, v1, 0x3

    goto :goto_4

    .line 805
    .end local v1    # "pos":I
    :cond_11
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p1}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 806
    .local v1, "messageUnknown":Ljava/lang/Object;
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v3, p2}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 807
    .local v3, "otherUnknown":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 808
    return v2

    .line 811
    :cond_24
    iget-boolean v2, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_39

    .line 812
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v2

    .line 813
    .local v2, "messageExtensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<*>;"
    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v4, p2}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v4

    .line 814
    .local v4, "otherExtensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<*>;"
    invoke-virtual {v2, v4}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 816
    .end local v2    # "messageExtensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<*>;"
    .end local v4    # "otherExtensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<*>;"
    :cond_39
    const/4 v2, 0x1

    return v2
.end method

.method blacklist getSchemaSize()I
    .registers 2

    .line 6055
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public blacklist getSerializedSize(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1461
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getSerializedSizeProto3(Ljava/lang/Object;)I

    move-result v0

    goto :goto_d

    :cond_9
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getSerializedSizeProto2(Ljava/lang/Object;)I

    move-result v0

    :goto_d
    return v0
.end method

.method public blacklist hashCode(Ljava/lang/Object;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 951
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 952
    .local v0, "hashCode":I
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    array-length v1, v1

    .line 953
    .local v1, "bufferLength":I
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_5
    if-ge v2, v1, :cond_27b

    .line 954
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v3

    .line 955
    .local v3, "typeAndOffset":I
    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 957
    .local v4, "entryNumber":I
    invoke-static {v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    .line 959
    .local v5, "offset":J
    invoke-static {v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->type(I)I

    move-result v7

    packed-switch v7, :pswitch_data_29c

    goto/16 :goto_277

    .line 1159
    :pswitch_1c
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1160
    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 1161
    .local v7, "submessage":Ljava/lang/Object;
    mul-int/lit8 v8, v0, 0x35

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    add-int/2addr v8, v9

    .line 1162
    .end local v0    # "hashCode":I
    .end local v7    # "submessage":Ljava/lang/Object;
    .local v8, "hashCode":I
    move v0, v8

    goto/16 :goto_277

    .line 1154
    .end local v8    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_30
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1155
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .local v7, "hashCode":I
    goto/16 :goto_277

    .line 1149
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_44
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1150
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1144
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_54
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1145
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1139
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_68
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1140
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1134
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_78
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1135
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1129
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_88
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1130
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1124
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_98
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1125
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1118
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_ac
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1119
    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 1120
    .local v7, "submessage":Ljava/lang/Object;
    mul-int/lit8 v8, v0, 0x35

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    add-int/2addr v8, v9

    .line 1121
    .end local v0    # "hashCode":I
    .end local v7    # "submessage":Ljava/lang/Object;
    .restart local v8    # "hashCode":I
    move v0, v8

    goto/16 :goto_277

    .line 1112
    .end local v8    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_c0
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1113
    mul-int/lit8 v7, v0, 0x35

    .line 1114
    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .local v7, "hashCode":I
    goto/16 :goto_277

    .line 1107
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_d6
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1108
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v8

    invoke-static {v8}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1102
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_ea
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1103
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1097
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_fa
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1098
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1092
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_10e
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1093
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1087
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_11e
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1088
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1082
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_132
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1083
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1077
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_146
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1078
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1070
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_15a
    invoke-direct {p0, p1, v4, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 1071
    mul-int/lit8 v7, v0, 0x35

    .line 1073
    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_277

    .line 1067
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_172
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    .line 1068
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 1064
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_180
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    .line 1065
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 1024
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_18e
    const/16 v7, 0x25

    .line 1025
    .local v7, "protoHash":I
    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1026
    .local v8, "submessage":Ljava/lang/Object;
    if-eqz v8, :cond_19a

    .line 1027
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 1029
    :cond_19a
    mul-int/lit8 v9, v0, 0x35

    add-int/2addr v9, v7

    .line 1030
    .end local v0    # "hashCode":I
    .local v9, "hashCode":I
    move v0, v9

    goto/16 :goto_277

    .line 1019
    .end local v7    # "protoHash":I
    .end local v8    # "submessage":Ljava/lang/Object;
    .end local v9    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1a0
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1020
    .end local v0    # "hashCode":I
    .local v7, "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 1016
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1ae
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1017
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 1013
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1b8
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1014
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 1010
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1c6
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1011
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 1007
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1d0
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1008
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 1004
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1da
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1005
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 1001
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1e4
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    .line 1002
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 992
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1f2
    const/16 v7, 0x25

    .line 993
    .local v7, "protoHash":I
    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 994
    .restart local v8    # "submessage":Ljava/lang/Object;
    if-eqz v8, :cond_1fe

    .line 995
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 997
    :cond_1fe
    mul-int/lit8 v9, v0, 0x35

    add-int/2addr v9, v7

    .line 998
    .end local v0    # "hashCode":I
    .restart local v9    # "hashCode":I
    move v0, v9

    goto/16 :goto_277

    .line 988
    .end local v7    # "protoHash":I
    .end local v8    # "submessage":Ljava/lang/Object;
    .end local v9    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_204
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    .line 989
    .end local v0    # "hashCode":I
    .local v7, "hashCode":I
    move v0, v7

    goto/16 :goto_277

    .line 985
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_214
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v8

    invoke-static {v8}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v8

    add-int/2addr v7, v8

    .line 986
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_277

    .line 982
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_221
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 983
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_277

    .line 979
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_22a
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 980
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_277

    .line 976
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_237
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 977
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_277

    .line 973
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_240
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 974
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_277

    .line 970
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_24d
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 971
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_277

    .line 967
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_25a
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    add-int/2addr v7, v8

    .line 968
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_277

    .line 961
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_267
    mul-int/lit8 v7, v0, 0x35

    .line 964
    invoke-static {p1, v5, v6}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    .line 963
    invoke-static {v8, v9}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 965
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    .line 953
    .end local v3    # "typeAndOffset":I
    .end local v4    # "entryNumber":I
    .end local v5    # "offset":J
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :cond_277
    :goto_277
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    .line 1170
    .end local v2    # "pos":I
    :cond_27b
    mul-int/lit8 v2, v0, 0x35

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v3, p1}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 1172
    .end local v0    # "hashCode":I
    .local v2, "hashCode":I
    iget-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_29a

    .line 1173
    mul-int/lit8 v0, v2, 0x35

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v3, p1}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->hashCode()I

    move-result v3

    add-int v2, v0, v3

    .line 1176
    :cond_29a
    return v2

    nop

    :pswitch_data_29c
    .packed-switch 0x0
        :pswitch_267
        :pswitch_25a
        :pswitch_24d
        :pswitch_240
        :pswitch_237
        :pswitch_22a
        :pswitch_221
        :pswitch_214
        :pswitch_204
        :pswitch_1f2
        :pswitch_1e4
        :pswitch_1da
        :pswitch_1d0
        :pswitch_1c6
        :pswitch_1b8
        :pswitch_1ae
        :pswitch_1a0
        :pswitch_18e
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_172
        :pswitch_15a
        :pswitch_146
        :pswitch_132
        :pswitch_11e
        :pswitch_10e
        :pswitch_fa
        :pswitch_ea
        :pswitch_d6
        :pswitch_c0
        :pswitch_ac
        :pswitch_98
        :pswitch_88
        :pswitch_78
        :pswitch_68
        :pswitch_54
        :pswitch_44
        :pswitch_30
        :pswitch_1c
    .end packed-switch
.end method

.method public final blacklist isInitialized(Ljava/lang/Object;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 5658
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0xfffff

    .line 5659
    .local v2, "currentPresenceFieldOffset":I
    const/4 v3, 0x0

    .line 5660
    .local v3, "currentPresenceField":I
    const/4 v4, 0x0

    move v6, v4

    .local v6, "i":I
    :goto_a
    iget v4, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->checkInitializedCount:I

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-ge v6, v4, :cond_8f

    .line 5661
    iget-object v4, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intArray:[I

    aget v4, v4, v6

    .line 5662
    .local v4, "pos":I
    invoke-direct {v0, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v8

    .line 5663
    .local v8, "number":I
    invoke-direct {v0, v4}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v9

    .line 5665
    .local v9, "typeAndOffset":I
    iget-object v10, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v11, v4, 0x2

    aget v10, v10, v11

    .line 5666
    .local v10, "presenceMaskAndOffset":I
    const v11, 0xfffff

    and-int v12, v10, v11

    .line 5667
    .local v12, "presenceFieldOffset":I
    ushr-int/lit8 v13, v10, 0x14

    shl-int/2addr v5, v13

    .line 5668
    .local v5, "presenceMask":I
    if-eq v12, v2, :cond_40

    .line 5669
    move v2, v12

    .line 5670
    if-eq v2, v11, :cond_3b

    .line 5671
    sget-object v11, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v13, v12

    invoke-virtual {v11, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v15, v3

    move v3, v2

    move v2, v4

    move v4, v15

    goto :goto_44

    .line 5670
    :cond_3b
    move v15, v3

    move v3, v2

    move v2, v4

    move v4, v15

    goto :goto_44

    .line 5668
    :cond_40
    move v15, v3

    move v3, v2

    move v2, v4

    move v4, v15

    .line 5675
    .local v2, "pos":I
    .local v3, "currentPresenceFieldOffset":I
    .local v4, "currentPresenceField":I
    :goto_44
    invoke-static {v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isRequired(I)Z

    move-result v11

    if-eqz v11, :cond_51

    .line 5676
    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v11

    if-nez v11, :cond_51

    .line 5678
    return v7

    .line 5685
    :cond_51
    invoke-static {v9}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->type(I)I

    move-result v11

    sparse-switch v11, :sswitch_data_a2

    goto :goto_89

    .line 5702
    :sswitch_59
    invoke-direct {v0, v1, v8, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_89

    .line 5703
    invoke-direct {v0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v11

    invoke-static {v1, v9, v11}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILandroid/net/connectivity/com/google/protobuf/Schema;)Z

    move-result v11

    if-nez v11, :cond_89

    .line 5704
    return v7

    .line 5708
    :sswitch_6a
    invoke-direct {v0, v1, v9, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isMapInitialized(Ljava/lang/Object;II)Z

    move-result v11

    if-nez v11, :cond_89

    .line 5709
    return v7

    .line 5696
    :sswitch_71
    invoke-direct {v0, v1, v9, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isListInitialized(Ljava/lang/Object;II)Z

    move-result v11

    if-nez v11, :cond_89

    .line 5697
    return v7

    .line 5688
    :sswitch_78
    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v11

    if-eqz v11, :cond_89

    .line 5690
    invoke-direct {v0, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v11

    invoke-static {v1, v9, v11}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILandroid/net/connectivity/com/google/protobuf/Schema;)Z

    move-result v11

    if-nez v11, :cond_89

    .line 5691
    return v7

    .line 5660
    .end local v2    # "pos":I
    .end local v5    # "presenceMask":I
    .end local v8    # "number":I
    .end local v9    # "typeAndOffset":I
    .end local v10    # "presenceMaskAndOffset":I
    .end local v12    # "presenceFieldOffset":I
    :cond_89
    :goto_89
    add-int/lit8 v6, v6, 0x1

    move v2, v3

    move v3, v4

    goto/16 :goto_a

    .line 5717
    .end local v4    # "currentPresenceField":I
    .end local v6    # "i":I
    .local v2, "currentPresenceFieldOffset":I
    .local v3, "currentPresenceField":I
    :cond_8f
    iget-boolean v4, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v4, :cond_a0

    .line 5718
    iget-object v4, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v4, v1}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_a0

    .line 5719
    return v7

    .line 5723
    :cond_a0
    return v5

    nop

    :sswitch_data_a2
    .sparse-switch
        0x9 -> :sswitch_78
        0x11 -> :sswitch_78
        0x1b -> :sswitch_71
        0x31 -> :sswitch_71
        0x32 -> :sswitch_6a
        0x3c -> :sswitch_59
        0x44 -> :sswitch_59
    .end sparse-switch
.end method

.method public blacklist makeImmutable(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 5489
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5490
    return-void

    .line 5495
    :cond_7
    instance-of v0, p1, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_17

    .line 5496
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    .line 5497
    .local v0, "generatedMessage":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite<**>;"
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->clearMemoizedSerializedSize()V

    .line 5498
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->clearMemoizedHashCode()V

    .line 5499
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->markImmutable()V

    .line 5502
    .end local v0    # "generatedMessage":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite<**>;"
    :cond_17
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    .line 5503
    .local v0, "bufferLength":I
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_1b
    if-ge v1, v0, :cond_5d

    .line 5504
    invoke-direct {p0, v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v2

    .line 5505
    .local v2, "typeAndOffset":I
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    .line 5506
    .local v3, "offset":J
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->type(I)I

    move-result v5

    packed-switch v5, :pswitch_data_6c

    :pswitch_2c
    goto :goto_5a

    .line 5549
    :pswitch_2d
    sget-object v5, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 5550
    .local v5, "mapField":Ljava/lang/Object;
    if-eqz v5, :cond_5a

    .line 5551
    sget-object v6, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v7, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mapFieldSchema:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    invoke-interface {v7, v5}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, p1, v3, v4, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5a

    .line 5545
    .end local v5    # "mapField":Ljava/lang/Object;
    :pswitch_41
    iget-object v5, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->listFieldSchema:Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    invoke-virtual {v5, p1, v3, v4}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->makeImmutableListAt(Ljava/lang/Object;J)V

    .line 5546
    goto :goto_5a

    .line 5509
    :pswitch_47
    invoke-direct {p0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 5510
    invoke-direct {p0, v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v5

    sget-object v6, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/net/connectivity/com/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 5503
    .end local v2    # "typeAndOffset":I
    .end local v3    # "offset":J
    :cond_5a
    :goto_5a
    add-int/lit8 v1, v1, 0x3

    goto :goto_1b

    .line 5557
    .end local v1    # "pos":I
    :cond_5d
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p1}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 5558
    iget-boolean v1, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v1, :cond_6b

    .line 5559
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 5561
    :cond_6b
    return-void

    :pswitch_data_6c
    .packed-switch 0x9
        :pswitch_47
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_47
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_2d
    .end packed-switch
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Reader;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .param p2, "reader"    # Landroid/net/connectivity/com/google/protobuf/Reader;
    .param p3, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/net/connectivity/com/google/protobuf/Reader;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3891
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    if-eqz p3, :cond_11

    .line 3894
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->checkMutable(Ljava/lang/Object;)V

    .line 3895
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "message":Ljava/lang/Object;, "TT;"
    .end local p2    # "reader":Landroid/net/connectivity/com/google/protobuf/Reader;
    .end local p3    # "extensionRegistry":Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .local v3, "message":Ljava/lang/Object;, "TT;"
    .local v4, "reader":Landroid/net/connectivity/com/google/protobuf/Reader;
    .local v5, "extensionRegistry":Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mergeFromHelper(Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Reader;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V

    .line 3896
    return-void

    .line 3892
    .end local v3    # "message":Ljava/lang/Object;, "TT;"
    .end local v4    # "reader":Landroid/net/connectivity/com/google/protobuf/Reader;
    .end local v5    # "extensionRegistry":Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .restart local p1    # "message":Ljava/lang/Object;, "TT;"
    .restart local p2    # "reader":Landroid/net/connectivity/com/google/protobuf/Reader;
    .restart local p3    # "extensionRegistry":Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    :cond_11
    move-object v3, p1

    .end local p1    # "message":Ljava/lang/Object;, "TT;"
    .restart local v3    # "message":Ljava/lang/Object;, "TT;"
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1181
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->checkMutable(Ljava/lang/Object;)V

    .line 1182
    if-eqz p2, :cond_20

    .line 1185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 1187
    invoke-direct {p0, p1, p2, v0}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1185
    add-int/lit8 v0, v0, 0x3

    goto :goto_6

    .line 1190
    .end local v0    # "i":I
    :cond_11
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->mergeUnknownFields(Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1192
    iget-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_1f

    .line 1193
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->extensionSchema:Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->mergeExtensions(Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1195
    :cond_1f
    return-void

    .line 1183
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;[BIILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)V
    .registers 14
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "registers"    # Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5480
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_8

    .line 5481
    invoke-direct/range {p0 .. p5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->parseProto3Message(Ljava/lang/Object;[BIILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    goto :goto_12

    .line 5483
    :cond_8
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    .end local p1    # "message":Ljava/lang/Object;, "TT;"
    .end local p2    # "data":[B
    .end local p3    # "position":I
    .end local p4    # "limit":I
    .end local p5    # "registers":Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;
    .local v2, "message":Ljava/lang/Object;, "TT;"
    .local v3, "data":[B
    .local v4, "position":I
    .local v5, "limit":I
    .local v7, "registers":Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;
    invoke-virtual/range {v1 .. v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    .line 5485
    .end local v2    # "message":Ljava/lang/Object;, "TT;"
    .end local v3    # "data":[B
    .end local v4    # "position":I
    .end local v5    # "limit":I
    .end local v7    # "registers":Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;
    .restart local p1    # "message":Ljava/lang/Object;, "TT;"
    .restart local p2    # "data":[B
    .restart local p3    # "position":I
    .restart local p4    # "limit":I
    .restart local p5    # "registers":Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;
    :goto_12
    return-void
.end method

.method public blacklist newInstance()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 793
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->newInstanceSchema:Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->defaultInstance:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    invoke-interface {v0, v1}, Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method blacklist parseProto2Message(Ljava/lang/Object;[BIIILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I
    .registers 38
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "endGroup"    # I
    .param p6, "registers"    # Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4875
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->checkMutable(Ljava/lang/Object;)V

    .line 4876
    sget-object v9, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 4877
    .local v9, "unsafe":Lsun/misc/Unsafe;
    const v3, 0xfffff

    .line 4878
    .local v3, "currentPresenceFieldOffset":I
    const/4 v5, 0x0

    .line 4879
    .local v5, "currentPresenceField":I
    const/4 v6, 0x0

    .line 4880
    .local v6, "tag":I
    const/4 v8, -0x1

    .line 4881
    .local v8, "oldNumber":I
    const/4 v10, 0x0

    move v11, v10

    move v10, v5

    move v5, v8

    move v8, v3

    move/from16 v3, p3

    .line 4882
    .end local p3    # "position":I
    .local v3, "position":I
    .local v5, "oldNumber":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "currentPresenceField":I
    .local v11, "pos":I
    :goto_1c
    if-ge v3, v4, :cond_5de

    .line 4883
    add-int/lit8 v13, v3, 0x1

    .end local v3    # "position":I
    .local v13, "position":I
    aget-byte v3, v2, v3

    .line 4884
    .end local v6    # "tag":I
    .local v3, "tag":I
    if-gez v3, :cond_30

    .line 4885
    invoke-static {v3, v2, v13, v7}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v13

    .line 4886
    iget v3, v7, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->int1:I

    move/from16 v28, v13

    move v13, v3

    move/from16 v3, v28

    goto :goto_35

    .line 4884
    :cond_30
    move/from16 v28, v13

    move v13, v3

    move/from16 v3, v28

    .line 4888
    .local v3, "position":I
    .local v13, "tag":I
    :goto_35
    ushr-int/lit8 v14, v13, 0x3

    .line 4889
    .local v14, "number":I
    and-int/lit8 v6, v13, 0x7

    .line 4890
    .local v6, "wireType":I
    if-le v14, v5, :cond_46

    .line 4891
    const p3, 0xfffff

    div-int/lit8 v12, v11, 0x3

    invoke-direct {v0, v14, v12}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v11

    move v12, v11

    goto :goto_4e

    .line 4893
    :cond_46
    const p3, 0xfffff

    invoke-direct {v0, v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v11

    move v12, v11

    .line 4895
    .end local v11    # "pos":I
    .local v12, "pos":I
    :goto_4e
    move/from16 v16, v14

    .line 4896
    .end local v5    # "oldNumber":I
    .local v16, "oldNumber":I
    const/4 v5, -0x1

    if-ne v12, v5, :cond_61

    .line 4898
    const/4 v5, 0x0

    move v2, v3

    move v11, v5

    move-object/from16 v24, v9

    move/from16 v23, v10

    move v5, v13

    move/from16 v18, v14

    move-object v9, v0

    move v10, v6

    .end local v12    # "pos":I
    .local v5, "pos":I
    goto/16 :goto_583

    .line 4900
    .end local v5    # "pos":I
    .restart local v12    # "pos":I
    :cond_61
    iget-object v5, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v11, v12, 0x1

    aget v11, v5, v11

    .line 4901
    .local v11, "typeAndOffset":I
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->type(I)I

    move-result v5

    .line 4902
    .local v5, "fieldType":I
    invoke-static {v11}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v17

    .line 4903
    .local v17, "fieldOffset":J
    const/16 v2, 0x11

    move/from16 v19, v3

    .end local v3    # "position":I
    .local v19, "position":I
    if-gt v5, v2, :cond_447

    .line 4905
    iget-object v2, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v20, v12, 0x2

    aget v20, v2, v20

    .line 4906
    .local v20, "presenceMaskAndOffset":I
    ushr-int/lit8 v2, v20, 0x14

    const/4 v3, 0x1

    shl-int v22, v3, v2

    .line 4907
    .local v22, "presenceMask":I
    and-int v2, v20, p3

    .line 4910
    .local v2, "presenceFieldOffset":I
    if-eq v2, v8, :cond_97

    .line 4911
    move/from16 v3, p3

    if-eq v8, v3, :cond_8c

    .line 4912
    int-to-long v3, v8

    invoke-virtual {v9, v1, v3, v4, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4914
    :cond_8c
    move v3, v2

    .line 4915
    .end local v8    # "currentPresenceFieldOffset":I
    .local v3, "currentPresenceFieldOffset":I
    move v8, v3

    .end local v3    # "currentPresenceFieldOffset":I
    .restart local v8    # "currentPresenceFieldOffset":I
    int-to-long v3, v2

    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move/from16 v23, v3

    move v10, v8

    .end local v10    # "currentPresenceField":I
    .local v3, "currentPresenceField":I
    goto :goto_9a

    .line 4910
    .end local v3    # "currentPresenceField":I
    .restart local v10    # "currentPresenceField":I
    :cond_97
    move/from16 v23, v10

    move v10, v8

    .line 4917
    .end local v8    # "currentPresenceFieldOffset":I
    .local v10, "currentPresenceFieldOffset":I
    .local v23, "currentPresenceField":I
    :goto_9a
    const/4 v3, 0x5

    packed-switch v5, :pswitch_data_63e

    move-object/from16 v7, p2

    move/from16 v25, v2

    move-object v2, v9

    move v3, v13

    move/from16 v15, v19

    move v9, v6

    move/from16 v19, v10

    move v10, v5

    move-wide/from16 v4, v17

    move/from16 v18, v14

    .end local v5    # "fieldType":I
    .end local v6    # "wireType":I
    .end local v13    # "tag":I
    .end local v14    # "number":I
    .end local v17    # "fieldOffset":J
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .local v3, "tag":I
    .local v4, "fieldOffset":J
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .local v15, "position":I
    .local v18, "number":I
    .local v19, "currentPresenceFieldOffset":I
    .local v25, "presenceFieldOffset":I
    goto/16 :goto_43a

    .line 5044
    .end local v3    # "tag":I
    .end local v4    # "fieldOffset":J
    .end local v15    # "position":I
    .end local v18    # "number":I
    .end local v25    # "presenceFieldOffset":I
    .local v2, "presenceFieldOffset":I
    .restart local v5    # "fieldType":I
    .restart local v6    # "wireType":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceFieldOffset":I
    .restart local v13    # "tag":I
    .restart local v14    # "number":I
    .restart local v17    # "fieldOffset":J
    .local v19, "position":I
    :pswitch_b0
    const/4 v3, 0x3

    if-ne v6, v3, :cond_f0

    .line 5045
    move v8, v2

    .end local v2    # "presenceFieldOffset":I
    .local v8, "presenceFieldOffset":I
    invoke-direct {v0, v1, v12}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 5046
    .local v2, "current":Ljava/lang/Object;
    shl-int/lit8 v3, v14, 0x3

    or-int/lit8 v3, v3, 0x4

    .line 5047
    .local v3, "endTag":I
    nop

    .line 5050
    move v7, v3

    .end local v3    # "endTag":I
    .local v7, "endTag":I
    invoke-direct {v0, v12}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v3

    .line 5048
    move v4, v10

    move v10, v5

    move/from16 v5, v19

    move/from16 v19, v4

    move-object/from16 v4, p2

    move/from16 v25, v8

    move-object/from16 v24, v9

    move-object/from16 v8, p6

    move v9, v6

    move/from16 v6, p4

    .end local v6    # "wireType":I
    .end local v8    # "presenceFieldOffset":I
    .local v5, "position":I
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .local v19, "currentPresenceFieldOffset":I
    .local v24, "unsafe":Lsun/misc/Unsafe;
    .restart local v25    # "presenceFieldOffset":I
    invoke-static/range {v2 .. v8}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->mergeGroupField(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;[BIIILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 5056
    move/from16 v28, v7

    move-object v7, v4

    move/from16 v4, v28

    .end local v5    # "position":I
    .end local v7    # "endTag":I
    .local v3, "position":I
    .local v4, "endTag":I
    invoke-direct {v0, v1, v12, v2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 5057
    or-int v5, v23, v22

    .line 5058
    .end local v23    # "currentPresenceField":I
    .local v5, "currentPresenceField":I
    move/from16 v4, p4

    move v10, v5

    move-object v2, v7

    move-object v7, v8

    move v11, v12

    move v6, v13

    move/from16 v5, v16

    move/from16 v8, v19

    move-object/from16 v9, v24

    goto/16 :goto_1c

    .line 5044
    .end local v3    # "position":I
    .end local v4    # "endTag":I
    .end local v24    # "unsafe":Lsun/misc/Unsafe;
    .end local v25    # "presenceFieldOffset":I
    .local v2, "presenceFieldOffset":I
    .local v5, "fieldType":I
    .restart local v6    # "wireType":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceFieldOffset":I
    .local v19, "position":I
    .restart local v23    # "currentPresenceField":I
    :cond_f0
    move/from16 v25, v2

    move-object v8, v7

    move-object/from16 v24, v9

    move/from16 v3, v19

    move-object/from16 v7, p2

    move v9, v6

    move/from16 v19, v10

    move v10, v5

    .end local v2    # "presenceFieldOffset":I
    .end local v5    # "fieldType":I
    .end local v6    # "wireType":I
    .restart local v3    # "position":I
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v24    # "unsafe":Lsun/misc/Unsafe;
    .restart local v25    # "presenceFieldOffset":I
    move v15, v3

    move v3, v13

    move-wide/from16 v4, v17

    move-object/from16 v2, v24

    move/from16 v18, v14

    goto/16 :goto_43a

    .line 5034
    .end local v3    # "position":I
    .end local v24    # "unsafe":Lsun/misc/Unsafe;
    .end local v25    # "presenceFieldOffset":I
    .restart local v2    # "presenceFieldOffset":I
    .restart local v5    # "fieldType":I
    .restart local v6    # "wireType":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceFieldOffset":I
    .local v19, "position":I
    :pswitch_107
    move/from16 v25, v2

    move-object v8, v7

    move-object/from16 v24, v9

    move/from16 v3, v19

    move-object/from16 v7, p2

    move v9, v6

    move/from16 v19, v10

    move v10, v5

    .end local v2    # "presenceFieldOffset":I
    .end local v5    # "fieldType":I
    .end local v6    # "wireType":I
    .restart local v3    # "position":I
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v24    # "unsafe":Lsun/misc/Unsafe;
    .restart local v25    # "presenceFieldOffset":I
    if-nez v9, :cond_13e

    .line 5035
    invoke-static {v7, v3, v8}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint64([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v21

    .line 5036
    .end local v3    # "position":I
    .local v21, "position":I
    iget-wide v2, v8, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 5037
    invoke-static {v2, v3}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v5

    .line 5036
    move-object v2, v1

    move-wide/from16 v3, v17

    move-object/from16 v1, v24

    .end local v17    # "fieldOffset":J
    .end local v24    # "unsafe":Lsun/misc/Unsafe;
    .local v1, "unsafe":Lsun/misc/Unsafe;
    .local v3, "fieldOffset":J
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 5039
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-wide v4, v3

    .end local v1    # "unsafe":Lsun/misc/Unsafe;
    .end local v3    # "fieldOffset":J
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .local v4, "fieldOffset":J
    or-int v3, v23, v22

    .line 5040
    .end local v23    # "currentPresenceField":I
    .local v3, "currentPresenceField":I
    move/from16 v4, p4

    move-object v9, v2

    move v10, v3

    move-object v2, v7

    move-object v7, v8

    move v11, v12

    move v6, v13

    move/from16 v5, v16

    move/from16 v8, v19

    move/from16 v3, v21

    goto/16 :goto_1c

    .line 5034
    .end local v2    # "unsafe":Lsun/misc/Unsafe;
    .end local v4    # "fieldOffset":J
    .end local v21    # "position":I
    .local v3, "position":I
    .restart local v17    # "fieldOffset":J
    .restart local v23    # "currentPresenceField":I
    .restart local v24    # "unsafe":Lsun/misc/Unsafe;
    :cond_13e
    move-wide/from16 v4, v17

    move-object/from16 v2, v24

    .end local v17    # "fieldOffset":J
    .end local v24    # "unsafe":Lsun/misc/Unsafe;
    .restart local v2    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "fieldOffset":J
    move v15, v3

    move v3, v13

    move/from16 v18, v14

    goto/16 :goto_43a

    .line 5025
    .end local v3    # "position":I
    .end local v4    # "fieldOffset":J
    .end local v25    # "presenceFieldOffset":I
    .local v2, "presenceFieldOffset":I
    .restart local v5    # "fieldType":I
    .restart local v6    # "wireType":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceFieldOffset":I
    .restart local v17    # "fieldOffset":J
    .local v19, "position":I
    :pswitch_148
    move/from16 v25, v2

    move-object v8, v7

    move-object v2, v9

    move/from16 v3, v19

    move-object/from16 v7, p2

    move v9, v6

    move/from16 v19, v10

    move v10, v5

    move-wide/from16 v4, v17

    .end local v5    # "fieldType":I
    .end local v6    # "wireType":I
    .end local v17    # "fieldOffset":J
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "position":I
    .restart local v4    # "fieldOffset":J
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "presenceFieldOffset":I
    if-nez v9, :cond_175

    .line 5026
    invoke-static {v7, v3, v8}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 5027
    iget v6, v8, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5028
    invoke-static {v6}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v6

    .line 5027
    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5029
    or-int v6, v23, v22

    .line 5030
    .end local v23    # "currentPresenceField":I
    .local v6, "currentPresenceField":I
    move/from16 v4, p4

    move-object v9, v2

    move v10, v6

    move-object v2, v7

    move-object v7, v8

    move v11, v12

    move v6, v13

    move/from16 v5, v16

    move/from16 v8, v19

    goto/16 :goto_1c

    .line 5025
    .end local v6    # "currentPresenceField":I
    .restart local v23    # "currentPresenceField":I
    :cond_175
    move v15, v3

    move v3, v13

    move/from16 v18, v14

    goto/16 :goto_43a

    .line 5010
    .end local v3    # "position":I
    .end local v4    # "fieldOffset":J
    .end local v25    # "presenceFieldOffset":I
    .local v2, "presenceFieldOffset":I
    .restart local v5    # "fieldType":I
    .local v6, "wireType":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceFieldOffset":I
    .restart local v17    # "fieldOffset":J
    .local v19, "position":I
    :pswitch_17b
    move/from16 v25, v2

    move-object v8, v7

    move-object v2, v9

    move/from16 v3, v19

    move-object/from16 v7, p2

    move v9, v6

    move/from16 v19, v10

    move v10, v5

    move-wide/from16 v4, v17

    .end local v5    # "fieldType":I
    .end local v6    # "wireType":I
    .end local v17    # "fieldOffset":J
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "position":I
    .restart local v4    # "fieldOffset":J
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "presenceFieldOffset":I
    if-nez v9, :cond_1de

    .line 5011
    invoke-static {v7, v3, v8}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 5012
    iget v6, v8, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5013
    .local v6, "enumValue":I
    move/from16 p3, v3

    .end local v3    # "position":I
    .restart local p3    # "position":I
    invoke-direct {v0, v12}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    move-result-object v3

    .line 5014
    .local v3, "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    if-eqz v3, :cond_1c5

    invoke-interface {v3, v6}, Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v17

    if-eqz v17, :cond_1a4

    move-object/from16 v17, v3

    move/from16 v18, v14

    goto :goto_1c9

    .line 5019
    :cond_1a4
    move-object/from16 v17, v3

    .end local v3    # "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    .local v17, "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;

    move-result-object v3

    move/from16 v18, v14

    .end local v14    # "number":I
    .restart local v18    # "number":I
    int-to-long v14, v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 5021
    move/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v2

    move-object v2, v7

    move-object v7, v8

    move v11, v12

    move v6, v13

    move/from16 v5, v16

    move/from16 v8, v19

    move/from16 v10, v23

    goto/16 :goto_1c

    .line 5014
    .end local v17    # "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    .end local v18    # "number":I
    .restart local v3    # "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    .restart local v14    # "number":I
    :cond_1c5
    move-object/from16 v17, v3

    move/from16 v18, v14

    .line 5015
    .end local v3    # "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    .end local v14    # "number":I
    .restart local v17    # "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    .restart local v18    # "number":I
    :goto_1c9
    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5016
    or-int v3, v23, v22

    move/from16 v4, p4

    move-object v9, v2

    move v10, v3

    move-object v2, v7

    move-object v7, v8

    move v11, v12

    move v6, v13

    move/from16 v5, v16

    move/from16 v8, v19

    move/from16 v3, p3

    .end local v23    # "currentPresenceField":I
    .local v3, "currentPresenceField":I
    goto/16 :goto_1c

    .line 5010
    .end local v6    # "enumValue":I
    .end local v17    # "enumVerifier":Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;
    .end local v18    # "number":I
    .end local p3    # "position":I
    .local v3, "position":I
    .restart local v14    # "number":I
    .restart local v23    # "currentPresenceField":I
    :cond_1de
    move/from16 v18, v14

    .end local v14    # "number":I
    .restart local v18    # "number":I
    move v15, v3

    move v3, v13

    goto/16 :goto_43a

    .line 5002
    .end local v3    # "position":I
    .end local v4    # "fieldOffset":J
    .end local v18    # "number":I
    .end local v25    # "presenceFieldOffset":I
    .local v2, "presenceFieldOffset":I
    .restart local v5    # "fieldType":I
    .local v6, "wireType":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceFieldOffset":I
    .restart local v14    # "number":I
    .local v17, "fieldOffset":J
    .local v19, "position":I
    :pswitch_1e4
    move/from16 v25, v2

    move-object v8, v7

    move-object v2, v9

    move/from16 v3, v19

    move-object/from16 v7, p2

    move v9, v6

    move/from16 v19, v10

    move v10, v5

    move-wide/from16 v4, v17

    move/from16 v18, v14

    .end local v5    # "fieldType":I
    .end local v6    # "wireType":I
    .end local v14    # "number":I
    .end local v17    # "fieldOffset":J
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "position":I
    .restart local v4    # "fieldOffset":J
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .restart local v18    # "number":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "presenceFieldOffset":I
    const/4 v6, 0x2

    if-ne v9, v6, :cond_210

    .line 5003
    invoke-static {v7, v3, v8}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeBytes([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 5004
    iget-object v6, v8, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5005
    or-int v6, v23, v22

    .line 5006
    .end local v23    # "currentPresenceField":I
    .local v6, "currentPresenceField":I
    move/from16 v4, p4

    move-object v9, v2

    move v10, v6

    move-object v2, v7

    move-object v7, v8

    move v11, v12

    move v6, v13

    move/from16 v5, v16

    move/from16 v8, v19

    goto/16 :goto_1c

    .line 5002
    .end local v6    # "currentPresenceField":I
    .restart local v23    # "currentPresenceField":I
    :cond_210
    move v15, v3

    move v3, v13

    goto/16 :goto_43a

    .line 4991
    .end local v3    # "position":I
    .end local v4    # "fieldOffset":J
    .end local v18    # "number":I
    .end local v25    # "presenceFieldOffset":I
    .local v2, "presenceFieldOffset":I
    .restart local v5    # "fieldType":I
    .local v6, "wireType":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceFieldOffset":I
    .restart local v14    # "number":I
    .restart local v17    # "fieldOffset":J
    .local v19, "position":I
    :pswitch_214
    move/from16 v25, v2

    move-object v8, v7

    move-object v2, v9

    move/from16 v3, v19

    move-object/from16 v7, p2

    move v9, v6

    move/from16 v19, v10

    move v10, v5

    move-wide/from16 v4, v17

    move/from16 v18, v14

    .end local v5    # "fieldType":I
    .end local v6    # "wireType":I
    .end local v14    # "number":I
    .end local v17    # "fieldOffset":J
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "position":I
    .restart local v4    # "fieldOffset":J
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .restart local v18    # "number":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "presenceFieldOffset":I
    const/4 v6, 0x2

    if-ne v9, v6, :cond_259

    .line 4992
    move-object v6, v1

    invoke-direct {v0, v6, v12}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 4993
    .local v1, "current":Ljava/lang/Object;
    nop

    .line 4995
    move-object/from16 v24, v2

    .end local v2    # "unsafe":Lsun/misc/Unsafe;
    .restart local v24    # "unsafe":Lsun/misc/Unsafe;
    invoke-direct {v0, v12}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v2

    .line 4994
    move-wide v14, v4

    move/from16 v5, p4

    move v4, v3

    move-object v3, v7

    move-object v7, v6

    move-object v6, v8

    move-object/from16 v8, v24

    .end local v3    # "position":I
    .end local v24    # "unsafe":Lsun/misc/Unsafe;
    .local v4, "position":I
    .local v8, "unsafe":Lsun/misc/Unsafe;
    .local v14, "fieldOffset":J
    invoke-static/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;[BIILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4996
    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, v6

    .end local v1    # "current":Ljava/lang/Object;
    .end local v4    # "position":I
    .local v2, "position":I
    .local v3, "current":Ljava/lang/Object;
    invoke-direct {v0, v7, v12, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4997
    or-int v5, v23, v22

    .line 4998
    .end local v23    # "currentPresenceField":I
    .local v5, "currentPresenceField":I
    move v3, v2

    move v10, v5

    move-object v9, v8

    move v11, v12

    move v6, v13

    move/from16 v5, v16

    move/from16 v8, v19

    move-object v2, v1

    move-object v1, v7

    move-object v7, v4

    move/from16 v4, p4

    goto/16 :goto_1c

    .line 4991
    .end local v5    # "currentPresenceField":I
    .end local v8    # "unsafe":Lsun/misc/Unsafe;
    .end local v14    # "fieldOffset":J
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .local v3, "position":I
    .local v4, "fieldOffset":J
    .restart local v23    # "currentPresenceField":I
    :cond_259
    move-object v14, v7

    move-object v7, v1

    move-object v1, v14

    move-wide v14, v4

    move-object v4, v8

    move-object v8, v2

    move v2, v3

    .end local v3    # "position":I
    .end local v4    # "fieldOffset":J
    .local v2, "position":I
    .restart local v8    # "unsafe":Lsun/misc/Unsafe;
    .restart local v14    # "fieldOffset":J
    move-object v3, v7

    move-object v7, v1

    move-object v1, v3

    move v3, v13

    move-wide v4, v14

    move v15, v2

    move-object v2, v8

    goto/16 :goto_43a

    .line 4979
    .end local v8    # "unsafe":Lsun/misc/Unsafe;
    .end local v18    # "number":I
    .end local v25    # "presenceFieldOffset":I
    .local v2, "presenceFieldOffset":I
    .local v5, "fieldType":I
    .restart local v6    # "wireType":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceFieldOffset":I
    .local v14, "number":I
    .restart local v17    # "fieldOffset":J
    .local v19, "position":I
    :pswitch_269
    move-wide/from16 v28, v17

    move/from16 v18, v14

    move-wide/from16 v14, v28

    move/from16 v25, v2

    move-object v4, v7

    move-object v8, v9

    move/from16 v2, v19

    move-object v7, v1

    move v9, v6

    move/from16 v19, v10

    move-object/from16 v1, p2

    move v10, v5

    .end local v5    # "fieldType":I
    .end local v6    # "wireType":I
    .end local v17    # "fieldOffset":J
    .local v2, "position":I
    .restart local v8    # "unsafe":Lsun/misc/Unsafe;
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .local v14, "fieldOffset":J
    .restart local v18    # "number":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "presenceFieldOffset":I
    const/4 v6, 0x2

    if-ne v9, v6, :cond_2a5

    .line 4980
    const/high16 v3, 0x20000000

    and-int/2addr v3, v11

    if-nez v3, :cond_28a

    .line 4981
    invoke-static {v1, v2, v4}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeString([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move v3, v2

    goto :goto_28f

    .line 4983
    :cond_28a
    invoke-static {v1, v2, v4}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move v3, v2

    .line 4985
    .end local v2    # "position":I
    .restart local v3    # "position":I
    :goto_28f
    iget-object v2, v4, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v8, v7, v14, v15, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4986
    or-int v2, v23, v22

    .line 4987
    .end local v23    # "currentPresenceField":I
    .local v2, "currentPresenceField":I
    move v10, v2

    move-object v9, v8

    move v11, v12

    move v6, v13

    move/from16 v5, v16

    move/from16 v8, v19

    move-object v2, v1

    move-object v1, v7

    move-object v7, v4

    move/from16 v4, p4

    goto/16 :goto_1c

    .line 4979
    .end local v3    # "position":I
    .local v2, "position":I
    .restart local v23    # "currentPresenceField":I
    :cond_2a5
    move-object v3, v7

    move-object v7, v1

    move-object v1, v3

    move v3, v13

    move-wide v4, v14

    move v15, v2

    move-object v2, v8

    goto/16 :goto_43a

    .line 4971
    .end local v8    # "unsafe":Lsun/misc/Unsafe;
    .end local v18    # "number":I
    .end local v25    # "presenceFieldOffset":I
    .local v2, "presenceFieldOffset":I
    .restart local v5    # "fieldType":I
    .restart local v6    # "wireType":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceFieldOffset":I
    .local v14, "number":I
    .restart local v17    # "fieldOffset":J
    .local v19, "position":I
    :pswitch_2ae
    move-wide/from16 v28, v17

    move/from16 v18, v14

    move-wide/from16 v14, v28

    move/from16 v25, v2

    move-object v4, v7

    move-object v8, v9

    move/from16 v2, v19

    move-object v7, v1

    move v9, v6

    move/from16 v19, v10

    move-object/from16 v1, p2

    move v10, v5

    .end local v5    # "fieldType":I
    .end local v6    # "wireType":I
    .end local v17    # "fieldOffset":J
    .local v2, "position":I
    .restart local v8    # "unsafe":Lsun/misc/Unsafe;
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .local v14, "fieldOffset":J
    .restart local v18    # "number":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "presenceFieldOffset":I
    if-nez v9, :cond_2e6

    .line 4972
    invoke-static {v1, v2, v4}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint64([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 4973
    .end local v2    # "position":I
    .restart local v3    # "position":I
    iget-wide v5, v4, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v26, 0x0

    cmp-long v2, v5, v26

    if-eqz v2, :cond_2d1

    const/4 v2, 0x1

    goto :goto_2d2

    :cond_2d1
    const/4 v2, 0x0

    :goto_2d2
    invoke-static {v7, v14, v15, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 4974
    or-int v2, v23, v22

    .line 4975
    .end local v23    # "currentPresenceField":I
    .local v2, "currentPresenceField":I
    move v10, v2

    move-object v9, v8

    move v11, v12

    move v6, v13

    move/from16 v5, v16

    move/from16 v8, v19

    move-object v2, v1

    move-object v1, v7

    move-object v7, v4

    move/from16 v4, p4

    goto/16 :goto_1c

    .line 4971
    .end local v3    # "position":I
    .local v2, "position":I
    .restart local v23    # "currentPresenceField":I
    :cond_2e6
    move-object v3, v7

    move-object v7, v1

    move-object v1, v3

    move v3, v13

    move-wide v4, v14

    move v15, v2

    move-object v2, v8

    goto/16 :goto_43a

    .line 4963
    .end local v8    # "unsafe":Lsun/misc/Unsafe;
    .end local v18    # "number":I
    .end local v25    # "presenceFieldOffset":I
    .local v2, "presenceFieldOffset":I
    .restart local v5    # "fieldType":I
    .restart local v6    # "wireType":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceFieldOffset":I
    .local v14, "number":I
    .restart local v17    # "fieldOffset":J
    .local v19, "position":I
    :pswitch_2ef
    move-wide/from16 v28, v17

    move/from16 v18, v14

    move-wide/from16 v14, v28

    move/from16 v25, v2

    move-object v4, v7

    move-object v8, v9

    move/from16 v2, v19

    move-object v7, v1

    move v9, v6

    move/from16 v19, v10

    move-object/from16 v1, p2

    move v10, v5

    .end local v5    # "fieldType":I
    .end local v6    # "wireType":I
    .end local v17    # "fieldOffset":J
    .local v2, "position":I
    .restart local v8    # "unsafe":Lsun/misc/Unsafe;
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .local v14, "fieldOffset":J
    .restart local v18    # "number":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "presenceFieldOffset":I
    if-ne v9, v3, :cond_31e

    .line 4964
    invoke-static {v1, v2}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v3

    invoke-virtual {v8, v7, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4965
    add-int/lit8 v3, v2, 0x4

    .line 4966
    .end local v2    # "position":I
    .restart local v3    # "position":I
    or-int v2, v23, v22

    .line 4967
    .end local v23    # "currentPresenceField":I
    .local v2, "currentPresenceField":I
    move v10, v2

    move-object v9, v8

    move v11, v12

    move v6, v13

    move/from16 v5, v16

    move/from16 v8, v19

    move-object v2, v1

    move-object v1, v7

    move-object v7, v4

    move/from16 v4, p4

    goto/16 :goto_1c

    .line 4963
    .end local v3    # "position":I
    .local v2, "position":I
    .restart local v23    # "currentPresenceField":I
    :cond_31e
    move-object v3, v7

    move-object v7, v1

    move-object v1, v3

    move v3, v13

    move-wide v4, v14

    move v15, v2

    move-object v2, v8

    goto/16 :goto_43a

    .line 4954
    .end local v8    # "unsafe":Lsun/misc/Unsafe;
    .end local v18    # "number":I
    .end local v25    # "presenceFieldOffset":I
    .local v2, "presenceFieldOffset":I
    .restart local v5    # "fieldType":I
    .restart local v6    # "wireType":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceFieldOffset":I
    .local v14, "number":I
    .restart local v17    # "fieldOffset":J
    .local v19, "position":I
    :pswitch_327
    move-wide/from16 v28, v17

    move/from16 v18, v14

    move-wide/from16 v14, v28

    move/from16 v25, v2

    move-object v4, v7

    move-object v8, v9

    move/from16 v2, v19

    move-object v7, v1

    move v9, v6

    move/from16 v19, v10

    move-object/from16 v1, p2

    move v10, v5

    .end local v5    # "fieldType":I
    .end local v6    # "wireType":I
    .end local v17    # "fieldOffset":J
    .local v2, "position":I
    .restart local v8    # "unsafe":Lsun/misc/Unsafe;
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .local v14, "fieldOffset":J
    .restart local v18    # "number":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "presenceFieldOffset":I
    const/4 v3, 0x1

    if-ne v9, v3, :cond_365

    .line 4955
    invoke-static {v1, v2}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v5

    move-wide/from16 v28, v14

    move-object v14, v4

    move-wide/from16 v3, v28

    move v15, v2

    move-object v2, v7

    move-object v7, v1

    move-object v1, v8

    .end local v2    # "position":I
    .end local v8    # "unsafe":Lsun/misc/Unsafe;
    .end local v14    # "fieldOffset":J
    .local v1, "unsafe":Lsun/misc/Unsafe;
    .local v3, "fieldOffset":J
    .restart local v15    # "position":I
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 4956
    move-object/from16 v28, v2

    move-object v2, v1

    move-object/from16 v1, v28

    .end local v1    # "unsafe":Lsun/misc/Unsafe;
    .local v2, "unsafe":Lsun/misc/Unsafe;
    add-int/lit8 v5, v15, 0x8

    .line 4957
    .end local v15    # "position":I
    .local v5, "position":I
    or-int v6, v23, v22

    .line 4958
    .end local v23    # "currentPresenceField":I
    .local v6, "currentPresenceField":I
    move/from16 v4, p4

    move-object v9, v2

    move v3, v5

    move v10, v6

    move-object v2, v7

    move v11, v12

    move v6, v13

    move-object v7, v14

    move/from16 v5, v16

    move/from16 v8, v19

    goto/16 :goto_1c

    .line 4954
    .end local v3    # "fieldOffset":J
    .end local v5    # "position":I
    .end local v6    # "currentPresenceField":I
    .local v2, "position":I
    .restart local v8    # "unsafe":Lsun/misc/Unsafe;
    .restart local v14    # "fieldOffset":J
    .restart local v23    # "currentPresenceField":I
    :cond_365
    move-object v3, v7

    move-object v7, v1

    move-object v1, v3

    move-wide/from16 v28, v14

    move-object v14, v4

    move-wide/from16 v3, v28

    move v15, v2

    move-object v2, v8

    .end local v8    # "unsafe":Lsun/misc/Unsafe;
    .end local v14    # "fieldOffset":J
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "fieldOffset":J
    .restart local v15    # "position":I
    move-wide v4, v3

    move v3, v13

    goto/16 :goto_43a

    .line 4945
    .end local v3    # "fieldOffset":J
    .end local v15    # "position":I
    .end local v18    # "number":I
    .end local v25    # "presenceFieldOffset":I
    .local v2, "presenceFieldOffset":I
    .local v5, "fieldType":I
    .local v6, "wireType":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceFieldOffset":I
    .local v14, "number":I
    .restart local v17    # "fieldOffset":J
    .local v19, "position":I
    :pswitch_373
    move/from16 v25, v2

    move-object v2, v9

    move-wide/from16 v3, v17

    move/from16 v15, v19

    move v9, v6

    move/from16 v19, v10

    move/from16 v18, v14

    move v10, v5

    move-object v14, v7

    move-object/from16 v7, p2

    .end local v5    # "fieldType":I
    .end local v6    # "wireType":I
    .end local v14    # "number":I
    .end local v17    # "fieldOffset":J
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "fieldOffset":J
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .restart local v15    # "position":I
    .restart local v18    # "number":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "presenceFieldOffset":I
    if-nez v9, :cond_39f

    .line 4946
    invoke-static {v7, v15, v14}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint32([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    .line 4947
    .end local v15    # "position":I
    .local v5, "position":I
    iget v6, v14, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v2, v1, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4948
    or-int v6, v23, v22

    .line 4949
    .end local v23    # "currentPresenceField":I
    .local v6, "currentPresenceField":I
    move/from16 v4, p4

    move-object v9, v2

    move v3, v5

    move v10, v6

    move-object v2, v7

    move v11, v12

    move v6, v13

    move-object v7, v14

    move/from16 v5, v16

    move/from16 v8, v19

    goto/16 :goto_1c

    .line 4945
    .end local v5    # "position":I
    .end local v6    # "currentPresenceField":I
    .restart local v15    # "position":I
    .restart local v23    # "currentPresenceField":I
    :cond_39f
    move-wide v4, v3

    move v3, v13

    goto/16 :goto_43a

    .line 4936
    .end local v3    # "fieldOffset":J
    .end local v15    # "position":I
    .end local v18    # "number":I
    .end local v25    # "presenceFieldOffset":I
    .local v2, "presenceFieldOffset":I
    .local v5, "fieldType":I
    .local v6, "wireType":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceFieldOffset":I
    .restart local v14    # "number":I
    .restart local v17    # "fieldOffset":J
    .local v19, "position":I
    :pswitch_3a3
    move/from16 v25, v2

    move-object v2, v9

    move-wide/from16 v3, v17

    move/from16 v15, v19

    move v9, v6

    move/from16 v19, v10

    move/from16 v18, v14

    move v10, v5

    move-object v14, v7

    move-object/from16 v7, p2

    .end local v5    # "fieldType":I
    .end local v6    # "wireType":I
    .end local v14    # "number":I
    .end local v17    # "fieldOffset":J
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "fieldOffset":J
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .restart local v15    # "position":I
    .restart local v18    # "number":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "presenceFieldOffset":I
    if-nez v9, :cond_3d8

    .line 4937
    invoke-static {v7, v15, v14}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeVarint64([BILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 4938
    .end local v15    # "position":I
    .local v8, "position":I
    iget-wide v5, v14, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->long1:J

    move-object/from16 v28, v2

    move-object v2, v1

    move-object/from16 v1, v28

    .end local v2    # "unsafe":Lsun/misc/Unsafe;
    .restart local v1    # "unsafe":Lsun/misc/Unsafe;
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 4939
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-wide v4, v3

    .end local v1    # "unsafe":Lsun/misc/Unsafe;
    .end local v3    # "fieldOffset":J
    .restart local v2    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "fieldOffset":J
    or-int v3, v23, v22

    .line 4940
    .end local v23    # "currentPresenceField":I
    .local v3, "currentPresenceField":I
    move/from16 v4, p4

    move-object v9, v2

    move v10, v3

    move-object v2, v7

    move v3, v8

    move v11, v12

    move v6, v13

    move-object v7, v14

    move/from16 v5, v16

    move/from16 v8, v19

    goto/16 :goto_1c

    .line 4936
    .end local v4    # "fieldOffset":J
    .end local v8    # "position":I
    .local v3, "fieldOffset":J
    .restart local v15    # "position":I
    .restart local v23    # "currentPresenceField":I
    :cond_3d8
    move-wide v4, v3

    .end local v3    # "fieldOffset":J
    .restart local v4    # "fieldOffset":J
    move v3, v13

    goto/16 :goto_43a

    .line 4927
    .end local v4    # "fieldOffset":J
    .end local v15    # "position":I
    .end local v18    # "number":I
    .end local v25    # "presenceFieldOffset":I
    .local v2, "presenceFieldOffset":I
    .restart local v5    # "fieldType":I
    .restart local v6    # "wireType":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceFieldOffset":I
    .restart local v14    # "number":I
    .restart local v17    # "fieldOffset":J
    .local v19, "position":I
    :pswitch_3dc
    move/from16 v25, v2

    move-object v2, v9

    move/from16 v15, v19

    move v9, v6

    move/from16 v19, v10

    move v10, v5

    move-wide/from16 v4, v17

    move/from16 v18, v14

    move-object v14, v7

    move-object/from16 v7, p2

    .end local v5    # "fieldType":I
    .end local v6    # "wireType":I
    .end local v14    # "number":I
    .end local v17    # "fieldOffset":J
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "fieldOffset":J
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .restart local v15    # "position":I
    .restart local v18    # "number":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "presenceFieldOffset":I
    if-ne v9, v3, :cond_407

    .line 4928
    invoke-static {v7, v15}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v3

    invoke-static {v1, v4, v5, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 4929
    add-int/lit8 v3, v15, 0x4

    .line 4930
    .end local v15    # "position":I
    .local v3, "position":I
    or-int v6, v23, v22

    .line 4931
    .end local v23    # "currentPresenceField":I
    .local v6, "currentPresenceField":I
    move/from16 v4, p4

    move-object v9, v2

    move v10, v6

    move-object v2, v7

    move v11, v12

    move v6, v13

    move-object v7, v14

    move/from16 v5, v16

    move/from16 v8, v19

    goto/16 :goto_1c

    .line 4927
    .end local v3    # "position":I
    .end local v6    # "currentPresenceField":I
    .restart local v15    # "position":I
    .restart local v23    # "currentPresenceField":I
    :cond_407
    move v3, v13

    goto :goto_43a

    .line 4919
    .end local v4    # "fieldOffset":J
    .end local v15    # "position":I
    .end local v18    # "number":I
    .end local v25    # "presenceFieldOffset":I
    .local v2, "presenceFieldOffset":I
    .restart local v5    # "fieldType":I
    .local v6, "wireType":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceFieldOffset":I
    .restart local v14    # "number":I
    .restart local v17    # "fieldOffset":J
    .local v19, "position":I
    :pswitch_409
    move/from16 v25, v2

    move-object v2, v9

    move/from16 v15, v19

    move v9, v6

    move/from16 v19, v10

    move v10, v5

    move-wide/from16 v4, v17

    move/from16 v18, v14

    move-object v14, v7

    move-object/from16 v7, p2

    .end local v5    # "fieldType":I
    .end local v6    # "wireType":I
    .end local v14    # "number":I
    .end local v17    # "fieldOffset":J
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "fieldOffset":J
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .restart local v15    # "position":I
    .restart local v18    # "number":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "presenceFieldOffset":I
    const/4 v3, 0x1

    if-ne v9, v3, :cond_439

    .line 4920
    move v3, v13

    .end local v13    # "tag":I
    .local v3, "tag":I
    invoke-static {v7, v15}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v13

    invoke-static {v1, v4, v5, v13, v14}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 4921
    add-int/lit8 v6, v15, 0x8

    .line 4922
    .end local v15    # "position":I
    .local v6, "position":I
    or-int v8, v23, v22

    .line 4923
    .end local v23    # "currentPresenceField":I
    .local v8, "currentPresenceField":I
    move v4, v6

    move v6, v3

    move v3, v4

    move/from16 v4, p4

    move-object v9, v2

    move-object v2, v7

    move v10, v8

    move v11, v12

    move/from16 v5, v16

    move/from16 v8, v19

    move-object/from16 v7, p6

    goto/16 :goto_1c

    .line 4919
    .end local v3    # "tag":I
    .end local v6    # "position":I
    .end local v8    # "currentPresenceField":I
    .restart local v13    # "tag":I
    .restart local v15    # "position":I
    .restart local v23    # "currentPresenceField":I
    :cond_439
    move v3, v13

    .line 5064
    .end local v13    # "tag":I
    .end local v20    # "presenceMaskAndOffset":I
    .end local v22    # "presenceMask":I
    .end local v25    # "presenceFieldOffset":I
    .restart local v3    # "tag":I
    :goto_43a
    move-object/from16 v7, p6

    move-object/from16 v24, v2

    move v5, v3

    move v10, v9

    move v11, v12

    move v2, v15

    move/from16 v8, v19

    move-object v9, v0

    goto/16 :goto_583

    .end local v2    # "unsafe":Lsun/misc/Unsafe;
    .end local v3    # "tag":I
    .end local v4    # "fieldOffset":J
    .end local v15    # "position":I
    .end local v18    # "number":I
    .end local v23    # "currentPresenceField":I
    .restart local v5    # "fieldType":I
    .local v6, "wireType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceField":I
    .restart local v13    # "tag":I
    .restart local v14    # "number":I
    .restart local v17    # "fieldOffset":J
    .local v19, "position":I
    :cond_447
    move-object/from16 v7, p2

    move-object v2, v9

    move/from16 v23, v10

    move v3, v13

    move/from16 v15, v19

    move v10, v5

    move v9, v6

    move-wide/from16 v4, v17

    move/from16 v18, v14

    .end local v5    # "fieldType":I
    .end local v6    # "wireType":I
    .end local v13    # "tag":I
    .end local v14    # "number":I
    .end local v17    # "fieldOffset":J
    .end local v19    # "position":I
    .restart local v2    # "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "tag":I
    .restart local v4    # "fieldOffset":J
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .restart local v15    # "position":I
    .restart local v18    # "number":I
    .restart local v23    # "currentPresenceField":I
    const/16 v6, 0x1b

    if-ne v10, v6, :cond_4b0

    .line 5066
    const/4 v6, 0x2

    if-ne v9, v6, :cond_4a3

    .line 5067
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    .line 5068
    .local v6, "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    invoke-interface {v6}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v13

    if-nez v13, :cond_47b

    .line 5069
    invoke-interface {v6}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->size()I

    move-result v13

    .line 5070
    .local v13, "size":I
    nop

    .line 5072
    if-nez v13, :cond_472

    const/16 v14, 0xa

    goto :goto_474

    :cond_472
    mul-int/lit8 v14, v13, 0x2

    .line 5071
    :goto_474
    invoke-interface {v6, v14}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    move-result-object v6

    .line 5073
    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5075
    .end local v13    # "size":I
    :cond_47b
    nop

    .line 5077
    invoke-direct {v0, v12}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v1

    .line 5076
    move/from16 v19, v8

    move v8, v12

    move-wide v12, v4

    move v4, v15

    move/from16 v5, p4

    move-object v15, v2

    move v2, v3

    move-object v3, v7

    move-object/from16 v7, p6

    .end local v3    # "tag":I
    .local v2, "tag":I
    .local v4, "position":I
    .local v8, "pos":I
    .local v12, "fieldOffset":J
    .local v15, "unsafe":Lsun/misc/Unsafe;
    .local v19, "currentPresenceFieldOffset":I
    invoke-static/range {v1 .. v7}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeMessageList(Landroid/net/connectivity/com/google/protobuf/Schema;I[BIILandroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 5078
    move v5, v2

    .end local v2    # "tag":I
    .end local v4    # "position":I
    .local v1, "position":I
    .local v5, "tag":I
    move-object/from16 v2, p2

    move/from16 v4, p4

    move v3, v1

    move v6, v5

    move v11, v8

    move-object v9, v15

    move/from16 v5, v16

    move/from16 v8, v19

    move/from16 v10, v23

    move-object/from16 v1, p1

    goto/16 :goto_1c

    .line 5066
    .end local v1    # "position":I
    .end local v5    # "tag":I
    .end local v6    # "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<*>;"
    .end local v19    # "currentPresenceFieldOffset":I
    .local v2, "unsafe":Lsun/misc/Unsafe;
    .restart local v3    # "tag":I
    .local v4, "fieldOffset":J
    .local v8, "currentPresenceFieldOffset":I
    .local v12, "pos":I
    .local v15, "position":I
    :cond_4a3
    move/from16 v19, v8

    move v8, v12

    move-wide v12, v4

    move v5, v3

    move v3, v15

    move-object v15, v2

    .end local v2    # "unsafe":Lsun/misc/Unsafe;
    .end local v4    # "fieldOffset":J
    .local v3, "position":I
    .restart local v5    # "tag":I
    .local v8, "pos":I
    .local v12, "fieldOffset":J
    .local v15, "unsafe":Lsun/misc/Unsafe;
    .restart local v19    # "currentPresenceFieldOffset":I
    move v10, v9

    move-object/from16 v24, v15

    move v9, v5

    goto/16 :goto_53b

    .line 5080
    .end local v5    # "tag":I
    .end local v19    # "currentPresenceFieldOffset":I
    .restart local v2    # "unsafe":Lsun/misc/Unsafe;
    .local v3, "tag":I
    .restart local v4    # "fieldOffset":J
    .local v8, "currentPresenceFieldOffset":I
    .local v12, "pos":I
    .local v15, "position":I
    :cond_4b0
    move/from16 v19, v8

    move v8, v12

    move-wide v12, v4

    move v5, v3

    move v3, v15

    move-object v15, v2

    .end local v2    # "unsafe":Lsun/misc/Unsafe;
    .end local v4    # "fieldOffset":J
    .local v3, "position":I
    .restart local v5    # "tag":I
    .local v8, "pos":I
    .local v12, "fieldOffset":J
    .local v15, "unsafe":Lsun/misc/Unsafe;
    .restart local v19    # "currentPresenceFieldOffset":I
    const/16 v1, 0x31

    if-gt v10, v1, :cond_4f8

    .line 5082
    move v1, v3

    .line 5083
    .local v1, "oldPosition":I
    move v7, v9

    move v2, v10

    .end local v9    # "wireType":I
    .end local v10    # "fieldType":I
    .local v2, "fieldType":I
    .local v7, "wireType":I
    int-to-long v9, v11

    .line 5084
    move/from16 v4, p4

    move-object/from16 v14, p6

    move/from16 v17, v11

    move-object/from16 v24, v15

    move/from16 v6, v18

    move v15, v1

    move v11, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .end local v1    # "oldPosition":I
    .end local v2    # "fieldType":I
    .end local v18    # "number":I
    .local v6, "number":I
    .local v11, "fieldType":I
    .local v15, "oldPosition":I
    .local v17, "typeAndOffset":I
    .restart local v24    # "unsafe":Lsun/misc/Unsafe;
    invoke-direct/range {v0 .. v14}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 5097
    move v9, v5

    move v10, v7

    .end local v5    # "tag":I
    .end local v6    # "number":I
    .end local v7    # "wireType":I
    .local v9, "tag":I
    .local v10, "wireType":I
    .restart local v18    # "number":I
    if-eq v3, v15, :cond_4ed

    .line 5098
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move v11, v8

    move v6, v9

    move/from16 v5, v16

    move/from16 v8, v19

    move/from16 v10, v23

    move-object/from16 v9, v24

    goto/16 :goto_1c

    .line 5100
    .end local v15    # "oldPosition":I
    :cond_4ed
    move-object/from16 v7, p6

    move v2, v3

    move v11, v8

    move v5, v9

    move/from16 v8, v19

    move-object/from16 v9, p0

    goto/16 :goto_583

    .end local v17    # "typeAndOffset":I
    .end local v24    # "unsafe":Lsun/misc/Unsafe;
    .restart local v5    # "tag":I
    .local v9, "wireType":I
    .local v10, "fieldType":I
    .local v11, "typeAndOffset":I
    .local v15, "unsafe":Lsun/misc/Unsafe;
    :cond_4f8
    move/from16 v17, v11

    move-object/from16 v24, v15

    move v11, v10

    move v10, v9

    move v9, v5

    .end local v5    # "tag":I
    .end local v15    # "unsafe":Lsun/misc/Unsafe;
    .local v9, "tag":I
    .local v10, "wireType":I
    .local v11, "fieldType":I
    .restart local v17    # "typeAndOffset":I
    .restart local v24    # "unsafe":Lsun/misc/Unsafe;
    const/16 v0, 0x32

    if-ne v11, v0, :cond_545

    .line 5101
    const/4 v6, 0x2

    if-ne v10, v6, :cond_53b

    .line 5102
    move v14, v3

    .line 5103
    .local v14, "oldPosition":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v5, v8

    move-wide v6, v12

    move-object/from16 v8, p6

    .end local v8    # "pos":I
    .end local v12    # "fieldOffset":J
    .local v5, "pos":I
    .local v6, "fieldOffset":J
    invoke-direct/range {v0 .. v8}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 5104
    move v8, v5

    .end local v5    # "pos":I
    .end local v6    # "fieldOffset":J
    .restart local v8    # "pos":I
    .restart local v12    # "fieldOffset":J
    if-eq v3, v14, :cond_530

    .line 5105
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move v11, v8

    move v6, v9

    move/from16 v5, v16

    move/from16 v8, v19

    move/from16 v10, v23

    move-object/from16 v9, v24

    goto/16 :goto_1c

    .line 5107
    .end local v14    # "oldPosition":I
    :cond_530
    move-object/from16 v7, p6

    move v2, v3

    move v11, v8

    move v5, v9

    move/from16 v8, v19

    move-object/from16 v9, p0

    goto/16 :goto_583

    .line 5129
    .end local v10    # "wireType":I
    .end local v11    # "fieldType":I
    .end local v12    # "fieldOffset":J
    .end local v17    # "typeAndOffset":I
    .end local v24    # "unsafe":Lsun/misc/Unsafe;
    .local v5, "tag":I
    .local v9, "wireType":I
    .restart local v15    # "unsafe":Lsun/misc/Unsafe;
    :cond_53b
    :goto_53b
    move-object/from16 v7, p6

    move v2, v3

    move v11, v8

    move v5, v9

    move/from16 v8, v19

    move-object/from16 v9, p0

    .end local v5    # "tag":I
    .end local v15    # "unsafe":Lsun/misc/Unsafe;
    .local v9, "tag":I
    .restart local v10    # "wireType":I
    .restart local v24    # "unsafe":Lsun/misc/Unsafe;
    goto :goto_583

    .line 5109
    .restart local v11    # "fieldType":I
    .restart local v12    # "fieldOffset":J
    .restart local v17    # "typeAndOffset":I
    :cond_545
    move v14, v3

    .line 5110
    .restart local v14    # "oldPosition":I
    nop

    .line 5111
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v5, v9

    move v7, v10

    move v9, v11

    move-wide v10, v12

    move/from16 v6, v18

    move-object/from16 v13, p6

    move v12, v8

    move/from16 v8, v17

    .end local v11    # "fieldType":I
    .end local v17    # "typeAndOffset":I
    .end local v18    # "number":I
    .restart local v5    # "tag":I
    .local v6, "number":I
    .restart local v7    # "wireType":I
    .local v8, "typeAndOffset":I
    .local v9, "fieldType":I
    .local v10, "fieldOffset":J
    .local v12, "pos":I
    invoke-direct/range {v0 .. v13}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 5124
    move v8, v12

    move/from16 v28, v9

    move-object v9, v0

    move-wide/from16 v29, v10

    move v10, v7

    move/from16 v11, v28

    move-object v7, v13

    move-wide/from16 v12, v29

    .end local v6    # "number":I
    .end local v7    # "wireType":I
    .end local v9    # "fieldType":I
    .local v8, "pos":I
    .local v10, "wireType":I
    .restart local v11    # "fieldType":I
    .local v12, "fieldOffset":J
    .restart local v17    # "typeAndOffset":I
    .restart local v18    # "number":I
    if-eq v3, v14, :cond_57f

    .line 5125
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v6, v5

    move v11, v8

    move-object v0, v9

    move/from16 v5, v16

    move/from16 v8, v19

    move/from16 v10, v23

    move-object/from16 v9, v24

    goto/16 :goto_1c

    .line 5124
    :cond_57f
    move v2, v3

    move v11, v8

    move/from16 v8, v19

    .line 5129
    .end local v3    # "position":I
    .end local v12    # "fieldOffset":J
    .end local v14    # "oldPosition":I
    .end local v17    # "typeAndOffset":I
    .end local v19    # "currentPresenceFieldOffset":I
    .local v2, "position":I
    .local v8, "currentPresenceFieldOffset":I
    .local v11, "pos":I
    :goto_583
    move/from16 v15, p5

    if-ne v5, v15, :cond_595

    if-eqz v15, :cond_595

    .line 5130
    move-object/from16 v7, p1

    move/from16 v12, p4

    move v6, v2

    move v10, v8

    move v8, v5

    move v13, v11

    move/from16 v11, v23

    goto/16 :goto_5f2

    .line 5133
    :cond_595
    iget-boolean v0, v9, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_5b9

    iget-object v0, v7, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    .line 5134
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    move-result-object v1

    if-eq v0, v1, :cond_5b6

    .line 5135
    move v0, v5

    .end local v5    # "tag":I
    .local v0, "tag":I
    iget-object v5, v9, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->defaultInstance:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    iget-object v6, v9, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    move-object/from16 v4, p1

    move-object/from16 v1, p2

    move/from16 v3, p4

    invoke-static/range {v0 .. v7}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move-object v7, v4

    move/from16 v12, p4

    move v5, v0

    move v3, v2

    .end local v0    # "tag":I
    .restart local v5    # "tag":I
    goto :goto_5ce

    .line 5134
    :cond_5b6
    move-object/from16 v7, p1

    goto :goto_5bb

    .line 5133
    :cond_5b9
    move-object/from16 v7, p1

    .line 5140
    :goto_5bb
    nop

    .line 5141
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    .line 5140
    move-object/from16 v1, p2

    move/from16 v3, p4

    move v0, v5

    move-object/from16 v5, p6

    .end local v5    # "tag":I
    .restart local v0    # "tag":I
    invoke-static/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILandroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move v12, v3

    move v5, v0

    move v3, v2

    .line 5143
    .end local v0    # "tag":I
    .end local v2    # "position":I
    .end local v10    # "wireType":I
    .end local v18    # "number":I
    .restart local v3    # "position":I
    .restart local v5    # "tag":I
    :goto_5ce
    move-object/from16 v2, p2

    move v6, v5

    move-object v1, v7

    move-object v0, v9

    move v4, v12

    move/from16 v5, v16

    move/from16 v10, v23

    move-object/from16 v9, v24

    move-object/from16 v7, p6

    goto/16 :goto_1c

    .line 4882
    .end local v16    # "oldNumber":I
    .end local v23    # "currentPresenceField":I
    .end local v24    # "unsafe":Lsun/misc/Unsafe;
    .local v5, "oldNumber":I
    .local v6, "tag":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .local v10, "currentPresenceField":I
    :cond_5de
    move/from16 v15, p5

    move-object v7, v1

    move v12, v4

    move/from16 v19, v8

    move-object/from16 v24, v9

    move/from16 v23, v10

    move-object v9, v0

    .end local v8    # "currentPresenceFieldOffset":I
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .end local v10    # "currentPresenceField":I
    .restart local v19    # "currentPresenceFieldOffset":I
    .restart local v23    # "currentPresenceField":I
    .restart local v24    # "unsafe":Lsun/misc/Unsafe;
    move/from16 v16, v5

    move v8, v6

    move/from16 v10, v19

    move v6, v3

    move v13, v11

    move/from16 v11, v23

    .line 5144
    .end local v3    # "position":I
    .end local v5    # "oldNumber":I
    .end local v19    # "currentPresenceFieldOffset":I
    .end local v23    # "currentPresenceField":I
    .local v6, "position":I
    .local v8, "tag":I
    .local v10, "currentPresenceFieldOffset":I
    .local v11, "currentPresenceField":I
    .local v13, "pos":I
    .restart local v16    # "oldNumber":I
    :goto_5f2
    const v3, 0xfffff

    if-eq v10, v3, :cond_5fe

    .line 5145
    int-to-long v0, v10

    move-object/from16 v14, v24

    .end local v24    # "unsafe":Lsun/misc/Unsafe;
    .local v14, "unsafe":Lsun/misc/Unsafe;
    invoke-virtual {v14, v7, v0, v1, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_600

    .line 5144
    .end local v14    # "unsafe":Lsun/misc/Unsafe;
    .restart local v24    # "unsafe":Lsun/misc/Unsafe;
    :cond_5fe
    move-object/from16 v14, v24

    .line 5147
    .end local v24    # "unsafe":Lsun/misc/Unsafe;
    .restart local v14    # "unsafe":Lsun/misc/Unsafe;
    :goto_600
    const/4 v0, 0x0

    .line 5148
    .local v0, "unknownFields":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;
    iget v1, v9, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->checkInitializedCount:I

    move-object v3, v0

    move v0, v1

    .local v0, "i":I
    .local v3, "unknownFields":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;
    :goto_605
    iget v1, v9, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_620

    .line 5149
    iget-object v1, v9, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->intArray:[I

    aget v2, v1, v0

    iget-object v4, v9, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    .line 5150
    move-object/from16 v5, p1

    move-object v1, v7

    move v7, v0

    move-object v0, v9

    .end local v0    # "i":I
    .local v7, "i":I
    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSetLite;

    .line 5148
    add-int/lit8 v2, v7, 0x1

    move-object v7, v1

    move v0, v2

    .end local v7    # "i":I
    .local v2, "i":I
    goto :goto_605

    .end local v2    # "i":I
    .restart local v0    # "i":I
    :cond_620
    move-object v1, v7

    move v7, v0

    move-object v0, v9

    .line 5157
    .end local v0    # "i":I
    if-eqz v3, :cond_62a

    .line 5158
    iget-object v2, v0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->unknownFieldSchema:Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    .line 5159
    invoke-virtual {v2, v1, v3}, Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5161
    :cond_62a
    if-nez v15, :cond_634

    .line 5162
    if-ne v6, v12, :cond_62f

    goto :goto_638

    .line 5163
    :cond_62f
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->parseFailure()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 5166
    :cond_634
    if-gt v6, v12, :cond_639

    if-ne v8, v15, :cond_639

    .line 5170
    :goto_638
    return v6

    .line 5167
    :cond_639
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->parseFailure()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    :pswitch_data_63e
    .packed-switch 0x0
        :pswitch_409
        :pswitch_3dc
        :pswitch_3a3
        :pswitch_3a3
        :pswitch_373
        :pswitch_327
        :pswitch_2ef
        :pswitch_2ae
        :pswitch_269
        :pswitch_214
        :pswitch_1e4
        :pswitch_373
        :pswitch_17b
        :pswitch_2ef
        :pswitch_327
        :pswitch_148
        :pswitch_107
        :pswitch_b0
    .end packed-switch
.end method

.method public blacklist writeTo(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V
    .registers 5
    .param p2, "writer"    # Landroid/net/connectivity/com/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/net/connectivity/com/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2580
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/MessageSchema;, "Landroid/net/connectivity/com/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Writer;->fieldOrder()Landroid/net/connectivity/com/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Landroid/net/connectivity/com/google/protobuf/Writer$FieldOrder;->DESCENDING:Landroid/net/connectivity/com/google/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_c

    .line 2581
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->writeFieldsInDescendingOrder(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    goto :goto_17

    .line 2583
    :cond_c
    iget-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_14

    .line 2584
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    goto :goto_17

    .line 2586
    :cond_14
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 2589
    :goto_17
    return-void
.end method
