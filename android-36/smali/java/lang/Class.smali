.class public final Ljava/lang/Class;
.super Ljava/lang/Object;
.source "Class.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Type;
.implements Ljava/lang/reflect/AnnotatedElement;
.implements Ljava/lang/invoke/TypeDescriptor$OfField;
.implements Ljava/lang/constant/Constable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Class$Caches;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/reflect/GenericDeclaration;",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/reflect/AnnotatedElement;",
        "Ljava/lang/invoke/TypeDescriptor$OfField<",
        "Ljava/lang/Class<",
        "*>;>;",
        "Ljava/lang/constant/Constable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o ANNOTATION:I = 0x2000

.field private static final greylist-max-o ENUM:I = 0x4000

.field private static final greylist-max-o FINALIZABLE:I = -0x80000000

.field private static final greylist-max-o SYNTHETIC:I = 0x1000

.field private static final whitelist serialVersionUID:J = 0x2c7e5503d9bf9553L


# instance fields
.field private transient greylist accessFlags:I

.field private transient greylist-max-o classFlags:I

.field private transient greylist classLoader:Ljava/lang/ClassLoader;

.field private transient greylist-max-o classSize:I

.field private transient greylist-max-r clinitThreadId:I

.field private transient greylist-max-o componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o copiedMethodsOffset:S

.field private transient greylist dexCache:Ljava/lang/Object;

.field private transient greylist dexClassDefIndex:I

.field private volatile transient greylist-max-o dexTypeIndex:I

.field private transient greylist-max-o extData:Ldalvik/system/ClassExt;

.field private transient blacklist fields:J

