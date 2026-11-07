.class public final Lorg/apache/harmony/dalvik/ddmc/DdmServer;
.super Ljava/lang/Object;
.source "DdmServer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static final blacklist CONNECTED:I = 0x1

.field private static final blacklist DISCONNECTED:I = 0x2

.field private static blacklist mHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist mRegistrationComplete:Z

.field private static blacklist mRegistrationTimedOut:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    .line 46
    sput-boolean v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationTimedOut:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist broadcast(I)V
    .registers 6
    .param p0, "event"    # I

    .line 139
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 140
    :try_start_3
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 141
    .local v1, "values":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 143
    .local v2, "iter":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;

    .line 145
    .local v3, "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    packed-switch p0, :pswitch_data_32

    .line 153
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    goto :goto_28

    .line 150
    :pswitch_1f
    invoke-virtual {v3}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->onDisconnected()V

    .line 151
    goto :goto_27

    .line 147
    :pswitch_23
    invoke-virtual {v3}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->onConnected()V

    .line 148
    nop

    .line 155
    .end local v3    # "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    :goto_27
    goto :goto_d

    .line 153
    .restart local v3    # "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    :goto_28
    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "event":I
    throw v4

    .line 156
    .end local v1    # "values":Ljava/util/Collection;
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v3    # "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    .restart local p0    # "event":I
    :cond_2c
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method

.method private static blacklist dispatch(I[BII)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 8
    .param p0, "type"    # I
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 174
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 179
    :cond_3
    :goto_3
    :try_start_3
    sget-boolean v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    if-nez v1, :cond_1d

    sget-boolean v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationTimedOut:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_38

    if-nez v1, :cond_1d

    .line 182
    :try_start_b
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_12} :catch_1b
    .catchall {:try_start_b .. :try_end_12} :catchall_38

    .line 185
    nop

    .line 187
    :try_start_13
    sget-boolean v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    if-nez v1, :cond_3

    .line 189
    const/4 v1, 0x1

    sput-boolean v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationTimedOut:Z

    goto :goto_3

    .line 183
    :catch_1b
    move-exception v1

    .line 184
    .local v1, "ie":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 193
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :cond_1d
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;

    .line 194
    .local v1, "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_38

    .line 197
    if-nez v1, :cond_2e

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_2e
    new-instance v0, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 202
    .local v0, "chunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-virtual {v1, v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v2

    return-object v2

    .line 194
    .end local v0    # "chunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .end local v1    # "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private static native blacklist nativeSendChunk(I[BII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static blacklist test-api registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V
    .registers 6
    .param p0, "type"    # I
    .param p1, "handler"    # Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 68
    if-eqz p1, :cond_42

    .line 71
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 72
    :try_start_5
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 76
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 73
    :cond_1c
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "type":I
    .end local p1    # "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    throw v1

    .line 77
    .restart local p0    # "type":I
    .restart local p1    # "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_3f

    throw v1

    .line 69
    :cond_42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist test-api registrationComplete()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 104
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 105
    const/4 v1, 0x1

    :try_start_4
    sput-boolean v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    .line 106
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 107
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static greylist test-api sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V
    .registers 5
    .param p0, "chunk"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 123
    iget v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    iget-object v1, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->data:[B

    iget v2, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->offset:I

    iget v3, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->length:I

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->nativeSendChunk(I[BII)V

    .line 124
    return-void
.end method

.method public static blacklist test-api unregisterHandler(I)Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    .registers 4
    .param p0, "type"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 89
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 90
    :try_start_3
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;

    monitor-exit v0

    return-object v1

    .line 91
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
