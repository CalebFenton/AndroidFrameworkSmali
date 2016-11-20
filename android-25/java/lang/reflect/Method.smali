.class public final Ljava/lang/reflect/Method;
.super Ljava/lang/reflect/AbstractMethod;
.source "Method.java"

# interfaces
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Member;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/reflect/Method$1;
    }
.end annotation


# static fields
.field public static final ORDER_BY_SIGNATURE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 65
    new-instance v0, Ljava/lang/reflect/Method$1;

    #@2
    invoke-direct {v0}, Ljava/lang/reflect/Method$1;-><init>()V

    #@5
    sput-object v0, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    #@7
    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/reflect/AbstractMethod;-><init>()V

    #@3
    return-void
.end method

.method private native getAnnotationNative(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method private native getParameterAnnotationsNative()[[Ljava/lang/annotation/Annotation;
.end method


# virtual methods
.method equalNameAndParameters(Ljava/lang/reflect/Method;)Z
    .locals 2
    .param p1, "m"    # Ljava/lang/reflect/Method;

    #@0
    .prologue
    .line 631
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->equalMethodParameters([Ljava/lang/Class;)Z

    #@15
    move-result v0

    #@16
    :goto_0
    return v0

    #@17
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 272
    if-eqz p1, :cond_3

    #@3
    instance-of v4, p1, Ljava/lang/reflect/Method;

    #@5
    if-eqz v4, :cond_3

    #@7
    move-object v1, p1

    #@8
    .line 273
    check-cast v1, Ljava/lang/reflect/Method;

    #@a
    .line 274
    .local v1, "other":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    #@11
    move-result-object v5

    #@12
    if-ne v4, v5, :cond_3

    #@14
    .line 275
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    if-ne v4, v5, :cond_3

    #@1e
    .line 276
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v4

    #@2a
    if-nez v4, :cond_0

    #@2c
    .line 277
    return v6

    #@2d
    .line 279
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@30
    move-result-object v2

    #@31
    .line 280
    .local v2, "params1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@34
    move-result-object v3

    #@35
    .line 281
    .local v3, "params2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v2

    #@36
    array-length v5, v3

    #@37
    if-ne v4, v5, :cond_3

    #@39
    .line 282
    const/4 v0, 0x0

    #@3a
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    #@3b
    if-ge v0, v4, :cond_2

    #@3d
    .line 283
    aget-object v4, v2, v0

    #@3f
    aget-object v5, v3, v0

    #@41
    if-eq v4, v5, :cond_1

    #@43
    .line 284
    return v6

    #@44
    .line 282
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_0

    #@47
    .line 286
    :cond_2
    const/4 v4, 0x1

    #@48
    return v4

    #@49
    .line 290
    .end local v0    # "i":I
    .end local v1    # "other":Ljava/lang/reflect/Method;
    .end local v2    # "params1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "params2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    return v6
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    #@0
    .prologue
    .line 554
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    if-nez p1, :cond_0

    #@2
    .line 555
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "annotationType == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 557
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/reflect/Method;->getAnnotationNative(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 96
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public native getDefaultValue()Ljava/lang/Object;
.end method

.method public native getExceptionTypes()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 2

    #@0
    .prologue
    .line 262
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericExceptionTypes:Llibcore/reflect/ListOfTypes;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-static {v0, v1}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 2

    #@0
    .prologue
    .line 224
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericParameterTypes:Llibcore/reflect/ListOfTypes;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-static {v0, v1}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getGenericReturnType()Ljava/lang/reflect/Type;
    .locals 1

    #@0
    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericReturnType:Ljava/lang/reflect/Type;

    #@6
    invoke-static {v0}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    #@0
    .prologue
    .line 117
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getModifiers()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 104
    iget-object v2, p0, Ljava/lang/reflect/Method;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    #@2
    invoke-virtual {v2}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@5
    move-result-object v0

    #@6
    .line 105
    .local v0, "dex":Lcom/android/dex/Dex;
    iget v2, p0, Ljava/lang/reflect/Method;->dexMethodIndex:I

    #@8
    invoke-virtual {v0, v2}, Lcom/android/dex/Dex;->nameIndexFromMethodIndex(I)I

    #@b
    move-result v1

    #@c
    .line 106
    .local v1, "nameIndex":I
    iget-object v2, p0, Ljava/lang/reflect/Method;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    #@e
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    return-object v2
.end method

.method public getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 594
    invoke-direct {p0}, Ljava/lang/reflect/Method;->getParameterAnnotationsNative()[[Ljava/lang/annotation/Annotation;

    #@4
    move-result-object v0

    #@5
    .line 595
    .local v0, "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_0

    #@7
    .line 596
    const-class v1, Ljava/lang/annotation/Annotation;

    #@9
    const/4 v2, 0x2

    #@a
    new-array v2, v2, [I

    #@c
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@f
    move-result-object v3

    #@10
    array-length v3, v3

    #@11
    aput v3, v2, v4

    #@13
    const/4 v3, 0x1

    #@14
    aput v4, v2, v3

    #@16
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    .end local v0    # "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    check-cast v0, [[Ljava/lang/annotation/Annotation;

    #@1c
    .line 598
    .restart local v0    # "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    :cond_0
    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 193
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getParameterTypes()[Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 147
    iget-object v2, p0, Ljava/lang/reflect/Method;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    #@2
    invoke-virtual {v2}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@5
    move-result-object v0

    #@6
    .line 148
    .local v0, "dex":Lcom/android/dex/Dex;
    iget v2, p0, Ljava/lang/reflect/Method;->dexMethodIndex:I

    #@8
    invoke-virtual {v0, v2}, Lcom/android/dex/Dex;->returnTypeIndexFromMethodIndex(I)I

    #@b
    move-result v1

    #@c
    .line 150
    .local v1, "returnTypeIndex":I
    iget-object v2, p0, Ljava/lang/reflect/Method;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    #@e
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    return-object v2
.end method

.method getSignature()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 613
    .local v2, "result":Ljava/lang/StringBuilder;
    const/16 v3, 0x28

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    .line 614
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    .line 615
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    #@f
    array-length v4, v1

    #@10
    :goto_0
    if-ge v3, v4, :cond_0

    #@12
    aget-object v0, v1, v3

    #@14
    .line 616
    .local v0, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Llibcore/reflect/Types;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 615
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 618
    .end local v0    # "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/16 v3, 0x29

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    .line 619
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@26
    move-result-object v3

    #@27
    invoke-static {v3}, Llibcore/reflect/Types;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 621
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    return-object v3
.end method

.method public getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    #@3
    move-result-object v0

    #@4
    .line 137
    .local v0, "info":Ljava/lang/reflect/AbstractMethod$GenericInfo;
    iget-object v1, v0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    #@6
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, [Ljava/lang/reflect/TypeVariable;

    #@c
    return-object v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 299
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v0

    #@c
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@13
    move-result v1

    #@14
    xor-int/2addr v0, v1

    #@15
    return v0
.end method

.method public varargs native invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public isBridge()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 521
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    #@4
    move-result v1

    #@5
    and-int/lit8 v1, v1, 0x40

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isDefault()Z
    .locals 1

    #@0
    .prologue
    .line 638
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->isDefault()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    #@0
    .prologue
    .line 546
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isSynthetic(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isVarArgs()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 534
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    #@4
    move-result v1

    #@5
    and-int/lit16 v1, v1, 0x80

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public toGenericString()Ljava/lang/String;
    .locals 15

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 396
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 397
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    #@9
    move-result v13

    #@a
    invoke-static {}, Ljava/lang/reflect/Modifier;->methodModifiers()I

    #@d
    move-result v14

    #@e
    and-int v6, v13, v14

    #@10
    .line 398
    .local v6, "mod":I
    if-eqz v6, :cond_0

    #@12
    .line 399
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    #@15
    move-result-object v13

    #@16
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v13

    #@1a
    const/16 v14, 0x20

    #@1c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 401
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    #@22
    move-result-object v11

    #@23
    .line 402
    .local v11, "typeparms":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v13, v11

    #@24
    if-lez v13, :cond_3

    #@26
    .line 403
    const/4 v2, 0x1

    #@27
    .line 404
    .local v2, "first":Z
    const/16 v13, 0x3c

    #@29
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 405
    array-length v13, v11

    #@2d
    :goto_0
    if-ge v12, v13, :cond_2

    #@2f
    aget-object v10, v11, v12

    #@31
    .line 406
    .local v10, "typeparm":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    if-nez v2, :cond_1

    #@33
    .line 407
    const/16 v14, 0x2c

    #@35
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    .line 410
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3b
    move-result-object v14

    #@3c
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 411
    const/4 v2, 0x0

    #@40
    .line 405
    add-int/lit8 v12, v12, 0x1

    #@42
    goto :goto_0

    #@43
    .line 413
    .end local v10    # "typeparm":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_2
    const-string/jumbo v12, "> "

    #@46
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 416
    .end local v2    # "first":Z
    :cond_3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    #@4c
    move-result-object v3

    #@4d
    .line 417
    .local v3, "genRetType":Ljava/lang/reflect/Type;
    instance-of v12, v3, Ljava/lang/Class;

    #@4f
    if-eqz v12, :cond_6

    #@51
    .line 418
    check-cast v3, Ljava/lang/Class;

    #@53
    .end local v3    # "genRetType":Ljava/lang/reflect/Type;
    invoke-static {v3}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    #@56
    move-result-object v12

    #@57
    .line 417
    :goto_1
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v12

    #@5b
    .line 419
    const/16 v13, 0x20

    #@5d
    .line 417
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@60
    .line 421
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    #@63
    move-result-object v12

    #@64
    invoke-static {v12}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    #@67
    move-result-object v12

    #@68
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v12

    #@6c
    const/16 v13, 0x2e

    #@6e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@71
    .line 422
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@74
    move-result-object v12

    #@75
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v12

    #@79
    const/16 v13, 0x28

    #@7b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7e
    .line 423
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    #@81
    move-result-object v8

    #@82
    .line 424
    .local v8, "params":[Ljava/lang/reflect/Type;
    const/4 v4, 0x0

    #@83
    .local v4, "j":I
    :goto_2
    array-length v12, v8

    #@84
    if-ge v4, v12, :cond_8

    #@86
    .line 425
    aget-object v12, v8, v4

    #@88
    instance-of v12, v12, Ljava/lang/Class;

    #@8a
    if-eqz v12, :cond_7

    #@8c
    .line 426
    aget-object v12, v8, v4

    #@8e
    check-cast v12, Ljava/lang/Class;

    #@90
    invoke-static {v12}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    #@93
    move-result-object v7

    #@94
    .line 428
    .local v7, "param":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    #@97
    move-result v12

    #@98
    if-eqz v12, :cond_4

    #@9a
    array-length v12, v8

    #@9b
    add-int/lit8 v12, v12, -0x1

    #@9d
    if-ne v4, v12, :cond_4

    #@9f
    .line 429
    const-string/jumbo v12, "\\[\\]$"

    #@a2
    const-string/jumbo v13, "..."

    #@a5
    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a8
    move-result-object v7

    #@a9
    .line 430
    :cond_4
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    .line 431
    array-length v12, v8

    #@ad
    add-int/lit8 v12, v12, -0x1

    #@af
    if-ge v4, v12, :cond_5

    #@b1
    .line 432
    const/16 v12, 0x2c

    #@b3
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b6
    .line 424
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@b8
    goto :goto_2

    #@b9
    .line 418
    .end local v4    # "j":I
    .end local v7    # "param":Ljava/lang/String;
    .end local v8    # "params":[Ljava/lang/reflect/Type;
    .restart local v3    # "genRetType":Ljava/lang/reflect/Type;
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@bc
    move-result-object v12

    #@bd
    goto :goto_1

    #@be
    .line 427
    .end local v3    # "genRetType":Ljava/lang/reflect/Type;
    .restart local v4    # "j":I
    .restart local v8    # "params":[Ljava/lang/reflect/Type;
    :cond_7
    aget-object v12, v8, v4

    #@c0
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@c3
    move-result-object v7

    #@c4
    .restart local v7    # "param":Ljava/lang/String;
    goto :goto_3

    #@c5
    .line 434
    .end local v7    # "param":Ljava/lang/String;
    :cond_8
    const/16 v12, 0x29

    #@c7
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ca
    .line 435
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    #@cd
    move-result-object v1

    #@ce
    .line 436
    .local v1, "exceptions":[Ljava/lang/reflect/Type;
    array-length v12, v1

    #@cf
    if-lez v12, :cond_b

    #@d1
    .line 437
    const-string/jumbo v12, " throws "

    #@d4
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    .line 438
    const/4 v5, 0x0

    #@d8
    .local v5, "k":I
    :goto_4
    array-length v12, v1

    #@d9
    if-ge v5, v12, :cond_b

    #@db
    .line 439
    aget-object v12, v1, v5

    #@dd
    instance-of v12, v12, Ljava/lang/Class;

    #@df
    if-eqz v12, :cond_a

    #@e1
    .line 440
    aget-object v12, v1, v5

    #@e3
    check-cast v12, Ljava/lang/Class;

    #@e5
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e8
    move-result-object v12

    #@e9
    .line 439
    :goto_5
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    .line 442
    array-length v12, v1

    #@ed
    add-int/lit8 v12, v12, -0x1

    #@ef
    if-ge v5, v12, :cond_9

    #@f1
    .line 443
    const/16 v12, 0x2c

    #@f3
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f6
    .line 438
    :cond_9
    add-int/lit8 v5, v5, 0x1

    #@f8
    goto :goto_4

    #@f9
    .line 441
    :cond_a
    aget-object v12, v1, v5

    #@fb
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@fe
    move-result-object v12

    #@ff
    goto :goto_5

    #@100
    .line 446
    .end local v5    # "k":I
    :cond_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@103
    move-result-object v12

    #@104
    return-object v12

    #@105
    .line 447
    .end local v1    # "exceptions":[Ljava/lang/reflect/Type;
    .end local v4    # "j":I
    .end local v6    # "mod":I
    .end local v8    # "params":[Ljava/lang/reflect/Type;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "typeparms":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :catch_0
    move-exception v0

    #@106
    .line 448
    .local v0, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v13, "<"

    #@10e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v12

    #@112
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v12

    #@116
    const-string/jumbo v13, ">"

    #@119
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v12

    #@11d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v12

    #@121
    return-object v12
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 326
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 327
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    #@8
    move-result v7

    #@9
    invoke-static {}, Ljava/lang/reflect/Modifier;->methodModifiers()I

    #@c
    move-result v8

    #@d
    and-int v4, v7, v8

    #@f
    .line 328
    .local v4, "mod":I
    if-eqz v4, :cond_0

    #@11
    .line 329
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    #@14
    move-result-object v7

    #@15
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v7

    #@19
    const/16 v8, 0x20

    #@1b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 331
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@21
    move-result-object v7

    #@22
    invoke-static {v7}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v7

    #@2a
    const/16 v8, 0x20

    #@2c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 332
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    #@32
    move-result-object v7

    #@33
    invoke-static {v7}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    const/16 v8, 0x2e

    #@3d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    .line 333
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@43
    move-result-object v7

    #@44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    const/16 v8, 0x28

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4d
    .line 334
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@50
    move-result-object v5

    #@51
    .line 335
    .local v5, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    #@52
    .local v2, "j":I
    :goto_0
    array-length v7, v5

    #@53
    if-ge v2, v7, :cond_2

    #@55
    .line 336
    aget-object v7, v5, v2

    #@57
    invoke-static {v7}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    .line 337
    array-length v7, v5

    #@5f
    add-int/lit8 v7, v7, -0x1

    #@61
    if-ge v2, v7, :cond_1

    #@63
    .line 338
    const/16 v7, 0x2c

    #@65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@68
    .line 335
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@6a
    goto :goto_0

    #@6b
    .line 340
    :cond_2
    const/16 v7, 0x29

    #@6d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@70
    .line 341
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    #@73
    move-result-object v1

    #@74
    .line 342
    .local v1, "exceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v7, v1

    #@75
    if-lez v7, :cond_4

    #@77
    .line 343
    const-string/jumbo v7, " throws "

    #@7a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    .line 344
    const/4 v3, 0x0

    #@7e
    .local v3, "k":I
    :goto_1
    array-length v7, v1

    #@7f
    if-ge v3, v7, :cond_4

    #@81
    .line 345
    aget-object v7, v1, v3

    #@83
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@86
    move-result-object v7

    #@87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    .line 346
    array-length v7, v1

    #@8b
    add-int/lit8 v7, v7, -0x1

    #@8d
    if-ge v3, v7, :cond_3

    #@8f
    .line 347
    const/16 v7, 0x2c

    #@91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@94
    .line 344
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@96
    goto :goto_1

    #@97
    .line 350
    .end local v3    # "k":I
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9a
    move-result-object v7

    #@9b
    return-object v7

    #@9c
    .line 351
    .end local v1    # "exceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "j":I
    .end local v4    # "mod":I
    .end local v5    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    #@9d
    .line 352
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v8, "<"

    #@a5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v7

    #@a9
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v7

    #@ad
    const-string/jumbo v8, ">"

    #@b0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v7

    #@b4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v7

    #@b8
    return-object v7
.end method
