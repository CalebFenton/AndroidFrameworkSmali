.class public Landroid/net/connectivity/com/android/net/module/util/Struct;
.super Ljava/lang/Object;
.source "Struct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/android/net/module/util/Struct$Field;,
        Landroid/net/connectivity/com/android/net/module/util/Struct$Type;,
        Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;,
        Landroid/net/connectivity/com/android/net/module/util/Struct$Computed;,
        Landroid/net/connectivity/com/android/net/module/util/Struct$S64;,
        Landroid/net/connectivity/com/android/net/module/util/Struct$U32;,
        Landroid/net/connectivity/com/android/net/module/util/Struct$S32;,
        Landroid/net/connectivity/com/android/net/module/util/Struct$U8;,
        Landroid/net/connectivity/com/android/net/module/util/Struct$Bool;
    }
.end annotation


# static fields
.field private static blacklist sFieldCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class;",
            "[",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 169
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/net/connectivity/com/android/net/module/util/Struct;->sFieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist allFieldsFinal([Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;Z)Z
    .registers 7
    .param p0, "fields"    # [Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    .param p1, "immutable"    # Z

    .line 278
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_17

    aget-object v3, p0, v2

    .line 279
    .local v3, "fi":Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    iget-object v4, v3, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v4

    if-eq v4, p1, :cond_14

    return v1

    .line 278
    .end local v3    # "fi":Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 281
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist bigIntegerToU64Bytes(Ljava/math/BigInteger;Ljava/nio/ByteOrder;Landroid/net/connectivity/com/android/net/module/util/Struct$Type;)[B
    .registers 8
    .param p0, "bigInteger"    # Ljava/math/BigInteger;
    .param p1, "order"    # Ljava/nio/ByteOrder;
    .param p2, "type"    # Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    .line 347
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 348
    .local v0, "bigIntegerBytes":[B
    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getLast8Bytes([B)[B

    move-result-object v1

    .line 350
    .local v1, "output":[B
    sget-object v2, Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->U64:Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    if-ne p2, v2, :cond_23

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v2, :cond_23

    .line 351
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    const/4 v3, 0x4

    if-ge v2, v3, :cond_23

    .line 352
    aget-byte v3, v1, v2

    .line 353
    .local v3, "tmp":B
    rsub-int/lit8 v4, v2, 0x7

    aget-byte v4, v1, v4

    aput-byte v4, v1, v2

    .line 354
    rsub-int/lit8 v4, v2, 0x7

    aput-byte v3, v1, v4

    .line 351
    .end local v3    # "tmp":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 357
    .end local v2    # "i":I
    :cond_23
    return-object v1
.end method

.method private static blacklist checkAnnotationType(Landroid/net/connectivity/com/android/net/module/util/Struct$Field;Ljava/lang/Class;)V
    .registers 5
    .param p0, "annotation"    # Landroid/net/connectivity/com/android/net/module/util/Struct$Field;
    .param p1, "fieldType"    # Ljava/lang/Class;

    .line 172
    invoke-interface {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->type()Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_a4

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->type()Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :pswitch_28
    const-class v0, Ljava/net/Inet6Address;

    if-ne p1, v0, :cond_7d

    return-void

    .line 210
    :pswitch_2d
    const-class v0, Ljava/net/Inet4Address;

    if-ne p1, v0, :cond_7d

    return-void

    .line 207
    :pswitch_32
    const-class v0, Landroid/net/MacAddress;

    if-ne p1, v0, :cond_7d

    return-void

    .line 200
    :pswitch_37
    const-class v0, [B

    if-ne p1, v0, :cond_7d

    .line 201
    invoke-interface {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->arraysize()I

    move-result v0

    if-lez v0, :cond_42

    .line 205
    return-void

    .line 202
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ByteArray size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    invoke-interface {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->arraysize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :pswitch_5f
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7d

    return-void

    .line 194
    :pswitch_64
    const-class v0, Ljava/math/BigInteger;

    if-ne p1, v0, :cond_7d

    return-void

    .line 190
    :pswitch_69
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7d

    return-void

    .line 183
    :pswitch_6e
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7d

    return-void

    .line 178
    :pswitch_73
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7d

    return-void

    .line 174
    :pswitch_78
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7d

    return-void

    .line 218
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid primitive data type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for annotation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 219
    invoke-interface {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->type()Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_6e
        :pswitch_69
        :pswitch_69
        :pswitch_64
        :pswitch_37
        :pswitch_32
        :pswitch_2d
        :pswitch_28
    .end packed-switch
.end method

.method private static blacklist checkByteArraySize([BLandroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;)V
    .registers 6
    .param p0, "array"    # [B
    .param p1, "fieldInfo"    # Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "null byte array for field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 644
    iget-object v0, p1, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->arraysize()I

    move-result v0

    .line 645
    .local v0, "annotationArraySize":I
    array-length v1, p0

    if-ne v1, v0, :cond_26

    return-void

    .line 646
    :cond_26
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byte array actual length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t match the declared array size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getAnnotationFieldCount(Ljava/lang/Class;)I
    .registers 7
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "count":I
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_18

    aget-object v4, v1, v3

    .line 272
    .local v4, "field":Ljava/lang/reflect/Field;
    const-class v5, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_15

    add-int/lit8 v0, v0, 0x1

    .line 271
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 274
    :cond_18
    return v0
.end method

.method private static blacklist getClassFieldInfo(Ljava/lang/Class;)[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    .registers 10
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 545
    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->isStructSubclass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 551
    sget-object v0, Landroid/net/connectivity/com/android/net/module/util/Struct;->sFieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;

    .line 552
    .local v0, "cachedAnnotationFields":[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    if-eqz v0, :cond_11

    .line 553
    return-object v0

    .line 559
    :cond_11
    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getAnnotationFieldCount(Ljava/lang/Class;)I

    move-result v1

    new-array v1, v1, [Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;

    .line 560
    .local v1, "annotationFields":[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_d5

    aget-object v5, v2, v4

    .line 561
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_2c

    goto :goto_5f

    .line 562
    :cond_2c
    const-class v6, Landroid/net/connectivity/com/android/net/module/util/Struct$Computed;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_35

    goto :goto_5f

    .line 564
    :cond_35
    const-class v6, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    .line 565
    .local v6, "annotation":Landroid/net/connectivity/com/android/net/module/util/Struct$Field;
    if-eqz v6, :cond_a2

    .line 570
    invoke-interface {v6}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->order()I

    move-result v7

    if-ltz v7, :cond_7f

    invoke-interface {v6}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->order()I

    move-result v7

    array-length v8, v1

    if-ge v7, v8, :cond_7f

    .line 574
    invoke-interface {v6}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->order()I

    move-result v7

    aget-object v7, v1, v7

    if-nez v7, :cond_62

    .line 578
    invoke-interface {v6}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->order()I

    move-result v7

    new-instance v8, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;

    invoke-direct {v8, v6, v5}, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;-><init>(Landroid/net/connectivity/com/android/net/module/util/Struct$Field;Ljava/lang/reflect/Field;)V

    aput-object v8, v1, v7

    .line 560
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "annotation":Landroid/net/connectivity/com/android/net/module/util/Struct$Field;
    :goto_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 575
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v6    # "annotation":Landroid/net/connectivity/com/android/net/module/util/Struct$Field;
    :cond_62
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicated annotation order: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 576
    invoke-interface {v6}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->order()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 571
    :cond_7f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Annotation order: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->order()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is negative or non-consecutive"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 566
    :cond_a2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is missing the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    .line 567
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " annotation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 580
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "annotation":Landroid/net/connectivity/com/android/net/module/util/Struct$Field;
    :cond_d5
    sget-object v2, Landroid/net/connectivity/com/android/net/module/util/Struct;->sFieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    return-object v1

    .line 546
    .end local v0    # "cachedAnnotationFields":[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    .end local v1    # "annotationFields":[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    :cond_db
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a subclass of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 547
    const-class v2, Landroid/net/connectivity/com/android/net/module/util/Struct;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", its superclass is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getFieldLength(Landroid/net/connectivity/com/android/net/module/util/Struct$Field;)I
    .registers 5
    .param p0, "annotation"    # Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "length":I
    invoke-interface {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->type()Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_44

    .line 260
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->type()Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :pswitch_29
    const/16 v0, 0x10

    .line 258
    goto :goto_3e

    .line 254
    :pswitch_2c
    const/4 v0, 0x4

    .line 255
    goto :goto_3e

    .line 251
    :pswitch_2e
    const/4 v0, 0x6

    .line 252
    goto :goto_3e

    .line 248
    :pswitch_30
    invoke-interface {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->arraysize()I

    move-result v0

    .line 249
    goto :goto_3e

    .line 245
    :pswitch_35
    const/16 v0, 0x8

    .line 246
    goto :goto_3e

    .line 238
    :pswitch_38
    const/4 v0, 0x4

    .line 239
    goto :goto_3e

    .line 233
    :pswitch_3a
    const/4 v0, 0x2

    .line 234
    goto :goto_3e

    .line 228
    :pswitch_3c
    const/4 v0, 0x1

    .line 229
    nop

    .line 262
    :goto_3e
    invoke-interface {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->padding()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3c
        :pswitch_3a
        :pswitch_38
        :pswitch_35
        :pswitch_35
        :pswitch_3c
        :pswitch_3a
        :pswitch_38
        :pswitch_35
        :pswitch_3a
        :pswitch_38
        :pswitch_35
        :pswitch_35
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
        :pswitch_29
    .end packed-switch
.end method

.method private blacklist getFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 6
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 459
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 460
    :catch_5
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist getFieldValue(Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;)Ljava/lang/Object;
    .registers 8
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "fieldInfo"    # Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .line 363
    iget-object v0, p1, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    iget-object v1, p1, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->checkAnnotationType(Landroid/net/connectivity/com/android/net/module/util/Struct$Field;Ljava/lang/Class;)V

    .line 364
    iget-object v0, p1, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->type()Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide v3, 0xffffffffL

    const v5, 0xffff

    packed-switch v0, :pswitch_data_166

    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    invoke-interface {v2}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->type()Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :pswitch_41
    iget-object v0, p1, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->type()Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    move-result-object v0

    sget-object v3, Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->Ipv6Address:Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    if-ne v0, v3, :cond_4c

    goto :goto_4d

    :cond_4c
    move v1, v2

    .line 430
    .local v1, "isIpv6":Z
    :goto_4d
    if-eqz v1, :cond_52

    const/16 v0, 0x10

    goto :goto_53

    :cond_52
    const/4 v0, 0x4

    :goto_53
    new-array v0, v0, [B

    .line 431
    .local v0, "address":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 433
    if-eqz v1, :cond_61

    .line 436
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_5c
    invoke-static {v2, v0, v3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v2

    .local v2, "value":Ljava/lang/Object;
    goto :goto_65

    .line 439
    .end local v2    # "value":Ljava/lang/Object;
    :cond_61
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_65
    .catch Ljava/net/UnknownHostException; {:try_start_5c .. :try_end_65} :catch_67

    .line 443
    .restart local v2    # "value":Ljava/lang/Object;
    :goto_65
    goto/16 :goto_14f

    .line 441
    .end local v2    # "value":Ljava/lang/Object;
    :catch_67
    move-exception v2

    .line 442
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "illegal length of IP address"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 423
    .end local v0    # "address":[B
    .end local v1    # "isIpv6":Z
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :pswitch_70
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 424
    .local v0, "macAddress":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 425
    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v2

    .line 426
    .local v2, "value":Ljava/lang/Object;
    goto/16 :goto_14f

    .line 418
    .end local v0    # "macAddress":[B
    .end local v2    # "value":Ljava/lang/Object;
    :pswitch_7c
    iget-object v0, p1, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->arraysize()I

    move-result v0

    new-array v0, v0, [B

    .line 419
    .local v0, "array":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 420
    move-object v2, v0

    .line 421
    .restart local v2    # "value":Ljava/lang/Object;
    goto/16 :goto_14f

    .line 415
    .end local v0    # "array":[B
    .end local v2    # "value":Ljava/lang/Object;
    :pswitch_8a
    sget-object v0, Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->UBE64:Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    invoke-static {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->readBigInteger(Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/android/net/module/util/Struct$Type;)Ljava/math/BigInteger;

    move-result-object v2

    .line 416
    .restart local v2    # "value":Ljava/lang/Object;
    goto/16 :goto_14f

    .line 408
    .end local v2    # "value":Ljava/lang/Object;
    :pswitch_92
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_a8

    .line 409
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/Object;
    goto/16 :goto_14f

    .line 411
    .end local v2    # "value":Ljava/lang/Object;
    :cond_a8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 413
    .restart local v2    # "value":Ljava/lang/Object;
    goto/16 :goto_14f

    .line 401
    .end local v2    # "value":Ljava/lang/Object;
    :pswitch_b2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_ca

    .line 402
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/Object;
    goto/16 :goto_14f

    .line 404
    .end local v2    # "value":Ljava/lang/Object;
    :cond_ca
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 406
    .restart local v2    # "value":Ljava/lang/Object;
    goto/16 :goto_14f

    .line 394
    .end local v2    # "value":Ljava/lang/Object;
    :pswitch_d6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_ec

    .line 395
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    and-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_14f

    .line 397
    .end local v2    # "value":Ljava/lang/Object;
    :cond_ec
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 399
    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_14f

    .line 387
    .end local v2    # "value":Ljava/lang/Object;
    :pswitch_f6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 388
    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_14f

    .line 384
    .end local v2    # "value":Ljava/lang/Object;
    :pswitch_ff
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    .line 385
    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_14f

    .line 381
    .end local v2    # "value":Ljava/lang/Object;
    :pswitch_108
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 382
    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_14f

    .line 378
    .end local v2    # "value":Ljava/lang/Object;
    :pswitch_111
    sget-object v0, Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->U64:Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    invoke-static {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->readBigInteger(Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/android/net/module/util/Struct$Type;)Ljava/math/BigInteger;

    move-result-object v2

    .line 379
    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_14f

    .line 391
    .end local v2    # "value":Ljava/lang/Object;
    :pswitch_118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 392
    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_14f

    .line 375
    .end local v2    # "value":Ljava/lang/Object;
    :pswitch_121
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 376
    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_14f

    .line 372
    .end local v2    # "value":Ljava/lang/Object;
    :pswitch_12c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 373
    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_14f

    .line 369
    .end local v2    # "value":Ljava/lang/Object;
    :pswitch_136
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    .line 370
    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_14f

    .line 366
    .end local v2    # "value":Ljava/lang/Object;
    :pswitch_142
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-eqz v0, :cond_149

    goto :goto_14a

    :cond_149
    move v1, v2

    :goto_14a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 367
    .restart local v2    # "value":Ljava/lang/Object;
    nop

    .line 450
    :goto_14f
    iget-object v0, p1, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->padding()I

    move-result v0

    if-lez v0, :cond_165

    .line 451
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p1, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    invoke-interface {v1}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->padding()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 453
    :cond_165
    return-object v2

    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_142
        :pswitch_136
        :pswitch_12c
        :pswitch_121
        :pswitch_118
        :pswitch_111
        :pswitch_108
        :pswitch_ff
        :pswitch_f6
        :pswitch_118
        :pswitch_d6
        :pswitch_b2
        :pswitch_92
        :pswitch_8a
        :pswitch_7c
        :pswitch_70
        :pswitch_41
        :pswitch_41
    .end packed-switch
.end method

.method private static blacklist getLast8Bytes([B)[B
    .registers 6
    .param p0, "input"    # [B

    .line 323
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 324
    .local v1, "tmp":[B
    array-length v2, p0

    sub-int/2addr v2, v0

    .line 326
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    array-length v4, p0

    rsub-int/lit8 v4, v4, 0x8

    .line 328
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    array-length v4, p0

    .line 329
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 324
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    return-object v1
.end method

.method public static blacklist getSize(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)I"
        }
    .end annotation

    .line 665
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getClassFieldInfo(Ljava/lang/Class;)[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;

    move-result-object v0

    .line 666
    .local v0, "fieldInfos":[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getSizeInternal([Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;)I

    move-result v1

    return v1
.end method

.method private static blacklist getSizeInternal([Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;)I
    .registers 6
    .param p0, "fieldInfos"    # [Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;

    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, "size":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    .line 633
    .local v3, "fi":Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    iget-object v4, v3, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    invoke-static {v4}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getFieldLength(Landroid/net/connectivity/com/android/net/module/util/Struct$Field;)I

    move-result v4

    add-int/2addr v0, v4

    .line 632
    .end local v3    # "fi":Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 635
    :cond_11
    return v0
.end method

.method private static blacklist hasBothMutableAndImmutableFields([Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;)Z
    .registers 4
    .param p0, "fields"    # [Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;

    .line 285
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->allFieldsFinal([Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 286
    invoke-static {p0, v2}, Landroid/net/connectivity/com/android/net/module/util/Struct;->allFieldsFinal([Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;Z)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_10

    :cond_f
    move v0, v2

    .line 285
    :goto_10
    return v0
.end method

.method private static blacklist isStructSubclass(Ljava/lang/Class;)Z
    .registers 3
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 266
    if-eqz p0, :cond_e

    const-class v0, Landroid/net/connectivity/com/android/net/module/util/Struct;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eq v0, p0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static blacklist matchConstructor(Ljava/lang/reflect/Constructor;[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;)Z
    .registers 7
    .param p0, "cons"    # Ljava/lang/reflect/Constructor;
    .param p1, "fields"    # [Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;

    .line 290
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 291
    .local v0, "paramTypes":[Ljava/lang/Class;
    array-length v1, v0

    array-length v2, p1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_a

    return v3

    .line 292
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_22

    .line 293
    aget-object v2, v0, v1

    aget-object v4, p1, v1

    iget-object v4, v4, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v3

    .line 292
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 295
    .end local v1    # "i":I
    :cond_22
    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist parse(Ljava/lang/Class;Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 12
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .line 594
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getClassFieldInfo(Ljava/lang/Class;)[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;

    move-result-object v0

    .line 595
    .local v0, "foundFields":[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->hasBothMutableAndImmutableFields([Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 599
    const/4 v1, 0x0

    .line 600
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x0

    .line 601
    .local v2, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 602
    .local v3, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_13
    if-ge v6, v4, :cond_29

    aget-object v7, v3, v6

    .line 603
    .local v7, "cons":Ljava/lang/reflect/Constructor;
    invoke-static {v7, v0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->matchConstructor(Ljava/lang/reflect/Constructor;[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;)Z

    move-result v8

    if-eqz v8, :cond_1e

    move-object v1, v7

    .line 604
    :cond_1e
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_26

    move-object v2, v7

    .line 602
    .end local v7    # "cons":Ljava/lang/reflect/Constructor;
    :cond_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 607
    :cond_29
    if-nez v1, :cond_36

    if-eqz v2, :cond_2e

    goto :goto_36

    .line 608
    :cond_2e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Fail to find available constructor"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    throw v4

    .line 610
    .restart local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :cond_36
    :goto_36
    if-eqz v1, :cond_4f

    .line 611
    array-length v4, v0

    new-array v4, v4, [Ljava/lang/Object;

    .line 612
    .local v4, "args":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3c
    array-length v6, v4

    if-ge v5, v6, :cond_4a

    .line 613
    aget-object v6, v0, v5

    invoke-static {p1, v6}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getFieldValue(Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 612
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 615
    .end local v5    # "i":I
    :cond_4a
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 618
    .end local v4    # "args":[Ljava/lang/Object;
    :cond_4f
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 619
    .local v4, "instance":Ljava/lang/Object;
    array-length v6, v0

    :goto_56
    if-ge v5, v6, :cond_66

    aget-object v7, v0, v5

    .line 620
    .local v7, "fi":Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    iget-object v8, v7, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {p1, v7}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getFieldValue(Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 619
    .end local v7    # "fi":Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 622
    :cond_66
    return-object v4

    .line 596
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "instance":Ljava/lang/Object;
    :cond_67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Class has both final and non-final fields"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    throw v1
    :try_end_6f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_6f} :catch_78
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_6f} :catch_78
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6f} :catch_78
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_6f} :catch_6f

    .line 625
    .end local v0    # "foundFields":[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    .restart local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :catch_6f
    move-exception v0

    .line 626
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Fail to read raw data from ByteBuffer"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 623
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    :catch_78
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Fail to create a instance from constructor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist putFieldValue(Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;Ljava/lang/Object;)V
    .registers 9
    .param p0, "output"    # Ljava/nio/ByteBuffer;
    .param p1, "fieldInfo"    # Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .line 467
    iget-object v0, p1, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->type()Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0xffffffffL

    const v4, 0xffff

    packed-switch v0, :pswitch_data_176

    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    invoke-interface {v2}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->type()Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :pswitch_35
    move-object v0, p2

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 534
    .local v0, "address":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 535
    goto/16 :goto_166

    .line 528
    .end local v0    # "address":[B
    :pswitch_41
    move-object v0, p2

    check-cast v0, Landroid/net/MacAddress;

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    .line 529
    .local v0, "macAddress":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 530
    goto/16 :goto_166

    .line 524
    .end local v0    # "macAddress":[B
    :pswitch_4d
    move-object v0, p2

    check-cast v0, [B

    invoke-static {v0, p1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->checkByteArraySize([BLandroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;)V

    .line 525
    move-object v0, p2

    check-cast v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 526
    goto/16 :goto_166

    .line 521
    :pswitch_5b
    move-object v0, p2

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->UBE64:Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    invoke-static {v0, v2, v3}, Landroid/net/connectivity/com/android/net/module/util/Struct;->bigIntegerToU64Bytes(Ljava/math/BigInteger;Ljava/nio/ByteOrder;Landroid/net/connectivity/com/android/net/module/util/Struct$Type;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 522
    goto/16 :goto_166

    .line 514
    :pswitch_6d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v2, :cond_85

    .line 515
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto/16 :goto_166

    .line 517
    :cond_85
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 519
    goto/16 :goto_166

    .line 506
    :pswitch_91
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v4, :cond_ab

    .line 507
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    .line 508
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v2, v4

    long-to-int v0, v2

    .line 507
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_166

    .line 510
    :cond_ab
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v2, v4

    long-to-int v0, v2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 512
    goto/16 :goto_166

    .line 499
    :pswitch_b9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v2, :cond_d3

    .line 500
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v4

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto/16 :goto_166

    .line 502
    :cond_d3
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v4

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 504
    goto/16 :goto_166

    .line 496
    :pswitch_e1
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 497
    goto/16 :goto_166

    .line 493
    :pswitch_ed
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 494
    goto/16 :goto_166

    .line 490
    :pswitch_f9
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 491
    goto :goto_166

    .line 487
    :pswitch_104
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 488
    goto :goto_166

    .line 484
    :pswitch_10f
    move-object v0, p2

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->U64:Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    invoke-static {v0, v2, v3}, Landroid/net/connectivity/com/android/net/module/util/Struct;->bigIntegerToU64Bytes(Ljava/math/BigInteger;Ljava/nio/ByteOrder;Landroid/net/connectivity/com/android/net/module/util/Struct$Type;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 485
    goto :goto_166

    .line 481
    :pswitch_120
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 482
    goto :goto_166

    .line 478
    :pswitch_12b
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v2, v4

    long-to-int v0, v2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 479
    goto :goto_166

    .line 475
    :pswitch_138
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v4

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 476
    goto :goto_166

    .line 472
    :pswitch_145
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 473
    goto :goto_166

    .line 469
    :pswitch_153
    if-eqz p2, :cond_160

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_160

    const/4 v0, 0x1

    goto :goto_161

    :cond_160
    move v0, v1

    :goto_161
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 470
    nop

    .line 541
    :goto_166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_167
    iget-object v2, p1, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    invoke-interface {v2}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->padding()I

    move-result v2

    if-ge v0, v2, :cond_175

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_167

    .line 542
    .end local v0    # "i":I
    :cond_175
    return-void

    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_153
        :pswitch_145
        :pswitch_138
        :pswitch_12b
        :pswitch_120
        :pswitch_10f
        :pswitch_104
        :pswitch_f9
        :pswitch_ed
        :pswitch_e1
        :pswitch_b9
        :pswitch_91
        :pswitch_6d
        :pswitch_5b
        :pswitch_4d
        :pswitch_41
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method private static blacklist readBigInteger(Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/android/net/module/util/Struct$Type;)Ljava/math/BigInteger;
    .registers 9
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    .line 310
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 311
    .local v1, "input":[B
    sget-object v2, Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->U64:Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_13

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v4, :cond_13

    move v2, v3

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    .line 312
    .local v2, "reverseBytes":Z
    :goto_14
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    if-ge v4, v0, :cond_27

    .line 313
    if-eqz v2, :cond_1d

    array-length v5, v1

    sub-int/2addr v5, v3

    sub-int/2addr v5, v4

    goto :goto_1e

    :cond_1d
    move v5, v4

    :goto_1e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v1, v5

    .line 312
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 315
    .end local v4    # "i":I
    :cond_27
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method private blacklist writeToByteBufferInternal(Ljava/nio/ByteBuffer;[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;)V
    .registers 8
    .param p1, "output"    # Ljava/nio/ByteBuffer;
    .param p2, "fieldInfos"    # [Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;

    .line 651
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1c

    aget-object v2, p2, v1

    .line 652
    .local v2, "fi":Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    iget-object v3, v2, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-direct {p0, v3}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    .line 654
    .local v3, "value":Ljava/lang/Object;
    :try_start_c
    invoke-static {p1, v2, v3}, Landroid/net/connectivity/com/android/net/module/util/Struct;->putFieldValue(Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/nio/BufferUnderflowException; {:try_start_c .. :try_end_f} :catch_13

    .line 657
    nop

    .line 651
    .end local v2    # "fi":Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    .end local v3    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 655
    .restart local v2    # "fi":Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    .restart local v3    # "value":Ljava/lang/Object;
    :catch_13
    move-exception v0

    .line 656
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Fail to fill raw data to ByteBuffer"

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 659
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .end local v2    # "fi":Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1c
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 700
    const/4 v0, 0x0

    if-eqz p1, :cond_55

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_55

    .line 702
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getClassFieldInfo(Ljava/lang/Class;)[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;

    move-result-object v1

    .line 703
    .local v1, "fieldInfos":[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    array-length v3, v1

    if-ge v2, v3, :cond_53

    .line 705
    :try_start_1a
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 706
    .local v3, "value":Ljava/lang/Object;
    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 714
    .local v4, "otherValue":Ljava/lang/Object;
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_2e} :catch_35

    if-nez v5, :cond_31

    return v0

    .line 717
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "otherValue":Ljava/lang/Object;
    :cond_31
    nop

    .line 703
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 715
    :catch_35
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot access field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    iget-object v5, v5, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 719
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "i":I
    :cond_53
    const/4 v0, 0x1

    return v0

    .line 700
    .end local v1    # "fieldInfos":[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    :cond_55
    :goto_55
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 724
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getClassFieldInfo(Ljava/lang/Class;)[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;

    move-result-object v0

    .line 725
    .local v0, "fieldInfos":[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 726
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_36

    .line 727
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-direct {p0, v3}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    .line 731
    .local v3, "value":Ljava/lang/Object;
    aget-object v4, v0, v2

    iget-object v4, v4, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, [B

    if-ne v4, v5, :cond_31

    .line 732
    move-object v4, v3

    check-cast v4, [B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_33

    .line 734
    :cond_31
    aput-object v3, v1, v2

    .line 726
    .end local v3    # "value":Ljava/lang/Object;
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 737
    .end local v2    # "i":I
    :cond_36
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getClassFieldInfo(Ljava/lang/Class;)[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;

    move-result-object v1

    .line 744
    .local v1, "fieldInfos":[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_87

    .line 745
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-direct {p0, v3}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    .line 747
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_32

    .line 748
    const-string v4, "null"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7a

    .line 749
    :cond_32
    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    invoke-interface {v4}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->type()Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    move-result-object v4

    sget-object v5, Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->ByteArray:Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    if-ne v4, v5, :cond_4f

    .line 750
    const-string v4, "0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    check-cast v5, [B

    invoke-static {v5}, Landroid/net/connectivity/com/android/net/module/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7a

    .line 751
    :cond_4f
    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    invoke-interface {v4}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->type()Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    move-result-object v4

    sget-object v5, Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->Ipv4Address:Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    if-eq v4, v5, :cond_70

    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;->annotation:Landroid/net/connectivity/com/android/net/module/util/Struct$Field;

    .line 752
    invoke-interface {v4}, Landroid/net/connectivity/com/android/net/module/util/Struct$Field;->type()Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    move-result-object v4

    sget-object v5, Landroid/net/connectivity/com/android/net/module/util/Struct$Type;->Ipv6Address:Landroid/net/connectivity/com/android/net/module/util/Struct$Type;

    if-ne v4, v5, :cond_68

    goto :goto_70

    .line 755
    :cond_68
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7a

    .line 753
    :cond_70
    :goto_70
    move-object v4, v3

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    :goto_7a
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_84

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .end local v3    # "value":Ljava/lang/Object;
    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 759
    .end local v2    # "i":I
    :cond_87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final blacklist writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "output"    # Ljava/nio/ByteBuffer;

    .line 675
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getClassFieldInfo(Ljava/lang/Class;)[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;

    move-result-object v0

    .line 676
    .local v0, "fieldInfos":[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToByteBufferInternal(Ljava/nio/ByteBuffer;[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;)V

    .line 677
    return-void
.end method

.method public final blacklist writeToBytes()[B
    .registers 2

    .line 695
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes(Ljava/nio/ByteOrder;)[B

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeToBytes(Ljava/nio/ByteOrder;)[B
    .registers 5
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .line 685
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getClassFieldInfo(Ljava/lang/Class;)[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;

    move-result-object v0

    .line 686
    .local v0, "fieldInfos":[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;
    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getSizeInternal([Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;)I

    move-result v1

    new-array v1, v1, [B

    .line 687
    .local v1, "output":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 688
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 689
    invoke-direct {p0, v2, v0}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToByteBufferInternal(Ljava/nio/ByteBuffer;[Landroid/net/connectivity/com/android/net/module/util/Struct$FieldInfo;)V

    .line 690
    return-object v1
.end method
