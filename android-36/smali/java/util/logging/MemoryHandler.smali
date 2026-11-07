.class public Ljava/util/logging/MemoryHandler;
.super Ljava/util/logging/Handler;
.source "MemoryHandler.java"


# static fields
.field private static final greylist-max-o DEFAULT_SIZE:I = 0x3e8


# instance fields
.field private greylist-max-o buffer:[Ljava/util/logging/LogRecord;

.field greylist-max-o count:I

.field private volatile greylist-max-o pushLevel:Ljava/util/logging/Level;

.field private greylist-max-o size:I

.field greylist-max-o start:I

.field private greylist-max-o target:Ljava/util/logging/Handler;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 9

    .line 119
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/MemoryHandler;->sealed:Z

    .line 121
    invoke-direct {p0}, Ljava/util/logging/MemoryHandler;->configure()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/MemoryHandler;->sealed:Z

    .line 124
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 125
    .local v0, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "handlerName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".target"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "targetName":Ljava/lang/String;
    if-eqz v2, :cond_7c

    .line 133
    :try_start_31
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 134
    .local v3, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/logging/Handler;

    iput-object v4, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_41} :catch_42

    .line 147
    goto :goto_58

    .line 138
    .end local v3    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_42
    move-exception v3

    .line 140
    .local v3, "e":Ljava/lang/Exception;
    :try_start_43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 141
    invoke-virtual {v4, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 142
    .local v4, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/logging/Handler;

    iput-object v5, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_57} :catch_5c

    .line 146
    move-object v3, v4

    .line 148
    .end local v4    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v3, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_58
    invoke-direct {p0}, Ljava/util/logging/MemoryHandler;->init()V

    .line 149
    return-void

    .line 143
    .local v3, "e":Ljava/lang/Exception;
    :catch_5c
    move-exception v4

    .line 144
    .local v4, "innerE":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MemoryHandler can\'t load handler target \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 128
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "innerE":Ljava/lang/Exception;
    :cond_7c
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not specify a target"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor whitelist test-api <init>(Ljava/util/logging/Handler;ILjava/util/logging/Level;)V
    .registers 5
    .param p1, "target"    # Ljava/util/logging/Handler;
    .param p2, "size"    # I
    .param p3, "pushLevel"    # Ljava/util/logging/Level;

    .line 171
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 172
    if-eqz p1, :cond_22

    if-eqz p3, :cond_22

    .line 175
    if-lez p2, :cond_1c

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/MemoryHandler;->sealed:Z

    .line 179
    invoke-direct {p0}, Ljava/util/logging/MemoryHandler;->configure()V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/MemoryHandler;->sealed:Z

    .line 181
    iput-object p1, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    .line 182
    iput-object p3, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;

    .line 183
    iput p2, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 184
    invoke-direct {p0}, Ljava/util/logging/MemoryHandler;->init()V

    .line 185
    return-void

    .line 176
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 173
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o configure()V
    .registers 5

    .line 102
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 103
    .local v0, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "cname":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".push"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v2

    iput-object v2, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getIntProperty(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 107
    iget v2, p0, Ljava/util/logging/MemoryHandler;->size:I

    if-gtz v2, :cond_48

    .line 108
    iput v3, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 110
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/MemoryHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 111
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

    invoke-virtual {p0, v2}, Ljava/util/logging/MemoryHandler;->setFilter(Ljava/util/logging/Filter;)V

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".formatter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v3}, Ljava/util/logging/SimpleFormatter;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/MemoryHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 113
    return-void
.end method

.method private greylist-max-o init()V
    .registers 2

    .line 153
    iget v0, p0, Ljava/util/logging/MemoryHandler;->size:I

    new-array v0, v0, [Ljava/util/logging/LogRecord;

    iput-object v0, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/logging/MemoryHandler;->start:I

    .line 155
    iput v0, p0, Ljava/util/logging/MemoryHandler;->count:I

    .line 156
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V

    .line 257
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/MemoryHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 258
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 2

    .line 244
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    invoke-virtual {v0}, Ljava/util/logging/Handler;->flush()V

    .line 245
    return-void
.end method

.method public whitelist test-api getPushLevel()Ljava/util/logging/Level;
    .registers 2

    .line 283
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;

    return-object v0
.end method

.method public whitelist test-api isLoggable(Ljava/util/logging/LogRecord;)Z
    .registers 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 301
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist test-api publish(Ljava/util/logging/LogRecord;)V
    .registers 5
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    monitor-enter p0

    .line 204
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/logging/MemoryHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_47

    if-nez v0, :cond_9

    .line 205
    monitor-exit p0

    return-void

    .line 207
    :cond_9
    :try_start_9
    iget v0, p0, Ljava/util/logging/MemoryHandler;->start:I

    iget v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 208
    .local v0, "ix":I
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aput-object p1, v1, v0

    .line 209
    iget v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    array-length v2, v2

    if-ge v1, v2, :cond_24

    .line 210
    iget v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    goto :goto_32

    .line 212
    .end local p0    # "this":Ljava/util/logging/MemoryHandler;
    :cond_24
    iget v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    .line 213
    iget v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    .line 215
    :goto_32
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_45

    .line 216
    invoke-virtual {p0}, Ljava/util/logging/MemoryHandler;->push()V
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_47

    .line 218
    :cond_45
    monitor-exit p0

    return-void

    .line 203
    .end local v0    # "ix":I
    .end local p1    # "record":Ljava/util/logging/LogRecord;
    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public declared-synchronized whitelist test-api push()V
    .registers 5

    monitor-enter p0

    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    if-ge v0, v1, :cond_19

    .line 227
    iget v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    add-int/2addr v1, v0

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 228
    .local v1, "ix":I
    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aget-object v2, v2, v1

    .line 229
    .local v2, "record":Ljava/util/logging/LogRecord;
    iget-object v3, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    invoke-virtual {v3, v2}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 226
    .end local v1    # "ix":I
    .end local v2    # "record":Ljava/util/logging/LogRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 232
    .end local v0    # "i":I
    .end local p0    # "this":Ljava/util/logging/MemoryHandler;
    :cond_19
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/logging/MemoryHandler;->start:I

    .line 233
    iput v0, p0, Ljava/util/logging/MemoryHandler;->count:I
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_20

    .line 234
    monitor-exit p0

    return-void

    .line 225
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public declared-synchronized whitelist test-api setPushLevel(Ljava/util/logging/Level;)V
    .registers 3
    .param p1, "newLevel"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 270
    if-eqz p1, :cond_c

    .line 273
    :try_start_3
    invoke-virtual {p0}, Ljava/util/logging/MemoryHandler;->checkPermission()V

    .line 274
    iput-object p1, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 275
    monitor-exit p0

    return-void

    .line 269
    .end local p0    # "this":Ljava/util/logging/MemoryHandler;
    .end local p1    # "newLevel":Ljava/util/logging/Level;
    :catchall_a
    move-exception p1

    goto :goto_12

    .line 271
    .restart local p1    # "newLevel":Ljava/util/logging/Level;
    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 269
    .end local p1    # "newLevel":Ljava/util/logging/Level;
    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_a

    throw p1
.end method
