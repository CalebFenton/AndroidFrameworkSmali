.class public Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;
.super Ljava/lang/Object;
.source "MarshalQueryableEnum.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist UINT8_MASK:I = 0xff

.field private static final blacklist UINT8_MAX:I = 0xff

.field private static final blacklist UINT8_MIN:I

.field private static final blacklist sEnumValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;[I>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetEnumFromValue(Ljava/lang/Class;I)Ljava/lang/Enum;
    .registers 2

    invoke-static {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->getEnumFromValue(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetEnumValue(Ljava/lang/Enum;)I
    .registers 1

    invoke-static {p0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->getEnumValue(Ljava/lang/Enum;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const-class v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->TAG:Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->sEnumValues:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getEnumFromValue(Ljava/lang/Class;I)Ljava/lang/Enum;
    .registers 8
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 194
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->sEnumValues:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 195
    .local v0, "registeredValues":[I
    if-eqz v0, :cond_19

    .line 196
    const/4 v1, -0x1

    .line 198
    .local v1, "ordinal":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_18

    .line 199
    aget v3, v0, v2

    if-ne v3, p1, :cond_15

    .line 200
    move v1, v2

    .line 201
    goto :goto_18

    .line 198
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .end local v2    # "i":I
    :cond_18
    :goto_18
    goto :goto_1a

    .line 205
    .end local v1    # "ordinal":I
    :cond_19
    move v1, p1

    .line 208
    .restart local v1    # "ordinal":I
    :goto_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    .line 210
    .local v2, "values":[Ljava/lang/Enum;, "[TT;"
    if-ltz v1, :cond_29

    array-length v3, v2

    if-lt v1, v3, :cond_26

    goto :goto_29

    .line 219
    :cond_26
    aget-object v3, v2, v1

    return-object v3

    .line 211
    :cond_29
    :goto_29
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v0, :cond_33

    const/4 v5, 0x1

    goto :goto_34

    :cond_33
    const/4 v5, 0x0

    .line 216
    :goto_34
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v4, p0, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 212
    const-string v5, "Argument \'value\' (%d) was not a valid enum value for type %s (registered? %b)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist getEnumValue(Ljava/lang/Enum;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(TT;)I"
        }
    .end annotation

    .line 174
    .local p0, "enumValue":Ljava/lang/Enum;, "TT;"
    sget-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->sEnumValues:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 176
    .local v0, "values":[I
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 177
    .local v1, "ordinal":I
    if-eqz v0, :cond_15

    .line 178
    aget v2, v0, v1

    return v2

    .line 181
    :cond_15
    return v1
.end method

.method public static blacklist registerEnumValues(Ljava/lang/Class;[I)V
    .registers 5
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;[I)V"
        }
    .end annotation

    .line 150
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v0, v0

    array-length v1, p1

    if-ne v0, v1, :cond_10

    .line 159
    sget-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->sEnumValues:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void

    .line 151
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected values array to be the same size as the enumTypes values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .registers 4
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT;>;"
        }
    .end annotation

    .line 103
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-object v0
.end method

.method public blacklist isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .registers 9
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 109
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    const-string v0, "Can\'t marshal class "

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_8

    if-nez p2, :cond_67

    .line 110
    :cond_8
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_67

    .line 111
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 113
    .local v3, "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 121
    const/4 v4, 0x2

    :try_start_1d
    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_2a} :catch_49
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_2a} :catch_2b

    .line 122
    return v2

    .line 126
    :catch_2b
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "; not accessible"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 123
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_49
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "; no default constructor"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    nop

    .line 134
    .end local v3    # "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_67
    :goto_67
    return v1
.end method
