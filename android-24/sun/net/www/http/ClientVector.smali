.class Lsun/net/www/http/ClientVector;
.super Ljava/util/Stack;
.source "KeepAliveCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Stack",
        "<",
        "Lsun/net/www/http/KeepAliveEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x787771f5fd0f5e73L


# instance fields
.field nap:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "nap"    # I

    #@0
    .prologue
    .line 248
    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    #@3
    .line 249
    iput p1, p0, Lsun/net/www/http/ClientVector;->nap:I

    #@5
    .line 248
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 290
    new-instance v0, Ljava/io/NotSerializableException;

    #@2
    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    #@5
    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    new-instance v0, Ljava/io/NotSerializableException;

    #@2
    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    #@5
    throw v0
.end method


# virtual methods
.method declared-synchronized get()Lsun/net/www/http/HttpClient;
    .locals 8

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 253
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    monitor-exit p0

    #@9
    .line 254
    return-object v5

    #@a
    .line 257
    :cond_0
    const/4 v3, 0x0

    #@b
    .line 258
    .local v3, "hc":Lsun/net/www/http/HttpClient;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e
    move-result-wide v0

    #@f
    .line 260
    .end local v3    # "hc":Lsun/net/www/http/HttpClient;
    .local v0, "currentTime":J
    :cond_1
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Lsun/net/www/http/KeepAliveEntry;

    #@15
    .line 261
    .local v2, "e":Lsun/net/www/http/KeepAliveEntry;
    iget-wide v4, v2, Lsun/net/www/http/KeepAliveEntry;->idleStartTime:J

    #@17
    sub-long v4, v0, v4

    #@19
    iget v6, p0, Lsun/net/www/http/ClientVector;->nap:I

    #@1b
    int-to-long v6, v6

    #@1c
    cmp-long v4, v4, v6

    #@1e
    if-lez v4, :cond_3

    #@20
    .line 262
    iget-object v4, v2, Lsun/net/www/http/KeepAliveEntry;->hc:Lsun/net/www/http/HttpClient;

    #@22
    invoke-virtual {v4}, Lsun/net/www/http/HttpClient;->closeServer()V

    #@25
    .line 266
    :goto_0
    if-nez v3, :cond_2

    #@27
    invoke-virtual {p0}, Ljava/util/Stack;->empty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_1

    #@2d
    :cond_2
    monitor-exit p0

    #@2e
    .line 267
    return-object v3

    #@2f
    .line 264
    :cond_3
    :try_start_2
    iget-object v3, v2, Lsun/net/www/http/KeepAliveEntry;->hc:Lsun/net/www/http/HttpClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    .local v3, "hc":Lsun/net/www/http/HttpClient;
    goto :goto_0

    #@32
    .end local v0    # "currentTime":J
    .end local v2    # "e":Lsun/net/www/http/KeepAliveEntry;
    .end local v3    # "hc":Lsun/net/www/http/HttpClient;
    :catchall_0
    move-exception v4

    #@33
    monitor-exit p0

    #@34
    throw v4
.end method

.method declared-synchronized put(Lsun/net/www/http/HttpClient;)V
    .locals 4
    .param p1, "h"    # Lsun/net/www/http/HttpClient;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 273
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    #@4
    move-result v0

    #@5
    invoke-static {}, Lsun/net/www/http/KeepAliveCache;->getMaxConnections()I

    #@8
    move-result v1

    #@9
    if-lt v0, v1, :cond_0

    #@b
    .line 274
    invoke-virtual {p1}, Lsun/net/www/http/HttpClient;->closeServer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :goto_0
    monitor-exit p0

    #@f
    .line 272
    return-void

    #@10
    .line 276
    :cond_0
    :try_start_1
    new-instance v0, Lsun/net/www/http/KeepAliveEntry;

    #@12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@15
    move-result-wide v2

    #@16
    invoke-direct {v0, p1, v2, v3}, Lsun/net/www/http/KeepAliveEntry;-><init>(Lsun/net/www/http/HttpClient;J)V

    #@19
    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method
