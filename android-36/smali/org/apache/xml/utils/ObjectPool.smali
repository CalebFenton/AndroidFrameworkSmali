.class public Lorg/apache/xml/utils/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final whitelist serialVersionUID:J = -0x76399dd12023a5c3L


# instance fields
.field private final greylist freeStack:Ljava/util/ArrayList;

.field private final greylist objectType:Ljava/lang/Class;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/Class;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/Class;I)V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    :try_start_3
    invoke-static {}, Lorg/apache/xml/utils/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    .line 65
    invoke-static {p1, v0, v1}, Lorg/apache/xml/utils/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_e} :catch_16

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    return-void

    :catch_16
    move-exception p0

    .line 70
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized greylist freeInstance(Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    .line 167
    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 173
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized greylist getInstance()Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    .line 130
    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_11

    if-eqz v0, :cond_20

    .line 136
    :try_start_9
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_f} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_f} :catch_13
    .catchall {:try_start_9 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    goto :goto_2e

    .line 142
    :catch_13
    :try_start_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_EXCEPTION_CREATING_POOL"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_20
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_11

    .line 150
    monitor-exit p0

    return-object v0

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_11

    throw v0
.end method

.method public declared-synchronized greylist getInstanceIfFree()Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 113
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 114
    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    goto :goto_1c

    .line 117
    :cond_19
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_17

    throw v0
.end method
