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
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final UINT8_MASK:I = 0xff

.field private static final UINT8_MAX:I = 0xff

.field private static final UINT8_MIN:I

.field private static final sEnumValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;[I>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/lang/Enum;)I
    .locals 1
    .param p0, "enumValue"    # Ljava/lang/Enum;

    #@0
    .prologue
    invoke-static {p0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->getEnumValue(Ljava/lang/Enum;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/Class;I)Ljava/lang/Enum;
    .locals 1
    .param p0, "enumType"    # Ljava/lang/Class;
    .param p1, "value"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->getEnumFromValue(Ljava/lang/Class;I)Ljava/lang/Enum;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 40
    const-class v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->TAG:Ljava/lang/String;

    #@8
    .line 138
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    .line 137
    sput-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->sEnumValues:Ljava/util/HashMap;

    #@f
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getEnumFromValue(Ljava/lang/Class;I)Ljava/lang/Enum;
    .locals 10
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 193
    sget-object v6, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->sEnumValues:Ljava/util/HashMap;

    #@4
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, [I

    #@a
    .line 194
    .local v2, "registeredValues":[I
    if-eqz v2, :cond_3

    #@c
    .line 195
    const/4 v1, -0x1

    #@d
    .line 197
    .local v1, "ordinal":I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    array-length v6, v2

    #@f
    if-ge v0, v6, :cond_0

    #@11
    .line 198
    aget v6, v2, v0

    #@13
    if-ne v6, p1, :cond_2

    #@15
    .line 199
    move v1, v0

    #@16
    .line 207
    .end local v0    # "i":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, [Ljava/lang/Enum;

    #@1c
    .line 209
    .local v3, "values":[Ljava/lang/Enum;, "[TT;"
    if-ltz v1, :cond_1

    #@1e
    array-length v6, v3

    #@1f
    if-lt v1, v6, :cond_5

    #@21
    .line 210
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@23
    .line 212
    const-string/jumbo v7, "Argument \'value\' (%d) was not a valid enum value for type %s (registered? %b)"

    #@26
    .line 211
    const/4 v8, 0x3

    #@27
    new-array v8, v8, [Ljava/lang/Object;

    #@29
    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v9

    #@2d
    aput-object v9, v8, v5

    #@2f
    .line 215
    aput-object p0, v8, v4

    #@31
    if-eqz v2, :cond_4

    #@33
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@36
    move-result-object v4

    #@37
    const/4 v5, 0x2

    #@38
    aput-object v4, v8, v5

    #@3a
    .line 211
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    .line 210
    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v6

    #@42
    .line 197
    .end local v3    # "values":[Ljava/lang/Enum;, "[TT;"
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_0

    #@45
    .line 204
    .end local v0    # "i":I
    .end local v1    # "ordinal":I
    :cond_3
    move v1, p1

    #@46
    .restart local v1    # "ordinal":I
    goto :goto_1

    #@47
    .restart local v3    # "values":[Ljava/lang/Enum;, "[TT;"
    :cond_4
    move v4, v5

    #@48
    .line 215
    goto :goto_2

    #@49
    .line 218
    :cond_5
    aget-object v4, v3, v1

    #@4b
    return-object v4
.end method

.method private static getEnumValue(Ljava/lang/Enum;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 173
    .local p0, "enumValue":Ljava/lang/Enum;, "TT;"
    sget-object v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->sEnumValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {p0}, Ljava/lang/Enum;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, [I

    #@c
    .line 175
    .local v1, "values":[I
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    #@f
    move-result v0

    #@10
    .line 176
    .local v0, "ordinal":I
    if-eqz v1, :cond_0

    #@12
    .line 177
    aget v2, v1, v0

    #@14
    return v2

    #@15
    .line 180
    :cond_0
    return v0
.end method

.method public static registerEnumValues(Ljava/lang/Class;[I)V
    .locals 3
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;[I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 149
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Ljava/lang/Enum;

    #@6
    array-length v0, v0

    #@7
    array-length v1, p1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Expected values array to be the same size as the enumTypes values "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 152
    array-length v2, p1

    #@19
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 152
    const-string/jumbo v2, " for type "

    #@20
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 150
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 158
    :cond_0
    sget-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->sEnumValues:Ljava/util/HashMap;

    #@32
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 148
    return-void
.end method


# virtual methods
.method public createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 1
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 103
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    return-object v0
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 8
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 108
    if-eq p2, v7, :cond_0

    #@4
    if-nez p2, :cond_1

    #@6
    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    #@9
    move-result-object v3

    #@a
    instance-of v3, v3, Ljava/lang/Class;

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 110
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/lang/Class;

    #@14
    .line 112
    .local v2, "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 120
    const/4 v3, 0x2

    #@1b
    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    #@1d
    const-class v4, Ljava/lang/String;

    #@1f
    const/4 v5, 0x0

    #@20
    aput-object v4, v3, v5

    #@22
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@24
    const/4 v5, 0x1

    #@25
    aput-object v4, v3, v5

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 121
    return v7

    #@2b
    .line 125
    :catch_0
    move-exception v1

    #@2c
    .line 127
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->TAG:Ljava/lang/String;

    #@2e
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "Can\'t marshal class "

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    const-string/jumbo v5, "; not accessible"

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 133
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v2    # "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return v6

    #@4d
    .line 122
    .restart local v2    # "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v0

    #@4e
    .line 124
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->TAG:Ljava/lang/String;

    #@50
    new-instance v4, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v5, "Can\'t marshal class "

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    const-string/jumbo v5, "; no default constructor"

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v4

    #@6b
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    goto :goto_0
.end method
