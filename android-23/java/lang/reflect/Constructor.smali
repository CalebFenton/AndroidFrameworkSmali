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


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-direct {p0}, Ljava/lang/reflect/AbstractMethod;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 128
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
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
    .line 197
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    if-nez p1, :cond_0

    #@2
    .line 198
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "annotationType == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 200
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
    .line 56
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
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
    .line 185
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 186
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
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 92
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->getDeclaringClass()Ljava/lang/Class;

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
    .line 102
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getExceptions(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 1

    #@0
    .prologue
    .line 181
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
    .line 162
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
    .line 64
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
    .line 85
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
    .locals 2

    #@0
    .prologue
    .line 213
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    #@2
    iget v1, p0, Ljava/lang/reflect/Constructor;->dexMethodIndex:I

    #@4
    .line 212
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
    .line 111
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
    .line 225
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 227
    .local v2, "result":Ljava/lang/StringBuilder;
    const/16 v3, 0x28

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    .line 228
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    .line 229
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
    .line 230
    .local v0, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Llibcore/reflect/Types;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 229
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 232
    .end local v0    # "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-string/jumbo v3, ")V"

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 234
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
    .line 132
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    #@3
    move-result-object v0

    #@4
    .line 133
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
    .line 120
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
    .line 190
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-nez p1, :cond_0

    #@2
    .line 191
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "annotationType == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 193
    :cond_0
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->isDeclaredAnnotationPresent(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    #@0
    .prologue
    .line 78
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
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
    .line 71
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->isVarArgs()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public varargs native newInstance([Ljava/lang/Object;)Ljava/lang/Object;
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

.method public setAccessible(Z)V
    .locals 3
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 330
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 331
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Class;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 332
    new-instance v1, Ljava/lang/SecurityException;

    #@a
    const-string/jumbo v2, "Can\'t make class constructor accessible"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 333
    :cond_0
    const-class v1, Ljava/lang/reflect/Field;

    #@13
    if-ne v0, v1, :cond_1

    #@15
    .line 334
    new-instance v1, Ljava/lang/SecurityException;

    #@17
    const-string/jumbo v2, "Can\'t make field constructor accessible"

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 335
    :cond_1
    const-class v1, Ljava/lang/reflect/Method;

    #@20
    if-ne v0, v1, :cond_2

    #@22
    .line 336
    new-instance v1, Ljava/lang/SecurityException;

    #@24
    const-string/jumbo v2, "Can\'t make method constructor accessible"

    #@27
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 338
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/reflect/AbstractMethod;->setAccessible(Z)V

    #@2e
    .line 329
    return-void
.end method

.method public toGenericString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 143
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/AbstractMethod;->toGenericString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 306
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    #@5
    move-result v3

    #@6
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    .line 308
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 309
    const/16 v3, 0x20

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 311
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 312
    const-string/jumbo v3, "("

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 313
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@2c
    move-result-object v1

    #@2d
    .line 314
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v1}, Llibcore/reflect/Types;->toString([Ljava/lang/Class;)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 315
    const-string/jumbo v3, ")"

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 316
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    #@3d
    move-result-object v0

    #@3e
    .line 317
    .local v0, "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v0

    #@3f
    if-lez v3, :cond_1

    #@41
    .line 318
    const-string/jumbo v3, " throws "

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 319
    invoke-static {v0}, Llibcore/reflect/Types;->toString([Ljava/lang/Class;)Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 322
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    return-object v3
.end method
