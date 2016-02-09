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
.field private final mHash:I

.field private final mType:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 58
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    invoke-virtual {p0}, Landroid/hardware/camera2/utils/TypeReference;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    #@d
    .line 62
    .local v0, "thisType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@10
    move-result-object v1

    #@11
    const/4 v2, 0x0

    #@12
    aget-object v1, v1, v2

    #@14
    iput-object v1, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    #@16
    .line 73
    iget-object v1, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    #@18
    invoke-static {v1}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable(Ljava/lang/reflect/Type;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@20
    .line 75
    const-string/jumbo v2, "Including a type variable in a type reference is not allowed"

    #@23
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 77
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    #@29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@2c
    move-result v1

    #@2d
    iput v1, p0, Landroid/hardware/camera2/utils/TypeReference;->mHash:I

    #@2f
    .line 58
    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;

    #@0
    .prologue
    .line 87
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    iput-object p1, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    #@5
    .line 89
    iget-object v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    #@7
    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable(Ljava/lang/reflect/Type;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    .line 91
    const-string/jumbo v1, "Including a type variable in a type reference is not allowed"

    #@12
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 93
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    #@18
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mHash:I

    #@1e
    .line 87
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Type;Landroid/hardware/camera2/utils/TypeReference;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/reflect/Type;

    #@0
    .prologue
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/TypeReference;-><init>(Ljava/lang/reflect/Type;)V

    #@3
    return-void
.end method

.method public static containsTypeVariable(Ljava/lang/reflect/Type;)Z
    .locals 10
    .param p0, "type"    # Ljava/lang/reflect/Type;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 272
    if-nez p0, :cond_0

    #@4
    .line 274
    return v6

    #@5
    .line 275
    :cond_0
    instance-of v5, p0, Ljava/lang/reflect/TypeVariable;

    #@7
    if-eqz v5, :cond_1

    #@9
    .line 279
    return v4

    #@a
    .line 280
    :cond_1
    instance-of v5, p0, Ljava/lang/Class;

    #@c
    if-eqz v5, :cond_3

    #@e
    move-object v1, p0

    #@f
    .line 289
    check-cast v1, Ljava/lang/Class;

    #@11
    .line 292
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    #@14
    move-result-object v5

    #@15
    array-length v5, v5

    #@16
    if-eqz v5, :cond_2

    #@18
    .line 293
    return v4

    #@19
    .line 307
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    #@1c
    move-result-object v4

    #@1d
    invoke-static {v4}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable(Ljava/lang/reflect/Type;)Z

    #@20
    move-result v4

    #@21
    return v4

    #@22
    .line 309
    .end local v1    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    instance-of v5, p0, Ljava/lang/reflect/ParameterizedType;

    #@24
    if-eqz v5, :cond_6

    #@26
    move-object v2, p0

    #@27
    .line 319
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    #@29
    .line 322
    .local v2, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@2c
    move-result-object v7

    #@2d
    array-length v8, v7

    #@2e
    move v5, v6

    #@2f
    :goto_0
    if-ge v5, v8, :cond_5

    #@31
    aget-object v0, v7, v5

    #@33
    .line 323
    .local v0, "arg":Ljava/lang/reflect/Type;
    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable(Ljava/lang/reflect/Type;)Z

    #@36
    move-result v9

    #@37
    if-eqz v9, :cond_4

    #@39
    .line 324
    return v4

    #@3a
    .line 322
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 328
    .end local v0    # "arg":Ljava/lang/reflect/Type;
    :cond_5
    return v6

    #@3e
    .line 329
    .end local v2    # "p":Ljava/lang/reflect/ParameterizedType;
    :cond_6
    instance-of v5, p0, Ljava/lang/reflect/WildcardType;

    #@40
    if-eqz v5, :cond_8

    #@42
    move-object v3, p0

    #@43
    .line 330
    check-cast v3, Ljava/lang/reflect/WildcardType;

    #@45
    .line 349
    .local v3, "wild":Ljava/lang/reflect/WildcardType;
    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    #@48
    move-result-object v5

    #@49
    invoke-static {v5}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable([Ljava/lang/reflect/Type;)Z

    #@4c
    move-result v5

    #@4d
    if-nez v5, :cond_7

    #@4f
    .line 350
    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    #@52
    move-result-object v4

    #@53
    invoke-static {v4}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable([Ljava/lang/reflect/Type;)Z

    #@56
    move-result v4

    #@57
    .line 349
    :cond_7
    return v4

    #@58
    .line 353
    .end local v3    # "wild":Ljava/lang/reflect/WildcardType;
    :cond_8
    return v6
.end method

.method private static containsTypeVariable([Ljava/lang/reflect/Type;)Z
    .locals 5
    .param p0, "typeArray"    # [Ljava/lang/reflect/Type;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 425
    if-nez p0, :cond_0

    #@3
    .line 426
    return v2

    #@4
    .line 429
    :cond_0
    array-length v3, p0

    #@5
    move v1, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_2

    #@8
    aget-object v0, p0, v1

    #@a
    .line 430
    .local v0, "type":Ljava/lang/reflect/Type;
    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->containsTypeVariable(Ljava/lang/reflect/Type;)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 431
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 429
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 435
    .end local v0    # "type":Ljava/lang/reflect/Type;
    :cond_2
    return v2
.end method

.method public static createSpecializedTypeReference(Ljava/lang/Class;)Landroid/hardware/camera2/utils/TypeReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 123
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Landroid/hardware/camera2/utils/TypeReference$SpecializedTypeReference;

    #@2
    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/TypeReference$SpecializedTypeReference;-><init>(Ljava/lang/Class;)V

    #@5
    return-object v0
.end method

.method public static createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 140
    new-instance v0, Landroid/hardware/camera2/utils/TypeReference$SpecializedBaseTypeReference;

    #@2
    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/TypeReference$SpecializedBaseTypeReference;-><init>(Ljava/lang/reflect/Type;)V

    #@5
    return-object v0
.end method

.method private static final getArrayClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 200
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;

    #@0
    .prologue
    .line 217
    const-string/jumbo v0, "type must not be null"

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 219
    instance-of v0, p0, Ljava/lang/Class;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 220
    check-cast p0, Ljava/lang/Class;

    #@c
    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 221
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 222
    const/4 v0, 0x0

    #@16
    return-object v0

    #@17
    .line 223
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 224
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    #@1d
    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 225
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    #@24
    if-eqz v0, :cond_3

    #@26
    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@28
    const-string/jumbo v1, "TODO: support wild card components"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 228
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    #@31
    if-eqz v0, :cond_4

    #@33
    .line 229
    new-instance v0, Ljava/lang/AssertionError;

    #@35
    const-string/jumbo v1, "Type variables are not allowed in type references"

    #@38
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@3b
    throw v0

    #@3c
    .line 232
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    #@3e
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "Unhandled branch to get component type for type "

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@55
    throw v0
.end method

.method private static final getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 163
    if-nez p0, :cond_0

    #@2
    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "type must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 167
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 168
    check-cast p0, Ljava/lang/Class;

    #@11
    .end local p0    # "type":Ljava/lang/reflect/Type;
    return-object p0

    #@12
    .line 169
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 170
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    #@18
    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/lang/Class;

    #@1e
    return-object v0

    #@1f
    .line 171
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    #@21
    if-eqz v0, :cond_3

    #@23
    .line 172
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    #@25
    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    #@28
    move-result-object v0

    #@29
    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->getArrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    #@30
    move-result-object v0

    #@31
    return-object v0

    #@32
    .line 173
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    #@34
    if-eqz v0, :cond_4

    #@36
    .line 175
    check-cast p0, Ljava/lang/reflect/WildcardType;

    #@38
    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    #@3b
    move-result-object v0

    #@3c
    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->getRawType([Ljava/lang/reflect/Type;)Ljava/lang/Class;

    #@3f
    move-result-object v0

    #@40
    return-object v0

    #@41
    .line 176
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_4
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    #@43
    if-eqz v0, :cond_5

    #@45
    .line 177
    new-instance v0, Ljava/lang/AssertionError;

    #@47
    const-string/jumbo v1, "Type variables are not allowed in type references"

    #@4a
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@4d
    throw v0

    #@4e
    .line 180
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    #@50
    new-instance v1, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v2, "Unhandled branch to get raw type for type "

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@67
    throw v0
.end method

.method private static final getRawType([Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 5
    .param p0, "types"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 185
    if-nez p0, :cond_0

    #@3
    .line 186
    return-object v4

    #@4
    .line 189
    :cond_0
    const/4 v2, 0x0

    #@5
    array-length v3, p0

    #@6
    :goto_0
    if-ge v2, v3, :cond_2

    #@8
    aget-object v1, p0, v2

    #@a
    .line 190
    .local v1, "type":Ljava/lang/reflect/Type;
    invoke-static {v1}, Landroid/hardware/camera2/utils/TypeReference;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    #@d
    move-result-object v0

    #@e
    .line 191
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    #@10
    .line 192
    return-object v0

    #@11
    .line 189
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 196
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "type":Ljava/lang/reflect/Type;
    :cond_2
    return-object v4
.end method

.method private static toString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "out"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 370
    if-nez p0, :cond_0

    #@2
    .line 371
    return-void

    #@3
    .line 372
    :cond_0
    instance-of v3, p0, Ljava/lang/reflect/TypeVariable;

    #@5
    if-eqz v3, :cond_1

    #@7
    .line 374
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    #@9
    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 369
    :goto_0
    return-void

    #@11
    .line 375
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v3, p0, Ljava/lang/Class;

    #@13
    if-eqz v3, :cond_2

    #@15
    move-object v1, p0

    #@16
    .line 376
    check-cast v1, Ljava/lang/Class;

    #@18
    .line 378
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 379
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    #@22
    move-result-object v3

    #@23
    invoke-static {v3, p1}, Landroid/hardware/camera2/utils/TypeReference;->toString([Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V

    #@26
    goto :goto_0

    #@27
    .line 380
    .end local v1    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    #@29
    if-eqz v3, :cond_3

    #@2b
    move-object v2, p0

    #@2c
    .line 382
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    #@2e
    .line 384
    .local v2, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    #@31
    move-result-object v3

    #@32
    check-cast v3, Ljava/lang/Class;

    #@34
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 385
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@3e
    move-result-object v3

    #@3f
    invoke-static {v3, p1}, Landroid/hardware/camera2/utils/TypeReference;->toString([Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V

    #@42
    goto :goto_0

    #@43
    .line 386
    .end local v2    # "p":Ljava/lang/reflect/ParameterizedType;
    :cond_3
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    #@45
    if-eqz v3, :cond_4

    #@47
    move-object v0, p0

    #@48
    .line 387
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    #@4a
    .line 389
    .local v0, "gat":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    #@4d
    move-result-object v3

    #@4e
    invoke-static {v3, p1}, Landroid/hardware/camera2/utils/TypeReference;->toString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V

    #@51
    .line 390
    const-string/jumbo v3, "[]"

    #@54
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    goto :goto_0

    #@58
    .line 393
    .end local v0    # "gat":Ljava/lang/reflect/GenericArrayType;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    goto :goto_0
.end method

.method private static toString([Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "types"    # [Ljava/lang/reflect/Type;
    .param p1, "out"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 398
    if-nez p0, :cond_0

    #@2
    .line 399
    return-void

    #@3
    .line 400
    :cond_0
    array-length v1, p0

    #@4
    if-nez v1, :cond_1

    #@6
    .line 401
    return-void

    #@7
    .line 404
    :cond_1
    const-string/jumbo v1, "<"

    #@a
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 406
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@f
    if-ge v0, v1, :cond_3

    #@11
    .line 407
    aget-object v1, p0, v0

    #@13
    invoke-static {v1, p1}, Landroid/hardware/camera2/utils/TypeReference;->toString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V

    #@16
    .line 408
    array-length v1, p0

    #@17
    add-int/lit8 v1, v1, -0x1

    #@19
    if-eq v0, v1, :cond_2

    #@1b
    .line 409
    const-string/jumbo v1, ", "

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 406
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 413
    :cond_3
    const-string/jumbo v1, ">"

    #@27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 397
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 246
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    instance-of v0, p1, Landroid/hardware/camera2/utils/TypeReference;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    #@6
    check-cast p1, Landroid/hardware/camera2/utils/TypeReference;

    #@8
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public getComponentType()Landroid/hardware/camera2/utils/TypeReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 209
    iget-object v2, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    #@3
    invoke-static {v2}, Landroid/hardware/camera2/utils/TypeReference;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    #@6
    move-result-object v0

    #@7
    .line 211
    .local v0, "componentType":Ljava/lang/reflect/Type;
    if-eqz v0, :cond_0

    #@9
    .line 212
    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    #@c
    move-result-object v1

    #@d
    .line 211
    :cond_0
    return-object v1
.end method

.method public final getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 159
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/utils/TypeReference;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    #@0
    .prologue
    .line 84
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mType:Ljava/lang/reflect/Type;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 254
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    iget v0, p0, Landroid/hardware/camera2/utils/TypeReference;->mHash:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 361
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 362
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "TypeReference<"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 363
    invoke-virtual {p0}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1, v0}, Landroid/hardware/camera2/utils/TypeReference;->toString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;)V

    #@12
    .line 364
    const-string/jumbo v1, ">"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    return-object v1
.end method
