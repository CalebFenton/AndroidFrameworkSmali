.class public final Llibcore/reflect/AnnotationFactory;
.super Ljava/lang/Object;
.source "AnnotationFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Ljava/io/Serializable;


# static fields
.field private static final transient blacklist cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Llibcore/reflect/AnnotationMember;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist elements:[Llibcore/reflect/AnnotationMember;

.field private final blacklist klazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Class;[Llibcore/reflect/AnnotationMember;)V
    .registers 10
    .param p2, "values"    # [Llibcore/reflect/AnnotationMember;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Llibcore/reflect/AnnotationMember;",
            ")V"
        }
    .end annotation

    .line 110
    .local p1, "klzz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    .line 112
    iget-object v0, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-static {v0}, Llibcore/reflect/AnnotationFactory;->getElementsDescription(Ljava/lang/Class;)[Llibcore/reflect/AnnotationMember;

    move-result-object v0

    .line 113
    .local v0, "defs":[Llibcore/reflect/AnnotationMember;
    if-nez p2, :cond_10

    .line 114
    iput-object v0, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    goto :goto_45

    .line 117
    :cond_10
    array-length v1, v0

    new-array v1, v1, [Llibcore/reflect/AnnotationMember;

    iput-object v1, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    .line 118
    iget-object v1, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1a
    if-ltz v1, :cond_45

    .line 119
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_3c

    aget-object v4, p2, v3

    .line 120
    .local v4, "val":Llibcore/reflect/AnnotationMember;
    iget-object v5, v4, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    aget-object v6, v0, v1

    iget-object v6, v6, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 121
    iget-object v2, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    aget-object v3, v0, v1

    invoke-virtual {v4, v3}, Llibcore/reflect/AnnotationMember;->setDefinition(Llibcore/reflect/AnnotationMember;)Llibcore/reflect/AnnotationMember;

    move-result-object v3

    aput-object v3, v2, v1

    .line 122
    goto :goto_42

    .line 119
    .end local v4    # "val":Llibcore/reflect/AnnotationMember;
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 125
    :cond_3c
    iget-object v2, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    aget-object v3, v0, v1

    aput-object v3, v2, v1

    .line 118
    :goto_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 128
    .end local v1    # "i":I
    :cond_45
    :goto_45
    return-void
.end method

.method public static blacklist createAnnotation(Ljava/lang/Class;[Llibcore/reflect/AnnotationMember;)Ljava/lang/annotation/Annotation;
    .registers 6
    .param p1, "elements"    # [Llibcore/reflect/AnnotationMember;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Llibcore/reflect/AnnotationMember;",
            ")TA;"
        }
    .end annotation

    .line 94
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Llibcore/reflect/AnnotationFactory;

    invoke-direct {v0, p0, p1}, Llibcore/reflect/AnnotationFactory;-><init>(Ljava/lang/Class;[Llibcore/reflect/AnnotationMember;)V

    .line 95
    .local v0, "factory":Llibcore/reflect/AnnotationFactory;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    return-object v1
.end method

.method public static blacklist getElementsDescription(Ljava/lang/Class;)[Llibcore/reflect/AnnotationMember;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Llibcore/reflect/AnnotationMember;"
        }
    .end annotation

    .line 59
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-object v0, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    monitor-enter v0

    .line 60
    :try_start_3
    sget-object v1, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Llibcore/reflect/AnnotationMember;

    .line 61
    .local v1, "desc":[Llibcore/reflect/AnnotationMember;
    if-eqz v1, :cond_f

    .line 62
    monitor-exit v0

    return-object v1

    .line 64
    .end local v1    # "desc":[Llibcore/reflect/AnnotationMember;
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_6c

    .line 65
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 68
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 69
    .local v0, "declaredMethods":[Ljava/lang/reflect/Method;
    array-length v1, v0

    new-array v1, v1, [Llibcore/reflect/AnnotationMember;

    .line 70
    .restart local v1    # "desc":[Llibcore/reflect/AnnotationMember;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    array-length v3, v0

    if-ge v2, v3, :cond_42

    .line 71
    aget-object v3, v0, v2

    .line 72
    .local v3, "element":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    .line 75
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2b
    new-instance v6, Llibcore/reflect/AnnotationMember;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v4, v7, v5, v3}, Llibcore/reflect/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    aput-object v6, v1, v2
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_37

    .line 78
    goto :goto_3f

    .line 76
    :catchall_37
    move-exception v6

    .line 77
    .local v6, "t":Ljava/lang/Throwable;
    new-instance v7, Llibcore/reflect/AnnotationMember;

    invoke-direct {v7, v4, v6, v5, v3}, Llibcore/reflect/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    aput-object v7, v1, v2

    .line 70
    .end local v3    # "element":Ljava/lang/reflect/Method;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 80
    .end local v2    # "i":I
    :cond_42
    sget-object v2, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    monitor-enter v2

    .line 81
    :try_start_45
    sget-object v3, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    monitor-exit v2

    .line 83
    return-object v1

    .line 82
    :catchall_4c
    move-exception v3

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4c

    throw v3

    .line 66
    .end local v0    # "declaredMethods":[Ljava/lang/reflect/Method;
    .end local v1    # "desc":[Llibcore/reflect/AnnotationMember;
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type is not annotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 14
    .param p1, "os"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 142
    iget-object v0, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-static {v0}, Llibcore/reflect/AnnotationFactory;->getElementsDescription(Ljava/lang/Class;)[Llibcore/reflect/AnnotationMember;

    move-result-object v0

    .line 143
    .local v0, "defs":[Llibcore/reflect/AnnotationMember;
    iget-object v1, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    .line 144
    .local v1, "old":[Llibcore/reflect/AnnotationMember;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v2, "merged":Ljava/util/List;, "Ljava/util/List<Llibcore/reflect/AnnotationMember;>;"
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_16
    if-ge v5, v3, :cond_34

    aget-object v6, v1, v5

    .line 146
    .local v6, "el1":Llibcore/reflect/AnnotationMember;
    array-length v7, v0

    move v8, v4

    :goto_1c
    if-ge v8, v7, :cond_2e

    aget-object v9, v0, v8

    .line 147
    .local v9, "el2":Llibcore/reflect/AnnotationMember;
    iget-object v10, v9, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    iget-object v11, v6, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 148
    goto :goto_31

    .line 146
    .end local v9    # "el2":Llibcore/reflect/AnnotationMember;
    :cond_2b
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    .line 151
    :cond_2e
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v6    # "el1":Llibcore/reflect/AnnotationMember;
    :goto_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 153
    :cond_34
    array-length v3, v0

    move v5, v4

    :goto_36
    if-ge v5, v3, :cond_5b

    aget-object v6, v0, v5

    .line 154
    .local v6, "def":Llibcore/reflect/AnnotationMember;
    array-length v7, v1

    move v8, v4

    :goto_3c
    if-ge v8, v7, :cond_55

    aget-object v9, v1, v8

    .line 155
    .local v9, "val":Llibcore/reflect/AnnotationMember;
    iget-object v10, v9, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    iget-object v11, v6, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_52

    .line 158
    invoke-virtual {v9, v6}, Llibcore/reflect/AnnotationMember;->setDefinition(Llibcore/reflect/AnnotationMember;)Llibcore/reflect/AnnotationMember;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    goto :goto_58

    .line 154
    .end local v9    # "val":Llibcore/reflect/AnnotationMember;
    :cond_52
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    .line 162
    :cond_55
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v6    # "def":Llibcore/reflect/AnnotationMember;
    :goto_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 164
    :cond_5b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Llibcore/reflect/AnnotationMember;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Llibcore/reflect/AnnotationMember;

    iput-object v3, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    .line 165
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 15
    .param p1, "obj"    # Ljava/lang/Object;

    .line 178
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 179
    return v0

    .line 181
    :cond_4
    iget-object v1, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 182
    return v2

    .line 184
    :cond_e
    const/4 v1, 0x0

    .line 185
    .local v1, "handler":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 186
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v3

    move-object v1, v3

    instance-of v3, v3, Llibcore/reflect/AnnotationFactory;

    if-eqz v3, :cond_4d

    .line 187
    move-object v3, v1

    check-cast v3, Llibcore/reflect/AnnotationFactory;

    .line 188
    .local v3, "other":Llibcore/reflect/AnnotationFactory;
    iget-object v4, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v4, v4

    iget-object v5, v3, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v5, v5

    if-eq v4, v5, :cond_2e

    .line 189
    return v2

    .line 191
    :cond_2e
    iget-object v4, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v5, v4

    move v6, v2

    :goto_32
    if-ge v6, v5, :cond_4c

    aget-object v7, v4, v6

    .line 192
    .local v7, "el1":Llibcore/reflect/AnnotationMember;
    iget-object v8, v3, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v9, v8

    move v10, v2

    :goto_3a
    if-ge v10, v9, :cond_4b

    aget-object v11, v8, v10

    .line 193
    .local v11, "el2":Llibcore/reflect/AnnotationMember;
    invoke-virtual {v7, v11}, Llibcore/reflect/AnnotationMember;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_48

    .line 194
    nop

    .line 191
    .end local v7    # "el1":Llibcore/reflect/AnnotationMember;
    .end local v11    # "el2":Llibcore/reflect/AnnotationMember;
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 192
    .restart local v7    # "el1":Llibcore/reflect/AnnotationMember;
    :cond_48
    add-int/lit8 v10, v10, 0x1

    goto :goto_3a

    .line 197
    :cond_4b
    return v2

    .line 199
    .end local v7    # "el1":Llibcore/reflect/AnnotationMember;
    :cond_4c
    return v0

    .line 204
    .end local v3    # "other":Llibcore/reflect/AnnotationFactory;
    :cond_4d
    iget-object v3, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v4, v3

    move v5, v2

    :goto_51
    if-ge v5, v4, :cond_96

    aget-object v6, v3, v5

    .line 205
    .local v6, "el":Llibcore/reflect/AnnotationMember;
    iget-char v7, v6, Llibcore/reflect/AnnotationMember;->tag:C

    const/16 v8, 0x21

    if-ne v7, v8, :cond_5c

    .line 207
    return v2

    .line 210
    :cond_5c
    :try_start_5c
    iget-object v7, v6, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_69

    .line 211
    iget-object v7, v6, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 213
    :cond_69
    iget-object v7, v6, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 214
    .local v7, "otherValue":Ljava/lang/Object;
    if-eqz v7, :cond_89

    .line 215
    iget-char v8, v6, Llibcore/reflect/AnnotationMember;->tag:C

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_80

    .line 216
    invoke-virtual {v6, v7}, Llibcore/reflect/AnnotationMember;->equalArrayValue(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_90

    .line 217
    return v2

    .line 220
    :cond_80
    iget-object v8, v6, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_90

    .line 221
    return v2

    .line 224
    :cond_89
    iget-object v8, v6, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    sget-object v9, Llibcore/reflect/AnnotationMember;->NO_VALUE:Ljava/lang/Object;
    :try_end_8d
    .catchall {:try_start_5c .. :try_end_8d} :catchall_94

    if-eq v8, v9, :cond_90

    .line 225
    return v2

    .line 229
    .end local v7    # "otherValue":Ljava/lang/Object;
    :cond_90
    nop

    .line 204
    .end local v6    # "el":Llibcore/reflect/AnnotationMember;
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 227
    .restart local v6    # "el":Llibcore/reflect/AnnotationMember;
    :catchall_94
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Throwable;
    return v2

    .line 231
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v6    # "el":Llibcore/reflect/AnnotationMember;
    :cond_96
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "hash":I
    iget-object v1, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_11

    aget-object v4, v1, v3

    .line 243
    .local v4, "element":Llibcore/reflect/AnnotationMember;
    invoke-virtual {v4}, Llibcore/reflect/AnnotationMember;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    .line 242
    .end local v4    # "element":Llibcore/reflect/AnnotationMember;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 245
    :cond_11
    return v0
.end method

.method public whitelist test-api invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 277
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 279
    .local v1, "params":[Ljava/lang/Class;
    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_6d

    .line 280
    const-string v2, "annotationType"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 281
    iget-object v2, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    return-object v2

    .line 282
    :cond_17
    const-string v2, "toString"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 283
    invoke-virtual {p0}, Llibcore/reflect/AnnotationFactory;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 284
    :cond_24
    const-string v2, "hashCode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 285
    invoke-virtual {p0}, Llibcore/reflect/AnnotationFactory;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 289
    :cond_35
    const/4 v2, 0x0

    .line 290
    .local v2, "element":Llibcore/reflect/AnnotationMember;
    iget-object v4, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v5, v4

    :goto_39
    if-ge v3, v5, :cond_4a

    aget-object v6, v4, v3

    .line 291
    .local v6, "el":Llibcore/reflect/AnnotationMember;
    iget-object v7, v6, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 292
    move-object v2, v6

    .line 293
    goto :goto_4a

    .line 290
    .end local v6    # "el":Llibcore/reflect/AnnotationMember;
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 296
    :cond_4a
    :goto_4a
    if-eqz v2, :cond_63

    iget-object v3, v2, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 299
    invoke-virtual {v2}, Llibcore/reflect/AnnotationMember;->validateValue()Ljava/lang/Object;

    move-result-object v3

    .line 300
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_5b

    .line 303
    return-object v3

    .line 301
    :cond_5b
    new-instance v4, Ljava/lang/annotation/IncompleteAnnotationException;

    iget-object v5, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-direct {v4, v5, v0}, Ljava/lang/annotation/IncompleteAnnotationException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v4

    .line 297
    .end local v3    # "value":Ljava/lang/Object;
    :cond_63
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 305
    .end local v2    # "element":Llibcore/reflect/AnnotationMember;
    :cond_6d
    array-length v2, v1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8a

    aget-object v2, v1, v3

    const-class v4, Ljava/lang/Object;

    if-ne v2, v4, :cond_8a

    const-string v2, "equals"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 306
    aget-object v2, p3, v3

    invoke-virtual {p0, v2}, Llibcore/reflect/AnnotationFactory;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 308
    :cond_8a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid method for annotation type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, "result":Ljava/lang/StringBuilder;
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    iget-object v1, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget-object v2, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v2, v2

    if-ge v1, v2, :cond_2f

    .line 259
    if-eqz v1, :cond_25

    .line 260
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_25
    iget-object v2, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 264
    .end local v1    # "i":I
    :cond_2f
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
