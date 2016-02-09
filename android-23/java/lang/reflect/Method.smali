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
    .line 53
    new-instance v0, Ljava/lang/reflect/Method$1;

    #@2
    invoke-direct {v0}, Ljava/lang/reflect/Method$1;-><init>()V

    #@5
    sput-object v0, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    #@7
    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/reflect/AbstractMethod;-><init>()V

    #@3
    return-void
.end method

.method private native getExceptionTypesNative()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method


# virtual methods
.method equalNameAndParameters(Ljava/lang/reflect/Method;)Z
    .locals 2
    .param p1, "m"    # Ljava/lang/reflect/Method;

    #@0
    .prologue
    .line 212
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
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 201
    invoke-super {p0, p1}, Ljava/lang/reflect/AbstractMethod;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
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
    .line 297
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    if-nez p1, :cond_0

    #@2
    .line 298
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "annotationType == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 300
    :cond_0
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    #@0
    .prologue
    .line 83
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getAnnotations()[Ljava/lang/annotation/Annotation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    #@0
    .prologue
    .line 292
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 293
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    #@a
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, [Ljava/lang/annotation/Annotation;

    #@10
    return-object v1
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
    .line 142
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 327
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDefaultValue(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getExceptionTypes()[Ljava/lang/Class;
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
    .line 152
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->isProxy()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 153
    invoke-direct {p0}, Ljava/lang/reflect/Method;->getExceptionTypesNative()[Ljava/lang/Class;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 156
    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getExceptions(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/Class;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 2

    #@0
    .prologue
    .line 271
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
    .line 246
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
    .line 288
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
    .line 95
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
    .line 133
    iget-object v2, p0, Ljava/lang/reflect/Method;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    #@2
    invoke-virtual {v2}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@5
    move-result-object v0

    #@6
    .line 134
    .local v0, "dex":Lcom/android/dex/Dex;
    iget v2, p0, Ljava/lang/reflect/Method;->dexMethodIndex:I

    #@8
    invoke-virtual {v0, v2}, Lcom/android/dex/Dex;->nameIndexFromMethodIndex(I)I

    #@b
    move-result v1

    #@c
    .line 135
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
    .locals 2

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Ljava/lang/reflect/Method;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    #@2
    iget v1, p0, Ljava/lang/reflect/Method;->dexMethodIndex:I

    #@4
    .line 312
    invoke-static {v0, v1}, Llibcore/reflect/AnnotationAccess;->getParameterAnnotations(Ljava/lang/Class;I)[[Ljava/lang/annotation/Annotation;

    #@7
    move-result-object v0

    #@8
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
    .line 170
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
    .line 180
    iget-object v2, p0, Ljava/lang/reflect/Method;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    #@2
    invoke-virtual {v2}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@5
    move-result-object v0

    #@6
    .line 181
    .local v0, "dex":Lcom/android/dex/Dex;
    iget v2, p0, Ljava/lang/reflect/Method;->dexMethodIndex:I

    #@8
    invoke-virtual {v0, v2}, Lcom/android/dex/Dex;->returnTypeIndexFromMethodIndex(I)I

    #@b
    move-result v1

    #@c
    .line 183
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
    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 430
    .local v2, "result":Ljava/lang/StringBuilder;
    const/16 v3, 0x28

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    .line 431
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    .line 432
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
    .line 433
    .local v0, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Llibcore/reflect/Types;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 432
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 435
    .end local v0    # "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/16 v3, 0x29

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    .line 436
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
    .line 438
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
    .line 226
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    #@3
    move-result-object v0

    #@4
    .line 227
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
    .line 193
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
    .line 250
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-nez p1, :cond_0

    #@2
    .line 251
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "annotationType == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 253
    :cond_0
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->isDeclaredAnnotationPresent(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public isBridge()Z
    .locals 1

    #@0
    .prologue
    .line 113
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->isBridge()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    #@0
    .prologue
    .line 123
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->isSynthetic()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    #@0
    .prologue
    .line 104
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->isVarArgs()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public toGenericString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 222
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->toGenericString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    .line 397
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    #@7
    move-result v3

    #@8
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->getDeclarationMethodModifiers(I)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 396
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f
    .line 399
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 400
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 402
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 403
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    .line 404
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 405
    const/16 v3, 0x2e

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    .line 406
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 407
    const-string/jumbo v3, "("

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 408
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@46
    move-result-object v1

    #@47
    .line 409
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v1}, Llibcore/reflect/Types;->toString([Ljava/lang/Class;)Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 410
    const-string/jumbo v3, ")"

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 411
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    #@57
    move-result-object v0

    #@58
    .line 412
    .local v0, "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v0

    #@59
    if-eqz v3, :cond_1

    #@5b
    .line 413
    const-string/jumbo v3, " throws "

    #@5e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 414
    invoke-static {v0}, Llibcore/reflect/Types;->toString([Ljava/lang/Class;)Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 416
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    return-object v3
.end method
