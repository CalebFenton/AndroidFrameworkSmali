.class public Lsun/net/www/http/KeepAliveCache;
.super Ljava/util/HashMap;
.source "KeepAliveCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lsun/net/www/http/KeepAliveKey;",
        "Lsun/net/www/http/ClientVector;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final LIFETIME:I = 0x1388

.field static final MAX_CONNECTIONS:I = 0x5

.field static result:I = 0x0

.field private static final serialVersionUID:J = -0x28c2ef2efb6a2b7dL


# instance fields
.field private keepAliveTimer:Ljava/lang/Thread;


# direct methods
.method static synthetic -get0(Lsun/net/www/http/KeepAliveCache;)Ljava/lang/Thread;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/net/www/http/KeepAliveCache;->keepAliveTimer:Ljava/lang/Thread;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lsun/net/www/http/KeepAliveCache;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    #@0
    iput-object p1, p0, Lsun/net/www/http/KeepAliveCache;->keepAliveTimer:Ljava/lang/Thread;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    const/4 v0, -0x1

    #@1
    sput v0, Lsun/net/www/http/KeepAliveCache;->result:I

    #@3
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    #@3
    .line 67
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/net/www/http/KeepAliveCache;->keepAliveTimer:Ljava/lang/Thread;

    #@6
    .line 72
    return-void
.end method

