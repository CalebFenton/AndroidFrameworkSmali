.class public Ljava/util/logging/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field public static final LOGGING_MXBEAN_NAME:Ljava/lang/String; = "java.util.logging:type=Logging"

.field static manager:Ljava/util/logging/LogManager;

.field private static final perm:Ljava/util/logging/LoggingPermission;


# instance fields
.field private listeners:Ljava/beans/PropertyChangeSupport;

.field private loggers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private props:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 120
    new-instance v3, Ljava/util/logging/LoggingPermission;

    #@3
    const-string/jumbo v4, "control"

    #@6
    invoke-direct {v3, v4, v5}, Ljava/util/logging/LoggingPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    sput-object v3, Ljava/util/logging/LogManager;->perm:Ljava/util/logging/LoggingPermission;

    #@b
    .line 151
    const-string/jumbo v3, "java.util.logging.manager"

    #@e
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 152
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@14
    .line 153
    invoke-static {v0}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Ljava/util/logging/LogManager;

    #@1a
    sput-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    #@1c
    .line 155
    :cond_0
    sget-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    #@1e
    if-nez v3, :cond_1

    #@20
    .line 156
    new-instance v3, Ljava/util/logging/LogManager;

    #@22
    invoke-direct {v3}, Ljava/util/logging/LogManager;-><init>()V

    #@25
    sput-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    #@27
    .line 161
    :cond_1
    :try_start_0
    sget-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    #@29
    invoke-virtual {v3}, Ljava/util/logging/LogManager;->readConfiguration()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 167
    :goto_0
    new-instance v2, Ljava/util/logging/Logger;

    #@2e
    const-string/jumbo v3, ""

    #@31
    invoke-direct {v2, v3, v5}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 168
    .local v2, "root":Ljava/util/logging/Logger;
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@36
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    #@39
    .line 169
    sget-object v3, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    #@3b
    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->setParent(Ljava/util/logging/Logger;)V

    #@3e
    .line 171
    sget-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    #@40
    invoke-virtual {v3, v2}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    #@43
    .line 172
    sget-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    #@45
    sget-object v4, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    #@47
    invoke-virtual {v3, v4}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    #@4a
    .line 117
    return-void

    #@4b
    .line 162
    .end local v2    # "root":Ljava/util/logging/Logger;
    :catch_0
    move-exception v1

    #@4c
    .line 163
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    #@4f
    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 182
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    #@a
    .line 183
    new-instance v0, Ljava/util/Properties;

    #@c
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@f
    iput-object v0, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    #@11
    .line 184
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    #@13
    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    #@16
    iput-object v0, p0, Ljava/util/logging/LogManager;->listeners:Ljava/beans/PropertyChangeSupport;

    #@18
    .line 187
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@1b
    move-result-object v0

    #@1c
    new-instance v1, Ljava/util/logging/LogManager$1;

    #@1e
    invoke-direct {v1, p0}, Ljava/util/logging/LogManager$1;-><init>(Ljava/util/logging/LogManager;)V

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    #@24
    .line 181
    return-void
.end method

