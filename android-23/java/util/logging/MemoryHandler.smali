.class public Ljava/util/logging/MemoryHandler;
.super Ljava/util/logging/Handler;
.source "MemoryHandler.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x3e8


# instance fields
.field private buffer:[Ljava/util/logging/LogRecord;

.field private cursor:I

.field private final manager:Ljava/util/logging/LogManager;

.field private push:Ljava/util/logging/Level;

.field private size:I

.field private target:Ljava/util/logging/Handler;


# direct methods
.method public constructor <init>()V
    .locals 11

    #@0
    .prologue
    const/16 v7, 0x3e8

    #@2
    const/4 v10, 0x0

    #@3
    .line 86
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    #@6
    .line 64
    iput v7, p0, Ljava/util/logging/MemoryHandler;->size:I

    #@8
    .line 67
    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@a
    iput-object v7, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    #@c
    .line 70
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@f
    move-result-object v7

    #@10
    iput-object v7, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    #@12
    .line 87
    invoke-virtual {p0}, Ljava/util/logging/MemoryHandler;->getClass()Ljava/lang/Class;

    #@15
    move-result-object v7

    #@16
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 89
    .local v0, "className":Ljava/lang/String;
    iget-object v7, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    #@1c
    new-instance v8, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v8

    #@25
    const-string/jumbo v9, ".target"

    #@28
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v8

    #@2c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v8

    #@30
    invoke-virtual {v7, v8}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    .line 91
    .local v6, "targetName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v7}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@3b
    move-result-object v2

    #@3c
    .line 92
    .local v2, "loader":Ljava/lang/ClassLoader;
    if-nez v2, :cond_0

    #@3e
    .line 93
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@41
    move-result-object v2

    #@42
    .line 95
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@45
    move-result-object v5

    #@46
    .line 96
    .local v5, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@49
    move-result-object v7

    #@4a
    check-cast v7, Ljava/util/logging/Handler;

    #@4c
    iput-object v7, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 101
    iget-object v7, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    #@50
    new-instance v8, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v8

    #@59
    const-string/jumbo v9, ".size"

    #@5c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v8

    #@60
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v7, v8}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    .line 102
    .local v4, "sizeString":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@6a
    .line 104
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@6d
    move-result v7

    #@6e
    iput v7, p0, Ljava/util/logging/MemoryHandler;->size:I

    #@70
    .line 105
    iget v7, p0, Ljava/util/logging/MemoryHandler;->size:I

    #@72
    if-gtz v7, :cond_1

    #@74
    .line 106
    const/16 v7, 0x3e8

    #@76
    iput v7, p0, Ljava/util/logging/MemoryHandler;->size:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@78
    .line 113
    :cond_1
    :goto_0
    iget-object v7, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    #@7a
    new-instance v8, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v8

    #@83
    const-string/jumbo v9, ".push"

    #@86
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v8

    #@8a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    invoke-virtual {v7, v8}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@91
    move-result-object v3

    #@92
    .line 114
    .local v3, "pushName":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@94
    .line 116
    :try_start_2
    invoke-static {v3}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    #@97
    move-result-object v7

    #@98
    iput-object v7, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@9a
    .line 122
    :cond_2
    :goto_1
    const-string/jumbo v7, "ALL"

    #@9d
    const-string/jumbo v8, "java.util.logging.SimpleFormatter"

    #@a0
    invoke-virtual {p0, v7, v10, v8, v10}, Ljava/util/logging/MemoryHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a3
    .line 123
    iget v7, p0, Ljava/util/logging/MemoryHandler;->size:I

    #@a5
    new-array v7, v7, [Ljava/util/logging/LogRecord;

    #@a7
    iput-object v7, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    #@a9
    .line 86
    return-void

    #@aa
    .line 97
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    .end local v3    # "pushName":Ljava/lang/String;
    .end local v4    # "sizeString":Ljava/lang/String;
    .end local v5    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@ab
    .line 98
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    #@ad
    new-instance v8, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v9, "Cannot load target handler \'"

    #@b5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v8

    #@b9
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v8

    #@bd
    const-string/jumbo v9, "\'"

    #@c0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v8

    #@c4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v8

    #@c8
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@cb
    throw v7

    #@cc
    .line 108
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    .restart local v4    # "sizeString":Ljava/lang/String;
    .restart local v5    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    #@cd
    .line 109
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v7

    #@d6
    const-string/jumbo v8, ".size"

    #@d9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v7

    #@dd
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v7

    #@e1
    invoke-virtual {p0, v7, v4, v1}, Ljava/util/logging/MemoryHandler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@e4
    goto :goto_0

    #@e5
    .line 117
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "pushName":Ljava/lang/String;
    :catch_2
    move-exception v1

    #@e6
    .line 118
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v7

    #@ef
    const-string/jumbo v8, ".push"

    #@f2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v7

    #@f6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v7

    #@fa
    invoke-virtual {p0, v7, v3, v1}, Ljava/util/logging/MemoryHandler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    #@fd
    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/logging/Handler;ILjava/util/logging/Level;)V
    .locals 3
    .param p1, "target"    # Ljava/util/logging/Handler;
    .param p2, "size"    # I
    .param p3, "pushLevel"    # Ljava/util/logging/Level;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 144
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    #@4
    .line 64
    const/16 v0, 0x3e8

    #@6
    iput v0, p0, Ljava/util/logging/MemoryHandler;->size:I

    #@8
    .line 67
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@a
    iput-object v0, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    #@c
    .line 70
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    #@12
    .line 145
    if-gtz p2, :cond_0

    #@14
    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "size <= 0"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/util/logging/Handler;->getLevel()Ljava/util/logging/Level;

    #@20
    .line 149
    invoke-virtual {p3}, Ljava/util/logging/Level;->intValue()I

    #@23
    .line 150
    iput-object p1, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    #@25
    .line 151
    iput p2, p0, Ljava/util/logging/MemoryHandler;->size:I

    #@27
    .line 152
    iput-object p3, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    #@29
    .line 153
    const-string/jumbo v0, "ALL"

    #@2c
    const-string/jumbo v1, "java.util.logging.SimpleFormatter"

    #@2f
    invoke-virtual {p0, v0, v2, v1, v2}, Ljava/util/logging/MemoryHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@32
    .line 154
    new-array v0, p2, [Ljava/util/logging/LogRecord;

    #@34
    iput-object v0, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    #@36
    .line 144
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@5
    .line 163
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    #@7
    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V

    #@a
    .line 164
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    #@c
    invoke-virtual {p0, v0}, Ljava/util/logging/MemoryHandler;->setLevel(Ljava/util/logging/Level;)V

    #@f
    .line 161
    return-void
.end method

.method public flush()V
    .locals 1

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/Handler;->flush()V

    #@5
    .line 172
    return-void
.end method

.method public getPushLevel()Ljava/util/logging/Level;
    .locals 1

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    #@2
    return-object v0
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    .line 224
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
    .line 187
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/logging/MemoryHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 188
    return-void

    #@9
    .line 190
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    #@b
    iget v1, p0, Ljava/util/logging/MemoryHandler;->size:I

    #@d
    if-lt v0, v1, :cond_1

    #@f
    .line 191
    const/4 v0, 0x0

    #@10
    iput v0, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    #@12
    .line 193
    :cond_1
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    #@14
    iget v1, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    #@16
    add-int/lit8 v2, v1, 0x1

    #@18
    iput v2, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    #@1a
    aput-object p1, v0, v1

    #@1c
    .line 194
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@23
    move-result v0

    #@24
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    #@26
    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    #@29
    move-result v1

    #@2a
    if-lt v0, v1, :cond_2

    #@2c
    .line 195
    invoke-virtual {p0}, Ljava/util/logging/MemoryHandler;->push()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    :cond_2
    monitor-exit p0

    #@30
    .line 186
    return-void

    #@31
    :catchall_0
    move-exception v0

    #@32
    monitor-exit p0

    #@33
    throw v0
.end method

.method public push()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 232
    iget v0, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    #@3
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/logging/MemoryHandler;->size:I

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 233
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    #@9
    aget-object v1, v1, v0

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 234
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    #@f
    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    #@11
    aget-object v2, v2, v0

    #@13
    invoke-virtual {v1, v2}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    #@16
    .line 236
    :cond_0
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    #@18
    aput-object v3, v1, v0

    #@1a
    .line 232
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 238
    :cond_1
    const/4 v0, 0x0

    #@1e
    :goto_1
    iget v1, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    #@20
    if-ge v0, v1, :cond_3

    #@22
    .line 239
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    #@24
    aget-object v1, v1, v0

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 240
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    #@2a
    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    #@2c
    aget-object v2, v2, v0

    #@2e
    invoke-virtual {v1, v2}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    #@31
    .line 242
    :cond_2
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    #@33
    aput-object v3, v1, v0

    #@35
    .line 238
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_1

    #@38
    .line 244
    :cond_3
    const/4 v1, 0x0

    #@39
    iput v1, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    #@3b
    .line 231
    return-void
.end method

.method public setPushLevel(Ljava/util/logging/Level;)V
    .locals 1
    .param p1, "newLevel"    # Ljava/util/logging/Level;

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@5
    .line 258
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@8
    .line 259
    iput-object p1, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    #@a
    .line 256
    return-void
.end method