.field private transient greylist ifTable:[Ljava/lang/Object;

.field private transient greylist-max-o methods:J

.field private transient greylist name:Ljava/lang/String;

.field private transient greylist-max-o numReferenceInstanceFields:I

.field private transient greylist-max-o numReferenceStaticFields:I

.field private transient greylist objectSize:I

.field private transient greylist-max-o objectSizeAllocFastPath:I

.field private transient greylist-max-o primitiveType:I

.field private transient greylist-max-o referenceInstanceOffsets:I

.field private transient greylist-max-r status:I

.field private transient greylist-max-o superClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o virtualMethodsOffset:S

.field private transient greylist-max-o vtable:Ljava/lang/Object;


# direct methods
.method private constructor greylist <init>()V
    .registers 1

    .line 330
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 332
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    .line 336
    iput-object p2, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    .line 337
    return-void
.end method

.method private greylist-max-o cannotCastMsg(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 4188
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot cast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static native greylist-max-o classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private greylist-max-o classNameImpliesTopLevel()Z
    .registers 3

    .line 1778
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist elementType()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1487
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 1489
    :cond_8
    move-object v0, p0

    .line 1490
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1491
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_9

    .line 1493
    :cond_14
    return-object v0
.end method

.method private greylist-max-o findInterfaceMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 2979
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 2980
    .local v0, "iftable":[Ljava/lang/Object;
    if-eqz v0, :cond_21

    .line 2984
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_21

    .line 2985
    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/Class;

    .line 2986
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v2, p1, p2}, Ljava/lang/Class;->getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2987
    .local v3, "result":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2988
    return-object v3

    .line 2984
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "result":Ljava/lang/reflect/Method;
    :cond_1e
    add-int/lit8 v1, v1, -0x2

    goto :goto_7

    .line 2993
    .end local v1    # "i":I
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist test-api forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 501
    invoke-static {}, Ljdk/internal/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 502
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/ClassLoader;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "initialize"    # Z
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 592
    if-nez p2, :cond_6

    .line 593
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object p2

    .line 597
    :cond_6
    :try_start_6
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_a} :catch_c

    .line 604
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 605
    return-object v0

    .line 598
    .end local v0    # "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_c
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 600
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/LinkageError;

    if-eqz v2, :cond_19

    .line 601
    move-object v2, v1

    check-cast v2, Ljava/lang/LinkageError;

    throw v2

    .line 603
    :cond_19
    throw v0
.end method

.method private greylist-max-o getConstructor0([Ljava/lang/Class;I)Ljava/lang/reflect/Constructor;
    .registers 7
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 3374
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_4

    .line 3375
    sget-object p1, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 3377
    :cond_4
    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    .line 3378
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_f

    .line 3377
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3379
    .restart local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "parameter type is null"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3382
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_17
    invoke-direct {p0, p1}, Ljava/lang/Class;->getDeclaredConstructorInternal([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 3383
    .local v0, "result":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    if-eqz v0, :cond_2a

    if-nez p2, :cond_29

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getAccessFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3387
    :cond_29
    return-object v0

    .line 3384
    :cond_2a
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".<init> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3385
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private native greylist-max-o getDeclaredConstructorInternal([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getDeclaredConstructorsInternal(Z)[Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)[",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private blacklist getDirectSubClassCount([Ljava/lang/Class;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 4993
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "subClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 4994
    .local v0, "result":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_12

    aget-object v3, p1, v2

    .line 4995
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v3}, Ljava/lang/Class;->isDirectSubType(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 4996
    add-int/lit8 v0, v0, 0x1

    .line 4994
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4999
    :cond_12
    return v0
.end method

.method private native greylist-max-o getEnclosingConstructorNative()Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getEnclosingMethodNative()Ljava/lang/reflect/Method;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getInnerClassFlags(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getInterfacesInternal()[Ljava/lang/Class;
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

.method private greylist getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "recursivePublicMethods"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 2925
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2926
    if-nez p2, :cond_7

    .line 2927
    sget-object p2, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 2929
    :cond_7
    array-length v0, p2

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1a

    aget-object v2, p2, v1

    .line 2930
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_12

    .line 2929
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2931
    .restart local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "parameter type is null"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2934
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1a
    if-eqz p3, :cond_21

    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_25

    .line 2935
    :cond_21
    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_25
    nop

    .line 2937
    .local v0, "result":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_35

    if-eqz p3, :cond_34

    .line 2938
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2942
    :cond_34
    return-object v0

    .line 2939
    :cond_35
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2940
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private native greylist-max-o getNameNative()Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native blacklist getNestHostFromAnnotation()Ljava/lang/Class;
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

.method private blacklist getNestMembers(Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 4748
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "originatingMember":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Class;->getNestMembersFromAnnotation()[Ljava/lang/Class;

    move-result-object v0

    .line 4749
    .local v0, "members":[Ljava/lang/Class;
    if-nez v0, :cond_b

    .line 4750
    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 4752
    :cond_b
    if-eq p1, p0, :cond_18

    invoke-static {v0, p1}, Ljava/lang/Class;->nestMembersIncludeMember([Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 4753
    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 4756
    :cond_18
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 4757
    .local v1, "result":[Ljava/lang/Class;
    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 4758
    const/4 v3, 0x1

    .line 4759
    .local v3, "idx":I
    array-length v4, v0

    :goto_22
    if-ge v2, v4, :cond_3a

    aget-object v5, v0, v2

    .line 4760
    .local v5, "m":Ljava/lang/Class;
    if-eqz v5, :cond_37

    invoke-direct {v5}, Ljava/lang/Class;->getNestHostFromAnnotation()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 4761
    goto :goto_37

    .line 4763
    :cond_33
    aput-object v5, v1, v3

    .line 4764
    add-int/lit8 v3, v3, 0x1

    .line 4759
    .end local v5    # "m":Ljava/lang/Class;
    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 4767
    :cond_3a
    array-length v2, v1

    if-ge v3, v2, :cond_4b

    .line 4768
    new-array v2, v3, [Ljava/lang/Class;

    .line 4769
    .local v2, "tmp":[Ljava/lang/Class;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_40
    array-length v5, v2

    if-ge v4, v5, :cond_4a

    .line 4770
    aget-object v5, v1, v4

    aput-object v5, v2, v4

    .line 4769
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 4772
    .end local v4    # "i":I
    :cond_4a
    move-object v1, v2

    .line 4775
    .end local v2    # "tmp":[Ljava/lang/Class;
    :cond_4b
    return-object v1
.end method

.method private native blacklist getNestMembersFromAnnotation()[Ljava/lang/Class;
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

.method private native blacklist getPermittedSubclassesFromAnnotation()[Ljava/lang/Class;
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

.method static native greylist-max-o getPrimitiveClass(Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getPublicDeclaredFields()[Ljava/lang/reflect/Field;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private greylist-max-o getPublicFieldsRecursive(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 2113
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v0, :cond_d

    .line 2114
    invoke-direct {v0}, Ljava/lang/Class;->getPublicDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2113
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_1

    .line 2118
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    iget-object v0, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 2119
    .local v0, "iftable":[Ljava/lang/Object;
    if-eqz v0, :cond_23

    .line 2120
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v2, v0

    if-ge v1, v2, :cond_23

    .line 2121
    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v2}, Ljava/lang/Class;->getPublicDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2120
    add-int/lit8 v1, v1, 0x2

    goto :goto_12

    .line 2124
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method private greylist-max-o getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 2946
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v0, :cond_19

    .line 2947
    invoke-direct {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2948
    .local v1, "result":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAccessFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2949
    return-object v1

    .line 2946
    .end local v1    # "result":Ljava/lang/reflect/Method;
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 2953
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_19
    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->findInterfaceMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getPublicMethodsInternal(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 2225
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2226
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 2228
    iget-object v1, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_10
    if-eqz v1, :cond_1c

    .line 2229
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2228
    iget-object v1, v1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_10

    .line 2233
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1c
    iget-object v1, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 2234
    .local v1, "iftable":[Ljava/lang/Object;
    if-eqz v1, :cond_32

    .line 2235
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    array-length v3, v1

    if-ge v2, v3, :cond_32

    .line 2236
    aget-object v3, v1, v2

    check-cast v3, Ljava/lang/Class;

    .line 2237
    .local v3, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2235
    .end local v3    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x2

    goto :goto_21

    .line 2240
    .end local v2    # "i":I
    :cond_32
    return-void
.end method

.method private blacklist getRecordComponents0()[Ljava/lang/reflect/RecordComponent;
    .registers 11

    .line 3914
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Llibcore/reflect/RecordComponents;

    invoke-direct {v0, p0}, Llibcore/reflect/RecordComponents;-><init>(Ljava/lang/Class;)V

    move-object v5, v0

    .line 3917
    .local v5, "libcoreComponents":Llibcore/reflect/RecordComponents;
    invoke-virtual {v5}, Llibcore/reflect/RecordComponents;->getNames()[Ljava/lang/String;

    move-result-object v0

    .line 3918
    .local v0, "names":[Ljava/lang/String;
    invoke-virtual {v5}, Llibcore/reflect/RecordComponents;->getTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 3919
    .local v7, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2f

    if-nez v7, :cond_13

    goto :goto_2f

    .line 3927
    :cond_13
    array-length v1, v0

    array-length v2, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3928
    .local v8, "size":I
    new-array v9, v8, [Ljava/lang/reflect/RecordComponent;

    .line 3929
    .local v9, "components":[Ljava/lang/reflect/RecordComponent;
    const/4 v1, 0x0

    move v6, v1

    .local v6, "i":I
    :goto_1d
    if-ge v6, v8, :cond_2e

    .line 3930
    aget-object v3, v0, v6

    .line 3931
    .local v3, "name":Ljava/lang/String;
    aget-object v4, v7, v6

    .line 3932
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/reflect/RecordComponent;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Ljava/lang/reflect/RecordComponent;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Llibcore/reflect/RecordComponents;I)V

    aput-object v1, v9, v6

    .line 3929
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 3934
    .end local v6    # "i":I
    :cond_2e
    return-object v9

    .line 3922
    .end local v8    # "size":I
    .end local v9    # "components":[Ljava/lang/reflect/RecordComponent;
    :cond_2f
    :goto_2f
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/reflect/RecordComponent;

    return-object v1
.end method

.method private native greylist-max-o getSignatureAnnotation()[Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private greylist-max-o getSignatureAttribute()Ljava/lang/String;
    .registers 6

    .line 4525
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAnnotation()[Ljava/lang/String;

    move-result-object v0

    .line 4526
    .local v0, "annotation":[Ljava/lang/String;
    if-nez v0, :cond_8

    .line 4527
    const/4 v1, 0x0

    return-object v1

    .line 4529
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4530
    .local v1, "result":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_19

    aget-object v4, v0, v3

    .line 4531
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4530
    .end local v4    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 4533
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private native blacklist getSimpleNameNative()Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o isDeclaredAnnotationPresent(Ljava/lang/Class;)Z
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

.method private blacklist isDirectSubType(Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 5003
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 5006
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_e
    if-ge v4, v3, :cond_18

    aget-object v5, v0, v4

    .line 5007
    .local v5, "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v5, p0, :cond_15

    .line 5008
    return v1

    .line 5006
    .end local v5    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 5014
    :cond_18
    return v2

    .line 5012
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p0, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    return v1
.end method

.method private greylist-max-o isLocalOrAnonymousClass()Z
    .registers 2

    .line 2027
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private native blacklist isRecord0()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private blacklist isTopLevelClass()Z
    .registers 2

    .line 2012
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->isLocalOrAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static blacklist nestHostHasMember(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 4627
    .local p0, "host":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "member":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4628
    const/4 v0, 0x1

    return v0

    .line 4630
    :cond_8
    invoke-direct {p0}, Ljava/lang/Class;->getNestMembersFromAnnotation()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/Class;->nestMembersIncludeMember([Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static blacklist nestMembersIncludeMember([Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 4634
    .local p0, "members":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "member":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4635
    return v0

    .line 4637
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_15

    aget-object v3, p0, v2

    .line 4638
    .local v3, "m":Ljava/lang/Class;
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 4639
    const/4 v0, 0x1

    return v0

    .line 4637
    .end local v3    # "m":Ljava/lang/Class;
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4642
    :cond_15
    return v0
.end method

.method private greylist-max-o resolveName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 3355
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3b

    .line 3356
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3357
    .local v0, "baseName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 3358
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    .line 3359
    .local v2, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3360
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3361
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3362
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3363
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3365
    .end local v0    # "baseName":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "len":I
    :cond_3a
    goto :goto_3f

    .line 3366
    :cond_3b
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3368
    :goto_3f
    return-object p1
.end method

.method static blacklist typeVarBounds(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 452
    .local p0, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 453
    .local v0, "bounds":[Ljava/lang/reflect/Type;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 454
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 456
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extends "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 457
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Ljava/lang/Class$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ljava/lang/Class$$ExternalSyntheticLambda1;-><init>()V

    .line 458
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 459
    const-string v3, " & "

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    return-object v1
.end method


# virtual methods
.method public whitelist test-api arrayType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 4878
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api arrayType()Ljava/lang/invoke/TypeDescriptor$OfField;
    .registers 2

    .line 191
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Ljava/lang/Class<",
            "+TU;>;"
        }
    .end annotation

    .line 4215
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4216
    return-object p0

    .line 4218
    :cond_7
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be cast to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4219
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api cast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 4182
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_13

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_13

    .line 4183
    :cond_9
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p1}, Ljava/lang/Class;->cannotCastMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4184
    :cond_13
    :goto_13
    return-object p1
.end method

.method public whitelist test-api componentType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 4866
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public bridge synthetic whitelist test-api componentType()Ljava/lang/invoke/TypeDescriptor$OfField;
    .registers 2

    .line 191
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->componentType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public blacklist describeConstable()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/constant/ClassDesc;",
            ">;"
        }
    .end annotation

    .line 4892
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Ljava/lang/Class;->elementType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_c

    :cond_b
    move-object v0, p0

    .line 4893
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    goto :goto_23

    .line 4894
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Class;->descriptorString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 4893
    :goto_23
    return-object v1
.end method

.method public whitelist test-api descriptorString()Ljava/lang/String;
    .registers 9

    .line 4828
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4829
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->basicTypeString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4831
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 4832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->descriptorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4833
    :cond_2f
    invoke-virtual {p0}, Ljava/lang/Class;->isHidden()Z

    move-result v0

    const/16 v1, 0x3b

    const/16 v2, 0x4c

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    if-eqz v0, :cond_78

    .line 4834
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4835
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 4836
    .local v5, "index":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4837
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4838
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4839
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v5, 0x1

    .line 4840
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4841
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4842
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4836
    return-object v1

    .line 4844
    .end local v0    # "name":Ljava/lang/String;
    .end local v5    # "index":I
    :cond_78
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 4845
    .restart local v0    # "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4846
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4847
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4848
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4849
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4845
    return-object v1
.end method

.method public whitelist test-api desiredAssertionStatus()Z
    .registers 2

    .line 4005
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method native blacklist ensureExtDataPresent()Ldalvik/system/ClassExt;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public greylist-max-o getAccessFlags()I
    .registers 2

    .line 4552
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->accessFlags:I

    return v0
.end method

.method public whitelist test-api getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 4233
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4235
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 4236
    .local v0, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    if-eqz v0, :cond_a

    .line 4237
    return-object v0

    .line 4240
    :cond_a
    const-class v1, Ljava/lang/annotation/Inherited;

    invoke-direct {p1, v1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4241
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_16
    if-eqz v1, :cond_24

    .line 4242
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 4243
    if-eqz v0, :cond_1f

    .line 4244
    return-object v0

    .line 4241
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_16

    .line 4249
    .end local v1    # "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_24
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 10

    .line 4353
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4354
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_1a

    aget-object v5, v1, v4

    .line 4355
    .local v5, "declaredAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4354
    .end local v5    # "declaredAnnotation":Ljava/lang/annotation/Annotation;
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 4357
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1e
    if-eqz v1, :cond_47

    .line 4358
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_26
    if-ge v5, v4, :cond_42

    aget-object v6, v2, v5

    .line 4359
    .local v6, "declaredAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v7

    .line 4360
    .local v7, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    const-class v8, Ljava/lang/annotation/Inherited;

    invoke-direct {v7, v8}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 4361
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4358
    .end local v6    # "declaredAnnotation":Ljava/lang/annotation/Annotation;
    .end local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 4357
    :cond_42
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1e

    .line 4367
    .end local v1    # "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_47
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 4368
    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/annotation/Annotation;

    return-object v2
.end method

.method public whitelist test-api getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)[TA;"
        }
    .end annotation

    .line 4289
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-super {p0, p1}, Ljava/lang/reflect/GenericDeclaration;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 4291
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;, "[TA;"
    array-length v1, v0

    if-eqz v1, :cond_8

    .line 4292
    return-object v0

    .line 4302
    :cond_8
    const-class v1, Ljava/lang/annotation/Inherited;

    invoke-direct {p1, v1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 4303
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 4304
    .local v1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1b

    .line 4305
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v2

    return-object v2

    .line 4310
    .end local v1    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/annotation/Annotation;

    return-object v1
.end method

.method public whitelist test-api getCanonicalName()Ljava/lang/String;
    .registers 7

    .line 1928
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 1929
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 1930
    .local v0, "canonicalName":Ljava/lang/String;
    if-eqz v0, :cond_25

    .line 1931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1933
    :cond_25
    return-object v1

    .line 1935
    .end local v0    # "canonicalName":Ljava/lang/String;
    :cond_26
    invoke-virtual {p0}, Ljava/lang/Class;->isHidden()Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-direct {p0}, Ljava/lang/Class;->isLocalOrAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_6c

    .line 1939
    :cond_33
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    .line 1940
    .local v0, "enclosingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_3e

    .line 1941
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1943
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 1944
    .local v2, "enclosingName":Ljava/lang/String;
    if-nez v2, :cond_45

    .line 1947
    return-object v1

    .line 1948
    :cond_45
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 1949
    .local v1, "simpleName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1950
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1951
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1952
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1953
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1949
    return-object v3

    .line 1938
    .end local v0    # "enclosingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "simpleName":Ljava/lang/String;
    .end local v2    # "enclosingName":Ljava/lang/String;
    :cond_6c
    :goto_6c
    return-object v1
.end method

.method public whitelist test-api getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 1081
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1082
    const/4 v0, 0x0

    return-object v0

    .line 1086
    :cond_8
    iget-object v0, p0, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_11

    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v0

    goto :goto_13

    :cond_11
    iget-object v0, p0, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    :goto_13
    return-object v0
.end method

.method public whitelist test-api getClasses()[Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 2050
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2051
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    move-object v1, p0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_6
    if-eqz v1, :cond_25

    .line 2052
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_22

    aget-object v5, v2, v4

    .line 2053
    .local v5, "member":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2054
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2052
    .end local v5    # "member":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 2051
    :cond_22
    iget-object v1, v1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    goto :goto_6

    .line 2058
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    return-object v1
.end method

.method public whitelist test-api getComponentType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1478
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    return-object v0
.end method

.method public varargs whitelist test-api getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2477
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Class;->getConstructor0([Ljava/lang/Class;I)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getConstructors()[Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 2275
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/Class;->getDeclaredConstructorsInternal(Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public native whitelist test-api getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native whitelist test-api getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist test-api getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)[TA;"
        }
    .end annotation

    .line 4323
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4328
    invoke-super {p0, p1}, Ljava/lang/reflect/GenericDeclaration;->getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public native whitelist test-api getDeclaredClasses()[Ljava/lang/Class;
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

.method public varargs whitelist test-api getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 3067
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/lang/Class;->getConstructor0([Ljava/lang/Class;I)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2788
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Class;->getDeclaredConstructorsInternal(Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public native whitelist test-api getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native whitelist test-api getDeclaredFields()[Ljava/lang/reflect/Field;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist-max-o getDeclaredFieldsUnchecked(Z)[Ljava/lang/reflect/Field;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public varargs whitelist test-api getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 2919
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDeclaredMethods()[Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2727
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2728
    .local v1, "result":[Ljava/lang/reflect/Method;
    array-length v2, v1

    :goto_6
    if-ge v0, v2, :cond_13

    aget-object v3, v1, v0

    .line 2730
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 2731
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 2728
    .end local v3    # "m":Ljava/lang/reflect/Method;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2733
    :cond_13
    return-object v1
.end method

.method public native greylist getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native whitelist test-api getDeclaringClass()Ljava/lang/Class;
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

.method public native whitelist test-api getEnclosingClass()Ljava/lang/Class;
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

.method public whitelist test-api getEnclosingConstructor()Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1725
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1726
    const/4 v0, 0x0

    return-object v0

    .line 1771
    :cond_8
    invoke-direct {p0}, Ljava/lang/Class;->getEnclosingConstructorNative()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEnclosingMethod()Ljava/lang/reflect/Method;
    .registers 2

    .line 1582
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1583
    const/4 v0, 0x0

    return-object v0

    .line 1633
    :cond_8
    invoke-direct {p0}, Ljava/lang/Class;->getEnclosingMethodNative()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEnumConstants()[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 4094
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstantsShared()[Ljava/lang/Object;

    move-result-object v0

    .line 4095
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    if-eqz v0, :cond_d

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public greylist-max-o getEnumConstantsShared()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 4107
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 4108
    :cond_8
    invoke-static {p0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 2324
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    invoke-direct {p0, p1}, Ljava/lang/Class;->getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2326
    .local v0, "result":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_a

    .line 2329
    return-object v0

    .line 2327
    :cond_a
    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getFields()[Ljava/lang/reflect/Field;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 2102
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2103
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicFieldsRecursive(Ljava/util/List;)V

    .line 2104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Field;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    return-object v1
.end method

.method public whitelist test-api getGenericInterfaces()[Ljava/lang/reflect/Type;
    .registers 7

    .line 1441
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/lang/Class$Caches;->-$$Nest$sfgetgenericInterfaces()Llibcore/util/BasicLruCache;

    move-result-object v0

    monitor-enter v0

    .line 1442
    :try_start_5
    invoke-static {}, Ljava/lang/Class$Caches;->-$$Nest$sfgetgenericInterfaces()Llibcore/util/BasicLruCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Type;

    .line 1443
    .local v1, "result":[Ljava/lang/reflect/Type;
    if-nez v1, :cond_38

    .line 1444
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v2

    .line 1445
    .local v2, "annotationSignature":Ljava/lang/String;
    if-nez v2, :cond_1d

    .line 1446
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "result":[Ljava/lang/reflect/Type;
    .local v3, "result":[Ljava/lang/reflect/Type;
    goto :goto_31

    .line 1448
    .end local v3    # "result":[Ljava/lang/reflect/Type;
    .restart local v1    # "result":[Ljava/lang/reflect/Type;
    :cond_1d
    new-instance v3, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v4}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1449
    .local v3, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v3, p0, v2}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1450
    iget-object v4, v3, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v4

    move-object v1, v4

    .line 1452
    .end local v3    # "parser":Llibcore/reflect/GenericSignatureParser;
    :goto_31
    invoke-static {}, Ljava/lang/Class$Caches;->-$$Nest$sfgetgenericInterfaces()Llibcore/util/BasicLruCache;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    .end local v2    # "annotationSignature":Ljava/lang/String;
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_45

    .line 1455
    array-length v0, v1

    if-nez v0, :cond_3e

    move-object v0, v1

    goto :goto_44

    :cond_3e
    invoke-virtual {v1}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    :goto_44
    return-object v0

    .line 1454
    .end local v1    # "result":[Ljava/lang/reflect/Type;
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public whitelist test-api getGenericSuperclass()Ljava/lang/reflect/Type;
    .registers 5

    .line 1205
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1208
    .local v0, "genericSuperclass":Ljava/lang/reflect/Type;
    if-nez v0, :cond_8

    .line 1209
    const/4 v1, 0x0

    return-object v1

    .line 1212
    :cond_8
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    .line 1213
    .local v1, "annotationSignature":Ljava/lang/String;
    if-eqz v1, :cond_1c

    .line 1214
    new-instance v2, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1215
    .local v2, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v2, p0, v1}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1216
    iget-object v0, v2, Llibcore/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    .line 1218
    .end local v2    # "parser":Llibcore/reflect/GenericSignatureParser;
    :cond_1c
    invoke-static {v0}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o getInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 2968
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v0, :cond_19

    .line 2969
    invoke-direct {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2970
    .local v1, "result":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2971
    return-object v1

    .line 2968
    .end local v1    # "result":Ljava/lang/reflect/Method;
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 2975
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_19
    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->findInterfaceMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getInterfaces()[Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1356
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1357
    const-class v0, Ljava/lang/Cloneable;

    const-class v1, Ljava/io/Serializable;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 1360
    :cond_f
    invoke-direct {p0}, Ljava/lang/Class;->getInterfacesInternal()[Ljava/lang/Class;

    move-result-object v0

    .line 1361
    .local v0, "ifaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v0, :cond_18

    .line 1362
    sget-object v1, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    return-object v1

    .line 1365
    :cond_18
    return-object v0
.end method

.method public varargs whitelist test-api getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 2438
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2440
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMethods()[Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 2209
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2210
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicMethodsInternal(Ljava/util/List;)V

    .line 2216
    sget-object v1, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->removeDuplicates(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2217
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    return-object v1
.end method

.method public whitelist test-api getModifiers()I
    .registers 4

    .line 1538
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1539
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 1540
    .local v0, "componentModifiers":I
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_14

    .line 1541
    and-int/lit16 v0, v0, -0x209

    .line 1543
    :cond_14
    or-int/lit16 v1, v0, 0x410

    return v1

    .line 1545
    .end local v0    # "componentModifiers":I
    :cond_17
    const v0, 0xffff

    .line 1546
    .local v0, "JAVA_FLAGS_MASK":I
    iget v1, p0, Ljava/lang/Class;->accessFlags:I

    and-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/Class;->getInnerClassFlags(I)I

    move-result v1

    .line 1547
    .local v1, "modifiers":I
    and-int v2, v1, v0

    return v2
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 3

    .line 1047
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    .line 1050
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 1051
    invoke-direct {p0}, Ljava/lang/Class;->getNameNative()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    .line 1052
    :cond_b
    return-object v0
.end method

.method public whitelist test-api getNestHost()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 4615
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_26

    .line 4619
    :cond_15
    invoke-direct {p0}, Ljava/lang/Class;->getNestHostFromAnnotation()Ljava/lang/Class;

    move-result-object v0

    .line 4620
    .local v0, "host":Ljava/lang/Class;
    if-nez v0, :cond_1c

    .line 4621
    return-object p0

    .line 4623
    :cond_1c
    invoke-static {v0, p0}, Ljava/lang/Class;->nestHostHasMember(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_24

    move-object v1, v0

    goto :goto_25

    :cond_24
    move-object v1, p0

    :goto_25
    return-object v1

    .line 4616
    .end local v0    # "host":Ljava/lang/Class;
    :cond_26
    :goto_26
    return-object p0
.end method

.method public whitelist test-api getNestMembers()[Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 4732
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_45

    .line 4736
    :cond_15
    invoke-direct {p0}, Ljava/lang/Class;->getNestHostFromAnnotation()Ljava/lang/Class;

    move-result-object v0

    .line 4737
    .local v0, "host":Ljava/lang/Class;
    if-eqz v0, :cond_40

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 4738
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_3b

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_3b

    .line 4741
    :cond_36
    invoke-direct {v0, p0}, Ljava/lang/Class;->getNestMembers(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 4739
    :cond_3b
    :goto_3b
    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 4743
    :cond_40
    invoke-direct {p0, p0}, Ljava/lang/Class;->getNestMembers(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 4733
    .end local v0    # "host":Ljava/lang/Class;
    :cond_45
    :goto_45
    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPackage()Ljava/lang/Package;
    .registers 4

    .line 1240
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1241
    .local v0, "loader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 1242
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1243
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_11

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    :cond_11
    return-object v1

    .line 1245
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_12
    return-object v1
.end method

.method public whitelist test-api getPackageName()Ljava/lang/String;
    .registers 5

    .line 1291
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v0, p0

    .line 1292
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1293
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 1295
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1296
    const-string v1, "java.lang"

    return-object v1

    .line 1298
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1299
    .local v1, "cn":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1300
    .local v2, "dot":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_2e

    :cond_2c
    const-string v3, ""

    :goto_2e
    return-object v3
.end method

.method public whitelist test-api getPermittedSubclasses()[Ljava/lang/Class;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 4949
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 4950
    invoke-direct {p0}, Ljava/lang/Class;->getPermittedSubclassesFromAnnotation()[Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .local v1, "subClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v0, :cond_1e

    goto :goto_3d

    .line 4963
    :cond_1e
    invoke-direct {p0, v1}, Ljava/lang/Class;->getDirectSubClassCount([Ljava/lang/Class;)I

    move-result v0

    .line 4964
    .local v0, "directSubClassCount":I
    array-length v2, v1

    if-ge v0, v2, :cond_3c

    .line 4965
    new-array v2, v0, [Ljava/lang/Class;

    .line 4966
    .local v2, "tmp":[Ljava/lang/Class;
    const/4 v3, 0x0

    .line 4967
    .local v3, "idx":I
    array-length v4, v1

    const/4 v5, 0x0

    :goto_2a
    if-ge v5, v4, :cond_3b

    aget-object v6, v1, v5

    .line 4968
    .local v6, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v6}, Ljava/lang/Class;->isDirectSubType(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 4969
    aput-object v6, v2, v3

    .line 4970
    add-int/lit8 v3, v3, 0x1

    .line 4967
    .end local v6    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 4973
    :cond_3b
    move-object v1, v2

    .line 4989
    .end local v2    # "tmp":[Ljava/lang/Class;
    .end local v3    # "idx":I
    :cond_3c
    return-object v1

    .line 4951
    .end local v0    # "directSubClassCount":I
    .end local v1    # "subClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3d
    :goto_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getProtectionDomain()Ljava/security/ProtectionDomain;
    .registers 2

    .line 3228
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public native blacklist getRecordAnnotationElement(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "[TT2;>;)[TT2;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist test-api getRecordComponents()[Ljava/lang/reflect/RecordComponent;
    .registers 2
    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 2651
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isRecord()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2652
    const/4 v0, 0x0

    return-object v0

    .line 2654
    :cond_8
    invoke-direct {p0}, Ljava/lang/Class;->getRecordComponents0()[Ljava/lang/reflect/RecordComponent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 3163
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Ljava/lang/Class;->resolveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3166
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3167
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_f

    .line 3168
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1

    .line 3170
    :cond_f
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 3111
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Ljava/lang/Class;->resolveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3114
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3115
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_f

    .line 3116
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 3118
    :cond_f
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getSigners()[Ljava/lang/Object;
    .registers 2

    .line 1559
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getSimpleName()Ljava/lang/String;
    .registers 3

    .line 1883
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1886
    :cond_22
    invoke-direct {p0}, Ljava/lang/Class;->getSimpleNameNative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSuperclass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 1167
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1168
    const/4 v0, 0x0

    return-object v0

    .line 1170
    :cond_8
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api getTypeName()Ljava/lang/String;
    .registers 5

    .line 1896
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1898
    move-object v0, p0

    .line 1899
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1901
    .local v1, "dimensions":I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 1902
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .line 1903
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1904
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v3, v1}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_31

    return-object v2

    .line 1905
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "dimensions":I
    :catchall_31
    move-exception v0

    .line 1907
    :cond_32
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable<",
            "Ljava/lang/Class<",
            "TT;>;>;"
        }
    .end annotation

    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 1140
    :try_start_1
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v0

    .line 1141
    .local v0, "annotationSignature":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 1142
    sget-object v1, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1b

    monitor-exit p0

    return-object v1

    .line 1144
    .end local p0    # "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_b
    :try_start_b
    new-instance v1, Llibcore/reflect/GenericSignatureParser;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1145
    .local v1, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v1, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1146
    iget-object v2, v1, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v2

    .line 1139
    .end local v0    # "annotationSignature":Ljava/lang/String;
    .end local v1    # "parser":Llibcore/reflect/GenericSignatureParser;
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public whitelist test-api isAnnotation()Z
    .registers 2

    .line 976
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 4259
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz p1, :cond_26

    .line 4263
    invoke-direct {p0, p1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 4264
    return v1

    .line 4267
    :cond_a
    const-class v0, Ljava/lang/annotation/Inherited;

    invoke-direct {p1, v0}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4268
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_16
    if-eqz v0, :cond_24

    .line 4269
    invoke-direct {v0, p1}, Ljava/lang/Class;->isDeclaredAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4270
    return v1

    .line 4268
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_16

    .line 4275
    .end local v0    # "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_24
    const/4 v0, 0x0

    return v0

    .line 4260
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotationClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native whitelist test-api isAnonymousClass()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist test-api isArray()Z
    .registers 2

    .line 916
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isAssignableFrom(Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 862
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 863
    return v0

    .line 864
    :cond_4
    const-class v1, Ljava/lang/Object;

    if-ne p0, v1, :cond_e

    .line 865
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 866
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 867
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    iget-object v3, p1, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0

    .line 868
    :cond_28
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 870
    iget-object v1, p1, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    .line 871
    .local v1, "iftable":[Ljava/lang/Object;
    if-eqz v1, :cond_3e

    .line 872
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    array-length v4, v1

    if-ge v3, v4, :cond_3e

    .line 873
    aget-object v4, v1, v3

    if-ne v4, p0, :cond_3b

    .line 874
    return v0

    .line 872
    :cond_3b
    add-int/lit8 v3, v3, 0x2

    goto :goto_33

    .line 878
    .end local v3    # "i":I
    :cond_3e
    return v2

    .line 880
    .end local v1    # "iftable":[Ljava/lang/Object;
    :cond_3f
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 881
    :cond_45
    iget-object p1, p1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    if-eqz p1, :cond_4c

    .line 882
    if-ne p1, p0, :cond_45

    .line 883
    return v0

    .line 887
    :cond_4c
    return v2
.end method

.method public whitelist test-api isEnum()Z
    .registers 3

    .line 4039
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_12

    .line 4040
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Enum;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 4039
    :goto_13
    return v0
.end method

.method public greylist-max-o isFinalizable()Z
    .registers 3

    .line 963
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist isHidden()Z
    .registers 2

    .line 4912
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isInstance(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 826
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_4

    .line 827
    const/4 v0, 0x0

    return v0

    .line 829
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isInterface()Z
    .registers 2

    .line 902
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->accessFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isLocalClass()Z
    .registers 2

    .line 1987
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1988
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1987
    :goto_15
    return v0
.end method

.method public whitelist test-api isMemberClass()Z
    .registers 2

    .line 2002
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->isLocalOrAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api isNestmateOf(Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 4662
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 4663
    return v0

    .line 4665
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 4666
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_2b

    .line 4670
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Class;->getNestHost()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getNestHost()Ljava/lang/Class;

    move-result-object v3

    if-ne v1, v3, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v2

    :goto_2a
    return v0

    .line 4667
    :cond_2b
    :goto_2b
    return v2
.end method

.method public whitelist test-api isPrimitive()Z
    .registers 3

    .line 951
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->primitiveType:I

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o isProxy()Z
    .registers 3

    .line 4545
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->accessFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api isRecord()Z
    .registers 3

    .line 4062
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Record;

    if-ne v0, v1, :cond_18

    .line 4063
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_18

    .line 4064
    invoke-direct {p0}, Ljava/lang/Class;->isRecord0()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 4062
    :goto_19
    return v0
.end method

.method public whitelist test-api isSealed()Z
    .registers 3

    .line 5032
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_16

    .line 5035
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Class;->getPermittedSubclasses()[Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1

    .line 5033
    :cond_16
    :goto_16
    return v1
.end method

.method public whitelist test-api isSynthetic()Z
    .registers 2

    .line 991
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public native whitelist test-api newInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation
.end method

.method public whitelist test-api toGenericString()Ljava/lang/String;
    .registers 10

    .line 390
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 391
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 393
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .local v0, "sb":Ljava/lang/StringBuilder;
    move-object v1, p0

    .line 395
    .local v1, "component":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 397
    .local v2, "arrayDepth":I
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 399
    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 400
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 401
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_18

    .line 402
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 405
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {}, Ljava/lang/reflect/Modifier;->classModifiers()I

    move-result v4

    and-int/2addr v3, v4

    .line 406
    .local v3, "modifiers":I
    const/16 v4, 0x20

    if-eqz v3, :cond_43

    .line 407
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    :cond_43
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 412
    const/16 v5, 0x40

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    :cond_4e
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 415
    const-string v5, "interface"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 417
    :cond_5a
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 418
    const-string v5, "enum"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 419
    :cond_66
    invoke-virtual {p0}, Ljava/lang/Class;->isRecord()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 420
    const-string v5, "record"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 422
    :cond_72
    const-string v5, "class"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :goto_77
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .end local v3    # "modifiers":I
    :goto_81
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 429
    .local v3, "typeparms":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v4, v3

    if-lez v4, :cond_cd

    .line 432
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v4

    const/16 v5, 0x23

    const-string v6, ">"

    const-string v7, "<"

    const-string v8, ","

    if-lt v4, v5, :cond_b1

    .line 433
    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Ljava/lang/Class$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Class$$ExternalSyntheticLambda0;-><init>()V

    .line 434
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 435
    invoke-static {v8, v7, v6}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 433
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cd

    .line 437
    :cond_b1
    new-instance v4, Ljava/util/StringJoiner;

    invoke-direct {v4, v8, v7, v6}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 438
    .local v4, "sj":Ljava/util/StringJoiner;
    array-length v5, v3

    const/4 v6, 0x0

    :goto_b8
    if-ge v6, v5, :cond_c6

    aget-object v7, v3, v6

    .line 439
    .local v7, "typeparm":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 438
    .end local v7    # "typeparm":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_b8

    .line 441
    :cond_c6
    invoke-virtual {v4}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .end local v4    # "sj":Ljava/util/StringJoiner;
    :cond_cd
    :goto_cd
    if-lez v2, :cond_d8

    const-string v4, "[]"

    invoke-virtual {v4, v2}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_d8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 352
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "interface "

    goto :goto_19

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, ""

    goto :goto_19

    :cond_17
    const-string v1, "class "

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 353
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    return-object v0
.end method
