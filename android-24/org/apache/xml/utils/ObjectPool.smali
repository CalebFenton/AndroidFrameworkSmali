.class public Lorg/apache/xml/utils/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x76399dd12023a5c3L


# instance fields
.field private final freeStack:Ljava/util/ArrayList;

.field private final objectType:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;

    #@6
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    #@d
    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;

    #@5
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    #@c
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "size"    # I

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    iput-object p1, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;

    #@5
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    iput-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    #@c
    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    :try_start_0
    invoke-static {}, Lorg/apache/xml/utils/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x1

    #@8
    .line 65
    invoke-static {p1, v1, v2}, Lorg/apache/xml/utils/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    #@10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    #@15
    .line 61
    return-void

    #@16
    .line 69
    :catch_0
    move-exception v0

    #@17
    .line 70
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@19
    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@1c
    throw v1
.end method


# virtual methods
.method public declared-synchronized freeInstance(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 167
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 160
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized getInstance()Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 130
    :try_start_0
    iget-object v3, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 136
    :try_start_1
    iget-object v3, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;

    #@b
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    move-result-object v3

    #@f
    monitor-exit p0

    #@10
    return-object v3

    #@11
    .line 138
    :catch_0
    move-exception v1

    #@12
    .line 142
    :goto_0
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    #@14
    const-string/jumbo v4, "ER_EXCEPTION_CREATING_POOL"

    #@17
    const/4 v5, 0x0

    #@18
    invoke-static {v4, v5}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    :catchall_0
    move-exception v3

    #@21
    monitor-exit p0

    #@22
    throw v3

    #@23
    .line 148
    :cond_0
    :try_start_3
    iget-object v3, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    #@25
    iget-object v4, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v4

    #@2b
    add-int/lit8 v4, v4, -0x1

    #@2d
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@30
    move-result-object v2

    #@31
    .local v2, "result":Ljava/lang/Object;
    monitor-exit p0

    #@32
    .line 150
    return-object v2

    #@33
    .line 139
    .end local v2    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v0

    #@34
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    goto :goto_0
.end method

.method public declared-synchronized getInstanceIfFree()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 109
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 113
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    #@b
    iget-object v2, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v2

    #@11
    add-int/lit8 v2, v2, -0x1

    #@13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v0

    #@17
    .local v0, "result":Ljava/lang/Object;
    monitor-exit p0

    #@18
    .line 114
    return-object v0

    #@19
    .line 117
    .end local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    #@1a
    monitor-exit p0

    #@1b
    return-object v1

    #@1c
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit p0

    #@1e
    throw v1
.end method
