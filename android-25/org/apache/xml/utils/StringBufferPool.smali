.class public Lorg/apache/xml/utils/StringBufferPool;
.super Ljava/lang/Object;
.source "StringBufferPool.java"


# static fields
.field private static m_stringBufPool:Lorg/apache/xml/utils/ObjectPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 34
    new-instance v0, Lorg/apache/xml/utils/ObjectPool;

    #@2
    const-class v1, Lorg/apache/xml/utils/FastStringBuffer;

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    #@7
    .line 33
    sput-object v0, Lorg/apache/xml/utils/StringBufferPool;->m_stringBufPool:Lorg/apache/xml/utils/ObjectPool;

    #@9
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized free(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 2
    .param p0, "sb"    # Lorg/apache/xml/utils/FastStringBuffer;

    #@0
    .prologue
    const-class v1, Lorg/apache/xml/utils/StringBufferPool;

    #@2
    monitor-enter v1

    #@3
    .line 57
    const/4 v0, 0x0

    #@4
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    #@7
    .line 58
    sget-object v0, Lorg/apache/xml/utils/StringBufferPool;->m_stringBufPool:Lorg/apache/xml/utils/ObjectPool;

    #@9
    invoke-virtual {v0, p0}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 52
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public static declared-synchronized get()Lorg/apache/xml/utils/FastStringBuffer;
    .locals 2

    #@0
    .prologue
    const-class v1, Lorg/apache/xml/utils/StringBufferPool;

    #@2
    monitor-enter v1

    #@3
    .line 44
    :try_start_0
    sget-object v0, Lorg/apache/xml/utils/StringBufferPool;->m_stringBufPool:Lorg/apache/xml/utils/ObjectPool;

    #@5
    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lorg/apache/xml/utils/FastStringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method
