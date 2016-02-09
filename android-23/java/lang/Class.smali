.class public final Ljava/lang/Class;
.super Ljava/lang/Object;
.source "Class.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/AnnotatedElement;
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Type;


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
        "Ljava/lang/reflect/AnnotatedElement;",
        "Ljava/lang/reflect/GenericDeclaration;",
        "Ljava/lang/reflect/Type;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2c7e5503d9bf9553L


# instance fields
.field private transient accessFlags:I

.field private transient classLoader:Ljava/lang/ClassLoader;

.field private transient classSize:I

.field private transient clinitThreadId:I

.field private transient componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient dexCache:Ljava/lang/DexCache;

.field private transient dexCacheStrings:[Ljava/lang/String;

.field private transient dexClassDefIndex:I

.field private volatile transient dexTypeIndex:I

.field private transient directMethods:J

.field private transient iFields:J

.field private transient ifTable:[Ljava/lang/Object;

.field private transient name:Ljava/lang/String;

.field private transient numDirectMethods:I

.field private transient numInstanceFields:I

.field private transient numReferenceInstanceFields:I

.field private transient numReferenceStaticFields:I

.field private transient numStaticFields:I

.field private transient numVirtualMethods:I

.field private transient objectSize:I

.field private transient primitiveType:I

.field private transient referenceInstanceOffsets:I

.field private transient sFields:J

.field private transient status:I

.field private transient superClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private transient verifyErrorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient virtualMethods:J

.field private transient vtable:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 259
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private canAccess(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1388
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v0, p1, Ljava/lang/Class;->accessFlags:I

    #@2
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1389
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 1391
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/Class;->inSamePackage(Ljava/lang/Class;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method private canAccessMember(Ljava/lang/Class;I)Z
    .locals 3
    .param p2, "memberModifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "memberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    #@1
    .line 1395
    if-eq p1, p0, :cond_0

    #@3
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 1396
    :cond_0
    return v2

    #@a
    .line 1398
    :cond_1
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 1399
    const/4 v1, 0x0

    #@11
    return v1

    #@12
    .line 1401
    :cond_2
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_4

    #@18
    .line 1402
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    #@1a
    .local v0, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_4

    #@1c
    .line 1403
    if-ne v0, p1, :cond_3

    #@1e
    .line 1404
    return v2

    #@1f
    .line 1402
    :cond_3
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    #@21
    goto :goto_0

    #@22
    .line 1408
    .end local v0    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    invoke-direct {p0, p1}, Ljava/lang/Class;->inSamePackage(Ljava/lang/Class;)Z

    #@25
    move-result v1

    #@26
    return v1
.end method

.method static native classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method private classNameImpliesTopLevel()Z
    .locals 2

    #@0
    .prologue
    .line 859
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "$"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    const/4 v0, 0x0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "shouldInitialize"    # Z
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    if-nez p2, :cond_0

    #@2
    .line 314
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    #@5
    move-result-object p2

    #@6
    .line 324
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v2

    #@a
    .line 332
    .local v2, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v2

    #@b
    .line 325
    .end local v2    # "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@c
    .line 326
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    #@f
    move-result-object v0

    #@10
    .line 327
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/LinkageError;

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 328
    check-cast v0, Ljava/lang/LinkageError;

    #@16
    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    #@17
    .line 330
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method private getConstructor([Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;
    .locals 5
    .param p2, "publicOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .prologue
    .line 518
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    #@2
    .line 519
    sget-object p1, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    #@4
    .line 521
    :cond_0
    const/4 v2, 0x0

    #@5
    array-length v3, p1

    #@6
    :goto_0
    if-ge v2, v3, :cond_2

    #@8
    aget-object v0, p1, v2

    #@a
    .line 522
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    #@c
    .line 523
    new-instance v2, Ljava/lang/NoSuchMethodException;

    #@e
    const-string/jumbo v3, "parameter type is null"

    #@11
    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 521
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 526
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-direct {p0, p1}, Ljava/lang/Class;->getDeclaredConstructorInternal([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@1b
    move-result-object v1

    #@1c
    .line 527
    .local v1, "result":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    if-eqz v1, :cond_4

    #@1e
    if-eqz p2, :cond_3

    #@20
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getAccessFlags()I

    #@23
    move-result v2

    #@24
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_4

    #@2a
    .line 530
    :cond_3
    return-object v1

    #@2b
    .line 528
    :cond_4
    new-instance v2, Ljava/lang/NoSuchMethodException;

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "<init> "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    #@48
    throw v2
.end method

.method private native getDeclaredConstructorInternal([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end method

.method private native getDeclaredConstructorsInternal(Z)[Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end method

.method private native getDeclaredFieldInternal(Ljava/lang/String;)Ljava/lang/reflect/Field;
.end method

.method private native getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation
.end method

.method private getInnerClassName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1102
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getInnerClassName(Ljava/lang/Class;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "recursivePublicMethods"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .prologue
    .line 608
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    #@2
    .line 609
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "name == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 611
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 612
    sget-object p2, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    #@f
    .line 614
    :cond_1
    const/4 v2, 0x0

    #@10
    array-length v3, p2

    #@11
    :goto_0
    if-ge v2, v3, :cond_3

    #@13
    aget-object v0, p2, v2

    #@15
    .line 615
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_2

    #@17
    .line 616
    new-instance v2, Ljava/lang/NoSuchMethodException;

    #@19
    const-string/jumbo v3, "parameter type is null"

    #@1c
    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 614
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 619
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    if-eqz p3, :cond_5

    #@25
    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@28
    move-result-object v1

    #@29
    .line 622
    .local v1, "result":Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v1, :cond_6

    #@2b
    .line 623
    if-eqz p3, :cond_4

    #@2d
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAccessFlags()I

    #@30
    move-result v2

    #@31
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_6

    #@37
    .line 626
    :cond_4
    return-object v1

    #@38
    .line 620
    .end local v1    # "result":Ljava/lang/reflect/Method;
    :cond_5
    invoke-direct {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@3b
    move-result-object v1

    #@3c
    .restart local v1    # "result":Ljava/lang/reflect/Method;
    goto :goto_1

    #@3d
    .line 624
    :cond_6
    new-instance v2, Ljava/lang/NoSuchMethodException;

    #@3f
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    const-string/jumbo v4, " "

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v2
.end method

.method private native getNameNative()Ljava/lang/String;
.end method

.method private native getProxyInterfaces()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method private native getPublicDeclaredFields()[Ljava/lang/reflect/Field;
.end method

.method private getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    #@1
    .line 898
    move-object v0, p0

    #@2
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    #@4
    .line 899
    invoke-direct {v0, p1}, Ljava/lang/Class;->getDeclaredFieldInternal(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@7
    move-result-object v2

    #@8
    .line 900
    .local v2, "result":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    #@a
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    #@d
    move-result v3

    #@e
    and-int/lit8 v3, v3, 0x1

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 901
    return-object v2

    #@13
    .line 898
    :cond_0
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    #@15
    goto :goto_0

    #@16
    .line 906
    .end local v2    # "result":Ljava/lang/reflect/Field;
    :cond_1
    iget-object v3, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    #@18
    if-eqz v3, :cond_3

    #@1a
    .line 907
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    #@1d
    array-length v3, v3

    #@1e
    if-ge v1, v3, :cond_3

    #@20
    .line 908
    iget-object v3, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    #@22
    aget-object v3, v3, v1

    #@24
    check-cast v3, Ljava/lang/Class;

    #@26
    invoke-direct {v3, p1}, Ljava/lang/Class;->getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@29
    move-result-object v2

    #@2a
    .line 909
    .restart local v2    # "result":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_2

    #@2c
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    #@2f
    move-result v3

    #@30
    and-int/lit8 v3, v3, 0x1

    #@32
    if-eqz v3, :cond_2

    #@34
    .line 910
    return-object v2

    #@35
    .line 907
    :cond_2
    add-int/lit8 v1, v1, 0x2

    #@37
    goto :goto_1

    #@38
    .line 915
    .end local v1    # "i":I
    .end local v2    # "result":Ljava/lang/reflect/Field;
    :cond_3
    return-object v4
.end method

.method private getPublicFieldsRecursive(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 941
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object v0, p0

    #@1
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_0

    #@3
    .line 942
    invoke-direct {v0}, Ljava/lang/Class;->getPublicDeclaredFields()[Ljava/lang/reflect/Field;

    #@6
    move-result-object v3

    #@7
    invoke-static {p1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@a
    .line 941
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    #@c
    goto :goto_0

    #@d
    .line 946
    :cond_0
    iget-object v2, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    #@f
    .line 947
    .local v2, "iftable":[Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@11
    .line 948
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_1
    array-length v3, v2

    #@13
    if-ge v1, v3, :cond_1

    #@15
    .line 949
    aget-object v3, v2, v1

    #@17
    check-cast v3, Ljava/lang/Class;

    #@19
    invoke-direct {v3}, Ljava/lang/Class;->getPublicDeclaredFields()[Ljava/lang/reflect/Field;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {p1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@20
    .line 948
    add-int/lit8 v1, v1, 0x2

    #@22
    goto :goto_1

    #@23
    .line 939
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    #@1
    .line 631
    move-object v0, p0

    #@2
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    #@4
    .line 632
    invoke-direct {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethodInternal(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@7
    move-result-object v4

    #@8
    .line 633
    .local v4, "result":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    #@a
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getAccessFlags()I

    #@d
    move-result v5

    #@e
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_0

    #@14
    .line 634
    return-object v4

    #@15
    .line 631
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@18
    move-result-object v0

    #@19
    goto :goto_0

    #@1a
    .line 638
    .end local v4    # "result":Ljava/lang/reflect/Method;
    :cond_1
    iget-object v3, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    #@1c
    .line 639
    .local v3, "iftable":[Ljava/lang/Object;
    if-eqz v3, :cond_3

    #@1e
    .line 640
    const/4 v1, 0x0

    #@1f
    .local v1, "i":I
    :goto_1
    array-length v5, v3

    #@20
    if-ge v1, v5, :cond_3

    #@22
    .line 641
    aget-object v2, v3, v1

    #@24
    check-cast v2, Ljava/lang/Class;

    #@26
    .line 642
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v2, p1, p2}, Ljava/lang/Class;->getPublicMethodRecursive(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@29
    move-result-object v4

    #@2a
    .line 643
    .restart local v4    # "result":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_2

    #@2c
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getAccessFlags()I

    #@2f
    move-result v5

    #@30
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_2

    #@36
    .line 644
    return-object v4

    #@37
    .line 640
    :cond_2
    add-int/lit8 v1, v1, 0x2

    #@39
    goto :goto_1

    #@3a
    .line 648
    .end local v1    # "i":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "result":Ljava/lang/reflect/Method;
    :cond_3
    return-object v6
.end method

.method private getPublicMethodsInternal(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const/4 v5, 0x1

    #@1
    .line 717
    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    #@4
    move-result-object v4

    #@5
    invoke-static {p1, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@8
    .line 718
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    #@b
    move-result v4

    #@c
    if-nez v4, :cond_0

    #@e
    .line 720
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    #@10
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_0

    #@12
    .line 721
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    #@15
    move-result-object v4

    #@16
    invoke-static {p1, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@19
    .line 720
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    #@1b
    goto :goto_0

    #@1c
    .line 725
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v3, p0, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    #@1e
    .line 726
    .local v3, "iftable":[Ljava/lang/Object;
    if-eqz v3, :cond_1

    #@20
    .line 727
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_1
    array-length v4, v3

    #@22
    if-ge v1, v4, :cond_1

    #@24
    .line 728
    aget-object v2, v3, v1

    #@26
    check-cast v2, Ljava/lang/Class;

    #@28
    .line 729
    .local v2, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    #@2b
    move-result-object v4

    #@2c
    invoke-static {p1, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@2f
    .line 727
    add-int/lit8 v1, v1, 0x2

    #@31
    goto :goto_1

    #@32
    .line 716
    .end local v1    # "i":I
    .end local v2    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method

.method private inSamePackage(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    #@1
    .line 1412
    iget-object v3, p0, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    #@3
    iget-object v4, p1, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    #@5
    if-eq v3, v4, :cond_0

    #@7
    .line 1413
    return v2

    #@8
    .line 1415
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 1416
    .local v0, "packageName1":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 1417
    .local v1, "packageName2":Ljava/lang/String;
    if-nez v0, :cond_2

    #@12
    .line 1418
    if-nez v1, :cond_1

    #@14
    const/4 v2, 0x1

    #@15
    :cond_1
    return v2

    #@16
    .line 1419
    :cond_2
    if-nez v1, :cond_3

    #@18
    .line 1420
    return v2

    #@19
    .line 1422
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    return v2
.end method


# virtual methods
.method public asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)",
            "Ljava/lang/Class",
            "<+TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1481
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 1482
    return-object p0

    #@7
    .line 1484
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 1485
    .local v0, "actualClassName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 1486
    .local v1, "desiredClassName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ClassCastException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, " cannot be cast to "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2
.end method

.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 1498
    if-nez p1, :cond_0

    #@3
    .line 1499
    return-object v2

    #@4
    .line 1500
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 1501
    return-object p1

    #@b
    .line 1503
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1504
    .local v0, "actualClassName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 1505
    .local v1, "desiredClassName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ClassCastException;

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    const-string/jumbo v4, " cannot be cast to "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2
.end method

.method public desiredAssertionStatus()Z
    .locals 1

    #@0
    .prologue
    .line 1468
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
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
    .line 359
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    #@0
    .prologue
    .line 369
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 378
    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 379
    :cond_0
    return-object v2

    #@e
    .line 381
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 386
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 387
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@1e
    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, "[]"

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    return-object v1

    #@33
    .line 390
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_3

    #@39
    .line 395
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 396
    .restart local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@43
    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    const-string/jumbo v2, "."

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    return-object v1

    #@60
    .line 404
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    return-object v1

    #@65
    .line 410
    .restart local v0    # "name":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 421
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 422
    return-object v2

    #@8
    .line 425
    :cond_0
    iget-object v0, p0, Ljava/lang/Class;->classLoader:Ljava/lang/ClassLoader;

    #@a
    .line 426
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_1

    #@c
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    #@f
    move-result-object v0

    #@10
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    return-object v0
.end method

.method public getClasses()[Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 347
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 348
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    move-object v0, p0

    #@6
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_2

    #@8
    .line 349
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    #@b
    move-result-object v4

    #@c
    const/4 v3, 0x0

    #@d
    array-length v5, v4

    #@e
    :goto_1
    if-ge v3, v5, :cond_1

    #@10
    aget-object v1, v4, v3

    #@12
    .line 350
    .local v1, "member":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    #@15
    move-result v6

    #@16
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@19
    move-result v6

    #@1a
    if-eqz v6, :cond_0

    #@1c
    .line 351
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    .line 349
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_1

    #@22
    .line 348
    .end local v1    # "member":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v0, v0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    #@24
    goto :goto_0

    #@25
    .line 355
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@28
    move-result v3

    #@29
    new-array v3, v3, [Ljava/lang/Class;

    #@2b
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, [Ljava/lang/Class;

    #@31
    return-object v3
.end method

.method public getComponentType()Ljava/lang/Class;
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
    .line 436
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public varargs getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .prologue
    .line 492
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getConstructors()[Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 550
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljava/lang/Class;->getDeclaredConstructorsInternal(Z)[Ljava/lang/reflect/Constructor;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    #@0
    .prologue
    .line 743
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 744
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

.method public getDeclaredClasses()[Ljava/lang/Class;
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
    .line 752
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getMemberClasses(Ljava/lang/Class;)[Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public varargs getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .prologue
    .line 507
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 562
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/lang/Class;->getDeclaredConstructorsInternal(Z)[Ljava/lang/reflect/Constructor;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public native getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation
.end method

.method public native getDeclaredFields()[Ljava/lang/reflect/Field;
.end method

.method public native getDeclaredFieldsUnchecked(Z)[Ljava/lang/reflect/Field;
.end method

.method public varargs getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .prologue
    .line 586
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 669
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    #@4
    move-result-object v1

    #@5
    .line 670
    .local v1, "result":[Ljava/lang/reflect/Method;
    array-length v3, v1

    #@6
    :goto_0
    if-ge v2, v3, :cond_0

    #@8
    aget-object v0, v1, v2

    #@a
    .line 672
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@d
    .line 673
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@10
    .line 670
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 675
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-object v1
.end method

.method public native getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;
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
    .line 801
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->isAnonymousClass(Ljava/lang/Class;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 802
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 804
    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getDex()Lcom/android/dex/Dex;
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 445
    iget-object v0, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 446
    return-object v1

    #@6
    .line 448
    :cond_0
    iget-object v0, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    #@8
    invoke-virtual {v0}, Ljava/lang/DexCache;->getDex()Lcom/android/dex/Dex;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getDexAnnotationDirectoryOffset()I
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 1555
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@4
    move-result-object v1

    #@5
    .line 1556
    .local v1, "dex":Lcom/android/dex/Dex;
    if-nez v1, :cond_0

    #@7
    .line 1557
    return v2

    #@8
    .line 1559
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDexClassDefIndex()I

    #@b
    move-result v0

    #@c
    .line 1560
    .local v0, "classDefIndex":I
    if-gez v0, :cond_1

    #@e
    .line 1561
    return v2

    #@f
    .line 1563
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/dex/Dex;->annotationDirectoryOffsetFromClassDefIndex(I)I

    #@12
    move-result v2

    #@13
    return v2
.end method

.method public getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;
    .locals 2
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "dexStringIndex"    # I

    #@0
    .prologue
    .line 457
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    #@2
    invoke-virtual {v1, p2}, Ljava/lang/DexCache;->getResolvedString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 458
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    #@8
    .line 459
    invoke-virtual {p1}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/String;

    #@12
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 460
    iget-object v1, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    #@18
    invoke-virtual {v1, p2, v0}, Ljava/lang/DexCache;->setResolvedString(ILjava/lang/String;)V

    #@1b
    .line 462
    :cond_0
    return-object v0
.end method

.method public getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;
    .locals 4
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "dexTypeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dex/Dex;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 472
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    #@2
    invoke-virtual {v3, p2}, Ljava/lang/DexCache;->getResolvedType(I)Ljava/lang/Class;

    #@5
    move-result-object v2

    #@6
    .line 473
    .local v2, "resolvedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_0

    #@8
    .line 474
    invoke-virtual {p1}, Lcom/android/dex/Dex;->typeIds()Ljava/util/List;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Ljava/lang/Integer;

    #@12
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v1

    #@16
    .line 475
    .local v1, "descriptorIndex":I
    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 476
    .local v0, "descriptor":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3, v0}, Llibcore/reflect/InternalNames;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    #@21
    move-result-object v2

    #@22
    .line 477
    iget-object v3, p0, Ljava/lang/Class;->dexCache:Ljava/lang/DexCache;

    #@24
    invoke-virtual {v3, p2, v2}, Ljava/lang/DexCache;->setResolvedType(ILjava/lang/Class;)V

    #@27
    .line 479
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "descriptorIndex":I
    :cond_0
    return-object v2
.end method

.method public getDexClassDefIndex()I
    .locals 2

    #@0
    .prologue
    .line 1514
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Ljava/lang/Class;->dexClassDefIndex:I

    #@2
    const v1, 0xffff

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, -0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    iget v0, p0, Ljava/lang/Class;->dexClassDefIndex:I

    #@b
    goto :goto_0
.end method

.method public getDexTypeIndex()I
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const v1, 0xffff

    #@3
    .line 1525
    iget v0, p0, Ljava/lang/Class;->dexTypeIndex:I

    #@5
    .line 1526
    .local v0, "typeIndex":I
    if-eq v0, v1, :cond_0

    #@7
    .line 1527
    return v0

    #@8
    .line 1529
    :cond_0
    monitor-enter p0

    #@9
    .line 1530
    :try_start_0
    iget v0, p0, Ljava/lang/Class;->dexTypeIndex:I

    #@b
    .line 1531
    if-ne v0, v1, :cond_2

    #@d
    .line 1532
    iget v1, p0, Ljava/lang/Class;->dexClassDefIndex:I

    #@f
    if-ltz v1, :cond_3

    #@11
    .line 1533
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@14
    move-result-object v1

    #@15
    iget v2, p0, Ljava/lang/Class;->dexClassDefIndex:I

    #@17
    invoke-virtual {v1, v2}, Lcom/android/dex/Dex;->typeIndexFromClassDefIndex(I)I

    #@1a
    move-result v0

    #@1b
    .line 1540
    :cond_1
    :goto_0
    iput v0, p0, Ljava/lang/Class;->dexTypeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :cond_2
    monitor-exit p0

    #@1e
    .line 1543
    return v0

    #@1f
    .line 1535
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@22
    move-result-object v1

    #@23
    invoke-static {p0}, Llibcore/reflect/InternalNames;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v1, v2}, Lcom/android/dex/Dex;->findTypeIndex(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result v0

    #@2b
    .line 1536
    if-gez v0, :cond_1

    #@2d
    .line 1537
    const/4 v0, -0x1

    #@2e
    goto :goto_0

    #@2f
    .line 1529
    :catchall_0
    move-exception v1

    #@30
    monitor-exit p0

    #@31
    throw v1
.end method

.method public getEnclosingClass()Ljava/lang/Class;
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
    .line 814
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 815
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    #@6
    .line 816
    return-object v0

    #@7
    .line 818
    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    #@a
    move-result-object v1

    #@b
    .line 819
    .local v1, "member":Ljava/lang/reflect/AccessibleObject;
    if-eqz v1, :cond_1

    #@d
    .line 820
    check-cast v1, Ljava/lang/reflect/Member;

    #@f
    .end local v1    # "member":Ljava/lang/reflect/AccessibleObject;
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 822
    .restart local v1    # "member":Ljava/lang/reflect/AccessibleObject;
    :cond_1
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;

    #@17
    move-result-object v2

    #@18
    return-object v2
.end method

.method public getEnclosingConstructor()Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 830
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 831
    return-object v1

    #@8
    .line 833
    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    #@b
    move-result-object v0

    #@c
    .line 834
    .local v0, "result":Ljava/lang/reflect/AccessibleObject;
    instance-of v2, v0, Ljava/lang/reflect/Constructor;

    #@e
    if-eqz v2, :cond_1

    #@10
    check-cast v0, Ljava/lang/reflect/Constructor;

    #@12
    .end local v0    # "result":Ljava/lang/reflect/AccessibleObject;
    :goto_0
    return-object v0

    #@13
    .restart local v0    # "result":Ljava/lang/reflect/AccessibleObject;
    :cond_1
    move-object v0, v1

    #@14
    goto :goto_0
.end method

.method public getEnclosingMethod()Ljava/lang/reflect/Method;
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 842
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 843
    return-object v1

    #@8
    .line 845
    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    #@b
    move-result-object v0

    #@c
    .line 846
    .local v0, "result":Ljava/lang/reflect/AccessibleObject;
    instance-of v2, v0, Ljava/lang/reflect/Method;

    #@e
    if-eqz v2, :cond_1

    #@10
    check-cast v0, Ljava/lang/reflect/Method;

    #@12
    .end local v0    # "result":Ljava/lang/reflect/AccessibleObject;
    :goto_0
    return-object v0

    #@13
    .restart local v0    # "result":Ljava/lang/reflect/AccessibleObject;
    :cond_1
    move-object v0, v1

    #@14
    goto :goto_0
.end method

.method public getEnumConstants()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 869
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 870
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 872
    :cond_0
    invoke-static {p0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, [Ljava/lang/Object;

    #@12
    return-object v0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    #@0
    .prologue
    .line 886
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 887
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "name == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 889
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/Class;->getPublicFieldRecursive(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@e
    move-result-object v0

    #@f
    .line 890
    .local v0, "result":Ljava/lang/reflect/Field;
    if-nez v0, :cond_1

    #@11
    .line 891
    new-instance v1, Ljava/lang/NoSuchFieldException;

    #@13
    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 893
    :cond_1
    return-object v0
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .locals 2

    #@0
    .prologue
    .line 930
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 931
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicFieldsRecursive(Ljava/util/List;)V

    #@8
    .line 932
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@b
    move-result v1

    #@c
    new-array v1, v1, [Ljava/lang/reflect/Field;

    #@e
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, [Ljava/lang/reflect/Field;

    #@14
    return-object v1
.end method

.method public getGenericInterfaces()[Ljava/lang/reflect/Type;
    .locals 6

    #@0
    .prologue
    .line 961
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/lang/Class$Caches;->-get0()Llibcore/util/BasicLruCache;

    #@3
    move-result-object v4

    #@4
    monitor-enter v4

    #@5
    .line 962
    :try_start_0
    invoke-static {}, Ljava/lang/Class$Caches;->-get0()Llibcore/util/BasicLruCache;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3, p0}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, [Ljava/lang/reflect/Type;

    #@f
    .line 963
    .local v2, "result":[Ljava/lang/reflect/Type;
    if-nez v2, :cond_0

    #@11
    .line 964
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 965
    .local v0, "annotationSignature":Ljava/lang/String;
    if-nez v0, :cond_1

    #@17
    .line 966
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@1a
    move-result-object v2

    #@1b
    .line 972
    :goto_0
    invoke-static {}, Ljava/lang/Class$Caches;->-get0()Llibcore/util/BasicLruCache;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p0, v2}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .end local v0    # "annotationSignature":Ljava/lang/String;
    :cond_0
    monitor-exit v4

    #@23
    .line 975
    array-length v3, v2

    #@24
    if-nez v3, :cond_2

    #@26
    .end local v2    # "result":[Ljava/lang/reflect/Type;
    :goto_1
    return-object v2

    #@27
    .line 968
    .restart local v0    # "annotationSignature":Ljava/lang/String;
    .restart local v2    # "result":[Ljava/lang/reflect/Type;
    :cond_1
    :try_start_1
    new-instance v1, Llibcore/reflect/GenericSignatureParser;

    #@29
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@2c
    move-result-object v3

    #@2d
    invoke-direct {v1, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    #@30
    .line 969
    .local v1, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v1, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    #@33
    .line 970
    iget-object v3, v1, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    #@35
    const/4 v5, 0x0

    #@36
    invoke-static {v3, v5}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    move-result-object v2

    #@3a
    goto :goto_0

    #@3b
    .line 961
    .end local v0    # "annotationSignature":Ljava/lang/String;
    .end local v1    # "parser":Llibcore/reflect/GenericSignatureParser;
    .end local v2    # "result":[Ljava/lang/reflect/Type;
    :catchall_0
    move-exception v3

    #@3c
    monitor-exit v4

    #@3d
    throw v3

    #@3e
    .line 975
    .restart local v2    # "result":[Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@41
    move-result-object v3

    #@42
    check-cast v3, [Ljava/lang/reflect/Type;

    #@44
    move-object v2, v3

    #@45
    goto :goto_1
.end method

.method public getGenericSuperclass()Ljava/lang/reflect/Type;
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 983
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@4
    move-result-object v1

    #@5
    .line 986
    .local v1, "genericSuperclass":Ljava/lang/reflect/Type;
    if-nez v1, :cond_0

    #@7
    .line 987
    return-object v3

    #@8
    .line 990
    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 991
    .local v0, "annotationSignature":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@e
    .line 992
    new-instance v2, Llibcore/reflect/GenericSignatureParser;

    #@10
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@13
    move-result-object v3

    #@14
    invoke-direct {v2, v3}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    #@17
    .line 993
    .local v2, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v2, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    #@1a
    .line 994
    iget-object v1, v2, Llibcore/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    #@1c
    .line 996
    .end local v2    # "parser":Llibcore/reflect/GenericSignatureParser;
    :cond_1
    invoke-static {v1}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    #@1f
    move-result-object v3

    #@20
    return-object v3
.end method

.method public getInterfaces()[Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1011
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 1012
    const/4 v4, 0x2

    #@7
    new-array v4, v4, [Ljava/lang/Class;

    #@9
    const-class v5, Ljava/lang/Cloneable;

    #@b
    const/4 v6, 0x0

    #@c
    aput-object v5, v4, v6

    #@e
    const-class v5, Ljava/io/Serializable;

    #@10
    const/4 v6, 0x1

    #@11
    aput-object v5, v4, v6

    #@13
    return-object v4

    #@14
    .line 1013
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isProxy()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 1014
    invoke-direct {p0}, Ljava/lang/Class;->getProxyInterfaces()[Ljava/lang/Class;

    #@1d
    move-result-object v4

    #@1e
    return-object v4

    #@1f
    .line 1016
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@22
    move-result-object v0

    #@23
    .line 1017
    .local v0, "dex":Lcom/android/dex/Dex;
    if-nez v0, :cond_2

    #@25
    .line 1018
    sget-object v4, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    #@27
    return-object v4

    #@28
    .line 1020
    :cond_2
    iget v4, p0, Ljava/lang/Class;->dexClassDefIndex:I

    #@2a
    invoke-virtual {v0, v4}, Lcom/android/dex/Dex;->interfaceTypeIndicesFromClassDefIndex(I)[S

    #@2d
    move-result-object v2

    #@2e
    .line 1021
    .local v2, "interfaces":[S
    array-length v4, v2

    #@2f
    new-array v3, v4, [Ljava/lang/Class;

    #@31
    .line 1022
    .local v3, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    #@32
    .local v1, "i":I
    :goto_0
    array-length v4, v2

    #@33
    if-ge v1, v4, :cond_3

    #@35
    .line 1023
    aget-short v4, v2, v1

    #@37
    invoke-virtual {p0, v0, v4}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    #@3a
    move-result-object v4

    #@3b
    aput-object v4, v3, v1

    #@3d
    .line 1022
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 1025
    :cond_3
    return-object v3
.end method

.method public varargs getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .prologue
    .line 603
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getMethods()[Ljava/lang/reflect/Method;
    .locals 2

    #@0
    .prologue
    .line 701
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 702
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-direct {p0, v0}, Ljava/lang/Class;->getPublicMethodsInternal(Ljava/util/List;)V

    #@8
    .line 708
    sget-object v1, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    #@a
    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->removeDuplicates(Ljava/util/List;Ljava/util/Comparator;)V

    #@d
    .line 709
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@10
    move-result v1

    #@11
    new-array v1, v1, [Ljava/lang/reflect/Method;

    #@13
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, [Ljava/lang/reflect/Method;

    #@19
    return-object v1
.end method

.method public getModifiers()I
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const v3, 0xffff

    #@3
    .line 1043
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 1044
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    #@10
    move-result v0

    #@11
    .line 1045
    .local v0, "componentModifiers":I
    and-int/lit16 v2, v0, 0x200

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 1046
    and-int/lit16 v0, v0, -0x209

    #@17
    .line 1048
    :cond_0
    or-int/lit16 v2, v0, 0x410

    #@19
    return v2

    #@1a
    .line 1051
    .end local v0    # "componentModifiers":I
    :cond_1
    iget v2, p0, Ljava/lang/Class;->accessFlags:I

    #@1c
    and-int/2addr v2, v3

    #@1d
    invoke-static {p0, v2}, Llibcore/reflect/AnnotationAccess;->getInnerClassFlags(Ljava/lang/Class;I)I

    #@20
    move-result v1

    #@21
    .line 1052
    .local v1, "modifiers":I
    and-int v2, v1, v3

    #@23
    return v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1061
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    #@2
    .line 1062
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    #@4
    invoke-direct {p0}, Ljava/lang/Class;->getNameNative()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .end local v0    # "result":Ljava/lang/String;
    iput-object v0, p0, Ljava/lang/Class;->name:Ljava/lang/String;

    #@a
    :cond_0
    return-object v0
.end method

.method public getPackage()Ljava/lang/Package;
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 1442
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@4
    move-result-object v0

    #@5
    .line 1443
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1

    #@7
    .line 1444
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 1445
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    #@10
    move-result-object v2

    #@11
    :cond_0
    return-object v2

    #@12
    .line 1447
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public getPackageName$()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1457
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1458
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    #@6
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@9
    move-result v0

    #@a
    .line 1459
    .local v0, "last":I
    const/4 v2, -0x1

    #@b
    if-ne v0, v2, :cond_0

    #@d
    const/4 v2, 0x0

    #@e
    :goto_0
    return-object v2

    #@f
    :cond_0
    const/4 v2, 0x0

    #@10
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    goto :goto_0
.end method

.method public getProtectionDomain()Ljava/security/ProtectionDomain;
    .locals 1

    #@0
    .prologue
    .line 1109
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .param p1, "resourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v5, 0x2e

    #@2
    .line 1120
    const-string/jumbo v3, "/"

    #@5
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 1121
    const/4 v3, 0x1

    #@c
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object p1

    #@10
    .line 1135
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@13
    move-result-object v1

    #@14
    .line 1136
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_2

    #@16
    .line 1137
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@19
    move-result-object v3

    #@1a
    return-object v3

    #@1b
    .line 1123
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 1124
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@22
    move-result v0

    #@23
    .line 1125
    .local v0, "dot":I
    const/4 v3, -0x1

    #@24
    if-eq v0, v3, :cond_1

    #@26
    .line 1126
    const/4 v3, 0x0

    #@27
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    const/16 v4, 0x2f

    #@2d
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 1131
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    const-string/jumbo v4, "/"

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object p1

    #@49
    goto :goto_0

    #@4a
    .line 1128
    :cond_1
    const-string/jumbo v2, ""

    #@4d
    goto :goto_1

    #@4e
    .line 1139
    .end local v0    # "dot":I
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_2
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    #@51
    move-result-object v3

    #@52
    return-object v3
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p1, "resourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v5, 0x2e

    #@2
    .line 1152
    const-string/jumbo v3, "/"

    #@5
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 1153
    const/4 v3, 0x1

    #@c
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object p1

    #@10
    .line 1167
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@13
    move-result-object v1

    #@14
    .line 1168
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_2

    #@16
    .line 1169
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@19
    move-result-object v3

    #@1a
    return-object v3

    #@1b
    .line 1155
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 1156
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@22
    move-result v0

    #@23
    .line 1157
    .local v0, "dot":I
    const/4 v3, -0x1

    #@24
    if-eq v0, v3, :cond_1

    #@26
    .line 1158
    const/4 v3, 0x0

    #@27
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    const/16 v4, 0x2f

    #@2d
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 1163
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    const-string/jumbo v4, "/"

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object p1

    #@49
    goto :goto_0

    #@4a
    .line 1160
    :cond_1
    const-string/jumbo v2, ""

    #@4d
    goto :goto_1

    #@4e
    .line 1171
    .end local v0    # "dot":I
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_2
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@51
    move-result-object v3

    #@52
    return-object v3
.end method

.method public getSigners()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1183
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1077
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 1078
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, "[]"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    return-object v2

    #@23
    .line 1081
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 1082
    const-string/jumbo v2, ""

    #@2c
    return-object v2

    #@2d
    .line 1085
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    #@30
    move-result v2

    #@31
    if-nez v2, :cond_2

    #@33
    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_3

    #@39
    .line 1086
    :cond_2
    invoke-direct {p0}, Ljava/lang/Class;->getInnerClassName()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    return-object v2

    #@3e
    .line 1089
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    .line 1090
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@47
    move-result v0

    #@48
    .line 1091
    .local v0, "dot":I
    const/4 v2, -0x1

    #@49
    if-eq v0, v2, :cond_4

    #@4b
    .line 1092
    add-int/lit8 v2, v0, 0x1

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    return-object v2

    #@52
    .line 1095
    :cond_4
    return-object v1
.end method

.method public getSuperclass()Ljava/lang/Class;
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
    .line 1196
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1197
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 1199
    :cond_0
    iget-object v0, p0, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    #@a
    return-object v0
.end method

.method public declared-synchronized getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    #@1
    .line 1210
    :try_start_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1211
    .local v0, "annotationSignature":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 1212
    sget-object v2, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    return-object v2

    #@b
    .line 1214
    :cond_0
    :try_start_1
    new-instance v1, Llibcore/reflect/GenericSignatureParser;

    #@d
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@10
    move-result-object v2

    #@11
    invoke-direct {v1, v2}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    #@14
    .line 1215
    .local v1, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v1, p0, v0}, Llibcore/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    #@17
    .line 1216
    iget-object v2, v1, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    return-object v2

    #@1b
    .end local v0    # "annotationSignature":Ljava/lang/String;
    .end local v1    # "parser":Llibcore/reflect/GenericSignatureParser;
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit p0

    #@1d
    throw v2
.end method

.method public isAnnotation()Z
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 1223
    const/16 v0, 0x2000

    #@3
    .line 1224
    .local v0, "ACC_ANNOTATION":I
    iget v2, p0, Ljava/lang/Class;->accessFlags:I

    #@5
    and-int/lit16 v2, v2, 0x2000

    #@7
    if-eqz v2, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :cond_0
    return v1
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
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
    .line 1228
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->isAnnotationPresent(Ljava/lang/Class;Ljava/lang/Class;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isAnonymousClass()Z
    .locals 1

    #@0
    .prologue
    .line 1236
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->isAnonymousClass(Ljava/lang/Class;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isArray()Z
    .locals 1

    #@0
    .prologue
    .line 1243
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1268
    if-ne p0, p1, :cond_0

    #@4
    .line 1269
    return v3

    #@5
    .line 1270
    :cond_0
    const-class v4, Ljava/lang/Object;

    #@7
    if-ne p0, v4, :cond_2

    #@9
    .line 1271
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_1

    #@f
    :goto_0
    return v2

    #@10
    :cond_1
    move v2, v3

    #@11
    goto :goto_0

    #@12
    .line 1272
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_4

    #@18
    .line 1273
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_3

    #@1e
    iget-object v2, p0, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    #@20
    iget-object v3, p1, Ljava/lang/Class;->componentType:Ljava/lang/Class;

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@25
    move-result v2

    #@26
    :cond_3
    return v2

    #@27
    .line 1274
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_7

    #@2d
    .line 1276
    iget-object v1, p1, Ljava/lang/Class;->ifTable:[Ljava/lang/Object;

    #@2f
    .line 1277
    .local v1, "iftable":[Ljava/lang/Object;
    if-eqz v1, :cond_6

    #@31
    .line 1278
    const/4 v0, 0x0

    #@32
    .local v0, "i":I
    :goto_1
    array-length v4, v1

    #@33
    if-ge v0, v4, :cond_6

    #@35
    .line 1279
    aget-object v4, v1, v0

    #@37
    if-ne v4, p0, :cond_5

    #@39
    .line 1280
    return v3

    #@3a
    .line 1278
    :cond_5
    add-int/lit8 v0, v0, 0x2

    #@3c
    goto :goto_1

    #@3d
    .line 1284
    .end local v0    # "i":I
    :cond_6
    return v2

    #@3e
    .line 1286
    .end local v1    # "iftable":[Ljava/lang/Object;
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    #@41
    move-result v4

    #@42
    if-nez v4, :cond_9

    #@44
    .line 1287
    iget-object p1, p1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    #@46
    :goto_2
    if-eqz p1, :cond_9

    #@48
    .line 1288
    if-ne p1, p0, :cond_8

    #@4a
    .line 1289
    return v3

    #@4b
    .line 1287
    :cond_8
    iget-object p1, p1, Ljava/lang/Class;->superClass:Ljava/lang/Class;

    #@4d
    goto :goto_2

    #@4e
    .line 1293
    :cond_9
    return v2
.end method

.method public isEnum()Z
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 1302
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@4
    move-result-object v1

    #@5
    const-class v2, Ljava/lang/Enum;

    #@7
    if-ne v1, v2, :cond_0

    #@9
    iget v1, p0, Ljava/lang/Class;->accessFlags:I

    #@b
    and-int/lit16 v1, v1, 0x4000

    #@d
    if-eqz v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method public isFinalizable()Z
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 1367
    const/high16 v0, -0x80000000

    #@3
    .line 1368
    .local v0, "ACC_CLASS_IS_FINALIZABLE":I
    iget v2, p0, Ljava/lang/Class;->accessFlags:I

    #@5
    const/high16 v3, -0x80000000

    #@7
    and-int/2addr v2, v3

    #@8
    if-eqz v2, :cond_0

    #@a
    const/4 v1, 0x1

    #@b
    :cond_0
    return v1
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1315
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 1316
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 1318
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public isInterface()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 1325
    iget v1, p0, Ljava/lang/Class;->accessFlags:I

    #@3
    and-int/lit16 v1, v1, 0x200

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isLocalClass()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 1333
    invoke-direct {p0}, Ljava/lang/Class;->classNameImpliesTopLevel()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1334
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1335
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 1333
    :cond_0
    :goto_0
    return v0

    #@14
    .line 1335
    :cond_1
    const/4 v0, 0x1

    #@15
    goto :goto_0
.end method

.method public isMemberClass()Z
    .locals 1

    #@0
    .prologue
    .line 1343
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isPrimitive()Z
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 1350
    iget v1, p0, Ljava/lang/Class;->primitiveType:I

    #@3
    const v2, 0xffff

    #@6
    and-int/2addr v1, v2

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isProxy()Z
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 1252
    iget v1, p0, Ljava/lang/Class;->accessFlags:I

    #@3
    const/high16 v2, 0x40000

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

.method public isSynthetic()Z
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 1357
    const/16 v0, 0x1000

    #@3
    .line 1358
    .local v0, "ACC_SYNTHETIC":I
    iget v2, p0, Ljava/lang/Class;->accessFlags:I

    #@5
    and-int/lit16 v2, v2, 0x1000

    #@7
    if-eqz v2, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :cond_0
    return v1
.end method

.method public native newInstance()Ljava/lang/Object;
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
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1428
    .local p0, "this":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1429
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 1431
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    const-string/jumbo v0, "interface "

    #@19
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0

    #@2a
    :cond_1
    const-string/jumbo v0, "class "

    #@2d
    goto :goto_0
.end method
