.class public final Ljava/lang/reflect/Method;
.super Ljava/lang/reflect/Executable;
.source "Method.java"


# static fields
.field public static final greylist-max-o ORDER_BY_SIGNATURE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Ljava/lang/reflect/Method$1;

    invoke-direct {v0}, Ljava/lang/reflect/Method$1;-><init>()V

    sput-object v0, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/reflect/Executable;-><init>()V

    .line 91
    return-void
.end method


# virtual methods
.method greylist-max-o equalNameAndParameters(Ljava/lang/reflect/Method;)Z
    .registers 3
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .line 524
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->equalNameAndParametersInternal(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 242
    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    instance-of v1, p1, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3a

    .line 243
    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 244
    .local v1, "other":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3a

    .line 245
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_3a

    .line 247
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 248
    return v0

    .line 250
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/reflect/Method;->equalParamTypes([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 253
    .end local v1    # "other":Ljava/lang/reflect/Method;
    :cond_3a
    return v0
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

    .line 494
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-super {p0, p1}, Ljava/lang/reflect/Executable;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .line 502
    invoke-super {p0}, Ljava/lang/reflect/Executable;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDeclaringClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 105
    invoke-super {p0}, Ljava/lang/reflect/Executable;->getDeclaringClassInternal()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public native whitelist test-api getDefaultValue()Ljava/lang/Object;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native whitelist test-api getExceptionTypes()[Ljava/lang/Class;
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

.method public whitelist test-api getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .registers 2

    .line 232
    invoke-super {p0}, Ljava/lang/reflect/Executable;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .registers 2

    .line 212
    invoke-super {p0}, Ljava/lang/reflect/Executable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getGenericReturnType()Ljava/lang/reflect/Type;
    .registers 2

    .line 177
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getMethodOrConstructorGenericInfoInternal()Ljava/lang/reflect/Executable$GenericInfo;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/reflect/Executable$GenericInfo;->genericReturnType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getModifiers()I
    .registers 2

    .line 124
    invoke-super {p0}, Ljava/lang/reflect/Executable;->getModifiersInternal()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 115
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getMethodNameInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .registers 2

    .line 512
    invoke-super {p0}, Ljava/lang/reflect/Executable;->getParameterAnnotationsInternal()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getParameterCount()I
    .registers 2

    .line 200
    invoke-super {p0}, Ljava/lang/reflect/Executable;->getParameterCountInternal()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getParameterTypes()[Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 186
    invoke-super {p0}, Ljava/lang/reflect/Executable;->getParameterTypesInternal()[Ljava/lang/Class;

    move-result-object v0

    .line 187
    .local v0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v0, :cond_9

    .line 188
    sget-object v1, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    return-object v1

    .line 191
    :cond_9
    return-object v0
.end method

.method public whitelist test-api getReturnType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getMethodReturnTypeInternal()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getMethodOrConstructorGenericInfoInternal()Ljava/lang/reflect/Executable$GenericInfo;

    move-result-object v0

    .line 137
    .local v0, "info":Ljava/lang/reflect/Executable$GenericInfo;
    iget-object v1, v0, Ljava/lang/reflect/Executable$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v1}, [Ljava/lang/reflect/TypeVariable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/TypeVariable;

    return-object v1
.end method

.method greylist-max-o hasGenericInformation()Z
    .registers 2

    .line 96
    invoke-super {p0}, Ljava/lang/reflect/Executable;->hasGenericInformationInternal()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 262
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public varargs native whitelist test-api invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public whitelist test-api isBridge()Z
    .registers 2

    .line 431
    invoke-super {p0}, Ljava/lang/reflect/Executable;->isBridgeMethodInternal()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isDefault()Z
    .registers 2

    .line 467
    invoke-super {p0}, Ljava/lang/reflect/Executable;->isDefaultMethodInternal()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isSynthetic()Z
    .registers 2

    .line 450
    invoke-super {p0}, Ljava/lang/reflect/Executable;->isSynthetic()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isVarArgs()Z
    .registers 2

    .line 440
    invoke-super {p0}, Ljava/lang/reflect/Executable;->isVarArgs()Z

    move-result v0

    return v0
.end method

.method greylist-max-o specificToGenericStringHeader(Ljava/lang/StringBuilder;)V
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 353
    .local v0, "genRetType":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    return-void
.end method

.method greylist-max-o specificToStringHeader(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    return-void
.end method

.method public whitelist test-api toGenericString()Ljava/lang/String;
    .registers 3

    .line 347
    invoke-static {}, Ljava/lang/reflect/Modifier;->methodModifiers()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isDefault()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->sharedToGenericString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 293
    invoke-static {}, Ljava/lang/reflect/Modifier;->methodModifiers()I

    move-result v0

    .line 294
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isDefault()Z

    move-result v1

    .line 295
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 296
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 293
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/lang/reflect/Method;->sharedToString(IZ[Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