.method private addToFamilyTree(Ljava/util/logging/Logger;Ljava/lang/String;)V
    .locals 13
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v12, 0x2e

    #@2
    const/4 v11, 0x0

    #@3
    .line 229
    const/4 v6, 0x0

    #@4
    .line 232
    .local v6, "parent":Ljava/util/logging/Logger;
    move-object v7, p2

    #@5
    .line 233
    .end local v6    # "parent":Ljava/util/logging/Logger;
    .local v7, "parentName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(I)I

    #@8
    move-result v3

    #@9
    .local v3, "lastSeparator":I
    const/4 v9, -0x1

    #@a
    if-eq v3, v9, :cond_1

    #@c
    .line 234
    invoke-virtual {v7, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f
    move-result-object v7

    #@10
    .line 235
    iget-object v9, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    #@12
    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v6

    #@16
    check-cast v6, Ljava/util/logging/Logger;

    #@18
    .line 236
    .local v6, "parent":Ljava/util/logging/Logger;
    if-eqz v6, :cond_5

    #@1a
    .line 237
    invoke-virtual {p0, p1, v6}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    #@1d
    .line 246
    .end local v6    # "parent":Ljava/util/logging/Logger;
    :cond_1
    :goto_0
    if-nez v6, :cond_2

    #@1f
    iget-object v9, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    #@21
    const-string/jumbo v10, ""

    #@24
    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v6

    #@28
    check-cast v6, Ljava/util/logging/Logger;

    #@2a
    .restart local v6    # "parent":Ljava/util/logging/Logger;
    if-eqz v6, :cond_2

    #@2c
    .line 247
    invoke-virtual {p0, p1, v6}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    #@2f
    .line 252
    .end local v6    # "parent":Ljava/util/logging/Logger;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v9

    #@38
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v9

    #@3c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    .line 253
    .local v4, "nameDot":Ljava/lang/String;
    iget-object v9, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    #@42
    invoke-virtual {v9}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@45
    move-result-object v0

    #@46
    .line 254
    .local v0, "allLoggers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/logging/Logger;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@49
    move-result-object v2

    #@4a
    .local v2, "child$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4d
    move-result v9

    #@4e
    if-eqz v9, :cond_7

    #@50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@53
    move-result-object v1

    #@54
    check-cast v1, Ljava/util/logging/Logger;

    #@56
    .line 255
    .local v1, "child":Ljava/util/logging/Logger;
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    #@59
    move-result-object v5

    #@5a
    .line 256
    .local v5, "oldParent":Ljava/util/logging/Logger;
    if-ne v6, v5, :cond_3

    #@5c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5f
    move-result v9

    #@60
    if-eqz v9, :cond_4

    #@62
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@69
    move-result v9

    #@6a
    if-eqz v9, :cond_3

    #@6c
    .line 257
    :cond_4
    move-object v8, p1

    #@6d
    .line 258
    .local v8, "thisLogger":Ljava/util/logging/Logger;
    invoke-virtual {v1, v8}, Ljava/util/logging/Logger;->setParent(Ljava/util/logging/Logger;)V

    #@70
    .line 259
    if-eqz v5, :cond_3

    #@72
    .line 261
    iget-object v9, v5, Ljava/util/logging/Logger;->children:Ljava/util/List;

    #@74
    invoke-interface {v9, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@77
    goto :goto_1

    #@78
    .line 239
    .end local v0    # "allLoggers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/logging/Logger;>;"
    .end local v1    # "child":Ljava/util/logging/Logger;
    .end local v2    # "child$iterator":Ljava/util/Iterator;
    .end local v4    # "nameDot":Ljava/lang/String;
    .end local v5    # "oldParent":Ljava/util/logging/Logger;
    .end local v8    # "thisLogger":Ljava/util/logging/Logger;
    .restart local v6    # "parent":Ljava/util/logging/Logger;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v9

    #@81
    const-string/jumbo v10, ".level"

    #@84
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v9

    #@88
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v9

    #@8c
    invoke-virtual {p0, v9}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@8f
    move-result-object v9

    #@90
    if-nez v9, :cond_6

    #@92
    .line 240
    new-instance v9, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v9

    #@9b
    const-string/jumbo v10, ".handlers"

    #@9e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v9

    #@a2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v9

    #@a6
    invoke-virtual {p0, v9}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@a9
    move-result-object v9

    #@aa
    if-eqz v9, :cond_0

    #@ac
    .line 241
    :cond_6
    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@af
    move-result-object v6

    #@b0
    .line 242
    invoke-virtual {p0, p1, v6}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    #@b3
    goto/16 :goto_0

    #@b5
    .line 228
    .end local v6    # "parent":Ljava/util/logging/Logger;
    .restart local v0    # "allLoggers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/logging/Logger;>;"
    .restart local v2    # "child$iterator":Ljava/util/Iterator;
    .restart local v4    # "nameDot":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method static getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 351
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    .line 352
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v3

    #@c
    return-object v3

    #@d
    .line 353
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@e
    .line 355
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@19
    move-result-object v0

    #@1a
    .line 356
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@1d
    move-result-object v3

    #@1e
    return-object v3

    #@1f
    .line 357
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    #@20
    .line 358
    .local v2, "innerE":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "Loading class \'"

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    const-string/jumbo v5, "\' failed"

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 359
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@42
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@45
    .line 360
    const/4 v3, 0x0

    #@46
    return-object v3
.end method

.method public static getLogManager()Ljava/util/logging/LogManager;
    .locals 1

    #@0
    .prologue
    .line 293
    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    #@2
    return-object v0
.end method

.method public static getLoggingMXBean()Ljava/util/logging/LoggingMXBean;
    .locals 1

    #@0
    .prologue
    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method private declared-synchronized readConfigurationImpl(Ljava/io/InputStream;)V
    .locals 12
    .param p1, "ins"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 368
    :try_start_0
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->reset()V

    #@4
    .line 369
    iget-object v8, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    #@6
    invoke-virtual {v8, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    #@9
    .line 373
    iget-object v8, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    #@b
    const-string/jumbo v9, ""

    #@e
    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v6

    #@12
    check-cast v6, Ljava/util/logging/Logger;

    #@14
    .line 374
    .local v6, "root":Ljava/util/logging/Logger;
    if-eqz v6, :cond_0

    #@16
    .line 375
    invoke-virtual {v6, p0}, Ljava/util/logging/Logger;->setManager(Ljava/util/logging/LogManager;)V

    #@19
    .line 379
    :cond_0
    iget-object v8, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    #@1b
    const-string/jumbo v9, "config"

    #@1e
    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 380
    .local v2, "configs":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@24
    .line 381
    new-instance v7, Ljava/util/StringTokenizer;

    #@26
    const-string/jumbo v8, " "

    #@29
    invoke-direct {v7, v2, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    .line 382
    .local v7, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@2f
    move-result v8

    #@30
    if-eqz v8, :cond_1

    #@32
    .line 383
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 384
    .local v1, "configerName":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .end local v1    # "configerName":Ljava/lang/String;
    .end local v2    # "configs":Ljava/lang/String;
    .end local v6    # "root":Ljava/util/logging/Logger;
    .end local v7    # "st":Ljava/util/StringTokenizer;
    :catchall_0
    move-exception v8

    #@3b
    monitor-exit p0

    #@3c
    throw v8

    #@3d
    .line 389
    .restart local v2    # "configs":Ljava/lang/String;
    .restart local v6    # "root":Ljava/util/logging/Logger;
    :cond_1
    :try_start_1
    iget-object v8, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    #@3f
    invoke-virtual {v8}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@42
    move-result-object v0

    #@43
    .line 390
    .local v0, "allLoggers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/logging/Logger;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@46
    move-result-object v4

    #@47
    .local v4, "logger$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@4a
    move-result v8

    #@4b
    if-eqz v8, :cond_3

    #@4d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@50
    move-result-object v3

    #@51
    check-cast v3, Ljava/util/logging/Logger;

    #@53
    .line 391
    .local v3, "logger":Ljava/util/logging/Logger;
    iget-object v8, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    #@55
    new-instance v9, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    invoke-virtual {v3}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v9

    #@62
    const-string/jumbo v10, ".level"

    #@65
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v9

    #@69
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v9

    #@6d
    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    .line 392
    .local v5, "property":Ljava/lang/String;
    if-eqz v5, :cond_2

    #@73
    .line 393
    invoke-static {v5}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    #@76
    move-result-object v8

    #@77
    invoke-virtual {v3, v8}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    #@7a
    goto :goto_1

    #@7b
    .line 396
    .end local v3    # "logger":Ljava/util/logging/Logger;
    .end local v5    # "property":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Ljava/util/logging/LogManager;->listeners:Ljava/beans/PropertyChangeSupport;

    #@7d
    const/4 v9, 0x0

    #@7e
    const/4 v10, 0x0

    #@7f
    const/4 v11, 0x0

    #@80
    invoke-virtual {v8, v9, v10, v11}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@83
    monitor-exit p0

    #@84
    .line 367
    return-void
.end method


# virtual methods
.method public declared-synchronized addLogger(Ljava/util/logging/Logger;)Z
    .locals 2
    .param p1, "logger"    # Ljava/util/logging/Logger;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 218
    :try_start_0
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 219
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 220
    const/4 v1, 0x0

    #@e
    monitor-exit p0

    #@f
    return v1

    #@10
    .line 222
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0}, Ljava/util/logging/LogManager;->addToFamilyTree(Ljava/util/logging/Logger;Ljava/lang/String;)V

    #@13
    .line 223
    iget-object v1, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    #@15
    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 224
    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->setManager(Ljava/util/logging/LogManager;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 225
    const/4 v1, 0x1

    #@1c
    monitor-exit p0

    #@1d
    return v1

    #@1e
    .end local v0    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit p0

    #@20
    throw v1
.end method

.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 2
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    #@0
    .prologue
    .line 448
    if-nez p1, :cond_0

    #@2
    .line 449
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "l == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 451
    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@e
    .line 452
    iget-object v0, p0, Ljava/util/logging/LogManager;->listeners:Ljava/beans/PropertyChangeSupport;

    #@10
    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    #@13
    .line 447
    return-void
.end method

.method public checkAccess()V
    .locals 0

    #@0
    .prologue
    .line 197
    return-void
.end method

.method public declared-synchronized getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 275
    :try_start_0
    iget-object v0, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/util/logging/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public declared-synchronized getLoggerNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 284
    :try_start_0
    iget-object v0, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method declared-synchronized getOrCreate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 474
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@4
    move-result-object v0

    #@5
    .line 475
    .local v0, "result":Ljava/util/logging/Logger;
    if-nez v0, :cond_0

    #@7
    .line 476
    new-instance v0, Ljava/util/logging/Logger;

    #@9
    .end local v0    # "result":Ljava/util/logging/Logger;
    invoke-direct {v0, p1, p2}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 477
    .restart local v0    # "result":Ljava/util/logging/Logger;
    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit p0

    #@10
    .line 479
    return-object v0

    #@11
    .end local v0    # "result":Ljava/util/logging/Logger;
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public readConfiguration()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 319
    const-string/jumbo v5, "java.util.logging.config.class"

    #@3
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 320
    .local v0, "configClassName":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@9
    invoke-static {v0}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v5

    #@d
    if-nez v5, :cond_3

    #@f
    .line 322
    :cond_0
    const-string/jumbo v5, "java.util.logging.config.file"

    #@12
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 324
    .local v1, "configFile":Ljava/lang/String;
    if-nez v1, :cond_1

    #@18
    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v6, "java.home"

    #@20
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    const-string/jumbo v6, "lib"

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    .line 327
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    #@37
    .line 326
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    .line 327
    const-string/jumbo v6, "logging.properties"

    #@3e
    .line 326
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    .line 330
    :cond_1
    const/4 v3, 0x0

    #@47
    .line 333
    .local v3, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    #@49
    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .end local v3    # "input":Ljava/io/InputStream;
    .local v4, "input":Ljava/io/InputStream;
    move-object v3, v4

    #@4d
    .line 341
    .end local v4    # "input":Ljava/io/InputStream;
    .local v3, "input":Ljava/io/InputStream;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    #@4f
    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@52
    invoke-virtual {p0, v5}, Ljava/util/logging/LogManager;->readConfiguration(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    .line 343
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@58
    .line 317
    .end local v1    # "configFile":Ljava/lang/String;
    .end local v3    # "input":Ljava/io/InputStream;
    :cond_3
    return-void

    #@59
    .line 334
    .restart local v1    # "configFile":Ljava/lang/String;
    .local v3, "input":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    #@5a
    .line 336
    .local v2, "exception":Ljava/io/IOException;
    :try_start_2
    const-class v5, Ljava/util/logging/LogManager;

    #@5c
    const-string/jumbo v6, "logging.properties"

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@62
    move-result-object v3

    #@63
    .line 337
    .local v3, "input":Ljava/io/InputStream;
    if-nez v3, :cond_2

    #@65
    .line 338
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@66
    .line 342
    .end local v2    # "exception":Ljava/io/IOException;
    .end local v3    # "input":Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    #@67
    .line 343
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6a
    .line 342
    throw v5
.end method

.method public readConfiguration(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "ins"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 412
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@3
    .line 413
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager;->readConfigurationImpl(Ljava/io/InputStream;)V

    #@6
    .line 411
    return-void
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;

    #@0
    .prologue
    .line 463
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@3
    .line 464
    iget-object v0, p0, Ljava/util/logging/LogManager;->listeners:Ljava/beans/PropertyChangeSupport;

    #@5
    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    #@8
    .line 462
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 424
    :try_start_0
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@4
    .line 425
    new-instance v4, Ljava/util/Properties;

    #@6
    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    #@9
    iput-object v4, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    #@b
    .line 426
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->getLoggerNames()Ljava/util/Enumeration;

    #@e
    move-result-object v2

    #@f
    .line 427
    .local v2, "names":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    .line 428
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/lang/String;

    #@1b
    .line 429
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@1e
    move-result-object v0

    #@1f
    .line 430
    .local v0, "logger":Ljava/util/logging/Logger;
    if-eqz v0, :cond_0

    #@21
    .line 431
    invoke-virtual {v0}, Ljava/util/logging/Logger;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    goto :goto_0

    #@25
    .end local v0    # "logger":Ljava/util/logging/Logger;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "names":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    #@26
    monitor-exit p0

    #@27
    throw v4

    #@28
    .line 434
    .restart local v2    # "names":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    #@2a
    const-string/jumbo v5, ""

    #@2d
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v3

    #@31
    check-cast v3, Ljava/util/logging/Logger;

    #@33
    .line 435
    .local v3, "root":Ljava/util/logging/Logger;
    if-eqz v3, :cond_2

    #@35
    .line 436
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@37
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    :cond_2
    monitor-exit p0

    #@3b
    .line 423
    return-void
.end method

.method declared-synchronized setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    .locals 4
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "newLevel"    # Ljava/util/logging/Level;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 510
    :try_start_0
    iget v2, p1, Ljava/util/logging/Logger;->levelIntVal:I

    #@3
    .line 511
    .local v2, "previous":I
    iput-object p2, p1, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    #@5
    .line 513
    if-nez p2, :cond_2

    #@7
    .line 514
    iget-object v3, p1, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 515
    iget-object v3, p1, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@d
    iget v3, v3, Ljava/util/logging/Logger;->levelIntVal:I

    #@f
    .line 514
    :goto_0
    iput v3, p1, Ljava/util/logging/Logger;->levelIntVal:I

    #@11
    .line 521
    :goto_1
    iget v3, p1, Ljava/util/logging/Logger;->levelIntVal:I

    #@13
    if-eq v2, v3, :cond_3

    #@15
    .line 522
    iget-object v3, p1, Ljava/util/logging/Logger;->children:Ljava/util/List;

    #@17
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_3

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Ljava/util/logging/Logger;

    #@27
    .line 523
    .local v0, "child":Ljava/util/logging/Logger;
    iget-object v3, v0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    #@29
    if-nez v3, :cond_0

    #@2b
    .line 524
    const/4 v3, 0x0

    #@2c
    invoke-virtual {p0, v0, v3}, Ljava/util/logging/LogManager;->setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    goto :goto_2

    #@30
    .end local v0    # "child":Ljava/util/logging/Logger;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v2    # "previous":I
    :catchall_0
    move-exception v3

    #@31
    monitor-exit p0

    #@32
    throw v3

    #@33
    .line 516
    .restart local v2    # "previous":I
    :cond_1
    :try_start_1
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@35
    invoke-virtual {v3}, Ljava/util/logging/Level;->intValue()I

    #@38
    move-result v3

    #@39
    goto :goto_0

    #@3a
    .line 518
    :cond_2
    invoke-virtual {p2}, Ljava/util/logging/Level;->intValue()I

    #@3d
    move-result v3

    #@3e
    iput v3, p1, Ljava/util/logging/Logger;->levelIntVal:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    goto :goto_1

    #@41
    :cond_3
    monitor-exit p0

    #@42
    .line 509
    return-void
.end method

.method declared-synchronized setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .locals 1
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "newParent"    # Ljava/util/logging/Logger;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 491
    :try_start_0
    iput-object p2, p1, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@3
    .line 493
    iget-object v0, p1, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 494
    const/4 v0, 0x0

    #@8
    invoke-virtual {p0, p1, v0}, Ljava/util/logging/LogManager;->setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    #@b
    .line 496
    :cond_0
    iget-object v0, p2, Ljava/util/logging/Logger;->children:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 497
    invoke-virtual {p1}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    .line 490
    return-void

    #@15
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method
