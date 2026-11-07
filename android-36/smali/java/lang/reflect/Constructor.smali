.class public final Ljava/lang/reflect/Constructor;
.super Ljava/lang/reflect/Executable;
.source "Constructor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/reflect/Executable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o ORDER_BY_SIGNATURE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o serializationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final greylist-max-o serializationCtor:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    const/4 v0, 0x0

    sput-object v0, Ljava/lang/reflect/Constructor;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 68
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ljava/lang/reflect/Constructor;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 69
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local p1, "serializationCtor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "serializationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/reflect/Executable;-><init>()V

    .line 73
    iput-object p1, p0, Ljava/lang/reflect/Constructor;->serializationCtor:Ljava/lang/Class;

    .line 74
    iput-object p2, p0, Ljava/lang/reflect/Constructor;->serializationClass:Ljava/lang/Class;

    .line 75
    return-void
.end method

.method private varargs native blacklist newInstance0([Ljava/lang/Object;)Ljava/lang/Object;
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

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o newInstanceFromSerialization(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
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

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 194
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    if-eqz p1, :cond_20

    instance-of v0, p1, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_20

    .line 195
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 196
    .local v0, "other":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_20

    .line 198
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Constructor;->equalParamTypes([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v1

    return v1

    .line 201
    .end local v0    # "other":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_20
    const/4 v0, 0x0

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

    .line 383
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-super {p0, p1}, Ljava/lang/reflect/Executable;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .line 391
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
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
            "TT;>;"
        }
    .end annotation

    .line 97
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/Executable;->getDeclaringClassInternal()Ljava/lang/Class;

    move-result-object v0

    return-object v0
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

    .line 184
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/Executable;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .registers 2

    .line 164
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/Executable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getModifiers()I
    .registers 2

    .line 115
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/Executable;->getModifiersInternal()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 106
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .registers 2

    .line 401
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/Executable;->getParameterAnnotationsInternal()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getParameterCount()I
    .registers 2

    .line 152
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
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

    .line 138
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/Executable;->getParameterTypesInternal()[Ljava/lang/Class;

    move-result-object v0

    .line 139
    .local v0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v0, :cond_9

    .line 140
    sget-object v1, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    return-object v1

    .line 143
    :cond_9
    return-object v0
.end method

.method public whitelist test-api getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable<",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getMethodOrConstructorGenericInfoInternal()Ljava/lang/reflect/Executable$GenericInfo;

    move-result-object v0

    .line 128
    .local v0, "info":Ljava/lang/reflect/Executable$GenericInfo;
    iget-object v1, v0, Ljava/lang/reflect/Executable$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v1}, [Ljava/lang/reflect/TypeVariable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/TypeVariable;

    return-object v1
.end method

.method greylist-max-o hasGenericInformation()Z
    .registers 2

    .line 87
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/Executable;->hasGenericInformationInternal()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 210
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isSynthetic()Z
    .registers 2

    .line 374
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/Executable;->isSynthetic()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isVarArgs()Z
    .registers 2

    .line 364
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-super {p0}, Ljava/lang/reflect/Executable;->isVarArgs()Z

    move-result v0

    return v0
.end method

.method public varargs whitelist test-api newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "initargs"    # [Ljava/lang/Object;
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

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 342
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->serializationClass:Ljava/lang/Class;

    if-nez v0, :cond_9

    .line 343
    invoke-direct {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 345
    :cond_9
    iget-object v0, p0, Ljava/lang/reflect/Constructor;->serializationCtor:Ljava/lang/Class;

    iget-object v1, p0, Ljava/lang/reflect/Constructor;->serializationClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Constructor;->newInstanceFromSerialization(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r serializationCopy(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 81
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local p1, "ctor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/reflect/Constructor;

    invoke-direct {v0, p1, p2}, Ljava/lang/reflect/Constructor;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method greylist-max-o specificToGenericStringHeader(Ljava/lang/StringBuilder;)V
    .registers 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 285
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->specificToStringHeader(Ljava/lang/StringBuilder;)V

    .line 286
    return-void
.end method

.method greylist-max-o specificToStringHeader(Ljava/lang/StringBuilder;)V
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 241
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    return-void
.end method

.method public whitelist test-api toGenericString()Ljava/lang/String;
    .registers 3

    .line 280
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-static {}, Ljava/lang/reflect/Modifier;->constructorModifiers()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Constructor;->sharedToGenericString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 233
    .local p0, "this":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-static {}, Ljava/lang/reflect/Modifier;->constructorModifiers()I

    move-result v0

    .line 235
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 236
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 233
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Ljava/lang/reflect/Constructor;->sharedToString(IZ[Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
