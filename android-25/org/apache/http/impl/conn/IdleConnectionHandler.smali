.class public Lorg/apache/http/impl/conn/IdleConnectionHandler;
.super Ljava/lang/Object;
.source "IdleConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final connectionToTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/HttpConnection;",
            "Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    #@d
    .line 67
    new-instance v0, Ljava/util/HashMap;

    #@f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@12
    iput-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    #@14
    .line 65
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/http/HttpConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .param p1, "connection"    # Lorg/apache/http/HttpConnection;
    .param p2, "validDuration"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v2

    #@4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    move-result-object v0

    #@8
    .line 82
    .local v0, "timeAdded":Ljava/lang/Long;
    iget-object v1, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    #@a
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 83
    iget-object v1, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Adding connection at: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@29
    .line 86
    :cond_0
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    #@2b
    new-instance v1, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;

    #@2d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@30
    move-result-wide v2

    #@31
    move-wide v4, p2

    #@32
    move-object v6, p4

    #@33
    invoke-direct/range {v1 .. v6}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    #@36
    invoke-interface {v7, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    .line 78
    return-void
.end method

.method public closeExpiredConnections()V
    .locals 10

    #@0
    .prologue
    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 153
    .local v4, "now":J
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    #@6
    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@9
    move-result v6

    #@a
    if-eqz v6, :cond_0

    #@c
    .line 154
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    #@e
    new-instance v7, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v8, "Checking for expired connections, now: "

    #@16
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v7

    #@22
    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@25
    .line 158
    :cond_0
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    #@27
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@2a
    move-result-object v6

    #@2b
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v1

    #@2f
    .line 160
    .local v1, "connectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/HttpConnection;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_3

    #@35
    .line 161
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Lorg/apache/http/HttpConnection;

    #@3b
    .line 162
    .local v0, "conn":Lorg/apache/http/HttpConnection;
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    #@3d
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v3

    #@41
    check-cast v3, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;

    #@43
    .line 163
    .local v3, "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    invoke-static {v3}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->-get1(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J

    #@46
    move-result-wide v6

    #@47
    cmp-long v6, v6, v4

    #@49
    if-gtz v6, :cond_1

    #@4b
    .line 164
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    #@4d
    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@50
    move-result v6

    #@51
    if-eqz v6, :cond_2

    #@53
    .line 165
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    #@55
    new-instance v7, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v8, "Closing connection, expired @: "

    #@5d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-static {v3}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->-get1(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J

    #@64
    move-result-wide v8

    #@65
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@68
    move-result-object v7

    #@69
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v7

    #@6d
    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@70
    .line 167
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@73
    .line 169
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@76
    goto :goto_0

    #@77
    .line 170
    :catch_0
    move-exception v2

    #@78
    .line 171
    .local v2, "ex":Ljava/io/IOException;
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    #@7a
    const-string/jumbo v7, "I/O error closing connection"

    #@7d
    invoke-interface {v6, v7, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@80
    goto :goto_0

    #@81
    .line 151
    .end local v0    # "conn":Lorg/apache/http/HttpConnection;
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    :cond_3
    return-void
.end method

.method public closeIdleConnections(J)V
    .locals 11
    .param p1, "idleTime"    # J

    #@0
    .prologue
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v8

    #@4
    sub-long v4, v8, p1

    #@6
    .line 125
    .local v4, "idleTimeout":J
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    #@8
    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@b
    move-result v7

    #@c
    if-eqz v7, :cond_0

    #@e
    .line 126
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    #@10
    new-instance v8, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v9, "Checking for connections, idleTimeout: "

    #@18
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v8

    #@1c
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v8

    #@20
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v8

    #@24
    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@27
    .line 130
    :cond_0
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    #@29
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@2c
    move-result-object v7

    #@2d
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v1

    #@31
    .line 132
    .local v1, "connectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/HttpConnection;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v7

    #@35
    if-eqz v7, :cond_3

    #@37
    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Lorg/apache/http/HttpConnection;

    #@3d
    .line 134
    .local v0, "conn":Lorg/apache/http/HttpConnection;
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    #@3f
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v6

    #@43
    check-cast v6, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;

    #@45
    .line 135
    .local v6, "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    invoke-static {v6}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->-get0(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J

    #@48
    move-result-wide v8

    #@49
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4c
    move-result-object v2

    #@4d
    .line 136
    .local v2, "connectionTime":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@50
    move-result-wide v8

    #@51
    cmp-long v7, v8, v4

    #@53
    if-gtz v7, :cond_1

    #@55
    .line 137
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    #@57
    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@5a
    move-result v7

    #@5b
    if-eqz v7, :cond_2

    #@5d
    .line 138
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    #@5f
    new-instance v8, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v9, "Closing connection, connection time: "

    #@67
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v8

    #@6f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v8

    #@73
    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@76
    .line 140
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@79
    .line 142
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7c
    goto :goto_0

    #@7d
    .line 143
    :catch_0
    move-exception v3

    #@7e
    .line 144
    .local v3, "ex":Ljava/io/IOException;
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    #@80
    const-string/jumbo v8, "I/O error closing connection"

    #@83
    invoke-interface {v7, v8, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@86
    goto :goto_0

    #@87
    .line 120
    .end local v0    # "conn":Lorg/apache/http/HttpConnection;
    .end local v2    # "connectionTime":Ljava/lang/Long;
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v6    # "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    :cond_3
    return-void
.end method

.method public remove(Lorg/apache/http/HttpConnection;)Z
    .locals 6
    .param p1, "connection"    # Lorg/apache/http/HttpConnection;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 98
    iget-object v2, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    #@3
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;

    #@9
    .line 99
    .local v0, "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    if-nez v0, :cond_0

    #@b
    .line 100
    iget-object v2, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    #@d
    const-string/jumbo v3, "Removing a connection that never existed!"

    #@10
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    #@13
    .line 101
    return v1

    #@14
    .line 103
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@17
    move-result-wide v2

    #@18
    invoke-static {v0}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->-get1(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J

    #@1b
    move-result-wide v4

    #@1c
    cmp-long v2, v2, v4

    #@1e
    if-gtz v2, :cond_1

    #@20
    :goto_0
    return v1

    #@21
    :cond_1
    const/4 v1, 0x0

    #@22
    goto :goto_0
.end method

.method public removeAll()V
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@5
    .line 110
    return-void
.end method
