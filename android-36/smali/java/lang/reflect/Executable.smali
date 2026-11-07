.class public abstract Ljava/lang/reflect/Executable;
.super Ljava/lang/reflect/AccessibleObject;
.source "Executable.java"

# interfaces
.implements Ljava/lang/reflect/Member;
.implements Ljava/lang/reflect/GenericDeclaration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/reflect/Executable$GenericInfo;
    }
.end annotation


# instance fields
.field private greylist-max-o accessFlags:I

.field private greylist artMethod:J

.field private greylist-max-o declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private greylist-max-o declaringClassOfOverriddenMethod:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private greylist-max-o dexMethodIndex:I

.field private volatile transient greylist-max-o hasRealParameterData:Z

.field private volatile transient greylist-max-o parameters:[Ljava/lang/reflect/Parameter;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    return-void
.end method

.method private static greylist-max-o fixMethodFlags(I)I
    .registers 3
    .param p0, "flags"    # I

    .line 610
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_6

    .line 611
    and-int/lit16 p0, p0, -0x101

    .line 613
    :cond_6
    and-int/lit8 p0, p0, -0x21

    .line 614
    const/high16 v0, 0x20000

    .line 615
    .local v0, "ACC_DECLARED_SYNCHRONIZED":I
    and-int v1, p0, v0

    if-eqz v1, :cond_10

    .line 616
    or-int/lit8 p0, p0, 0x20

    .line 618
    :cond_10
    const v1, 0xffff

    and-int/2addr v1, p0

    return v1
.end method

.method private native greylist-max-o getAnnotationNative(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getDeclaredAnnotationsNative()[Ljava/lang/annotation/Annotation;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getParameterAnnotationsNative()[[Ljava/lang/annotation/Annotation;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getParameters0()[Ljava/lang/reflect/Parameter;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getSignatureAnnotation()[Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private greylist-max-o getSignatureAttribute()Ljava/lang/String;
    .registers 6

    .line 713
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getSignatureAnnotation()[Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "annotation":[Ljava/lang/String;
    if-nez v0, :cond_8

    .line 715
    const/4 v1, 0x0

    return-object v1

    .line 717
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    .local v1, "result":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_19

    aget-object v4, v0, v3

    .line 719
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .end local v4    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 721
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private native greylist-max-o isAnnotationPresentNative(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private greylist-max-o privateGetParameters()[Ljava/lang/reflect/Parameter;
    .registers 5

    .line 383
    iget-object v0, p0, Ljava/lang/reflect/Executable;->parameters:[Ljava/lang/reflect/Parameter;

    .line 385
    .local v0, "tmp":[Ljava/lang/reflect/Parameter;
    if-nez v0, :cond_29

    .line 389
    :try_start_4
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getParameters0()[Ljava/lang/reflect/Parameter;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_8} :catch_1d

    .line 398
    .end local v0    # "tmp":[Ljava/lang/reflect/Parameter;
    .local v1, "tmp":[Ljava/lang/reflect/Parameter;
    nop

    .line 401
    if-nez v1, :cond_13

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/reflect/Executable;->hasRealParameterData:Z

    .line 403
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->synthesizeAllParams()[Ljava/lang/reflect/Parameter;

    move-result-object v0

    .end local v1    # "tmp":[Ljava/lang/reflect/Parameter;
    .restart local v0    # "tmp":[Ljava/lang/reflect/Parameter;
    goto :goto_1a

    .line 405
    .end local v0    # "tmp":[Ljava/lang/reflect/Parameter;
    .restart local v1    # "tmp":[Ljava/lang/reflect/Parameter;
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/reflect/Executable;->hasRealParameterData:Z

    .line 406
    invoke-direct {p0, v1}, Ljava/lang/reflect/Executable;->verifyParameters([Ljava/lang/reflect/Parameter;)V

    move-object v0, v1

    .line 409
    .end local v1    # "tmp":[Ljava/lang/reflect/Parameter;
    .restart local v0    # "tmp":[Ljava/lang/reflect/Parameter;
    :goto_1a
    iput-object v0, p0, Ljava/lang/reflect/Executable;->parameters:[Ljava/lang/reflect/Parameter;

    goto :goto_29

    .line 390
    :catch_1d
    move-exception v1

    .line 393
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/reflect/MalformedParametersException;

    const-string v3, "Invalid parameter metadata in class file"

    invoke-direct {v2, v3}, Ljava/lang/reflect/MalformedParametersException;-><init>(Ljava/lang/String;)V

    .line 396
    .local v2, "e2":Ljava/lang/reflect/MalformedParametersException;
    invoke-virtual {v2, v1}, Ljava/lang/reflect/MalformedParametersException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 397
    throw v2

    .line 412
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "e2":Ljava/lang/reflect/MalformedParametersException;
    :cond_29
    :goto_29
    return-object v0
.end method

.method private greylist-max-o synthesizeAllParams()[Ljava/lang/reflect/Parameter;
    .registers 7

    .line 346
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameterCount()I

    move-result v0

    .line 347
    .local v0, "realparams":I
    new-array v1, v0, [Ljava/lang/reflect/Parameter;

    .line 348
    .local v1, "out":[Ljava/lang/reflect/Parameter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_27

    .line 353
    new-instance v3, Ljava/lang/reflect/Parameter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, v2}, Ljava/lang/reflect/Parameter;-><init>(Ljava/lang/String;ILjava/lang/reflect/Executable;I)V

    aput-object v3, v1, v2

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 354
    .end local v2    # "i":I
    :cond_27
    return-object v1
.end method

.method private greylist-max-o verifyParameters([Ljava/lang/reflect/Parameter;)V
    .registers 10
    .param p1, "parameters"    # [Ljava/lang/reflect/Parameter;

    .line 358
    const v0, 0x9010

    .line 360
    .local v0, "mask":I
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    array-length v2, p1

    if-ne v1, v2, :cond_74

    .line 363
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_73

    aget-object v3, p1, v2

    .line 364
    .local v3, "parameter":Ljava/lang/reflect/Parameter;
    invoke-virtual {v3}, Ljava/lang/reflect/Parameter;->getRealName()Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/reflect/Parameter;->getModifiers()I

    move-result v5

    .line 367
    .local v5, "mods":I
    if-eqz v4, :cond_62

    .line 368
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_43

    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_43

    .line 369
    const/16 v6, 0x3b

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v7, :cond_43

    const/16 v6, 0x5b

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v7, :cond_43

    .line 370
    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v7, :cond_43

    goto :goto_62

    .line 371
    :cond_43
    new-instance v1, Ljava/lang/reflect/MalformedParametersException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid parameter name \""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/reflect/MalformedParametersException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :cond_62
    :goto_62
    const v6, 0x9010

    and-int/2addr v6, v5

    if-ne v5, v6, :cond_6b

    .line 363
    .end local v3    # "parameter":Ljava/lang/reflect/Parameter;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "mods":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 376
    .restart local v3    # "parameter":Ljava/lang/reflect/Parameter;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "mods":I
    :cond_6b
    new-instance v1, Ljava/lang/reflect/MalformedParametersException;

    const-string v2, "Invalid parameter modifiers"

    invoke-direct {v1, v2}, Ljava/lang/reflect/MalformedParametersException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    .end local v3    # "parameter":Ljava/lang/reflect/Parameter;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "mods":I
    :cond_73
    return-void

    .line 361
    :cond_74
    new-instance v1, Ljava/lang/reflect/MalformedParametersException;

    const-string v2, "Wrong number of parameters in MethodParameters attribute"

    invoke-direct {v1, v2}, Ljava/lang/reflect/MalformedParametersException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method native greylist-max-o compareMethodParametersInternal(Ljava/lang/reflect/Method;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method final greylist-max-o equalNameAndParametersInternal(Ljava/lang/reflect/Method;)Z
    .registers 4
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .line 727
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Executable;->compareMethodParametersInternal(Ljava/lang/reflect/Method;)I

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method greylist-max-o equalParamTypes([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 63
    .local p1, "params1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "params2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_13

    .line 65
    aget-object v1, p1, v0

    aget-object v3, p2, v0

    if-eq v1, v3, :cond_10

    .line 66
    return v2

    .line 64
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 68
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_15
    return v2
.end method

.method public final greylist-max-o getAccessFlags()I
    .registers 2

    .line 666
    iget v0, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    return v0
.end method

.method greylist-max-o getAllGenericParameterTypes()[Ljava/lang/reflect/Type;
    .registers 11

    .line 278
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->hasGenericInformation()Z

    move-result v0

    .line 283
    .local v0, "genericInfo":Z
    if-nez v0, :cond_b

    .line 284
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 286
    :cond_b
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->hasRealParameterData()Z

    move-result v1

    .line 287
    .local v1, "realParamData":Z
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 288
    .local v2, "genericParamTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 289
    .local v3, "nonGenericParamTypes":[Ljava/lang/reflect/Type;
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/reflect/Type;

    .line 290
    .local v4, "out":[Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v5

    .line 291
    .local v5, "params":[Ljava/lang/reflect/Parameter;
    const/4 v6, 0x0

    .line 294
    .local v6, "fromidx":I
    if-eqz v1, :cond_43

    .line 295
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_22
    array-length v8, v4

    if-ge v7, v8, :cond_42

    .line 296
    aget-object v8, v5, v7

    .line 297
    .local v8, "param":Ljava/lang/reflect/Parameter;
    invoke-virtual {v8}, Ljava/lang/reflect/Parameter;->isSynthetic()Z

    move-result v9

    if-nez v9, :cond_3b

    invoke-virtual {v8}, Ljava/lang/reflect/Parameter;->isImplicit()Z

    move-result v9

    if-eqz v9, :cond_34

    goto :goto_3b

    .line 303
    :cond_34
    aget-object v9, v2, v6

    aput-object v9, v4, v7

    .line 304
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    .line 300
    :cond_3b
    :goto_3b
    aget-object v9, v3, v7

    aput-object v9, v4, v7

    .line 295
    .end local v8    # "param":Ljava/lang/reflect/Parameter;
    :goto_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 316
    .end local v7    # "i":I
    :cond_42
    return-object v4

    .line 313
    :cond_43
    array-length v7, v2

    array-length v8, v3

    if-ne v7, v8, :cond_49

    .line 314
    move-object v7, v2

    goto :goto_4a

    :cond_49
    move-object v7, v3

    .line 313
    :goto_4a
    return-object v7
.end method

.method public whitelist test-api getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 539
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-direct {p0, p1}, Ljava/lang/reflect/Executable;->getAnnotationNative(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 555
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Llibcore/reflect/AnnotatedElements;->getDirectOrIndirectAnnotationsByType(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o getArtMethod()J
    .registers 3

    .line 673
    iget-wide v0, p0, Ljava/lang/reflect/Executable;->artMethod:J

    return-wide v0
.end method

.method public whitelist test-api getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .line 563
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getDeclaredAnnotationsNative()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method final greylist-max-o getDeclaringClassInternal()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 626
    iget-object v0, p0, Ljava/lang/reflect/Executable;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract whitelist test-api getExceptionTypes()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public whitelist test-api getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .registers 3

    .line 466
    nop

    .line 467
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getMethodOrConstructorGenericInfoInternal()Ljava/lang/reflect/Executable$GenericInfo;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/reflect/Executable$GenericInfo;->genericExceptionTypes:Llibcore/reflect/ListOfTypes;

    .line 466
    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .registers 3

    .line 269
    nop

    .line 270
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getMethodOrConstructorGenericInfoInternal()Ljava/lang/reflect/Executable$GenericInfo;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/reflect/Executable$GenericInfo;->genericParameterTypes:Llibcore/reflect/ListOfTypes;

    .line 269
    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method final native greylist-max-o getMethodNameInternal()Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method final greylist-max-o getMethodOrConstructorGenericInfoInternal()Ljava/lang/reflect/Executable$GenericInfo;
    .registers 9

    .line 699
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "signatureAttribute":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 701
    .local v1, "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v2, Llibcore/reflect/GenericSignatureParser;

    .line 702
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 703
    .local v2, "parser":Llibcore/reflect/GenericSignatureParser;
    instance-of v3, p0, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1d

    .line 704
    invoke-virtual {v2, p0, v0, v1}, Llibcore/reflect/GenericSignatureParser;->parseForMethod(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    goto :goto_20

    .line 706
    :cond_1d
    invoke-virtual {v2, p0, v0, v1}, Llibcore/reflect/GenericSignatureParser;->parseForConstructor(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 708
    :goto_20
    new-instance v3, Ljava/lang/reflect/Executable$GenericInfo;

    iget-object v4, v2, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    iget-object v5, v2, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    iget-object v6, v2, Llibcore/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    iget-object v7, v2, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/lang/reflect/Executable$GenericInfo;-><init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;)V

    return-object v3
.end method

.method final native greylist-max-o getMethodReturnTypeInternal()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public abstract whitelist test-api getModifiers()I
.end method

.method final greylist-max-o getModifiersInternal()I
    .registers 2

    .line 622
    iget v0, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    invoke-static {v0}, Ljava/lang/reflect/Executable;->fixMethodFlags(I)I

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api getName()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
.end method

.method final greylist-max-o getParameterAnnotationsInternal()[[Ljava/lang/annotation/Annotation;
    .registers 6

    .line 653
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getParameterAnnotationsNative()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 654
    .local v0, "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_1d

    .line 655
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    aput v1, v2, v4

    const-class v1, Ljava/lang/annotation/Annotation;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [[Ljava/lang/annotation/Annotation;

    .line 657
    :cond_1d
    return-object v0
.end method

.method public whitelist test-api getParameterCount()I
    .registers 2

    .line 238
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method final native greylist-max-o getParameterCountInternal()I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public abstract whitelist test-api getParameterTypes()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method final native greylist-max-o getParameterTypesInternal()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist test-api getParameters()[Ljava/lang/reflect/Parameter;
    .registers 2

    .line 342
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->privateGetParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/reflect/Parameter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Parameter;

    return-object v0
.end method

.method public abstract whitelist test-api getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end method

.method abstract greylist-max-o hasGenericInformation()Z
.end method

.method final greylist-max-o hasGenericInformationInternal()Z
    .registers 2

    .line 692
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->getSignatureAnnotation()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method greylist-max-o hasRealParameterData()Z
    .registers 2

    .line 418
    iget-object v0, p0, Ljava/lang/reflect/Executable;->parameters:[Ljava/lang/reflect/Parameter;

    if-nez v0, :cond_7

    .line 419
    invoke-direct {p0}, Ljava/lang/reflect/Executable;->privateGetParameters()[Ljava/lang/reflect/Parameter;

    .line 421
    :cond_7
    iget-boolean v0, p0, Ljava/lang/reflect/Executable;->hasRealParameterData:Z

    return v0
.end method

.method public final whitelist test-api isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 646
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-direct {p0, p1}, Ljava/lang/reflect/Executable;->isAnnotationPresentNative(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method final greylist-max-o isBridgeMethodInternal()Z
    .registers 2

    .line 751
    iget v0, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method final greylist-max-o isDefaultMethodInternal()Z
    .registers 5

    .line 744
    const/high16 v0, -0x7fc00000

    .line 745
    .local v0, "kMask":I
    const/high16 v1, 0x400000

    .line 746
    .local v1, "kValue":I
    iget v2, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    const/high16 v3, -0x7fc00000

    and-int/2addr v2, v3

    const/high16 v3, 0x400000

    if-ne v2, v3, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    return v2
.end method

.method public whitelist test-api isSynthetic()Z
    .registers 2

    .line 501
    iget v0, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isVarArgs()Z
    .registers 2

    .line 487
    iget v0, p0, Ljava/lang/reflect/Executable;->accessFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method greylist-max-o printModifiersIfNonzero(Ljava/lang/StringBuilder;IZ)V
    .registers 8
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "mask"    # I
    .param p3, "isDefault"    # Z

    .line 83
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getModifiers()I

    move-result v0

    and-int/2addr v0, p2

    .line 85
    .local v0, "mod":I
    const/16 v1, 0x20

    if-eqz v0, :cond_17

    if-nez p3, :cond_17

    .line 86
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 88
    :cond_17
    and-int/lit8 v2, v0, 0x7

    .line 89
    .local v2, "access_mod":I
    if-eqz v2, :cond_26

    .line 90
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_26
    if-eqz p3, :cond_2d

    .line 92
    const-string v3, "default "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_2d
    and-int/lit8 v0, v0, -0x8

    .line 94
    if-eqz v0, :cond_3c

    .line 95
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .end local v2    # "access_mod":I
    :cond_3c
    :goto_3c
    return-void
.end method

.method greylist-max-o separateWithCommas([Ljava/lang/Class;Ljava/lang/StringBuilder;)V
    .registers 5
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 74
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 75
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_17

    .line 77
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "j":I
    :cond_1a
    return-void
.end method

.method greylist-max-o sharedToGenericString(IZ)Ljava/lang/String;
    .registers 11
    .param p1, "modifierMask"    # I
    .param p2, "isDefault"    # Z

    .line 130
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1, p2}, Ljava/lang/reflect/Executable;->printModifiersIfNonzero(Ljava/lang/StringBuilder;IZ)V

    .line 134
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 135
    .local v1, "typeparms":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v2, v1

    const/16 v3, 0x2c

    if-lez v2, :cond_32

    .line 136
    const/4 v2, 0x1

    .line 137
    .local v2, "first":Z
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    array-length v4, v1

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v4, :cond_2d

    aget-object v6, v1, v5

    .line 139
    .local v6, "typeparm":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    if-nez v2, :cond_22

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :cond_22
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const/4 v2, 0x0

    .line 138
    .end local v6    # "typeparm":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 146
    :cond_2d
    const-string v4, "> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .end local v2    # "first":Z
    :cond_32
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Executable;->specificToGenericStringHeader(Ljava/lang/StringBuilder;)V

    .line 151
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 153
    .local v2, "params":[Ljava/lang/reflect/Type;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3f
    array-length v5, v2

    if-ge v4, v5, :cond_6a

    .line 154
    aget-object v5, v2, v4

    invoke-interface {v5}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "param":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->isVarArgs()Z

    move-result v6

    if-eqz v6, :cond_5c

    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_5c

    .line 156
    const-string v6, "\\[\\]$"

    const-string v7, "..."

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 157
    :cond_5c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_67

    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .end local v5    # "param":Ljava/lang/String;
    :cond_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 161
    .end local v4    # "j":I
    :cond_6a
    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 163
    .local v4, "exceptions":[Ljava/lang/reflect/Type;
    array-length v5, v4

    if-lez v5, :cond_a2

    .line 164
    const-string v5, " throws "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_7c
    array-length v6, v4

    if-ge v5, v6, :cond_a2

    .line 166
    aget-object v6, v4, v5

    instance-of v6, v6, Ljava/lang/Class;

    if-eqz v6, :cond_8e

    .line 167
    aget-object v6, v4, v5

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_94

    .line 168
    :cond_8e
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 166
    :goto_94
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_9f

    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    :cond_9f
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 173
    .end local v5    # "k":I
    :cond_a2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a6} :catch_a7

    return-object v3

    .line 174
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "typeparms":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .end local v2    # "params":[Ljava/lang/reflect/Type;
    .end local v4    # "exceptions":[Ljava/lang/reflect/Type;
    :catch_a7
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o sharedToString(IZ[Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;
    .registers 8
    .param p1, "modifierMask"    # I
    .param p2, "isDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 104
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p4, "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1, p2}, Ljava/lang/reflect/Executable;->printModifiersIfNonzero(Ljava/lang/StringBuilder;IZ)V

    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Executable;->specificToStringHeader(Ljava/lang/StringBuilder;)V

    .line 109
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0, p3, v0}, Ljava/lang/reflect/Executable;->separateWithCommas([Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 111
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    array-length v1, p4

    if-lez v1, :cond_23

    .line 113
    const-string v1, " throws "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0, p4, v0}, Ljava/lang/reflect/Executable;->separateWithCommas([Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 116
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    return-object v1

    .line 117
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catch_28
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method abstract greylist-max-o specificToGenericStringHeader(Ljava/lang/StringBuilder;)V
.end method

.method abstract greylist-max-o specificToStringHeader(Ljava/lang/StringBuilder;)V
.end method

.method public abstract whitelist test-api toGenericString()Ljava/lang/String;
.end method
