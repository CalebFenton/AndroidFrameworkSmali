.class public Ljava/util/logging/StreamHandler;
.super Ljava/util/logging/Handler;
.source "StreamHandler.java"


# instance fields
.field private greylist-max-o doneHeader:Z

.field private greylist-max-o output:Ljava/io/OutputStream;

.field private volatile greylist-max-o writer:Ljava/io/Writer;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 105
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->sealed:Z

    .line 107
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->configure()V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->sealed:Z

    .line 109
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/util/logging/Formatter;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "formatter"    # Ljava/util/logging/Formatter;

    .line 118
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->sealed:Z

    .line 120
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->configure()V

    .line 121
    invoke-virtual {p0, p2}, Ljava/util/logging/StreamHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 122
    invoke-virtual {p0, p1}, Ljava/util/logging/StreamHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->sealed:Z

    .line 124
    return-void
.end method

.method private greylist-max-o configure()V
    .registers 6

    .line 84
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 85
    .local v0, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "cname":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/StreamHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".filter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/StreamHandler;->setFilter(Ljava/util/logging/Filter;)V

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".formatter"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v4}, Ljava/util/logging/SimpleFormatter;-><init>()V

    invoke-virtual {v0, v2, v4}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/StreamHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 91
    :try_start_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".encoding"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/StreamHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7c} :catch_7d

    .line 99
    goto :goto_83

    .line 92
    :catch_7d
    move-exception v2

    .line 94
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_7e
    invoke-virtual {p0, v3}, Ljava/util/logging/StreamHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82

    .line 98
    goto :goto_83

    .line 95
    :catch_82
    move-exception v3

    .line 100
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_83
    return-void
.end method

.method private declared-synchronized greylist-max-o flushAndClose()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 269
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->checkPermission()V

    .line 270
    iget-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_40

    if-eqz v0, :cond_3e

    .line 272
    const/4 v0, 0x0

    :try_start_9
    iget-boolean v1, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    if-nez v1, :cond_1d

    .line 273
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    .line 276
    .end local p0    # "this":Ljava/util/logging/StreamHandler;
    :cond_1d
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 278
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_35
    .catchall {:try_start_9 .. :try_end_34} :catchall_40

    .line 283
    goto :goto_3a

    .line 279
    :catch_35
    move-exception v1

    .line 282
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x3

    :try_start_37
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/logging/StreamHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 284
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_3a
    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    .line 285
    iput-object v0, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_40

    .line 287
    :cond_3e
    monitor-exit p0

    return-void

    .line 268
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method


# virtual methods
.method public declared-synchronized whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 302
    :try_start_1
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->flushAndClose()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 303
    monitor-exit p0

    return-void

    .line 301
    .end local p0    # "this":Ljava/util/logging/StreamHandler;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public declared-synchronized whitelist test-api flush()V
    .registers 4

    monitor-enter p0

    .line 257
    :try_start_1
    iget-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-eqz v0, :cond_11

    .line 259
    :try_start_5
    iget-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b
    .catchall {:try_start_5 .. :try_end_a} :catchall_13

    .line 264
    goto :goto_11

    .line 260
    .end local p0    # "this":Ljava/util/logging/StreamHandler;
    :catch_b
    move-exception v0

    .line 263
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_e
    invoke-virtual {p0, v1, v0, v2}, Ljava/util/logging/StreamHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    .line 266
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    .line 256
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public whitelist test-api isLoggable(Ljava/util/logging/LogRecord;)Z
    .registers 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 246
    iget-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_c

    if-nez p1, :cond_7

    goto :goto_c

    .line 249
    :cond_7
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    return v0

    .line 247
    :cond_c
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized whitelist test-api publish(Ljava/util/logging/LogRecord;)V
    .registers 7
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    monitor-enter p0

    .line 206
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/logging/StreamHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3a

    if-nez v0, :cond_9

    .line 207
    monitor-exit p0

    return-void

    .line 211
    :cond_9
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_33
    .catchall {:try_start_a .. :try_end_12} :catchall_3a

    .line 217
    .local v1, "msg":Ljava/lang/String;
    nop

    .line 220
    const/4 v2, 0x1

    :try_start_14
    iget-boolean v3, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    if-nez v3, :cond_27

    .line 221
    iget-object v3, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 222
    iput-boolean v2, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    .line 224
    .end local p0    # "this":Ljava/util/logging/StreamHandler;
    :cond_27
    iget-object v3, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2c} :catch_2d
    .catchall {:try_start_14 .. :try_end_2c} :catchall_3a

    .line 229
    goto :goto_31

    .line 225
    :catch_2d
    move-exception v3

    .line 228
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2e
    invoke-virtual {p0, v0, v3, v2}, Ljava/util/logging/StreamHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3a

    .line 230
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_31
    monitor-exit p0

    return-void

    .line 212
    .end local v1    # "msg":Ljava/lang/String;
    :catch_33
    move-exception v1

    .line 215
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x5

    :try_start_35
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/logging/StreamHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3a

    .line 216
    monitor-exit p0

    return-void

    .line 205
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local p1    # "record":Ljava/util/logging/LogRecord;
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public declared-synchronized whitelist test-api setEncoding(Ljava/lang/String;)V
    .registers 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    monitor-enter p0

    .line 174
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->setEncoding(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_24

    if-nez v0, :cond_a

    .line 176
    monitor-exit p0

    return-void

    .line 179
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->flush()V

    .line 180
    if-nez p1, :cond_19

    .line 181
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    goto :goto_22

    .line 183
    .end local p0    # "this":Ljava/util/logging/StreamHandler;
    :cond_19
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    invoke-direct {v0, v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_24

    .line 185
    :goto_22
    monitor-exit p0

    return-void

    .line 173
    .end local p1    # "encoding":Ljava/lang/String;
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method protected declared-synchronized whitelist test-api setOutputStream(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 138
    if-eqz p1, :cond_43

    .line 141
    :try_start_3
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->flushAndClose()V

    .line 142
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    .line 144
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 146
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_41

    goto :goto_25

    .line 149
    .end local p0    # "this":Ljava/util/logging/StreamHandler;
    :cond_1b
    :try_start_1b
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_24} :catch_27
    .catchall {:try_start_1b .. :try_end_24} :catchall_41

    .line 154
    nop

    .line 156
    :goto_25
    monitor-exit p0

    return-void

    .line 150
    :catch_27
    move-exception v1

    .line 153
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    :try_start_28
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    .end local v0    # "encoding":Ljava/lang/String;
    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local p1    # "out":Ljava/io/OutputStream;
    :catchall_41
    move-exception p1

    goto :goto_49

    .line 139
    .restart local p1    # "out":Ljava/io/OutputStream;
    :cond_43
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 137
    .end local p1    # "out":Ljava/io/OutputStream;
    :goto_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_41

    throw p1
.end method
