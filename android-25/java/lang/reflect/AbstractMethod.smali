.class public abstract Ljava/lang/reflect/AbstractMethod;
.super Ljava/lang/reflect/AccessibleObject;
.source "AbstractMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/reflect/AbstractMethod$GenericInfo;
    }
.end annotation


# instance fields
.field protected accessFlags:I

.field protected artMethod:J

.field protected declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected declaringClassOfOverriddenMethod:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected dexMethodIndex:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    #@3
    return-void
.end method

.method private static fixMethodFlags(I)I
    .locals 1
    .param p0, "flags"    # I

    #@0
    .prologue
    .line 91
    and-int/lit16 v0, p0, 0x400

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 92
    and-int/lit16 p0, p0, -0x101

    #@6
    .line 94
    :cond_0
    and-int/lit8 p0, p0, -0x21

    #@8
    .line 95
    const/high16 v0, 0x20000

    #@a
    .line 96
    and-int/2addr v0, p0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 97
    or-int/lit8 p0, p0, 0x20

    #@f
    .line 99
    :cond_1
    const v0, 0xffff

    #@12
    and-int/2addr v0, p0

    #@13
    return v0
.end method

.method private native getSignatureAnnotation()[Ljava/lang/String;
.end method

.method private getSignatureAttribute()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 281
    invoke-direct {p0}, Ljava/lang/reflect/AbstractMethod;->getSignatureAnnotation()[Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 282
    .local v0, "annotation":[Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 283
    return-object v3

    #@8
    .line 285
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 286
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@e
    array-length v4, v0

    #@f
    :goto_0
    if-ge v3, v4, :cond_1

    #@11
    aget-object v2, v0, v3

    #@13
    .line 287
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 286
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 289
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    return-object v3
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


# virtual methods
.method protected compareParameters([Ljava/lang/Class;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 309
    .local p1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v7, p0, Ljava/lang/reflect/AbstractMethod;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    #@2
    invoke-virtual {v7}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@5
    move-result-object v3

    #@6
    .line 310
    .local v3, "dex":Lcom/android/dex/Dex;
    iget v7, p0, Ljava/lang/reflect/AbstractMethod;->dexMethodIndex:I

    #@8
    invoke-virtual {v3, v7}, Lcom/android/dex/Dex;->parameterTypeIndicesFromMethodIndex(I)[S

    #@b
    move-result-object v6

    #@c
    .line 311
    .local v6, "types":[S
    array-length v7, v6

    #@d
    array-length v8, p1

    #@e
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@11
    move-result v5

    #@12
    .line 312
    .local v5, "length":I
    const/4 v4, 0x0

    #@13
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    #@15
    .line 313
    iget-object v7, p0, Ljava/lang/reflect/AbstractMethod;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    #@17
    aget-short v8, v6, v4

    #@19
    invoke-virtual {v7, v3, v8}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    #@1c
    move-result-object v0

    #@1d
    .line 314
    .local v0, "aType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v1, p1, v4

    #@1f
    .line 315
    .local v1, "bType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, v1, :cond_0

    #@21
    .line 316
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@28
    move-result-object v8

    #@29
    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@2c
    move-result v2

    #@2d
    .line 317
    .local v2, "comparison":I
    if-eqz v2, :cond_0

    #@2f
    .line 318
    return v2

    #@30
    .line 312
    .end local v2    # "comparison":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@32
    goto :goto_0

    #@33
    .line 322
    .end local v0    # "aType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "bType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    array-length v7, v6

    #@34
    array-length v8, p1

    #@35
    sub-int/2addr v7, v8

    #@36
    return v7
.end method

.method protected equalMethodParameters([Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    #@1
    .line 295
    iget-object v3, p0, Ljava/lang/reflect/AbstractMethod;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    #@3
    invoke-virtual {v3}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@6
    move-result-object v0

    #@7
    .line 296
    .local v0, "dex":Lcom/android/dex/Dex;
    iget v3, p0, Ljava/lang/reflect/AbstractMethod;->dexMethodIndex:I

    #@9
    invoke-virtual {v0, v3}, Lcom/android/dex/Dex;->parameterTypeIndicesFromMethodIndex(I)[S

    #@c
    move-result-object v2

    #@d
    .line 297
    .local v2, "types":[S
    array-length v3, v2

    #@e
    array-length v4, p1

    #@f
    if-eq v3, v4, :cond_0

    #@11
    .line 298
    return v5

    #@12
    .line 300
    :cond_0
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@14
    if-ge v1, v3, :cond_2

    #@16
    .line 301
    iget-object v3, p0, Ljava/lang/reflect/AbstractMethod;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    #@18
    aget-short v4, v2, v1

    #@1a
    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    #@1d
    move-result-object v3

    #@1e
    aget-object v4, p1, v1

    #@20
    if-eq v3, v4, :cond_1

    #@22
    .line 302
    return v5

    #@23
    .line 300
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 305
    :cond_2
    const/4 v3, 0x1

    #@27
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 179
    instance-of v2, p1, Ljava/lang/reflect/AbstractMethod;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 180
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 183
    check-cast v0, Ljava/lang/reflect/AbstractMethod;

    #@9
    .line 184
    .local v0, "otherMethod":Ljava/lang/reflect/AbstractMethod;
    iget-object v2, p0, Ljava/lang/reflect/AbstractMethod;->declaringClass:Ljava/lang/Class;

    #@b
    iget-object v3, v0, Ljava/lang/reflect/AbstractMethod;->declaringClass:Ljava/lang/Class;

    #@d
    if-ne v2, v3, :cond_1

    #@f
    .line 185
    iget v2, p0, Ljava/lang/reflect/AbstractMethod;->dexMethodIndex:I

    #@11
    iget v3, v0, Ljava/lang/reflect/AbstractMethod;->dexMethodIndex:I

    #@13
    if-ne v2, v3, :cond_1

    #@15
    const/4 v1, 0x1

    #@16
    .line 184
    :cond_1
    return v1
.end method

.method public final getAccessFlags()I
    .locals 1

    #@0
    .prologue
    .line 126
    iget v0, p0, Ljava/lang/reflect/AbstractMethod;->accessFlags:I

    #@2
    return v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 77
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-super {p0, p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    #@0
    .prologue
    .line 212
    invoke-super {p0}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public native getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
.end method

.method getDeclaringClass()Ljava/lang/Class;
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
    .line 133
    iget-object v0, p0, Ljava/lang/reflect/AbstractMethod;->declaringClass:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public final getDexMethodIndex()I
    .locals 1

    #@0
    .prologue
    .line 142
    iget v0, p0, Ljava/lang/reflect/AbstractMethod;->dexMethodIndex:I

    #@2
    return v0
.end method

.method getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 2

    #@0
    .prologue
    .line 197
    invoke-virtual {p0}, Ljava/lang/reflect/AbstractMethod;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

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

.method getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 2

    #@0
    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/lang/reflect/AbstractMethod;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

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

.method final getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;
    .locals 12

    #@0
    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/reflect/AbstractMethod;->getSignatureAttribute()Ljava/lang/String;

    #@3
    move-result-object v6

    #@4
    .line 257
    .local v6, "signatureAttribute":Ljava/lang/String;
    instance-of v4, p0, Ljava/lang/reflect/Method;

    #@6
    .line 258
    .local v4, "method":Z
    if-eqz v4, :cond_0

    #@8
    move-object v2, p0

    #@9
    .line 259
    check-cast v2, Ljava/lang/reflect/Method;

    #@b
    .line 260
    .local v2, "m":Ljava/lang/reflect/Method;
    move-object v3, v2

    #@c
    .line 261
    .local v3, "member":Ljava/lang/reflect/Member;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    .line 268
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .local v1, "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    new-instance v5, Llibcore/reflect/GenericSignatureParser;

    #@12
    invoke-interface {v3}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    #@15
    move-result-object v7

    #@16
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@19
    move-result-object v7

    #@1a
    invoke-direct {v5, v7}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    #@1d
    .line 269
    .local v5, "parser":Llibcore/reflect/GenericSignatureParser;
    if-eqz v4, :cond_1

    #@1f
    .line 270
    check-cast p0, Ljava/lang/reflect/GenericDeclaration;

    #@21
    .end local p0    # "this":Ljava/lang/reflect/AbstractMethod;
    invoke-virtual {v5, p0, v6, v1}, Llibcore/reflect/GenericSignatureParser;->parseForMethod(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    #@24
    .line 276
    :goto_1
    new-instance v7, Ljava/lang/reflect/AbstractMethod$GenericInfo;

    #@26
    iget-object v8, v5, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    #@28
    iget-object v9, v5, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    #@2a
    .line 277
    iget-object v10, v5, Llibcore/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    #@2c
    iget-object v11, v5, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    #@2e
    .line 276
    invoke-direct {v7, v8, v9, v10, v11}, Ljava/lang/reflect/AbstractMethod$GenericInfo;-><init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;)V

    #@31
    return-object v7

    #@32
    .end local v1    # "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "member":Ljava/lang/reflect/Member;
    .end local v5    # "parser":Llibcore/reflect/GenericSignatureParser;
    .restart local p0    # "this":Ljava/lang/reflect/AbstractMethod;
    :cond_0
    move-object v0, p0

    #@33
    .line 263
    check-cast v0, Ljava/lang/reflect/Constructor;

    #@35
    .line 264
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v3, v0

    #@36
    .line 265
    .restart local v3    # "member":Ljava/lang/reflect/Member;
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    #@39
    move-result-object v1

    #@3a
    .restart local v1    # "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_0

    #@3b
    .line 272
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "parser":Llibcore/reflect/GenericSignatureParser;
    :cond_1
    check-cast p0, Ljava/lang/reflect/GenericDeclaration;

    #@3d
    .end local p0    # "this":Ljava/lang/reflect/AbstractMethod;
    invoke-virtual {v5, p0, v6, v1}, Llibcore/reflect/GenericSignatureParser;->parseForConstructor(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    #@40
    goto :goto_1
.end method

.method getModifiers()I
    .locals 1

    #@0
    .prologue
    .line 103
    iget v0, p0, Ljava/lang/reflect/AbstractMethod;->accessFlags:I

    #@2
    invoke-static {v0}, Ljava/lang/reflect/AbstractMethod;->fixMethodFlags(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
.end method

.method getParameterTypes()[Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 161
    iget-object v4, p0, Ljava/lang/reflect/AbstractMethod;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    #@2
    invoke-virtual {v4}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@5
    move-result-object v0

    #@6
    .line 162
    .local v0, "dex":Lcom/android/dex/Dex;
    iget v4, p0, Ljava/lang/reflect/AbstractMethod;->dexMethodIndex:I

    #@8
    invoke-virtual {v0, v4}, Lcom/android/dex/Dex;->parameterTypeIndicesFromMethodIndex(I)[S

    #@b
    move-result-object v3

    #@c
    .line 163
    .local v3, "types":[S
    array-length v4, v3

    #@d
    if-nez v4, :cond_0

    #@f
    .line 164
    sget-object v4, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    #@11
    return-object v4

    #@12
    .line 166
    :cond_0
    array-length v4, v3

    #@13
    new-array v2, v4, [Ljava/lang/Class;

    #@15
    .line 167
    .local v2, "parametersArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@17
    if-ge v1, v4, :cond_1

    #@19
    .line 169
    iget-object v4, p0, Ljava/lang/reflect/AbstractMethod;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    #@1b
    aget-short v5, v3, v1

    #@1d
    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    #@20
    move-result-object v4

    #@21
    aput-object v4, v2, v1

    #@23
    .line 167
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 171
    :cond_1
    return-object v2
.end method

.method abstract getSignature()Ljava/lang/String;
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
    .line 203
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-nez p1, :cond_0

    #@2
    .line 204
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "annotationType == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 206
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/reflect/AbstractMethod;->isAnnotationPresentNative(Ljava/lang/Class;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method isBridge()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 111
    iget v1, p0, Ljava/lang/reflect/AbstractMethod;->accessFlags:I

    #@3
    and-int/lit8 v1, v1, 0x40

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method isDefault()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 119
    iget v1, p0, Ljava/lang/reflect/AbstractMethod;->accessFlags:I

    #@3
    const/high16 v2, 0x400000

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method isSynthetic()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 115
    iget v1, p0, Ljava/lang/reflect/AbstractMethod;->accessFlags:I

    #@3
    and-int/lit16 v1, v1, 0x1000

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method isVarArgs()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 107
    iget v1, p0, Ljava/lang/reflect/AbstractMethod;->accessFlags:I

    #@3
    and-int/lit16 v1, v1, 0x80

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method toGenericString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 189
    invoke-virtual {p0}, Ljava/lang/reflect/AbstractMethod;->toGenericStringHelper()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method final toGenericStringHelper()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    const/16 v7, 0x20

    #@2
    const/4 v8, 0x0

    #@3
    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    #@5
    const/16 v6, 0x50

    #@7
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a
    .line 330
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/reflect/AbstractMethod;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    #@d
    move-result-object v3

    #@e
    .local v3, "info":Ljava/lang/reflect/AbstractMethod$GenericInfo;
    move-object v6, p0

    #@f
    .line 331
    check-cast v6, Ljava/lang/reflect/Member;

    #@11
    invoke-interface {v6}, Ljava/lang/reflect/Member;->getModifiers()I

    #@14
    move-result v4

    #@15
    .line 333
    .local v4, "modifiers":I
    if-eqz v4, :cond_0

    #@17
    .line 334
    and-int/lit16 v6, v4, -0x81

    #@19
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 337
    :cond_0
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    #@26
    if-eqz v6, :cond_3

    #@28
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    #@2a
    array-length v6, v6

    #@2b
    if-lez v6, :cond_3

    #@2d
    .line 338
    const/16 v6, 0x3c

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    .line 339
    const/4 v2, 0x0

    #@33
    .local v2, "i":I
    :goto_0
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    #@35
    array-length v6, v6

    #@36
    if-ge v2, v6, :cond_2

    #@38
    .line 340
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    #@3a
    aget-object v6, v6, v2

    #@3c
    invoke-static {v5, v6}, Llibcore/reflect/Types;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    #@3f
    .line 341
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    #@41
    array-length v6, v6

    #@42
    add-int/lit8 v6, v6, -0x1

    #@44
    if-ge v2, v6, :cond_1

    #@46
    .line 342
    const-string/jumbo v6, ","

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 339
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 345
    :cond_2
    const-string/jumbo v6, "> "

    #@52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .end local v2    # "i":I
    :cond_3
    move-object v6, p0

    #@56
    .line 347
    check-cast v6, Ljava/lang/reflect/Member;

    #@58
    invoke-interface {v6}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    #@5b
    move-result-object v0

    #@5c
    .line 348
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v6, p0, Ljava/lang/reflect/Constructor;

    #@5e
    if-eqz v6, :cond_5

    #@60
    .line 350
    invoke-static {v5, v0}, Llibcore/reflect/Types;->appendTypeName(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    #@63
    .line 360
    .end local p0    # "this":Ljava/lang/reflect/AbstractMethod;
    :goto_1
    const/16 v6, 0x28

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@68
    .line 361
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericParameterTypes:Llibcore/reflect/ListOfTypes;

    #@6a
    invoke-virtual {v6}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    #@6d
    move-result-object v6

    #@6e
    invoke-static {v5, v6}, Llibcore/reflect/Types;->appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V

    #@71
    .line 362
    const/16 v6, 0x29

    #@73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@76
    .line 365
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericExceptionTypes:Llibcore/reflect/ListOfTypes;

    #@78
    invoke-static {v6, v8}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    #@7b
    move-result-object v1

    #@7c
    .line 366
    .local v1, "genericExceptionTypeArray":[Ljava/lang/reflect/Type;
    array-length v6, v1

    #@7d
    if-lez v6, :cond_4

    #@7f
    .line 367
    const-string/jumbo v6, " throws "

    #@82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 368
    invoke-static {v5, v1}, Llibcore/reflect/Types;->appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V

    #@88
    .line 370
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v6

    #@8c
    return-object v6

    #@8d
    .line 353
    .end local v1    # "genericExceptionTypeArray":[Ljava/lang/reflect/Type;
    .restart local p0    # "this":Ljava/lang/reflect/AbstractMethod;
    :cond_5
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericReturnType:Ljava/lang/reflect/Type;

    #@8f
    invoke-static {v6}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    #@92
    move-result-object v6

    #@93
    invoke-static {v5, v6}, Llibcore/reflect/Types;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    #@96
    .line 354
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@99
    .line 356
    invoke-static {v5, v0}, Llibcore/reflect/Types;->appendTypeName(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    #@9c
    .line 357
    const-string/jumbo v6, "."

    #@9f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v6

    #@a3
    check-cast p0, Ljava/lang/reflect/Method;

    #@a5
    .end local p0    # "this":Ljava/lang/reflect/AbstractMethod;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@a8
    move-result-object v7

    #@a9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    goto :goto_1
.end method
