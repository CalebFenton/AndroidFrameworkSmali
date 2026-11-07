.class public final Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;
.super Ljava/lang/Object;
.source "FieldInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/FieldInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist cachedSizeField:Ljava/lang/reflect/Field;

.field private blacklist enforceUtf8:Z

.field private blacklist enumVerifier:Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

.field private blacklist field:Ljava/lang/reflect/Field;

.field private blacklist fieldNumber:I

.field private blacklist mapDefaultEntry:Ljava/lang/Object;

.field private blacklist oneof:Landroid/net/connectivity/com/google/protobuf/OneofInfo;

.field private blacklist oneofStoredType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist presenceField:Ljava/lang/reflect/Field;

.field private blacklist presenceMask:I

.field private blacklist required:Z

.field private blacklist type:Landroid/net/connectivity/com/google/protobuf/FieldType;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/FieldInfo$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/net/connectivity/com/google/protobuf/FieldInfo$1;

    .line 451
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/net/connectivity/com/google/protobuf/FieldInfo;
    .registers 9

    .line 542
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->oneof:Landroid/net/connectivity/com/google/protobuf/OneofInfo;

    if-eqz v0, :cond_15

    .line 543
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->type:Landroid/net/connectivity/com/google/protobuf/FieldType;

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->oneof:Landroid/net/connectivity/com/google/protobuf/OneofInfo;

    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->oneofStoredType:Ljava/lang/Class;

    iget-boolean v5, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->enforceUtf8:Z

    iget-object v6, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->enumVerifier:Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    invoke-static/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->forOneofMemberField(ILandroid/net/connectivity/com/google/protobuf/FieldType;Landroid/net/connectivity/com/google/protobuf/OneofInfo;Ljava/lang/Class;ZLandroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;)Landroid/net/connectivity/com/google/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    .line 546
    :cond_15
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->mapDefaultEntry:Ljava/lang/Object;

    if-eqz v0, :cond_26

    .line 547
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->mapDefaultEntry:Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->enumVerifier:Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->forMapField(Ljava/lang/reflect/Field;ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;)Landroid/net/connectivity/com/google/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    .line 549
    :cond_26
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->presenceField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_54

    .line 550
    iget-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->required:Z

    if-eqz v0, :cond_41

    .line 551
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->type:Landroid/net/connectivity/com/google/protobuf/FieldType;

    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->presenceField:Ljava/lang/reflect/Field;

    iget v5, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->presenceMask:I

    iget-boolean v6, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->enforceUtf8:Z

    iget-object v7, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->enumVerifier:Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    invoke-static/range {v1 .. v7}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->forProto2RequiredField(Ljava/lang/reflect/Field;ILandroid/net/connectivity/com/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZLandroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;)Landroid/net/connectivity/com/google/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    .line 554
    :cond_41
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->type:Landroid/net/connectivity/com/google/protobuf/FieldType;

    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->presenceField:Ljava/lang/reflect/Field;

    iget v5, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->presenceMask:I

    iget-boolean v6, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->enforceUtf8:Z

    iget-object v7, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->enumVerifier:Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    invoke-static/range {v1 .. v7}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->forProto2OptionalField(Ljava/lang/reflect/Field;ILandroid/net/connectivity/com/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZLandroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;)Landroid/net/connectivity/com/google/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    .line 558
    :cond_54
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->enumVerifier:Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    if-eqz v0, :cond_78

    .line 559
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->cachedSizeField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_69

    .line 560
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->type:Landroid/net/connectivity/com/google/protobuf/FieldType;

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->enumVerifier:Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->forFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILandroid/net/connectivity/com/google/protobuf/FieldType;Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;)Landroid/net/connectivity/com/google/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    .line 562
    :cond_69
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->type:Landroid/net/connectivity/com/google/protobuf/FieldType;

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->enumVerifier:Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->cachedSizeField:Ljava/lang/reflect/Field;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->forPackedFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILandroid/net/connectivity/com/google/protobuf/FieldType;Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)Landroid/net/connectivity/com/google/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    .line 566
    :cond_78
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->cachedSizeField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_89

    .line 567
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->type:Landroid/net/connectivity/com/google/protobuf/FieldType;

    iget-boolean v3, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->enforceUtf8:Z

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->forField(Ljava/lang/reflect/Field;ILandroid/net/connectivity/com/google/protobuf/FieldType;Z)Landroid/net/connectivity/com/google/protobuf/FieldInfo;

    move-result-object v0

    return-object v0

    .line 569
    :cond_89
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->fieldNumber:I

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->type:Landroid/net/connectivity/com/google/protobuf/FieldType;

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->cachedSizeField:Ljava/lang/reflect/Field;

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/FieldInfo;->forPackedField(Ljava/lang/reflect/Field;ILandroid/net/connectivity/com/google/protobuf/FieldType;Ljava/lang/reflect/Field;)Landroid/net/connectivity/com/google/protobuf/FieldInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist withCachedSizeField(Ljava/lang/reflect/Field;)Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;
    .registers 2
    .param p1, "cachedSizeField"    # Ljava/lang/reflect/Field;

    .line 537
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->cachedSizeField:Ljava/lang/reflect/Field;

    .line 538
    return-object p0
