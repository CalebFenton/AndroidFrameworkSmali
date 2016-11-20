.class Lsun/net/www/http/KeepAliveStreamCleaner;
.super Ljava/util/LinkedList;
.source "KeepAliveStreamCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/http/KeepAliveStreamCleaner$1;,
        Lsun/net/www/http/KeepAliveStreamCleaner$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lsun/net/www/http/KeepAliveCleanerEntry;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field protected static MAX_CAPACITY:I = 0x0

.field protected static MAX_DATA_REMAINING:I = 0x0

.field private static final MAX_RETRIES:I = 0x5

.field protected static final TIMEOUT:I = 0x1388


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 51
    const/16 v4, 0x200

    #@2
    sput v4, Lsun/net/www/http/KeepAliveStreamCleaner;->MAX_DATA_REMAINING:I

    #@4
    .line 54
    const/16 v4, 0xa

    #@6
    sput v4, Lsun/net/www/http/KeepAliveStreamCleaner;->MAX_CAPACITY:I

    #@8
    .line 63
    const-string/jumbo v3, "http.KeepAlive.remainingData"

    #@b
    .line 65
    .local v3, "maxDataKey":Ljava/lang/String;
    new-instance v4, Lsun/net/www/http/KeepAliveStreamCleaner$1;

    #@d
    invoke-direct {v4}, Lsun/net/www/http/KeepAliveStreamCleaner$1;-><init>()V

    #@10
    .line 64
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Ljava/lang/Integer;

    #@16
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@19
    move-result v4

    #@1a
    mul-int/lit16 v2, v4, 0x400

    #@1c
    .line 69
    .local v2, "maxData":I
    sput v2, Lsun/net/www/http/KeepAliveStreamCleaner;->MAX_DATA_REMAINING:I

    #@1e
    .line 71
    const-string/jumbo v1, "http.KeepAlive.queuedConnections"

    #@21
    .line 73
    .local v1, "maxCapacityKey":Ljava/lang/String;
    new-instance v4, Lsun/net/www/http/KeepAliveStreamCleaner$2;

    #@23
    invoke-direct {v4}, Lsun/net/www/http/KeepAliveStreamCleaner$2;-><init>()V

    #@26
    .line 72
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Ljava/lang/Integer;

    #@2c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@2f
    move-result v0

    #@30
    .line 77
    .local v0, "maxCapacity":I
    sput v0, Lsun/net/www/http/KeepAliveStreamCleaner;->MAX_CAPACITY:I

    #@32
    .line 46
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 83
    check-cast p1, Lsun/net/www/http/KeepAliveCleanerEntry;

    #@2
    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/net/www/http/KeepAliveStreamCleaner;->offer(Lsun/net/www/http/KeepAliveCleanerEntry;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public offer(Lsun/net/www/http/KeepAliveCleanerEntry;)Z
    .locals 2
    .param p1, "e"    # Lsun/net/www/http/KeepAliveCleanerEntry;

    #@0
    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    #@3
    move-result v0

    #@4
    sget v1, Lsun/net/www/http/KeepAliveStreamCleaner;->MAX_CAPACITY:I

    #@6
    if-lt v0, v1, :cond_0

    #@8
    .line 85
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 87
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public run()V
    .locals 26

    #@0
    .prologue
    .line 93
    const/4 v13, 0x0

    #@1
    .line 97
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@2
    .line 98
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v6

    #@6
    .line 99
    .local v6, "before":J
    const-wide/16 v22, 0x1388

    #@8
    .line 100
    .local v22, "timeout":J
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    #@b
    move-result-object v21

    #@c
    move-object/from16 v0, v21

    #@e
    check-cast v0, Lsun/net/www/http/KeepAliveCleanerEntry;

    #@10
    move-object v13, v0

    #@11
    .local v13, "kace":Lsun/net/www/http/KeepAliveCleanerEntry;
    if-nez v13, :cond_0

    #@13
    .line 101
    move-object/from16 v0, p0

    #@15
    move-wide/from16 v1, v22

    #@17
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    #@1a
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1d
    move-result-wide v4

    #@1e
    .line 104
    .local v4, "after":J
    sub-long v8, v4, v6

    #@20
    .line 105
    .local v8, "elapsed":J
    cmp-long v21, v8, v22

    #@22
    if-lez v21, :cond_2

    #@24
    .line 107
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    #@27
    move-result-object v21

    #@28
    move-object/from16 v0, v21

    #@2a
    check-cast v0, Lsun/net/www/http/KeepAliveCleanerEntry;

    #@2c
    move-object v13, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    .end local v4    # "after":J
    .end local v8    # "elapsed":J
    :cond_0
    :try_start_2
    monitor-exit p0

    #@2e
    .line 115
    if-nez v13, :cond_4

    #@30
    .line 91
    .end local v6    # "before":J
    .end local v13    # "kace":Lsun/net/www/http/KeepAliveCleanerEntry;
    .end local v22    # "timeout":J
    :cond_1
    return-void

    #@31
    .line 110
    .restart local v4    # "after":J
    .restart local v6    # "before":J
    .restart local v8    # "elapsed":J
    .restart local v13    # "kace":Lsun/net/www/http/KeepAliveCleanerEntry;
    .restart local v22    # "timeout":J
    :cond_2
    move-wide v6, v4

    #@32
    .line 111
    sub-long v22, v22, v8

    #@34
    goto :goto_1

    #@35
    .line 97
    .end local v4    # "after":J
    .end local v6    # "before":J
    .end local v8    # "elapsed":J
    .end local v13    # "kace":Lsun/net/www/http/KeepAliveCleanerEntry;
    .end local v22    # "timeout":J
    :catchall_0
    move-exception v21

    #@36
    monitor-exit p0

    #@37
    throw v21

    #@38
    .line 152
    :catch_0
    move-exception v11

    #@39
    .line 153
    :cond_3
    :goto_2
    if-eqz v13, :cond_1

    #@3b
    goto :goto_0

    #@3c
    .line 118
    .restart local v6    # "before":J
    .restart local v13    # "kace":Lsun/net/www/http/KeepAliveCleanerEntry;
    .restart local v22    # "timeout":J
    :cond_4
    invoke-virtual {v13}, Lsun/net/www/http/KeepAliveCleanerEntry;->getKeepAliveStream()Lsun/net/www/http/KeepAliveStream;

    #@3f
    move-result-object v14

    #@40
    .line 120
    .local v14, "kas":Lsun/net/www/http/KeepAliveStream;
    if-eqz v14, :cond_3

    #@42
    .line 121
    monitor-enter v14
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    #@43
    .line 122
    :try_start_3
    invoke-virtual {v13}, Lsun/net/www/http/KeepAliveCleanerEntry;->getHttpClient()Lsun/net/www/http/HttpClient;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@46
    move-result-object v10

    #@47
    .line 124
    .local v10, "hc":Lsun/net/www/http/HttpClient;
    if-eqz v10, :cond_5

    #@49
    :try_start_4
    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->isInKeepAliveCache()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@4c
    move-result v21

    #@4d
    if-eqz v21, :cond_6

    #@4f
    .line 148
    :cond_5
    :goto_3
    :try_start_5
    invoke-virtual {v14}, Lsun/net/www/http/KeepAliveStream;->setClosed()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@52
    :goto_4
    :try_start_6
    monitor-exit v14
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    #@53
    goto :goto_2

    #@54
    .line 125
    :cond_6
    :try_start_7
    invoke-virtual {v10}, Lsun/net/NetworkClient;->getReadTimeout()I

    #@57
    move-result v15

    #@58
    .line 126
    .local v15, "oldTimeout":I
    const/16 v21, 0x1388

    #@5a
    move/from16 v0, v21

    #@5c
    invoke-virtual {v10, v0}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    #@5f
    .line 127
    invoke-virtual {v14}, Lsun/net/www/http/KeepAliveStream;->remainingToRead()J

    #@62
    move-result-wide v18

    #@63
    .line 128
    .local v18, "remainingToRead":J
    const-wide/16 v24, 0x0

    #@65
    cmp-long v21, v18, v24

    #@67
    if-lez v21, :cond_9

    #@69
    .line 129
    const-wide/16 v16, 0x0

    #@6b
    .line 130
    .local v16, "n":J
    const/16 v20, 0x0

    #@6d
    .line 131
    .local v20, "retries":I
    :cond_7
    :goto_5
    cmp-long v21, v16, v18

    #@6f
    if-gez v21, :cond_8

    #@71
    const/16 v21, 0x5

    #@73
    move/from16 v0, v20

    #@75
    move/from16 v1, v21

    #@77
    if-ge v0, v1, :cond_8

    #@79
    .line 132
    sub-long v18, v18, v16

    #@7b
    .line 133
    move-wide/from16 v0, v18

    #@7d
    invoke-virtual {v14, v0, v1}, Lsun/net/www/MeteredStream;->skip(J)J

    #@80
    move-result-wide v16

    #@81
    .line 134
    const-wide/16 v24, 0x0

    #@83
    cmp-long v21, v16, v24

    #@85
    if-nez v21, :cond_7

    #@87
    .line 135
    add-int/lit8 v20, v20, 0x1

    #@89
    goto :goto_5

    #@8a
    .line 137
    :cond_8
    sub-long v18, v18, v16

    #@8c
    .line 139
    .end local v16    # "n":J
    .end local v20    # "retries":I
    :cond_9
    const-wide/16 v24, 0x0

    #@8e
    cmp-long v21, v18, v24

    #@90
    if-nez v21, :cond_a

    #@92
    .line 140
    invoke-virtual {v10, v15}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    #@95
    .line 141
    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->finished()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@98
    goto :goto_3

    #@99
    .line 145
    .end local v15    # "oldTimeout":I
    .end local v18    # "remainingToRead":J
    :catch_1
    move-exception v12

    #@9a
    .line 146
    .local v12, "ioe":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->closeServer()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@9d
    .line 148
    :try_start_9
    invoke-virtual {v14}, Lsun/net/www/http/KeepAliveStream;->setClosed()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@a0
    goto :goto_4

    #@a1
    .line 121
    .end local v10    # "hc":Lsun/net/www/http/HttpClient;
    .end local v12    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v21

    #@a2
    :try_start_a
    monitor-exit v14

    #@a3
    throw v21
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0

    #@a4
    .line 143
    .restart local v10    # "hc":Lsun/net/www/http/HttpClient;
    .restart local v15    # "oldTimeout":I
    .restart local v18    # "remainingToRead":J
    :cond_a
    :try_start_b
    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->closeServer()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@a7
    goto :goto_3

    #@a8
    .line 147
    .end local v15    # "oldTimeout":I
    .end local v18    # "remainingToRead":J
    :catchall_2
    move-exception v21

    #@a9
    .line 148
    :try_start_c
    invoke-virtual {v14}, Lsun/net/www/http/KeepAliveStream;->setClosed()V

    #@ac
    .line 147
    throw v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
.end method
