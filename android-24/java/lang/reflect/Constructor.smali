.class public final Ljava/lang/reflect/Constructor;
.super Ljava/lang/reflect/AbstractMethod;
.source "Constructor.java"

# interfaces
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Member;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/reflect/AbstractMethod;",
        "Ljava/lang/reflect/GenericDeclaration;",
        "Ljava/lang/reflect/Member;"
    }
.end annotation


# static fields
.field private static final ORDER_BY_SIGNATURE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final serializationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final serializationCtor:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 65
    invoke-direct {p0, v0, v0}, Ljava/lang/reflect/Constructor;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    #@4
    .line 64
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local p1, "serializationCtor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "serializationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/reflect/AbstractMethod;-><init>()V

    #@3
    .line 70
    iput-object p1, p0, Ljava/lang/reflect/Constructor;->serializationCtor:Ljava/lang/Class;

    #@5
    .line 71
    iput-object p2, p0, Ljava/lang/reflect/Constructor;->serializationClass:Ljava/lang/Class;

    #@7
    .line 69
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

.method private native isAnnotationPresentNative(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation
.end method

.method private varargs native newInstance0([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method private static native newInstanceFromSerialization(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v6, 0x0

    #@1
    .line 219
    if-eqz p1, :cond_2

    #@3
    instance-of v4, p1, Ljava/lang/reflect/Constructor;

    #@5
    if-eqz v4, :cond_2

    #@7
    move-object v1, p1

    #@8
    .line 220
    check-cast v1, Ljava/lang/reflect/Constructor;

    #@a
    .line 221
    .local v1, "other":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    #@11
    move-result-object v5

    #@12
    if-ne v4, v5, :cond_2

    #@14
    .line 224
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@17
    move-result-object v2

    #@18
    .line 225
    .local v2, "params1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@1b
    move-result-object v3

    #@1c
    .line 226
    .local v3, "params2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v2

    #@1d
    array-length v5, v3

    #@1e
    if-ne v4, v5, :cond_2

    #@20
    .line 227
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    #@22
    if-ge v0, v4, :cond_1

    #@24
    .line 228
    aget-object v4, v2, v0

    #@26
    aget-object v5, v3, v0

    #@28
    if-eq v4, v5, :cond_0

    #@2a
    .line 229
    return v6

    #@2b
    .line 227
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 231
    :cond_1
    const/4 v4, 0x1

    #@2f
    return v4

    #@30
    .line 235
    .end local v0    # "i":I
    .end local v1    # "other":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "params1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "params2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
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
    .line 486
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    if-nez p1, :cond_0

    #@2
    .line 487
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "annotationType == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 489
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/reflect/Constructor;->getAnnotationNative(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public native getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 86
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
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
    .locals 1

    #@0
    .prologue
    .line 209
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 1

    #@0
    .prologue
    .line 171
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    #@0
    .prologue
    .line 105
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getModifiers()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 94
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .locals 5

    #@0
    .prologue
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v4, 0x0

    #@1
    .line 523
    invoke-direct {p0}, Ljava/lang/reflect/Constructor;->getParameterAnnotationsNative()[[Ljava/lang/annotation/Annotation;

    #@4
    move-result-object v0

    #@5
    .line 524
    .local v0, "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_0

    #@7
    .line 525
    const-class v1, Ljava/lang/annotation/Annotation;

    #@9
    const/4 v2, 0x2

    #@a
    new-array v2, v2, [I

    #@c
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

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
    .line 527
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
    .line 139
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getParameterTypes()[Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getSignature()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 469
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 471
    .local v2, "result":Ljava/lang/StringBuilder;
    const/16 v3, 0x28

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    .line 472
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    .line 473
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
    .line 474
    .local v0, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Llibcore/reflect/Types;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 473
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 476
    .end local v0    # "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-string/jumbo v3, ")V"

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 478
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    return-object v3
.end method

.method public getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 124
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    #@3
    move-result-object v0

    #@4
    .line 125
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
    .locals 1

    #@0
    .prologue
    .line 244
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

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
    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 499
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-nez p1, :cond_0

    #@2
    .line 500
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "annotationType == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 502
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/reflect/Constructor;->isAnnotationPresentNative(Ljava/lang/Class;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    #@0
    .prologue
    .line 465
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

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
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 452
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

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

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    #@0
    .prologue
    .line 429
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->serializationClass:Ljava/lang/Class;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 430
    invoke-direct {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance0([Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 432
    :cond_0
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->serializationCtor:Ljava/lang/Class;

    #@b
    iget-object v1, p0, Ljava/lang/reflect/Constructor;->serializationClass:Ljava/lang/Class;

    #@d
    invoke-static {v0, v1}, Ljava/lang/reflect/Constructor;->newInstanceFromSerialization(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public serializationCopy(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 78
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local p1, "ctor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/reflect/Constructor;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/lang/reflect/Constructor;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    #@5
    return-object v0
.end method

.method public toGenericString()Ljava/lang/String;
    .locals 14

    #@0
    .prologue
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v11, 0x0

    #@1
    .line 328
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 329
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    #@9
    move-result v12

    #@a
    invoke-static {}, Ljava/lang/reflect/Modifier;->constructorModifiers()I

    #@d
    move-result v13

    #@e
    and-int v5, v12, v13

    #@10
    .line 330
    .local v5, "mod":I
    if-eqz v5, :cond_0

    #@12
    .line 331
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    #@15
    move-result-object v12

    #@16
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v12

    #@1a
    const-string/jumbo v13, " "

    #@1d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 333
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    #@23
    move-result-object v10

    #@24
    .line 334
    .local v10, "typeparms":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v12, v10

    #@25
    if-lez v12, :cond_3

    #@27
    .line 335
    const/4 v2, 0x1

    #@28
    .line 336
    .local v2, "first":Z
    const-string/jumbo v12, "<"

    #@2b
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 337
    array-length v12, v10

    #@2f
    :goto_0
    if-ge v11, v12, :cond_2

    #@31
    aget-object v9, v10, v11

    #@33
    .line 338
    .local v9, "typeparm":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    if-nez v2, :cond_1

    #@35
    .line 339
    const-string/jumbo v13, ","

    #@38
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 342
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3e
    move-result-object v13

    #@3f
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 343
    const/4 v2, 0x0

    #@43
    .line 337
    add-int/lit8 v11, v11, 0x1

    #@45
    goto :goto_0

    #@46
    .line 345
    .end local v9    # "typeparm":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_2
    const-string/jumbo v11, "> "

    #@49
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 347
    .end local v2    # "first":Z
    :cond_3
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    #@4f
    move-result-object v11

    #@50
    invoke-static {v11}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    #@53
    move-result-object v11

    #@54
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 348
    const-string/jumbo v11, "("

    #@5a
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    .line 349
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    #@60
    move-result-object v7

    #@61
    .line 350
    .local v7, "params":[Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    #@62
    .local v3, "j":I
    :goto_1
    array-length v11, v7

    #@63
    if-ge v3, v11, :cond_7

    #@65
    .line 351
    aget-object v11, v7, v3

    #@67
    instance-of v11, v11, Ljava/lang/Class;

    #@69
    if-eqz v11, :cond_6

    #@6b
    .line 352
    aget-object v11, v7, v3

    #@6d
    check-cast v11, Ljava/lang/Class;

    #@6f
    invoke-static {v11}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    #@72
    move-result-object v6

    #@73
    .line 354
    .local v6, "param":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    #@76
    move-result v11

    #@77
    if-eqz v11, :cond_4

    #@79
    array-length v11, v7

    #@7a
    add-int/lit8 v11, v11, -0x1

    #@7c
    if-ne v3, v11, :cond_4

    #@7e
    .line 355
    const-string/jumbo v11, "\\[\\]$"

    #@81
    const-string/jumbo v12, "..."

    #@84
    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v6

    #@88
    .line 356
    :cond_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    .line 357
    array-length v11, v7

    #@8c
    add-int/lit8 v11, v11, -0x1

    #@8e
    if-ge v3, v11, :cond_5

    #@90
    .line 358
    const-string/jumbo v11, ","

    #@93
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    .line 350
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@98
    goto :goto_1

    #@99
    .line 353
    .end local v6    # "param":Ljava/lang/String;
    :cond_6
    aget-object v11, v7, v3

    #@9b
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@9e
    move-result-object v6

    #@9f
    .restart local v6    # "param":Ljava/lang/String;
    goto :goto_2

    #@a0
    .line 360
    .end local v6    # "param":Ljava/lang/String;
    :cond_7
    const-string/jumbo v11, ")"

    #@a3
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    .line 361
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    #@a9
    move-result-object v1

    #@aa
    .line 362
    .local v1, "exceptions":[Ljava/lang/reflect/Type;
    array-length v11, v1

    #@ab
    if-lez v11, :cond_a

    #@ad
    .line 363
    const-string/jumbo v11, " throws "

    #@b0
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    .line 364
    const/4 v4, 0x0

    #@b4
    .local v4, "k":I
    :goto_3
    array-length v11, v1

    #@b5
    if-ge v4, v11, :cond_a

    #@b7
    .line 365
    aget-object v11, v1, v4

    #@b9
    instance-of v11, v11, Ljava/lang/Class;

    #@bb
    if-eqz v11, :cond_9

    #@bd
    .line 366
    aget-object v11, v1, v4

    #@bf
    check-cast v11, Ljava/lang/Class;

    #@c1
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c4
    move-result-object v11

    #@c5
    .line 365
    :goto_4
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    .line 368
    array-length v11, v1

    #@c9
    add-int/lit8 v11, v11, -0x1

    #@cb
    if-ge v4, v11, :cond_8

    #@cd
    .line 369
    const-string/jumbo v11, ","

    #@d0
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    .line 364
    :cond_8
    add-int/lit8 v4, v4, 0x1

    #@d5
    goto :goto_3

    #@d6
    .line 367
    :cond_9
    aget-object v11, v1, v4

    #@d8
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@db
    move-result-object v11

    #@dc
    goto :goto_4

    #@dd
    .line 372
    .end local v4    # "k":I
    :cond_a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e0
    move-result-object v11

    #@e1
    return-object v11

    #@e2
    .line 373
    .end local v1    # "exceptions":[Ljava/lang/reflect/Type;
    .end local v3    # "j":I
    .end local v5    # "mod":I
    .end local v7    # "params":[Ljava/lang/reflect/Type;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "typeparms":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :catch_0
    move-exception v0

    #@e3
    .line 374
    .local v0, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v12, "<"

    #@eb
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v11

    #@ef
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v11

    #@f3
    const-string/jumbo v12, ">"

    #@f6
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v11

    #@fa
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v11

    #@fe
    return-object v11
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 264
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :try_start_0
    new-instance v6, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 265
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    #@8
    move-result v7

    #@9
    invoke-static {}, Ljava/lang/reflect/Modifier;->constructorModifiers()I

    #@c
    move-result v8

    #@d
    and-int v4, v7, v8

    #@f
    .line 266
    .local v4, "mod":I
    if-eqz v4, :cond_0

    #@11
    .line 267
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    #@19
    move-result-object v8

    #@1a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v7

    #@1e
    const-string/jumbo v8, " "

    #@21
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v7

    #@25
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    .line 269
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    #@2f
    move-result-object v7

    #@30
    invoke-static {v7}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@37
    .line 270
    const-string/jumbo v7, "("

    #@3a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    .line 271
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@40
    move-result-object v5

    #@41
    .line 272
    .local v5, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    #@42
    .local v2, "j":I
    :goto_0
    array-length v7, v5

    #@43
    if-ge v2, v7, :cond_2

    #@45
    .line 273
    aget-object v7, v5, v2

    #@47
    invoke-static {v7}, Ljava/lang/reflect/Field;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4e
    .line 274
    array-length v7, v5

    #@4f
    add-int/lit8 v7, v7, -0x1

    #@51
    if-ge v2, v7, :cond_1

    #@53
    .line 275
    const-string/jumbo v7, ","

    #@56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@59
    .line 272
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 277
    :cond_2
    const-string/jumbo v7, ")"

    #@5f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@62
    .line 278
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    #@65
    move-result-object v1

    #@66
    .line 279
    .local v1, "exceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v7, v1

    #@67
    if-lez v7, :cond_4

    #@69
    .line 280
    const-string/jumbo v7, " throws "

    #@6c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6f
    .line 281
    const/4 v3, 0x0

    #@70
    .local v3, "k":I
    :goto_1
    array-length v7, v1

    #@71
    if-ge v3, v7, :cond_4

    #@73
    .line 282
    aget-object v7, v1, v3

    #@75
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7c
    .line 283
    array-length v7, v1

    #@7d
    add-int/lit8 v7, v7, -0x1

    #@7f
    if-ge v3, v7, :cond_3

    #@81
    .line 284
    const-string/jumbo v7, ","

    #@84
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@87
    .line 281
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@89
    goto :goto_1

    #@8a
    .line 287
    .end local v3    # "k":I
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8d
    move-result-object v7

    #@8e
    return-object v7

    #@8f
    .line 288
    .end local v1    # "exceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "j":I
    .end local v4    # "mod":I
    .end local v5    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    #@90
    .line 289
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v8, "<"

    #@98
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v7

    #@9c
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v7

    #@a0
    const-string/jumbo v8, ">"

    #@a3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v7

    #@a7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v7

    #@ab
    return-object v7
.end method