.end method

.method public blacklist withEnforceUtf8(Z)Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;
    .registers 2
    .param p1, "enforceUtf8"    # Z

    .line 527
    iput-boolean p1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->enforceUtf8:Z

    .line 528
    return-object p0
.end method

.method public blacklist withEnumVerifier(Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;)Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;
    .registers 2
    .param p1, "enumVerifier"    # Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    .line 532
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->enumVerifier:Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;

    .line 533
    return-object p0
.end method

.method public blacklist withField(Ljava/lang/reflect/Field;)Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;
    .registers 4
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 472
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->oneof:Landroid/net/connectivity/com/google/protobuf/OneofInfo;

    if-nez v0, :cond_7

    .line 475
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    .line 476
    return-object p0

    .line 473
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set field when building a oneof."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist withFieldNumber(I)Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;
    .registers 2
    .param p1, "fieldNumber"    # I

    .line 487
    iput p1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->fieldNumber:I

    .line 488
    return-object p0
.end method

.method public blacklist withMapDefaultEntry(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;
    .registers 2
    .param p1, "mapDefaultEntry"    # Ljava/lang/Object;

    .line 522
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->mapDefaultEntry:Ljava/lang/Object;

    .line 523
    return-object p0
.end method

.method public blacklist withOneof(Landroid/net/connectivity/com/google/protobuf/OneofInfo;Ljava/lang/Class;)Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;
    .registers 5
    .param p1, "oneof"    # Landroid/net/connectivity/com/google/protobuf/OneofInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;"
        }
    .end annotation

    .line 507
    .local p2, "oneofStoredType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->presenceField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_d

    .line 511
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->oneof:Landroid/net/connectivity/com/google/protobuf/OneofInfo;

    .line 512
    iput-object p2, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->oneofStoredType:Ljava/lang/Class;

    .line 513
    return-object p0

    .line 508
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set oneof when field or presenceField have been provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist withPresence(Ljava/lang/reflect/Field;I)Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;
    .registers 4
    .param p1, "presenceField"    # Ljava/lang/reflect/Field;
    .param p2, "presenceMask"    # I

    .line 493
    const-string v0, "presenceField"

    invoke-static {p1, v0}, Landroid/net/connectivity/com/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->presenceField:Ljava/lang/reflect/Field;

    .line 494
    iput p2, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->presenceMask:I

    .line 495
    return-object p0
.end method

.method public blacklist withRequired(Z)Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;
    .registers 2
    .param p1, "required"    # Z

    .line 517
    iput-boolean p1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->required:Z

    .line 518
    return-object p0
.end method

.method public blacklist withType(Landroid/net/connectivity/com/google/protobuf/FieldType;)Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;
    .registers 2
    .param p1, "type"    # Landroid/net/connectivity/com/google/protobuf/FieldType;

    .line 481
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/FieldInfo$Builder;->type:Landroid/net/connectivity/com/google/protobuf/FieldType;

    .line 482
    return-object p0
.end method