.method static getMaxConnections()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x5

    #@1
    .line 54
    sget v0, Lsun/net/www/http/KeepAliveCache;->result:I

    #@3
    const/4 v1, -0x1

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 56
    new-instance v0, Lsun/security/action/GetIntegerAction;

    #@8
    const-string/jumbo v1, "http.maxConnections"

    #@b
    invoke-direct {v0, v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    #@e
    .line 55
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/Integer;

    #@14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v0

    #@18
    sput v0, Lsun/net/www/http/KeepAliveCache;->result:I

    #@1a
    .line 59
    sget v0, Lsun/net/www/http/KeepAliveCache;->result:I

    #@1c
    if-gtz v0, :cond_0

    #@1e
    .line 60
    sput v2, Lsun/net/www/http/KeepAliveCache;->result:I

    #@20
    .line 62
    :cond_0
    sget v0, Lsun/net/www/http/KeepAliveCache;->result:I

    #@22
    return v0
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
    .line 231
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
    .line 226
    new-instance v0, Ljava/io/NotSerializableException;

    #@2
    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    #@5
    throw v0
.end method


# virtual methods
.method public declared-synchronized get(Ljava/net/URL;Ljava/lang/Object;)Lsun/net/www/http/HttpClient;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 156
    :try_start_0
    new-instance v0, Lsun/net/www/http/KeepAliveKey;

    #@4
    invoke-direct {v0, p1, p2}, Lsun/net/www/http/KeepAliveKey;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    #@7
    .line 157
    .local v0, "key":Lsun/net/www/http/KeepAliveKey;
    invoke-super {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lsun/net/www/http/ClientVector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 158
    .local v1, "v":Lsun/net/www/http/ClientVector;
    if-nez v1, :cond_0

    #@f
    monitor-exit p0

    #@10
    .line 159
    return-object v2

    #@11
    .line 161
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lsun/net/www/http/ClientVector;->get()Lsun/net/www/http/HttpClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result-object v2

    #@15
    monitor-exit p0

    #@16
    return-object v2

    #@17
    .end local v0    # "key":Lsun/net/www/http/KeepAliveKey;
    .end local v1    # "v":Lsun/net/www/http/ClientVector;
    :catchall_0
    move-exception v2

    #@18
    monitor-exit p0

    #@19
    throw v2
.end method

.method public declared-synchronized put(Ljava/net/URL;Ljava/lang/Object;Lsun/net/www/http/HttpClient;)V
    .locals 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "http"    # Lsun/net/www/http/HttpClient;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 80
    :try_start_0
    iget-object v5, p0, Lsun/net/www/http/KeepAliveCache;->keepAliveTimer:Ljava/lang/Thread;

    #@3
    if-nez v5, :cond_2

    #@5
    const/4 v3, 0x1

    #@6
    .line 81
    .local v3, "startThread":Z
    :goto_0
    if-nez v3, :cond_0

    #@8
    .line 82
    iget-object v5, p0, Lsun/net/www/http/KeepAliveCache;->keepAliveTimer:Ljava/lang/Thread;

    #@a
    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    #@d
    move-result v5

    #@e
    if-nez v5, :cond_0

    #@10
    .line 83
    const/4 v3, 0x1

    #@11
    .line 86
    :cond_0
    if-eqz v3, :cond_1

    #@13
    .line 87
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    #@16
    .line 94
    move-object v0, p0

    #@17
    .line 96
    .local v0, "cache":Lsun/net/www/http/KeepAliveCache;
    new-instance v5, Lsun/net/www/http/KeepAliveCache$1;

    #@19
    invoke-direct {v5, p0, p0}, Lsun/net/www/http/KeepAliveCache$1;-><init>(Lsun/net/www/http/KeepAliveCache;Lsun/net/www/http/KeepAliveCache;)V

    #@1c
    .line 95
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@1f
    .line 118
    .end local v0    # "cache":Lsun/net/www/http/KeepAliveCache;
    :cond_1
    new-instance v2, Lsun/net/www/http/KeepAliveKey;

    #@21
    invoke-direct {v2, p1, p2}, Lsun/net/www/http/KeepAliveKey;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    #@24
    .line 119
    .local v2, "key":Lsun/net/www/http/KeepAliveKey;
    invoke-super {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Lsun/net/www/http/ClientVector;

    #@2a
    .line 121
    .local v4, "v":Lsun/net/www/http/ClientVector;
    if-nez v4, :cond_4

    #@2c
    .line 122
    invoke-virtual {p3}, Lsun/net/www/http/HttpClient;->getKeepAliveTimeout()I

    #@2f
    move-result v1

    #@30
    .line 123
    .local v1, "keepAliveTimeout":I
    new-instance v4, Lsun/net/www/http/ClientVector;

    #@32
    .end local v4    # "v":Lsun/net/www/http/ClientVector;
    if-lez v1, :cond_3

    #@34
    .line 124
    mul-int/lit16 v5, v1, 0x3e8

    #@36
    .line 123
    :goto_1
    invoke-direct {v4, v5}, Lsun/net/www/http/ClientVector;-><init>(I)V

    #@39
    .line 125
    .restart local v4    # "v":Lsun/net/www/http/ClientVector;
    invoke-virtual {v4, p3}, Lsun/net/www/http/ClientVector;->put(Lsun/net/www/http/HttpClient;)V

    #@3c
    .line 126
    invoke-super {p0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .end local v1    # "keepAliveTimeout":I
    :goto_2
    monitor-exit p0

    #@40
    .line 79
    return-void

    #@41
    .line 80
    .end local v2    # "key":Lsun/net/www/http/KeepAliveKey;
    .end local v3    # "startThread":Z
    .end local v4    # "v":Lsun/net/www/http/ClientVector;
    :cond_2
    const/4 v3, 0x0

    #@42
    .restart local v3    # "startThread":Z
    goto :goto_0

    #@43
    .line 124
    .restart local v1    # "keepAliveTimeout":I
    .restart local v2    # "key":Lsun/net/www/http/KeepAliveKey;
    :cond_3
    const/16 v5, 0x1388

    #@45
    goto :goto_1

    #@46
    .line 128
    .end local v1    # "keepAliveTimeout":I
    .restart local v4    # "v":Lsun/net/www/http/ClientVector;
    :cond_4
    :try_start_1
    invoke-virtual {v4, p3}, Lsun/net/www/http/ClientVector;->put(Lsun/net/www/http/HttpClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    goto :goto_2

    #@4a
    .end local v2    # "key":Lsun/net/www/http/KeepAliveKey;
    .end local v3    # "startThread":Z
    .end local v4    # "v":Lsun/net/www/http/ClientVector;
    :catchall_0
    move-exception v5

    #@4b
    monitor-exit p0

    #@4c
    throw v5
.end method

.method public declared-synchronized remove(Lsun/net/www/http/HttpClient;Ljava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Lsun/net/www/http/HttpClient;
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 134
    :try_start_0
    new-instance v0, Lsun/net/www/http/KeepAliveKey;

    #@3
    iget-object v2, p1, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@5
    invoke-direct {v0, v2, p2}, Lsun/net/www/http/KeepAliveKey;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    #@8
    .line 135
    .local v0, "key":Lsun/net/www/http/KeepAliveKey;
    invoke-super {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lsun/net/www/http/ClientVector;

    #@e
    .line 136
    .local v1, "v":Lsun/net/www/http/ClientVector;
    if-eqz v1, :cond_0

    #@10
    .line 137
    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    #@13
    .line 138
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 139
    invoke-virtual {p0, v0}, Lsun/net/www/http/KeepAliveCache;->removeVector(Lsun/net/www/http/KeepAliveKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    :cond_0
    monitor-exit p0

    #@1d
    .line 133
    return-void

    #@1e
    .end local v0    # "key":Lsun/net/www/http/KeepAliveKey;
    .end local v1    # "v":Lsun/net/www/http/ClientVector;
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit p0

    #@20
    throw v2
.end method

.method declared-synchronized removeVector(Lsun/net/www/http/KeepAliveKey;)V
    .locals 1
    .param p1, "k"    # Lsun/net/www/http/KeepAliveKey;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 148
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 147
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public run()V
    .locals 14

    #@0
    .prologue
    .line 172
    :cond_0
    const-wide/16 v10, 0x1388

    #@2
    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 174
    :goto_0
    monitor-enter p0

    #@6
    .line 185
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9
    move-result-wide v0

    #@a
    .line 188
    .local v0, "currentTime":J
    new-instance v8, Ljava/util/ArrayList;

    #@c
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 190
    .local v8, "keysToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/www/http/KeepAliveKey;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@12
    move-result-object v10

    #@13
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v7

    #@17
    .local v7, "key$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v10

    #@1b
    if-eqz v10, :cond_3

    #@1d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v6

    #@21
    check-cast v6, Lsun/net/www/http/KeepAliveKey;

    #@23
    .line 191
    .local v6, "key":Lsun/net/www/http/KeepAliveKey;
    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v9

    #@27
    check-cast v9, Lsun/net/www/http/ClientVector;

    #@29
    .line 192
    .local v9, "v":Lsun/net/www/http/ClientVector;
    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 195
    const/4 v5, 0x0

    #@2b
    .local v5, "i":I
    :goto_2
    :try_start_2
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    #@2e
    move-result v10

    #@2f
    if-ge v5, v10, :cond_1

    #@31
    .line 196
    invoke-virtual {v9, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Lsun/net/www/http/KeepAliveEntry;

    #@37
    .line 197
    .local v3, "e":Lsun/net/www/http/KeepAliveEntry;
    iget-wide v10, v3, Lsun/net/www/http/KeepAliveEntry;->idleStartTime:J

    #@39
    sub-long v10, v0, v10

    #@3b
    iget v12, v9, Lsun/net/www/http/ClientVector;->nap:I

    #@3d
    int-to-long v12, v12

    #@3e
    cmp-long v10, v10, v12

    #@40
    if-lez v10, :cond_1

    #@42
    .line 198
    iget-object v4, v3, Lsun/net/www/http/KeepAliveEntry;->hc:Lsun/net/www/http/HttpClient;

    #@44
    .line 199
    .local v4, "h":Lsun/net/www/http/HttpClient;
    invoke-virtual {v4}, Lsun/net/www/http/HttpClient;->closeServer()V

    #@47
    .line 195
    add-int/lit8 v5, v5, 0x1

    #@49
    goto :goto_2

    #@4a
    .line 173
    .end local v0    # "currentTime":J
    .end local v3    # "e":Lsun/net/www/http/KeepAliveEntry;
    .end local v4    # "h":Lsun/net/www/http/HttpClient;
    .end local v5    # "i":I
    .end local v6    # "key":Lsun/net/www/http/KeepAliveKey;
    .end local v7    # "key$iterator":Ljava/util/Iterator;
    .end local v8    # "keysToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/www/http/KeepAliveKey;>;"
    .end local v9    # "v":Lsun/net/www/http/ClientVector;
    :catch_0
    move-exception v2

    #@4b
    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@4c
    .line 204
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "currentTime":J
    .restart local v5    # "i":I
    .restart local v6    # "key":Lsun/net/www/http/KeepAliveKey;
    .restart local v7    # "key$iterator":Ljava/util/Iterator;
    .restart local v8    # "keysToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/www/http/KeepAliveKey;>;"
    .restart local v9    # "v":Lsun/net/www/http/ClientVector;
    :cond_1
    const/4 v10, 0x0

    #@4d
    invoke-virtual {v9, v10, v5}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    #@50
    move-result-object v10

    #@51
    invoke-interface {v10}, Ljava/util/List;->clear()V

    #@54
    .line 206
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    #@57
    move-result v10

    #@58
    if-nez v10, :cond_2

    #@5a
    .line 207
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@5d
    :cond_2
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5e
    goto :goto_1

    #@5f
    .line 174
    .end local v0    # "currentTime":J
    .end local v5    # "i":I
    .end local v6    # "key":Lsun/net/www/http/KeepAliveKey;
    .end local v7    # "key$iterator":Ljava/util/Iterator;
    .end local v8    # "keysToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/www/http/KeepAliveKey;>;"
    .end local v9    # "v":Lsun/net/www/http/ClientVector;
    :catchall_0
    move-exception v10

    #@60
    monitor-exit p0

    #@61
    throw v10

    #@62
    .line 192
    .restart local v0    # "currentTime":J
    .restart local v5    # "i":I
    .restart local v6    # "key":Lsun/net/www/http/KeepAliveKey;
    .restart local v7    # "key$iterator":Ljava/util/Iterator;
    .restart local v8    # "keysToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/www/http/KeepAliveKey;>;"
    .restart local v9    # "v":Lsun/net/www/http/ClientVector;
    :catchall_1
    move-exception v10

    #@63
    :try_start_4
    monitor-exit v9

    #@64
    throw v10

    #@65
    .line 212
    .end local v5    # "i":I
    .end local v6    # "key":Lsun/net/www/http/KeepAliveKey;
    .end local v9    # "v":Lsun/net/www/http/ClientVector;
    :cond_3
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@68
    move-result-object v7

    #@69
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@6c
    move-result v10

    #@6d
    if-eqz v10, :cond_4

    #@6f
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@72
    move-result-object v6

    #@73
    check-cast v6, Lsun/net/www/http/KeepAliveKey;

    #@75
    .line 213
    .restart local v6    # "key":Lsun/net/www/http/KeepAliveKey;
    invoke-virtual {p0, v6}, Lsun/net/www/http/KeepAliveCache;->removeVector(Lsun/net/www/http/KeepAliveKey;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@78
    goto :goto_3

    #@79
    .end local v6    # "key":Lsun/net/www/http/KeepAliveKey;
    :cond_4
    monitor-exit p0

    #@7a
    .line 216
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    #@7d
    move-result v10

    #@7e
    if-gtz v10, :cond_0

    #@80
    .line 218
    return-void
.end method
