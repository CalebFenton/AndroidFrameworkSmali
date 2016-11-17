.class public Ljava/util/logging/MemoryHandler;
.super Ljava/util/logging/Handler;
.source "MemoryHandler.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x3e8


# instance fields
.field private buffer:[Ljava/util/logging/LogRecord;

.field count:I

.field private pushLevel:Ljava/util/logging/Level;

.field private size:I

.field start:I

.field private target:Ljava/util/logging/Handler;


# direct methods
.method public constructor <init>()V
    .locals 9

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    #@3
    .line 106
    const/4 v6, 0x0

    #@4
    iput-boolean v6, p0, Ljava/util/logging/Handler;->sealed:Z

    #@6
    .line 107
    invoke-direct {p0}, Ljava/util/logging/MemoryHandler;->configure()V

    #@9
    .line 108
    const/4 v6, 0x1

    #@a
    iput-boolean v6, p0, Ljava/util/logging/Handler;->sealed:Z

    #@c
    .line 110
    const-string/jumbo v5, "???"

    #@f
    .line 112
    .local v5, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@12
    move-result-object v4

    #@13
    .line 113
    .local v4, "manager":Ljava/util/logging/LogManager;
    const-string/jumbo v6, "java.util.logging.MemoryHandler.target"

    #@16
    invoke-virtual {v4, v6}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    .line 114
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@21
    move-result-object v0

    #@22
    .line 115
    .local v0, "clz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@25
    move-result-object v6

    #@26
    check-cast v6, Ljava/util/logging/Handler;

    #@28
    iput-object v6, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 127
    .end local v0    # "clz":Ljava/lang/Class;
    .end local v4    # "manager":Ljava/util/logging/LogManager;
    :goto_0
    invoke-direct {p0}, Ljava/util/logging/MemoryHandler;->init()V

    #@2d
    .line 105
    return-void

    #@2e
    .line 116
    :catch_0
    move-exception v2

    #@2f
    .line 119
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@3a
    move-result-object v1

    #@3b
    .line 121
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@3e
    move-result-object v6

    #@3f
    check-cast v6, Ljava/util/logging/Handler;

    #@41
    iput-object v6, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@43
    goto :goto_0

    #@44
    .line 122
    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    #@45
    .line 123
    .local v3, "innerE":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    #@47
    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v8, "MemoryHandler can\'t load handler \""

    #@4f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v7

    #@53
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    const-string/jumbo v8, "\""

    #@5a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v7

    #@5e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    .line 123
    invoke-direct {v6, v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@65
    throw v6
.end method

.method public constructor <init>(Ljava/util/logging/Handler;ILjava/util/logging/Level;)V
    .locals 1
    .param p1, "target"    # Ljava/util/logging/Handler;
    .param p2, "size"    # I
    .param p3, "pushLevel"    # Ljava/util/logging/Level;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 150
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    #@4
    .line 151
    if-eqz p1, :cond_0

    #@6
    if-nez p3, :cond_1

    #@8
    .line 152
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@d
    throw v0

    #@e
    .line 154
    :cond_1
    if-gtz p2, :cond_2

    #@10
    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@15
    throw v0

    #@16
    .line 157
    :cond_2
    iput-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    #@18
    .line 158
    invoke-direct {p0}, Ljava/util/logging/MemoryHandler;->configure()V

    #@1b
    .line 159
    const/4 v0, 0x1

    #@1c
    iput-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    #@1e
    .line 160
    iput-object p1, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    #@20
    .line 161
    iput-object p3, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;

    #@22
    .line 162
    iput p2, p0, Ljava/util/logging/MemoryHandler;->size:I

    #@24
    .line 163
    invoke-direct {p0}, Ljava/util/logging/MemoryHandler;->init()V

    #@27
    .line 150
    return-void
.end method

.method private configure()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x3e8

    #@2
    .line 88
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@5
    move-result-object v1

    #@6
    .line 89
    .local v1, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 91
    .local v0, "cname":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, ".push"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@24
    invoke-virtual {v1, v2, v3}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    #@27
    move-result-object v2

    #@28
    iput-object v2, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;

    #@2a
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    const-string/jumbo v3, ".size"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v1, v2, v4}, Ljava/util/logging/LogManager;->getIntProperty(Ljava/lang/String;I)I

    #@41
    move-result v2

    #@42
    iput v2, p0, Ljava/util/logging/MemoryHandler;->size:I

    #@44
    .line 93
    iget v2, p0, Ljava/util/logging/MemoryHandler;->size:I

    #@46
    if-gtz v2, :cond_0

    #@48
    .line 94
    iput v4, p0, Ljava/util/logging/MemoryHandler;->size:I

    #@4a
    .line 96
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    const-string/jumbo v3, ".level"

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    sget-object v3, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    #@60
    invoke-virtual {v1, v2, v3}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {p0, v2}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    #@67
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    const-string/jumbo v3, ".filter"

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    const/4 v3, 0x0

    #@7c
    invoke-virtual {v1, v2, v3}, Ljava/util/logging/LogManager;->getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {p0, v2}, Ljava/util/logging/Handler;->setFilter(Ljava/util/logging/Filter;)V

    #@83
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    const-string/jumbo v3, ".formatter"

    #@8f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v2

    #@97
    new-instance v3, Ljava/util/logging/SimpleFormatter;

    #@99
    invoke-direct {v3}, Ljava/util/logging/SimpleFormatter;-><init>()V

    #@9c
    invoke-virtual {v1, v2, v3}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {p0, v2}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    #@a3
    .line 87
    return-void
.end method

.method private init()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 132
    iget v0, p0, Ljava/util/logging/MemoryHandler;->size:I

    #@3
    new-array v0, v0, [Ljava/util/logging/LogRecord;

    #@5
    iput-object v0, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    #@7
    .line 133
    iput v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    #@9
    .line 134
    iput v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    #@b
    .line 131
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V

    #@5
    .line 233
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    #@7
    invoke-virtual {p0, v0}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    #@a
    .line 231
    return-void
.end method

.method public flush()V
    .locals 1

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/Handler;->flush()V

    #@5
    .line 220
    return-void
.end method

.method public declared-synchronized getPushLevel()Ljava/util/logging/Level;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 260
    :try_start_0
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    .line 277
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .locals 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 182
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/logging/MemoryHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 183
    return-void

    #@9
    .line 185
    :cond_0
    :try_start_1
    iget v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    #@b
    iget v2, p0, Ljava/util/logging/MemoryHandler;->count:I

    #@d
    add-int/2addr v1, v2

    #@e
    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    #@10
    array-length v2, v2

    #@11
    rem-int v0, v1, v2

    #@13
    .line 186
    .local v0, "ix":I
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    #@15
    aput-object p1, v1, v0

    #@17
    .line 187
    iget v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    #@19
    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    #@1b
    array-length v2, v2

    #@1c
    if-ge v1, v2, :cond_2

    #@1e
    .line 188
    iget v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    #@20
    add-int/lit8 v1, v1, 0x1

    #@22
    iput v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    #@24
    .line 193
    :goto_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    #@2b
    move-result v1

    #@2c
    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;

    #@2e
    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    #@31
    move-result v2

    #@32
    if-lt v1, v2, :cond_1

    #@34
    .line 194
    invoke-virtual {p0}, Ljava/util/logging/MemoryHandler;->push()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    :cond_1
    monitor-exit p0

    #@38
    .line 181
    return-void

    #@39
    .line 190
    :cond_2
    :try_start_2
    iget v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    #@3b
    add-int/lit8 v1, v1, 0x1

    #@3d
    iput v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    #@3f
    .line 191
    iget v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    #@41
    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    #@43
    array-length v2, v2

    #@44
    rem-int/2addr v1, v2

    #@45
    iput v1, p0, Ljava/util/logging/MemoryHandler;->start:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    goto :goto_0

    #@48
    .end local v0    # "ix":I
    :catchall_0
    move-exception v1

    #@49
    monitor-exit p0

    #@4a
    throw v1
.end method

.method public declared-synchronized push()V
    .locals 5

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 204
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v3, p0, Ljava/util/logging/MemoryHandler;->count:I

    #@4
    if-ge v0, v3, :cond_0

    #@6
    .line 205
    iget v3, p0, Ljava/util/logging/MemoryHandler;->start:I

    #@8
    add-int/2addr v3, v0

    #@9
    iget-object v4, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    #@b
    array-length v4, v4

    #@c
    rem-int v1, v3, v4

    #@e
    .line 206
    .local v1, "ix":I
    iget-object v3, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    #@10
    aget-object v2, v3, v1

    #@12
    .line 207
    .local v2, "record":Ljava/util/logging/LogRecord;
    iget-object v3, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    #@14
    invoke-virtual {v3, v2}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    #@17
    .line 204
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 210
    .end local v1    # "ix":I
    .end local v2    # "record":Ljava/util/logging/LogRecord;
    :cond_0
    const/4 v3, 0x0

    #@1b
    iput v3, p0, Ljava/util/logging/MemoryHandler;->start:I

    #@1d
    .line 211
    const/4 v3, 0x0

    #@1e
    iput v3, p0, Ljava/util/logging/MemoryHandler;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit p0

    #@21
    .line 203
    return-void

    #@22
    :catchall_0
    move-exception v3

    #@23
    monitor-exit p0

    #@24
    throw v3
.end method

.method public setPushLevel(Ljava/util/logging/Level;)V
    .locals 2
    .param p1, "newLevel"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    if-nez p1, :cond_0

    #@2
    .line 247
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 249
    :cond_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@b
    move-result-object v0

    #@c
    .line 250
    .local v0, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    #@f
    .line 251
    iput-object p1, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;

    #@11
    .line 245
    return-void
.end method
