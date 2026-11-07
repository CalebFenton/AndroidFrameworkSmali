.class public Lorg/apache/xml/utils/StringBufferPool;
.super Ljava/lang/Object;
.source "StringBufferPool.java"


# static fields
.field private static greylist m_stringBufPool:Lorg/apache/xml/utils/ObjectPool;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lorg/apache/xml/utils/ObjectPool;

    const-class v1, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xml/utils/StringBufferPool;->m_stringBufPool:Lorg/apache/xml/utils/ObjectPool;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized greylist free(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 3

    const-class v0, Lorg/apache/xml/utils/StringBufferPool;

    monitor-enter v0

    const/4 v1, 0x0

    .line 57
    :try_start_4
    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 58
    sget-object v1, Lorg/apache/xml/utils/StringBufferPool;->m_stringBufPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v1, p0}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    .line 59
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p0
.end method

.method public static declared-synchronized greylist get()Lorg/apache/xml/utils/FastStringBuffer;
    .registers 2

    const-class v0, Lorg/apache/xml/utils/StringBufferPool;

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lorg/apache/xml/utils/StringBufferPool;->m_stringBufPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/utils/FastStringBuffer;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method
