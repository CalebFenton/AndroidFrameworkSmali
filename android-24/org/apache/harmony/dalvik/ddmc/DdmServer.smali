.class public Lorg/apache/harmony/dalvik/ddmc/DdmServer;
.super Ljava/lang/Object;
.source "DdmServer.java"


# static fields
.field public static final CLIENT_PROTOCOL_VERSION:I = 0x1

.field private static final CONNECTED:I = 0x1

.field private static final DISCONNECTED:I = 0x2

.field private static mHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mRegistrationComplete:Z

.field private static mRegistrationTimedOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 32
    new-instance v0, Ljava/util/HashMap;

    #@3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@6
    .line 31
    sput-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    #@8
    .line 37
    sput-boolean v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    #@a
    .line 38
    sput-boolean v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationTimedOut:Z

    #@c
    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static broadcast(I)V
    .locals 5
    .param p0, "event"    # I

    #@0
    .prologue
    .line 108
    sget-object v4, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    #@2
    monitor-enter v4

    #@3
    .line 109
    :try_start_0
    sget-object v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    #@5
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@8
    move-result-object v2

    #@9
    .line 110
    .local v2, "values":Ljava/util/Collection;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .line 112
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;

    #@19
    .line 114
    .local v0, "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    packed-switch p0, :pswitch_data_0

    #@1c
    .line 122
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@1e
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@21
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 108
    .end local v0    # "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v2    # "values":Ljava/util/Collection;
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3

    #@25
    .line 116
    .restart local v0    # "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    .restart local v1    # "iter":Ljava/util/Iterator;
    .restart local v2    # "values":Ljava/util/Collection;
    :pswitch_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->connected()V

    #@28
    goto :goto_0

    #@29
    .line 119
    :pswitch_1
    invoke-virtual {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->disconnected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .end local v0    # "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    :cond_0
    monitor-exit v4

    #@2e
    .line 106
    return-void

    #@2f
    .line 114
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static dispatch(I[BII)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 9
    .param p0, "type"    # I
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 143
    sget-object v4, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    #@3
    monitor-enter v4

    #@4
    .line 148
    :cond_0
    :goto_0
    :try_start_0
    sget-boolean v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    #@6
    if-nez v3, :cond_1

    #@8
    sget-boolean v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationTimedOut:Z

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 162
    :cond_1
    sget-object v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    #@e
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .local v1, "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    monitor-exit v4

    #@19
    .line 166
    if-nez v1, :cond_3

    #@1b
    .line 167
    return-object v8

    #@1c
    .line 151
    .end local v1    # "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    :cond_2
    :try_start_1
    sget-object v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    #@1e
    const-wide/16 v6, 0x3e8

    #@20
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .line 156
    :try_start_2
    sget-boolean v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    #@25
    if-nez v3, :cond_0

    #@27
    .line 158
    const/4 v3, 0x1

    #@28
    sput-boolean v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationTimedOut:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 143
    :catchall_0
    move-exception v3

    #@2c
    monitor-exit v4

    #@2d
    throw v3

    #@2e
    .line 170
    .restart local v1    # "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    :cond_3
    new-instance v0, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@30
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    #@33
    .line 171
    .local v0, "chunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-virtual {v1, v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@36
    move-result-object v3

    #@37
    return-object v3

    #@38
    .line 152
    .end local v0    # "chunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .end local v1    # "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    :catch_0
    move-exception v2

    #@39
    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private static native nativeSendChunk(I[BII)V
.end method

.method public static registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "handler"    # Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;

    #@0
    .prologue
    .line 53
    if-nez p1, :cond_0

    #@2
    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "handler == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 56
    :cond_0
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    #@d
    monitor-enter v1

    #@e
    .line 57
    :try_start_0
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    #@10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "type "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 59
    const-string/jumbo v3, " already registered"

    #@33
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 56
    :catchall_0
    move-exception v0

    #@40
    monitor-exit v1

    #@41
    throw v0

    #@42
    .line 61
    :cond_1
    :try_start_1
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    #@44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    monitor-exit v1

    #@4c
    .line 52
    return-void
.end method

.method public static registrationComplete()V
    .locals 2

    #@0
    .prologue
    .line 83
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 84
    const/4 v0, 0x1

    #@4
    :try_start_0
    sput-boolean v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    #@6
    .line 85
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    #@8
    invoke-virtual {v0}, Ljava/util/HashMap;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 80
    return-void

    #@d
    .line 83
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public static sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V
    .locals 4
    .param p0, "chunk"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 96
    iget v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    #@2
    iget-object v1, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->data:[B

    #@4
    iget v2, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->offset:I

    #@6
    iget v3, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->length:I

    #@8
    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->nativeSendChunk(I[BII)V

    #@b
    .line 95
    return-void
.end method

.method public static unregisterHandler(I)Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    .locals 3
    .param p0, "type"    # I

    #@0
    .prologue
    .line 71
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 72
    :try_start_0
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    #@5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    return-object v0

    #@11
    .line 71
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method
