.class final Lcom/android/framework/protobuf/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/FieldInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/framework/protobuf/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist cachedSizeField:Ljava/lang/reflect/Field;

.field private final blacklist enforceUtf8:Z

.field private final blacklist enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

.field private final blacklist field:Ljava/lang/reflect/Field;

.field private final blacklist fieldNumber:I

.field private final blacklist mapDefaultEntry:Ljava/lang/Object;

.field private final blacklist messageClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist oneof:Lcom/android/framework/protobuf/OneofInfo;

.field private final blacklist oneofStoredType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist presenceField:Ljava/lang/reflect/Field;

.field private final blacklist presenceMask:I

.field private final blacklist required:Z

.field private final blacklist type:Lcom/android/framework/protobuf/FieldType;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V
    .registers 14
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "fieldNumber"    # I
    .param p3, "type"    # Lcom/android/framework/protobuf/FieldType;
    .param p5, "presenceField"    # Ljava/lang/reflect/Field;
    .param p6, "presenceMask"    # I
    .param p7, "required"    # Z
    .param p8, "enforceUtf8"    # Z
    .param p9, "oneof"    # Lcom/android/framework/protobuf/OneofInfo;
    .param p11, "mapDefaultEntry"    # Ljava/lang/Object;
    .param p12, "enumVerifier"    # Lcom/android/framework/protobuf/Internal$EnumVerifier;
    .param p13, "cachedSizeField"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/android/framework/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "IZZ",
            "Lcom/android/framework/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/Internal$EnumVerifier;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 333
    .local p4, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p10, "oneofStoredType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lcom/android/framework/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 335
    iput-object p3, p0, Lcom/android/framework/protobuf/FieldInfo;->type:Lcom/android/framework/protobuf/FieldType;

    .line 336
    iput-object p4, p0, Lcom/android/framework/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    .line 337
    iput p2, p0, Lcom/android/framework/protobuf/FieldInfo;->fieldNumber:I

    .line 338
    iput-object p5, p0, Lcom/android/framework/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    .line 339
    iput p6, p0, Lcom/android/framework/protobuf/FieldInfo;->presenceMask:I

    .line 340
    iput-boolean p7, p0, Lcom/android/framework/protobuf/FieldInfo;->required:Z

    .line 341
    iput-boolean p8, p0, Lcom/android/framework/protobuf/FieldInfo;->enforceUtf8:Z

    .line 342
    iput-object p9, p0, Lcom/android/framework/protobuf/FieldInfo;->oneof:Lcom/android/framework/protobuf/OneofInfo;

    .line 343
    iput-object p10, p0, Lcom/android/framework/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    .line 344
    iput-object p11, p0, Lcom/android/framework/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    .line 345
    iput-object p12, p0, Lcom/android/framework/protobuf/FieldInfo;->enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

    .line 346
    iput-object p13, p0, Lcom/android/framework/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    .line 347
    return-void
.end method

