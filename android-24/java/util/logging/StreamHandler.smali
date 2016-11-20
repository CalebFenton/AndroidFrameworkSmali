.class public Ljava/util/logging/StreamHandler;
.super Ljava/util/logging/Handler;
.source "StreamHandler.java"


# instance fields
.field private doneHeader:Z

.field private manager:Ljava/util/logging/LogManager;

.field private output:Ljava/io/OutputStream;

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    #@3
    .line 62
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/logging/StreamHandler;->manager:Ljava/util/logging/LogManager;

    #@9
    .line 93
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->sealed:Z

    #@c
    .line 94
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->configure()V

    #@f
    .line 95
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->sealed:Z

    #@12
    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/logging/Formatter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "formatter"    # Ljava/util/logging/Formatter;

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    #@3
    .line 62
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/logging/StreamHandler;->manager:Ljava/util/logging/LogManager;

    #@9
    .line 106
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->sealed:Z

    #@c
    .line 107
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->configure()V

    #@f
    .line 108
    invoke-virtual {p0, p2}, Ljava/util/logging/StreamHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    #@12
    .line 109
    invoke-virtual {p0, p1}, Ljava/util/logging/StreamHandler;->setOutputStream(Ljava/io/OutputStream;)V

    #@15
    .line 110
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->sealed:Z

    #@18
    .line 105
    return-void
.end method

.method private configure()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 71
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@4
    move-result-object v3

    #@5
    .line 72
    .local v3, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 74
    .local v0, "cname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    const-string/jumbo v5, ".level"

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@23
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setLevel(Ljava/util/logging/Level;)V

    #@2a
    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    const-string/jumbo v5, ".filter"

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v3, v4, v6}, Ljava/util/logging/LogManager;->getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setFilter(Ljava/util/logging/Filter;)V

    #@45
    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    const-string/jumbo v5, ".formatter"

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    new-instance v5, Ljava/util/logging/SimpleFormatter;

    #@5b
    invoke-direct {v5}, Ljava/util/logging/SimpleFormatter;-><init>()V

    #@5e
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    #@65
    .line 78
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    const-string/jumbo v5, ".encoding"

    #@71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    const/4 v5, 0x0

    #@7a
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@81
    .line 70
    :goto_0
    return-void

    #@82
    .line 79
    :catch_0
    move-exception v1

    #@83
    .line 81
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    #@84
    :try_start_1
    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@87
    goto :goto_0

    #@88
    .line 82
    :catch_1
    move-exception v2

    #@89
    .local v2, "ex2":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private declared-synchronized flushAndClose()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 252
    :try_start_0
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->checkPermission()V

    #@4
    .line 253
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 255
    :try_start_1
    iget-boolean v1, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    #@a
    if-nez v1, :cond_0

    #@c
    .line 256
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@e
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@19
    .line 257
    const/4 v1, 0x1

    #@1a
    iput-boolean v1, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    #@1c
    .line 259
    :cond_0
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@1e
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p0}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@29
    .line 260
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@2b
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    #@2e
    .line 261
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@30
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    .line 267
    :goto_0
    const/4 v1, 0x0

    #@34
    :try_start_2
    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@36
    .line 268
    const/4 v1, 0x0

    #@37
    iput-object v1, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    :cond_1
    monitor-exit p0

    #@3a
    .line 251
    return-void

    #@3b
    .line 262
    :catch_0
    move-exception v0

    #@3c
    .line 265
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@3d
    const/4 v2, 0x3

    #@3e
    :try_start_3
    invoke-virtual {p0, v1, v0, v2}, Ljava/util/logging/StreamHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@41
    goto :goto_0

    #@42
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@43
    monitor-exit p0

    #@44
    throw v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 284
    :try_start_0
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->flushAndClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 283
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 240
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 242
    :try_start_1
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@7
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    :cond_0
    :goto_0
    monitor-exit p0

    #@b
    .line 239
    return-void

    #@c
    .line 243
    :catch_0
    move-exception v0

    #@d
    .line 246
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@e
    const/4 v2, 0x2

    #@f
    :try_start_2
    invoke-virtual {p0, v1, v0, v2}, Ljava/util/logging/StreamHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@12
    goto :goto_0

    #@13
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@14
    monitor-exit p0

    #@15
    throw v1
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@2
    if-eqz v0, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    .line 231
    :cond_0
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 233
    :cond_1
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 191
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/logging/StreamHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 192
    return-void

    #@9
    .line 196
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    move-result-object v1

    #@11
    .line 205
    .local v1, "msg":Ljava/lang/String;
    :try_start_2
    iget-boolean v2, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    #@13
    if-nez v2, :cond_1

    #@15
    .line 206
    iget-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@17
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@22
    .line 207
    const/4 v2, 0x1

    #@23
    iput-boolean v2, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    #@25
    .line 209
    :cond_1
    iget-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@27
    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2a
    :goto_0
    monitor-exit p0

    #@2b
    .line 190
    return-void

    #@2c
    .line 197
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@2d
    .line 200
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    #@2e
    const/4 v3, 0x5

    #@2f
    :try_start_3
    invoke-virtual {p0, v2, v0, v3}, Ljava/util/logging/StreamHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@32
    monitor-exit p0

    #@33
    .line 201
    return-void

    #@34
    .line 210
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v0

    #@35
    .line 213
    .restart local v0    # "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    #@36
    const/4 v3, 0x1

    #@37
    :try_start_4
    invoke-virtual {p0, v2, v0, v3}, Ljava/util/logging/StreamHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@3c
    monitor-exit p0

    #@3d
    throw v2
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->setEncoding(Ljava/lang/String;)V

    #@3
    .line 161
    iget-object v0, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 162
    return-void

    #@8
    .line 165
    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->flush()V

    #@b
    .line 166
    if-nez p1, :cond_1

    #@d
    .line 167
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@f
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    #@11
    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@14
    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@16
    .line 159
    :goto_0
    return-void

    #@17
    .line 169
    :cond_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    #@19
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    #@1b
    invoke-direct {v0, v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@1e
    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    #@20
    goto :goto_0
.end method

.method protected declared-synchronized setOutputStream(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 125
    if-nez p1, :cond_0

    #@3
    .line 126
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    :catchall_0
    move-exception v2

    #@a
    monitor-exit p0

    #@b
    throw v2

    #@c
    .line 128
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->flushAndClose()V

    #@f
    .line 129
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    #@11
    .line 130
    const/4 v2, 0x0

    #@12
    iput-boolean v2, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    #@14
    .line 131
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 132
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_1

    #@1a
    .line 133
    new-instance v2, Ljava/io/OutputStreamWriter;

    #@1c
    iget-object v3, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    #@1e
    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@21
    iput-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    :goto_0
    monitor-exit p0

    #@24
    .line 124
    return-void

    #@25
    .line 136
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/OutputStreamWriter;

    #@27
    iget-object v3, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    #@29
    invoke-direct {v2, v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@2c
    iput-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 137
    :catch_0
    move-exception v1

    #@30
    .line 140
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    new-instance v2, Ljava/lang/Error;

    #@32
    new-instance v3, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v4, "Unexpected exception "

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@49
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
