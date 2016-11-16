.class public final Llibcore/reflect/AnnotationFactory;
.super Ljava/lang/Object;
.source "AnnotationFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Ljava/io/Serializable;


# static fields
.field private static final transient cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Llibcore/reflect/AnnotationMember;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private elements:[Llibcore/reflect/AnnotationMember;

.field private final klazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    #@2
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@5
    .line 51
    sput-object v0, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    #@7
    .line 49
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Llibcore/reflect/AnnotationMember;)V
    .locals 8
    .param p2, "values"    # [Llibcore/reflect/AnnotationMember;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Llibcore/reflect/AnnotationMember;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "klzz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v4, 0x0

    #@1
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 111
    iput-object p1, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    #@6
    .line 112
    iget-object v3, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    #@8
    invoke-static {v3}, Llibcore/reflect/AnnotationFactory;->getElementsDescription(Ljava/lang/Class;)[Llibcore/reflect/AnnotationMember;

    #@b
    move-result-object v0

    #@c
    .line 113
    .local v0, "defs":[Llibcore/reflect/AnnotationMember;
    if-nez p2, :cond_1

    #@e
    .line 114
    iput-object v0, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    #@10
    .line 110
    :cond_0
    return-void

    #@11
    .line 117
    :cond_1
    array-length v3, v0

    #@12
    new-array v3, v3, [Llibcore/reflect/AnnotationMember;

    #@14
    iput-object v3, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    #@16
    .line 118
    iget-object v3, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    #@18
    array-length v3, v3

    #@19
    add-int/lit8 v1, v3, -0x1

    #@1b
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@1d
    .line 119
    array-length v5, p2

    #@1e
    move v3, v4

    #@1f
    :goto_1
    if-ge v3, v5, :cond_3

    #@21
    aget-object v2, p2, v3

    #@23
    .line 120
    .local v2, "val":Llibcore/reflect/AnnotationMember;
    iget-object v6, v2, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    #@25
    aget-object v7, v0, v1

    #@27
    iget-object v7, v7, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    #@29
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_2

    #@2f
    .line 121
    iget-object v3, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    #@31
    aget-object v5, v0, v1

    #@33
    invoke-virtual {v2, v5}, Llibcore/reflect/AnnotationMember;->setDefinition(Llibcore/reflect/AnnotationMember;)Llibcore/reflect/AnnotationMember;

    #@36
    move-result-object v5

    #@37
    aput-object v5, v3, v1

    #@39
    .line 118
    .end local v2    # "val":Llibcore/reflect/AnnotationMember;
    :goto_2
    add-int/lit8 v1, v1, -0x1

    #@3b
    goto :goto_0

    #@3c
    .line 119
    .restart local v2    # "val":Llibcore/reflect/AnnotationMember;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 125
    .end local v2    # "val":Llibcore/reflect/AnnotationMember;
    :cond_3
    iget-object v3, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    #@41
    aget-object v5, v0, v1

    #@43
    aput-object v5, v3, v1

    #@45
    goto :goto_2
.end method

.method public static createAnnotation(Ljava/lang/Class;[Llibcore/reflect/AnnotationMember;)Ljava/lang/annotation/Annotation;
    .locals 4
    .param p1, "elements"    # [Llibcore/reflect/AnnotationMember;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Llibcore/reflect/AnnotationMember;",
            ")TA;"
        }
    .end annotation

    #@0
    .prologue
    .line 94
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Llibcore/reflect/AnnotationFactory;

    #@2
    invoke-direct {v0, p0, p1}, Llibcore/reflect/AnnotationFactory;-><init>(Ljava/lang/Class;[Llibcore/reflect/AnnotationMember;)V

    #@5
    .line 95
    .local v0, "factory":Llibcore/reflect/AnnotationFactory;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@8
    move-result-object v1

    #@9
    .line 96
    const/4 v2, 0x1

    #@a
    new-array v2, v2, [Ljava/lang/Class;

    #@c
    const/4 v3, 0x0

    #@d
    aput-object p0, v2, v3

    #@f
    .line 95
    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/lang/annotation/Annotation;

    #@15
    return-object v1
.end method

.method public static getElementsDescription(Ljava/lang/Class;)[Llibcore/reflect/AnnotationMember;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Llibcore/reflect/AnnotationMember;"
        }
    .end annotation

    #@0
    .prologue
    .line 59
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-object v8, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    #@2
    monitor-enter v8

    #@3
    .line 60
    :try_start_0
    sget-object v7, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    #@5
    invoke-interface {v7, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, [Llibcore/reflect/AnnotationMember;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 61
    .local v1, "desc":[Llibcore/reflect/AnnotationMember;
    if-eqz v1, :cond_0

    #@d
    monitor-exit v8

    #@e
    .line 62
    return-object v1

    #@f
    :cond_0
    monitor-exit v8

    #@10
    .line 65
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    #@13
    move-result v7

    #@14
    if-nez v7, :cond_1

    #@16
    .line 66
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v8, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v9, "Type is not annotation: "

    #@20
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v8

    #@24
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@27
    move-result-object v9

    #@28
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v8

    #@2c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v8

    #@30
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v7

    #@34
    .line 59
    .end local v1    # "desc":[Llibcore/reflect/AnnotationMember;
    :catchall_0
    move-exception v7

    #@35
    monitor-exit v8

    #@36
    throw v7

    #@37
    .line 68
    .restart local v1    # "desc":[Llibcore/reflect/AnnotationMember;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    #@3a
    move-result-object v0

    #@3b
    .line 69
    .local v0, "declaredMethods":[Ljava/lang/reflect/Method;
    array-length v7, v0

    #@3c
    new-array v1, v7, [Llibcore/reflect/AnnotationMember;

    #@3e
    .line 70
    const/4 v3, 0x0

    #@3f
    .local v3, "i":I
    :goto_0
    array-length v7, v0

    #@40
    if-ge v3, v7, :cond_2

    #@42
    .line 71
    aget-object v2, v0, v3

    #@44
    .line 72
    .local v2, "element":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    .line 73
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@4b
    move-result-object v6

    #@4c
    .line 75
    .local v6, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    new-instance v7, Llibcore/reflect/AnnotationMember;

    #@4e
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    #@51
    move-result-object v8

    #@52
    invoke-direct {v7, v4, v8, v6, v2}, Llibcore/reflect/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    #@55
    aput-object v7, v1, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@57
    .line 70
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 76
    :catch_0
    move-exception v5

    #@5b
    .line 77
    .local v5, "t":Ljava/lang/Throwable;
    new-instance v7, Llibcore/reflect/AnnotationMember;

    #@5d
    invoke-direct {v7, v4, v5, v6, v2}, Llibcore/reflect/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    #@60
    aput-object v7, v1, v3

    #@62
    goto :goto_1

    #@63
    .line 80
    .end local v2    # "element":Ljava/lang/reflect/Method;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "t":Ljava/lang/Throwable;
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    sget-object v8, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    #@65
    monitor-enter v8

    #@66
    .line 81
    :try_start_2
    sget-object v7, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    #@68
    invoke-interface {v7, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6b
    monitor-exit v8

    #@6c
    .line 83
    return-object v1

    #@6d
    .line 80
    :catchall_1
    move-exception v7

    #@6e
    monitor-exit v8

    #@6f
    throw v7
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 14
    .param p1, "os"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 135
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 142
    iget-object v7, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    #@6
    invoke-static {v7}, Llibcore/reflect/AnnotationFactory;->getElementsDescription(Ljava/lang/Class;)[Llibcore/reflect/AnnotationMember;

    #@9
    move-result-object v1

    #@a
    .line 143
    .local v1, "defs":[Llibcore/reflect/AnnotationMember;
    iget-object v5, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    #@c
    .line 144
    .local v5, "old":[Llibcore/reflect/AnnotationMember;
    new-instance v4, Ljava/util/ArrayList;

    #@e
    array-length v7, v1

    #@f
    array-length v9, v5

    #@10
    add-int/2addr v7, v9

    #@11
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@14
    .line 145
    .local v4, "merged":Ljava/util/List;, "Ljava/util/List<Llibcore/reflect/AnnotationMember;>;"
    array-length v10, v5

    #@15
    move v9, v8

    #@16
    :goto_0
    if-ge v9, v10, :cond_2

    #@18
    aget-object v2, v5, v9

    #@1a
    .line 146
    .local v2, "el1":Llibcore/reflect/AnnotationMember;
    array-length v11, v1

    #@1b
    move v7, v8

    #@1c
    :goto_1
    if-ge v7, v11, :cond_1

    #@1e
    aget-object v3, v1, v7

    #@20
    .line 147
    .local v3, "el2":Llibcore/reflect/AnnotationMember;
    iget-object v12, v3, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    #@22
    iget-object v13, v2, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    #@24
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v12

    #@28
    if-eqz v12, :cond_0

    #@2a
    .line 145
    .end local v3    # "el2":Llibcore/reflect/AnnotationMember;
    :goto_2
    add-int/lit8 v7, v9, 0x1

    #@2c
    move v9, v7

    #@2d
    goto :goto_0

    #@2e
    .line 146
    .restart local v3    # "el2":Llibcore/reflect/AnnotationMember;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    #@30
    goto :goto_1

    #@31
    .line 151
    .end local v3    # "el2":Llibcore/reflect/AnnotationMember;
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@34
    goto :goto_2

    #@35
    .line 153
    .end local v2    # "el1":Llibcore/reflect/AnnotationMember;
    :cond_2
    array-length v10, v1

    #@36
    move v9, v8

    #@37
    :goto_3
    if-ge v9, v10, :cond_5

    #@39
    aget-object v0, v1, v9

    #@3b
    .line 154
    .local v0, "def":Llibcore/reflect/AnnotationMember;
    array-length v11, v5

    #@3c
    move v7, v8

    #@3d
    :goto_4
    if-ge v7, v11, :cond_4

    #@3f
    aget-object v6, v5, v7

    #@41
    .line 155
    .local v6, "val":Llibcore/reflect/AnnotationMember;
    iget-object v12, v6, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    #@43
    iget-object v13, v0, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    #@45
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v12

    #@49
    if-eqz v12, :cond_3

    #@4b
    .line 158
    invoke-virtual {v6, v0}, Llibcore/reflect/AnnotationMember;->setDefinition(Llibcore/reflect/AnnotationMember;)Llibcore/reflect/AnnotationMember;

    #@4e
    move-result-object v7

    #@4f
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@52
    .line 153
    .end local v6    # "val":Llibcore/reflect/AnnotationMember;
    :goto_5
    add-int/lit8 v7, v9, 0x1

    #@54
    move v9, v7

    #@55
    goto :goto_3

    #@56
    .line 154
    .restart local v6    # "val":Llibcore/reflect/AnnotationMember;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@58
    goto :goto_4

    #@59
    .line 162
    .end local v6    # "val":Llibcore/reflect/AnnotationMember;
    :cond_4
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5c
    goto :goto_5

    #@5d
    .line 164
    .end local v0    # "def":Llibcore/reflect/AnnotationMember;
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@60
    move-result v7

    #@61
    new-array v7, v7, [Llibcore/reflect/AnnotationMember;

    #@63
    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@66
    move-result-object v7

    #@67
    check-cast v7, [Llibcore/reflect/AnnotationMember;

    #@69
    iput-object v7, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    #@6b
    .line 134
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 14
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 178
    if-ne p1, p0, :cond_0

    #@2
    .line 179
    const/4 v7, 0x1

    #@3
    return v7

    #@4
    .line 181
    :cond_0
    iget-object v7, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    #@6
    invoke-virtual {v7, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@9
    move-result v7

    #@a
    if-nez v7, :cond_1

    #@c
    .line 182
    const/4 v7, 0x0

    #@d
    return v7

    #@e
    .line 184
    :cond_1
    const/4 v4, 0x0

    #@f
    .line 185
    .local v4, "handler":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@12
    move-result-object v7

    #@13
    invoke-static {v7}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    #@16
    move-result v7

    #@17
    if-eqz v7, :cond_6

    #@19
    .line 186
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    #@1c
    move-result-object v4

    #@1d
    instance-of v7, v4, Llibcore/reflect/AnnotationFactory;

    #@1f
    .line 185
    if-eqz v7, :cond_6

    #@21
    move-object v5, v4

    #@22
    .line 187
    check-cast v5, Llibcore/reflect/AnnotationFactory;

    #@24
    .line 188
    .local v5, "other":Llibcore/reflect/AnnotationFactory;
    iget-object v7, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    #@26
    array-length v7, v7

    #@27
    iget-object v8, v5, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    #@29
    array-length v8, v8

    #@2a
    if-eq v7, v8, :cond_2

    #@2c
    .line 189
    const/4 v7, 0x0

    #@2d
    return v7

    #@2e
    .line 191
    :cond_2
    iget-object v9, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    #@30
    const/4 v7, 0x0

    #@31
    array-length v10, v9

    #@32
    move v8, v7

    #@33
    :goto_0
    if-ge v8, v10, :cond_5

    #@35
    aget-object v2, v9, v8

    #@37
    .line 192
    .local v2, "el1":Llibcore/reflect/AnnotationMember;
    iget-object v11, v5, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    #@39
    const/4 v7, 0x0

    #@3a
    array-length v12, v11

    #@3b
    :goto_1
    if-ge v7, v12, :cond_4

    #@3d
    aget-object v3, v11, v7

    #@3f
    .line 193
    .local v3, "el2":Llibcore/reflect/AnnotationMember;
    invoke-virtual {v2, v3}, Llibcore/reflect/AnnotationMember;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v13

    #@43
    if-eqz v13, :cond_3

    #@45
    .line 191
    add-int/lit8 v7, v8, 0x1

    #@47
    move v8, v7

    #@48
    goto :goto_0

    #@49
    .line 192
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 197
    .end local v3    # "el2":Llibcore/reflect/AnnotationMember;
    :cond_4
    const/4 v7, 0x0

    #@4d
    return v7

    #@4e
    .line 199
    .end local v2    # "el1":Llibcore/reflect/AnnotationMember;
    :cond_5
    const/4 v7, 0x1

    #@4f
    return v7

    #@50
    .line 204
    .end local v4    # "handler":Ljava/lang/Object;
    .end local v5    # "other":Llibcore/reflect/AnnotationFactory;
    :cond_6
    iget-object v8, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    #@52
    const/4 v7, 0x0

    #@53
    array-length v9, v8

    #@54
    :goto_2
    if-ge v7, v9, :cond_c

    #@56
    aget-object v1, v8, v7

    #@58
    .line 205
    .local v1, "el":Llibcore/reflect/AnnotationMember;
    iget-char v10, v1, Llibcore/reflect/AnnotationMember;->tag:C

    #@5a
    const/16 v11, 0x21

    #@5c
    if-ne v10, v11, :cond_7

    #@5e
    .line 207
    const/4 v7, 0x0

    #@5f
    return v7

    #@60
    .line 210
    :cond_7
    :try_start_0
    iget-object v10, v1, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    #@62
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->isAccessible()Z

    #@65
    move-result v10

    #@66
    if-nez v10, :cond_8

    #@68
    .line 211
    iget-object v10, v1, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    #@6a
    const/4 v11, 0x1

    #@6b
    invoke-virtual {v10, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@6e
    .line 213
    :cond_8
    iget-object v10, v1, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    #@70
    const/4 v11, 0x0

    #@71
    new-array v11, v11, [Ljava/lang/Object;

    #@73
    invoke-virtual {v10, p1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    move-result-object v6

    #@77
    .line 214
    .local v6, "otherValue":Ljava/lang/Object;
    if-eqz v6, :cond_a

    #@79
    .line 215
    iget-char v10, v1, Llibcore/reflect/AnnotationMember;->tag:C

    #@7b
    const/16 v11, 0x5b

    #@7d
    if-ne v10, v11, :cond_9

    #@7f
    .line 216
    invoke-virtual {v1, v6}, Llibcore/reflect/AnnotationMember;->equalArrayValue(Ljava/lang/Object;)Z

    #@82
    move-result v10

    #@83
    if-nez v10, :cond_b

    #@85
    .line 217
    const/4 v7, 0x0

    #@86
    return v7

    #@87
    .line 220
    :cond_9
    iget-object v10, v1, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@89
    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v10

    #@8d
    if-nez v10, :cond_b

    #@8f
    .line 221
    const/4 v7, 0x0

    #@90
    return v7

    #@91
    .line 224
    :cond_a
    iget-object v10, v1, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@93
    sget-object v11, Llibcore/reflect/AnnotationMember;->NO_VALUE:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@95
    if-eq v10, v11, :cond_b

    #@97
    .line 225
    const/4 v7, 0x0

    #@98
    return v7

    #@99
    .line 227
    .end local v6    # "otherValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@9a
    .line 228
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v7, 0x0

    #@9b
    return v7

    #@9c
    .line 204
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "otherValue":Ljava/lang/Object;
    :cond_b
    add-int/lit8 v7, v7, 0x1

    #@9e
    goto :goto_2

    #@9f
    .line 231
    .end local v1    # "el":Llibcore/reflect/AnnotationMember;
    .end local v6    # "otherValue":Ljava/lang/Object;
    :cond_c
    const/4 v7, 0x1

    #@a0
    return v7
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 241
    const/4 v1, 0x0

    #@1
    .line 242
    .local v1, "hash":I
    iget-object v3, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    #@3
    const/4 v2, 0x0

    #@4
    array-length v4, v3

    #@5
    :goto_0
    if-ge v2, v4, :cond_0

    #@7
    aget-object v0, v3, v2

    #@9
    .line 243
    .local v0, "element":Llibcore/reflect/AnnotationMember;
    invoke-virtual {v0}, Llibcore/reflect/AnnotationMember;->hashCode()I

    #@c
    move-result v5

    #@d
    add-int/2addr v1, v5

    #@e
    .line 242
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 245
    .end local v0    # "element":Llibcore/reflect/AnnotationMember;
    :cond_0
    return v1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 277
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 278
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@8
    move-result-object v3

    #@9
    .line 279
    .local v3, "params":[Ljava/lang/Class;
    array-length v6, v3

    #@a
    if-nez v6, :cond_7

    #@c
    .line 280
    const-string/jumbo v6, "annotationType"

    #@f
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v6

    #@13
    if-eqz v6, :cond_0

    #@15
    .line 281
    iget-object v5, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    #@17
    return-object v5

    #@18
    .line 282
    :cond_0
    const-string/jumbo v6, "toString"

    #@1b
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v6

    #@1f
    if-eqz v6, :cond_1

    #@21
    .line 283
    invoke-virtual {p0}, Llibcore/reflect/AnnotationFactory;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    return-object v5

    #@26
    .line 284
    :cond_1
    const-string/jumbo v6, "hashCode"

    #@29
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_2

    #@2f
    .line 285
    invoke-virtual {p0}, Llibcore/reflect/AnnotationFactory;->hashCode()I

    #@32
    move-result v5

    #@33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v5

    #@37
    return-object v5

    #@38
    .line 289
    :cond_2
    const/4 v1, 0x0

    #@39
    .line 290
    .local v1, "element":Llibcore/reflect/AnnotationMember;
    iget-object v6, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    #@3b
    array-length v7, v6

    #@3c
    :goto_0
    if-ge v5, v7, :cond_3

    #@3e
    aget-object v0, v6, v5

    #@40
    .line 291
    .local v0, "el":Llibcore/reflect/AnnotationMember;
    iget-object v8, v0, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    #@42
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v8

    #@46
    if-eqz v8, :cond_4

    #@48
    .line 292
    move-object v1, v0

    #@49
    .line 296
    .end local v0    # "el":Llibcore/reflect/AnnotationMember;
    .end local v1    # "element":Llibcore/reflect/AnnotationMember;
    :cond_3
    if-eqz v1, :cond_5

    #@4b
    iget-object v5, v1, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    #@4d
    invoke-virtual {p2, v5}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v5

    #@51
    if-eqz v5, :cond_5

    #@53
    .line 299
    invoke-virtual {v1}, Llibcore/reflect/AnnotationMember;->validateValue()Ljava/lang/Object;

    #@56
    move-result-object v4

    #@57
    .line 300
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_6

    #@59
    .line 301
    new-instance v5, Ljava/lang/annotation/IncompleteAnnotationException;

    #@5b
    iget-object v6, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    #@5d
    invoke-direct {v5, v6, v2}, Ljava/lang/annotation/IncompleteAnnotationException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@60
    throw v5

    #@61
    .line 290
    .end local v4    # "value":Ljava/lang/Object;
    .restart local v0    # "el":Llibcore/reflect/AnnotationMember;
    .restart local v1    # "element":Llibcore/reflect/AnnotationMember;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@63
    goto :goto_0

    #@64
    .line 297
    .end local v0    # "el":Llibcore/reflect/AnnotationMember;
    .end local v1    # "element":Llibcore/reflect/AnnotationMember;
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@66
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    #@69
    move-result-object v6

    #@6a
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v5

    #@6e
    .line 303
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_6
    return-object v4

    #@6f
    .line 305
    .end local v4    # "value":Ljava/lang/Object;
    :cond_7
    array-length v6, v3

    #@70
    const/4 v7, 0x1

    #@71
    if-ne v6, v7, :cond_8

    #@73
    aget-object v6, v3, v5

    #@75
    const-class v7, Ljava/lang/Object;

    #@77
    if-ne v6, v7, :cond_8

    #@79
    const-string/jumbo v6, "equals"

    #@7c
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v6

    #@80
    if-eqz v6, :cond_8

    #@82
    .line 306
    aget-object v5, p3, v5

    #@84
    invoke-virtual {p0, v5}, Llibcore/reflect/AnnotationFactory;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v5

    #@88
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8b
    move-result-object v5

    #@8c
    return-object v5

    #@8d
    .line 308
    :cond_8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@8f
    new-instance v6, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v7, "Invalid method for annotation type: "

    #@97
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v6

    #@9b
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v6

    #@9f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v6

    #@a3
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 255
    .local v1, "result":Ljava/lang/StringBuilder;
    const/16 v2, 0x40

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    .line 256
    iget-object v2, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    #@c
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 257
    const/16 v2, 0x28

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 258
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    #@1b
    array-length v2, v2

    #@1c
    if-ge v0, v2, :cond_1

    #@1e
    .line 259
    if-eqz v0, :cond_0

    #@20
    .line 260
    const-string/jumbo v2, ", "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 262
    :cond_0
    iget-object v2, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    #@28
    aget-object v2, v2, v0

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    .line 258
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 264
    :cond_1
    const/16 v2, 0x29

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 265
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    return-object v2
.end method