.method private static blacklist checkFieldNumber(I)V
    .registers 4
    .param p0, "fieldNumber"    # I

    .line 261
    if-lez p0, :cond_3

    .line 264
    return-void

    .line 262
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fieldNumber must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist forField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Z)Lcom/android/framework/protobuf/FieldInfo;
    .registers 18
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/android/framework/protobuf/FieldType;
    .param p3, "enforceUtf8"    # Z

    .line 67
    move-object/from16 v3, p2

    invoke-static {p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 68
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    const-string v0, "fieldType"

    invoke-static {v3, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/framework/protobuf/FieldType;->MESSAGE_LIST:Lcom/android/framework/protobuf/FieldType;

    if-eq v3, v0, :cond_2a

    sget-object v0, Lcom/android/framework/protobuf/FieldType;->GROUP_LIST:Lcom/android/framework/protobuf/FieldType;

    if-eq v3, v0, :cond_2a

    .line 73
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v8, p3

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 71
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist forFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Lcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 19
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/android/framework/protobuf/FieldType;
    .param p3, "enumVerifier"    # Lcom/android/framework/protobuf/Internal$EnumVerifier;

    .line 139
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 140
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    new-instance v1, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v1
.end method

.method public static blacklist forMapField(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 19
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "mapDefaultEntry"    # Ljava/lang/Object;
    .param p3, "enumVerifier"    # Lcom/android/framework/protobuf/Internal$EnumVerifier;

    .line 301
    const-string v0, "mapDefaultEntry"

    move-object/from16 v12, p2

    invoke-static {v12, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 303
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    new-instance v1, Lcom/android/framework/protobuf/FieldInfo;

    sget-object v4, Lcom/android/framework/protobuf/FieldType;->MAP:Lcom/android/framework/protobuf/FieldType;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v1
.end method

.method public static blacklist forOneofMemberField(ILcom/android/framework/protobuf/FieldType;Lcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;ZLcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 20
    .param p0, "fieldNumber"    # I
    .param p1, "fieldType"    # Lcom/android/framework/protobuf/FieldType;
    .param p2, "oneof"    # Lcom/android/framework/protobuf/OneofInfo;
    .param p4, "enforceUtf8"    # Z
    .param p5, "enumVerifier"    # Lcom/android/framework/protobuf/Internal$EnumVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/framework/protobuf/FieldType;",
            "Lcom/android/framework/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Lcom/android/framework/protobuf/Internal$EnumVerifier;",
            ")",
            "Lcom/android/framework/protobuf/FieldInfo;"
        }
    .end annotation

    .line 233
    .local p3, "oneofStoredType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 234
    const-string v0, "fieldType"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    const-string v0, "oneof"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    const-string v0, "oneofStoredType"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    invoke-virtual {p1}, Lcom/android/framework/protobuf/FieldType;->isScalar()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 244
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p0

    move-object v3, p1

    move/from16 v8, p4

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 238
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oneof is only supported for scalar fields. Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is of type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist forPackedField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 18
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/android/framework/protobuf/FieldType;
    .param p3, "cachedSizeField"    # Ljava/lang/reflect/Field;

    .line 92
    move-object/from16 v3, p2

    invoke-static {p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 93
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    const-string v0, "fieldType"

    invoke-static {v3, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/framework/protobuf/FieldType;->MESSAGE_LIST:Lcom/android/framework/protobuf/FieldType;

    if-eq v3, v0, :cond_2a

    sget-object v0, Lcom/android/framework/protobuf/FieldType;->GROUP_LIST:Lcom/android/framework/protobuf/FieldType;

    if-eq v3, v0, :cond_2a

    .line 98
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 96
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist forPackedFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 20
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/android/framework/protobuf/FieldType;
    .param p3, "enumVerifier"    # Lcom/android/framework/protobuf/Internal$EnumVerifier;
    .param p4, "cachedSizeField"    # Ljava/lang/reflect/Field;

    .line 163
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 164
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    new-instance v1, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v1 .. v14}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v1
.end method

.method public static blacklist forProto2OptionalField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 21
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/android/framework/protobuf/FieldType;
    .param p3, "presenceField"    # Ljava/lang/reflect/Field;
    .param p4, "presenceMask"    # I
    .param p5, "enforceUtf8"    # Z
    .param p6, "enumVerifier"    # Lcom/android/framework/protobuf/Internal$EnumVerifier;

    .line 190
    move-object/from16 v5, p3

    invoke-static {p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 191
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    const-string v0, "fieldType"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    const-string v0, "presenceField"

    invoke-static {v5, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    if-eqz v5, :cond_3c

    invoke-static/range {p4 .. p4}, Lcom/android/framework/protobuf/FieldInfo;->isExactlyOneBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_21

    move/from16 v6, p4

    goto :goto_3e

    .line 195
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "presenceMask must have exactly one bit set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_3c
    move/from16 v6, p4

    .line 198
    :goto_3e
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static blacklist forProto2RequiredField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 21
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/android/framework/protobuf/FieldType;
    .param p3, "presenceField"    # Ljava/lang/reflect/Field;
    .param p4, "presenceMask"    # I
    .param p5, "enforceUtf8"    # Z
    .param p6, "enumVerifier"    # Lcom/android/framework/protobuf/Internal$EnumVerifier;

    .line 275
    move-object/from16 v5, p3

    invoke-static {p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 276
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    const-string v0, "fieldType"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    const-string v0, "presenceField"

    invoke-static {v5, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    if-eqz v5, :cond_3c

    invoke-static/range {p4 .. p4}, Lcom/android/framework/protobuf/FieldInfo;->isExactlyOneBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_21

    move/from16 v6, p4

    goto :goto_3e

    .line 280
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "presenceMask must have exactly one bit set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_3c
    move/from16 v6, p4

    .line 283
    :goto_3e
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static blacklist forRepeatedMessageField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 19
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/android/framework/protobuf/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/android/framework/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/framework/protobuf/FieldInfo;"
        }
    .end annotation

    .line 117
    .local p3, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 118
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string v0, "fieldType"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    const-string v0, "messageClass"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    new-instance v1, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v14}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v1
.end method

.method private static blacklist isExactlyOneBitSet(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 576
    if-eqz p0, :cond_9

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static blacklist newBuilder()Lcom/android/framework/protobuf/FieldInfo$Builder;
    .registers 2

    .line 447
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/FieldInfo$Builder;-><init>(Lcom/android/framework/protobuf/FieldInfo$1;)V

    return-object v0
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/framework/protobuf/FieldInfo;)I
    .registers 4
    .param p1, "o"    # Lcom/android/framework/protobuf/FieldInfo;

    .line 385
    iget v0, p0, Lcom/android/framework/protobuf/FieldInfo;->fieldNumber:I

    iget v1, p1, Lcom/android/framework/protobuf/FieldInfo;->fieldNumber:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 39
    check-cast p1, Lcom/android/framework/protobuf/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldInfo;->compareTo(Lcom/android/framework/protobuf/FieldInfo;)I

    move-result p1

    return p1
.end method

.method public blacklist getCachedSizeField()Ljava/lang/reflect/Field;
    .registers 2

    .line 426
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public blacklist getEnumVerifier()Lcom/android/framework/protobuf/Internal$EnumVerifier;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public blacklist getField()Ljava/lang/reflect/Field;
    .registers 2

    .line 356
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public blacklist getFieldNumber()I
    .registers 2

    .line 351
    iget v0, p0, Lcom/android/framework/protobuf/FieldInfo;->fieldNumber:I

    return v0
.end method

.method public blacklist getListElementType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getMapDefaultEntry()Ljava/lang/Object;
    .registers 2

    .line 402
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getMessageFieldClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 434
    sget-object v0, Lcom/android/framework/protobuf/FieldInfo$1;->$SwitchMap$com$google$protobuf$FieldType:[I

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldInfo;->type:Lcom/android/framework/protobuf/FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 442
    const/4 v0, 0x0

    return-object v0

    .line 440
    :pswitch_f
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    return-object v0

    .line 437
    :pswitch_12
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1f

    :cond_1d
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    :goto_1f
    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public blacklist getOneof()Lcom/android/framework/protobuf/OneofInfo;
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->oneof:Lcom/android/framework/protobuf/OneofInfo;

    return-object v0
.end method

.method public blacklist getOneofStoredType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getPresenceField()Ljava/lang/reflect/Field;
    .registers 2

    .line 398
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public blacklist getPresenceMask()I
    .registers 2

    .line 410
    iget v0, p0, Lcom/android/framework/protobuf/FieldInfo;->presenceMask:I

    return v0
.end method

.method public blacklist getType()Lcom/android/framework/protobuf/FieldType;
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->type:Lcom/android/framework/protobuf/FieldType;

    return-object v0
.end method

.method public blacklist isEnforceUtf8()Z
    .registers 2

    .line 422
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldInfo;->enforceUtf8:Z

    return v0
.end method

.method public blacklist isRequired()Z
    .registers 2

    .line 415
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldInfo;->required:Z

    return v0
.end method
