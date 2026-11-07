.class public abstract Landroid/hardware/camera2/utils/TypeReference;
.super Ljava/lang/Object;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/TypeReference$SpecializedTypeReference;,
        Landroid/hardware/camera2/utils/TypeReference$SpecializedBaseTypeReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mHash:I

.field private final greylist-max-o mType:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor greylist <init>()V
    .registers 4

    .line 62
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 66
    .local v0, "thisType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    .line 77
    iget-object v1, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 81
    iget-object v1, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    invoke-interface {v1}, Ljava/lang/reflect/Type;->hashCode()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/utils/TypeReference;->mHash:I

    .line 82
    return-void

    .line 78
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Including a type variable in a type reference is not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/reflect/Type;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 91
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    .line 93
    iget-object v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 97
    iget-object v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    invoke-interface {v0}, Ljava/lang/reflect/Type;->hashCode()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mHash:I

    .line 98
    return-void

    .line 94
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Including a type variable in a type reference is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/reflect/Type;Landroid/hardware/camera2/utils/TypeReference-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/TypeReference;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public static greylist-max-o containsTypeVariable(Ljava/lang/reflect/Type;)Z
    .registers 9
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 277
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 279
    return v0

    .line 280
    :cond_4
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 284
    return v2

    .line 285
    :cond_a
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_22

    .line 294
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 297
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_19

    .line 298
    return v2

    .line 312
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable(Ljava/lang/reflect/Type;)Z

    move-result v1

    return v1

    .line 314
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_22
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_3e

    .line 324
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 327
    .local v1, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_2f
    if-ge v5, v4, :cond_3d

    aget-object v6, v3, v5

    .line 328
    .local v6, "arg":Ljava/lang/reflect/Type;
    invoke-static {v6}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable(Ljava/lang/reflect/Type;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 329
    return v2

    .line 327
    .end local v6    # "arg":Ljava/lang/reflect/Type;
    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 333
    :cond_3d
    return v0

    .line 334
    .end local v1    # "p":Ljava/lang/reflect/ParameterizedType;
    :cond_3e
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_5b

    .line 335
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 354
    .local v1, "wild":Ljava/lang/reflect/WildcardType;
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable([Ljava/lang/reflect/Type;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 355
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable([Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_5a

    :cond_59
    move v0, v2

    .line 354
    :cond_5a
    return v0

    .line 358
    .end local v1    # "wild":Ljava/lang/reflect/WildcardType;
    :cond_5b
    return v0
.end method

.method private static greylist-max-o containsTypeVariable([Ljava/lang/reflect/Type;)Z
    .registers 6
    .param p0, "typeArray"    # [Ljava/lang/reflect/Type;

    .line 430
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 431
    return v0

    .line 434
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_15

    aget-object v3, p0, v2

    .line 435
    .local v3, "type":Ljava/lang/reflect/Type;
    invoke-static {v3}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 436
    const/4 v0, 0x1

    return v0

    .line 434
    .end local v3    # "type":Ljava/lang/reflect/Type;
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 440
    :cond_15
    return v0
.end method

.method public static greylist-max-o createSpecializedTypeReference(Ljava/lang/Class;)Landroid/hardware/camera2/utils/TypeReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;"
        }
    .end annotation

    .line 127
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Landroid/hardware/camera2/utils/TypeReference$SpecializedTypeReference;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/TypeReference$SpecializedTypeReference;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static greylist createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;
    .registers 2
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "*>;"
        }
    .end annotation

    .line 145
    new-instance v0, Landroid/hardware/camera2/utils/TypeReference$SpecializedBaseTypeReference;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/TypeReference$SpecializedBaseTypeReference;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static final greylist-max-o getArrayClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 205
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 222
    const-string v0, "type must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_11

    .line 225
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 226
    :cond_11
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_17

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 228
    :cond_17
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_23

    .line 229
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 230
    :cond_23
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_4c

    .line 233
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_33

    .line 234
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Type variables are not allowed in type references"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 237
    :cond_33
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled branch to get component type for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 232
    :cond_4c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TODO: support wild card components"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final greylist-max-o getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 168
    if-eqz p0, :cond_61

    .line 172
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_a

    .line 173
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 174
    :cond_a
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_18

    .line 175
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 176
    :cond_18
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2c

    .line 177
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->getArrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 178
    :cond_2c
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3c

    .line 180
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->getRawType([Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 181
    :cond_3c
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_48

    .line 182
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Type variables are not allowed in type references"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 185
    :cond_48
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled branch to get raw type for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 169
    :cond_61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final greylist-max-o getRawType([Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 6
    .param p0, "types"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 191
    return-object v0

    .line 194
    :cond_4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, p0, v2

    .line 195
    .local v3, "type":Ljava/lang/reflect/Type;
    invoke-static {v3}, Landroid/hardware/camera2/utils/TypeReference;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    .line 196
    .local v4, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_11

    .line 197
    return-object v4

    .line 194
    .end local v3    # "type":Ljava/lang/reflect/Type;
    .end local v4    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 201
    :cond_14
    return-object v0
.end method

.method private static greylist-max-o toString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V
    .registers 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .line 375
    if-nez p0, :cond_3

    .line 376
    return-void

    .line 377
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_12

    .line 379
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 380
    :cond_12
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_28

    .line 381
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 383
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/hardware/camera2/utils/TypeReference;->toString([Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V

    .line 385
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_5f

    :cond_28
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_44

    .line 387
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 389
    .local v0, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/hardware/camera2/utils/TypeReference;->toString([Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V

    .line 391
    .end local v0    # "p":Ljava/lang/reflect/ParameterizedType;
    goto :goto_5f

    :cond_44
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_58

    .line 392
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 394
    .local v0, "gat":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/hardware/camera2/utils/TypeReference;->toString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V

    .line 395
    const-string v1, "[]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .end local v0    # "gat":Ljava/lang/reflect/GenericArrayType;
    goto :goto_5f

    .line 398
    :cond_58
    invoke-interface {p0}, Ljava/lang/reflect/Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :goto_5f
    return-void
.end method

.method private static greylist-max-o toString([Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V
    .registers 4
    .param p0, "types"    # [Ljava/lang/reflect/Type;
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .line 403
    if-nez p0, :cond_3

    .line 404
    return-void

    .line 405
    :cond_3
    array-length v0, p0

    if-nez v0, :cond_7

    .line 406
    return-void

    .line 409
    :cond_7
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    array-length v1, p0

    if-ge v0, v1, :cond_22

    .line 412
    aget-object v1, p0, v0

    invoke-static {v1, p1}, Landroid/hardware/camera2/utils/TypeReference;->toString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V

    .line 413
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1f

    .line 414
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 418
    .end local v0    # "i":I
    :cond_22
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 251
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    instance-of v0, p1, Landroid/hardware/camera2/utils/TypeReference;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    move-object v1, p1

    check-cast v1, Landroid/hardware/camera2/utils/TypeReference;

    iget-object v1, v1, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Ljava/lang/reflect/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public greylist-max-o getComponentType()Landroid/hardware/camera2/utils/TypeReference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "*>;"
        }
    .end annotation

    .line 214
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 216
    .local v0, "componentType":Ljava/lang/reflect/Type;
    if-eqz v0, :cond_d

    .line 217
    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    move-result-object v1

    goto :goto_e

    .line 218
    :cond_d
    const/4 v1, 0x0

    .line 216
    :goto_e
    return-object v1
.end method

.method public final greylist-max-o getRawType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 164
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getType()Ljava/lang/reflect/Type;
    .registers 2

    .line 88
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 259
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    iget v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mHash:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 366
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "TypeReference<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p0}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/hardware/camera2/utils/TypeReference;->toString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V

    .line 369
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
