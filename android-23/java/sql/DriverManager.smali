.class public Ljava/sql/DriverManager;
.super Ljava/lang/Object;
.source "DriverManager.java"


# static fields
.field private static final logPermission:Ljava/sql/SQLPermission;

.field private static loginTimeout:I

.field private static final theDrivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/sql/Driver;",
            ">;"
        }
    .end annotation
.end field

.field private static thePrintStream:Ljava/io/PrintStream;

.field private static thePrintWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 52
    const/4 v0, 0x0

    #@1
    sput v0, Ljava/sql/DriverManager;->loginTimeout:I

    #@3
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/16 v1, 0xa

    #@7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    sput-object v0, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    #@c
    .line 61
    new-instance v0, Ljava/sql/SQLPermission;

    #@e
    const-string/jumbo v1, "setLog"

    #@11
    invoke-direct {v0, v1}, Ljava/sql/SQLPermission;-><init>(Ljava/lang/String;)V

    #@14
    sput-object v0, Ljava/sql/DriverManager;->logPermission:Ljava/sql/SQLPermission;

    #@16
    .line 67
    invoke-static {}, Ljava/sql/DriverManager;->loadInitialDrivers()V

    #@19
    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static deregisterDriver(Ljava/sql/Driver;)V
    .locals 3
    .param p0, "driver"    # Ljava/sql/Driver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    if-nez p0, :cond_0

    #@2
    .line 121
    return-void

    #@3
    .line 123
    :cond_0
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@6
    move-result-object v0

    #@7
    .line 124
    .local v0, "callerClassLoader":Ljava/lang/ClassLoader;
    invoke-static {p0, v0}, Ljava/sql/DriverManager;->isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_1

    #@d
    .line 125
    new-instance v1, Ljava/lang/SecurityException;

    #@f
    const-string/jumbo v2, "calling class not authorized to deregister JDBC driver"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 127
    :cond_1
    sget-object v2, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    #@18
    monitor-enter v2

    #@19
    .line 128
    :try_start_0
    sget-object v1, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    #@1b
    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v2

    #@1f
    .line 119
    return-void

    #@20
    .line 127
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method public static getConnection(Ljava/lang/String;)Ljava/sql/Connection;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    new-instance v0, Ljava/util/Properties;

    #@2
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@5
    invoke-static {p0, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    new-instance v0, Ljava/util/Properties;

    #@2
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@5
    .line 207
    .local v0, "theProperties":Ljava/util/Properties;
    if-eqz p1, :cond_0

    #@7
    .line 208
    const-string/jumbo v1, "user"

    #@a
    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@d
    .line 210
    :cond_0
    if-eqz p2, :cond_1

    #@f
    .line 211
    const-string/jumbo v1, "password"

    #@12
    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@15
    .line 213
    :cond_1
    invoke-static {p0, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method public static getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    const-string/jumbo v0, "08001"

    #@3
    .line 169
    .local v0, "sqlState":Ljava/lang/String;
    if-nez p0, :cond_0

    #@5
    .line 170
    new-instance v4, Ljava/sql/SQLException;

    #@7
    const-string/jumbo v5, "The url cannot be null"

    #@a
    invoke-direct {v4, v5, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    throw v4

    #@e
    .line 172
    :cond_0
    sget-object v5, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    #@10
    monitor-enter v5

    #@11
    .line 178
    :try_start_0
    sget-object v4, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    #@13
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v3

    #@17
    .local v3, "theDriver$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_2

    #@1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Ljava/sql/Driver;

    #@23
    .line 179
    .local v2, "theDriver":Ljava/sql/Driver;
    invoke-interface {v2, p0, p1}, Ljava/sql/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result-object v1

    #@27
    .line 180
    .local v1, "theConnection":Ljava/sql/Connection;
    if-eqz v1, :cond_1

    #@29
    monitor-exit v5

    #@2a
    .line 181
    return-object v1

    #@2b
    .end local v1    # "theConnection":Ljava/sql/Connection;
    .end local v2    # "theDriver":Ljava/sql/Driver;
    :cond_2
    monitor-exit v5

    #@2c
    .line 186
    new-instance v4, Ljava/sql/SQLException;

    #@2e
    const-string/jumbo v5, "No suitable driver"

    #@31
    invoke-direct {v4, v5, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@34
    throw v4

    #@35
    .line 172
    .end local v3    # "theDriver$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@36
    monitor-exit v5

    #@37
    throw v4
.end method

.method public static getDriver(Ljava/lang/String;)Ljava/sql/Driver;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    .line 228
    .local v0, "callerClassLoader":Ljava/lang/ClassLoader;
    sget-object v4, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    #@6
    monitor-enter v4

    #@7
    .line 234
    :try_start_0
    sget-object v3, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "driver$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/sql/Driver;

    #@19
    .line 235
    .local v1, "driver":Ljava/sql/Driver;
    invoke-interface {v1, p0}, Ljava/sql/Driver;->acceptsURL(Ljava/lang/String;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 236
    invoke-static {v1, v0}, Ljava/sql/DriverManager;->isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v3

    #@23
    .line 235
    if-eqz v3, :cond_0

    #@25
    monitor-exit v4

    #@26
    .line 237
    return-object v1

    #@27
    .end local v1    # "driver":Ljava/sql/Driver;
    :cond_1
    monitor-exit v4

    #@28
    .line 244
    new-instance v3, Ljava/sql/SQLException;

    #@2a
    const-string/jumbo v4, "No suitable driver"

    #@2d
    const-string/jumbo v5, "08001"

    #@30
    invoke-direct {v3, v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    throw v3

    #@34
    .line 228
    .end local v2    # "driver$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@35
    monitor-exit v4

    #@36
    throw v3
.end method

.method public static getDrivers()Ljava/util/Enumeration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/sql/Driver;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 259
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    .line 260
    .local v0, "callerClassLoader":Ljava/lang/ClassLoader;
    sget-object v5, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    #@6
    monitor-enter v5

    #@7
    .line 261
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 262
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/sql/Driver;>;"
    sget-object v4, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    #@e
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "driver$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_1

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljava/sql/Driver;

    #@1e
    .line 263
    .local v1, "driver":Ljava/sql/Driver;
    invoke-static {v1, v0}, Ljava/sql/DriverManager;->isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_0

    #@24
    .line 264
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 260
    .end local v1    # "driver":Ljava/sql/Driver;
    .end local v2    # "driver$iterator":Ljava/util/Iterator;
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/sql/Driver;>;"
    :catchall_0
    move-exception v4

    #@29
    monitor-exit v5

    #@2a
    throw v4

    #@2b
    .line 267
    .restart local v2    # "driver$iterator":Ljava/util/Iterator;
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/sql/Driver;>;"
    :cond_1
    :try_start_1
    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    move-result-object v4

    #@2f
    monitor-exit v5

    #@30
    return-object v4
.end method

.method public static getLogStream()Ljava/io/PrintStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 289
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    #@2
    return-object v0
.end method

.method public static getLogWriter()Ljava/io/PrintWriter;
    .locals 1

    #@0
    .prologue
    .line 299
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    #@2
    return-object v0
.end method

.method public static getLoginTimeout()I
    .locals 1

    #@0
    .prologue
    .line 277
    sget v0, Ljava/sql/DriverManager;->loginTimeout:I

    #@2
    return v0
.end method

.method private static isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z
    .locals 7
    .param p0, "theObject"    # Ljava/lang/Object;
    .param p1, "theClassLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 390
    if-eqz p0, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    .line 391
    :cond_0
    return v5

    #@7
    .line 394
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    .line 397
    .local v1, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    const/4 v4, 0x1

    #@10
    invoke-static {v3, v4, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v0

    #@14
    .line 399
    .local v0, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v0, v1, :cond_2

    #@16
    .line 400
    return v6

    #@17
    .line 402
    .end local v0    # "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    #@18
    .line 405
    :cond_2
    return v5
.end method

.method private static loadInitialDrivers()V
    .locals 8

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 75
    const-string/jumbo v4, "jdbc.drivers"

    #@4
    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 76
    .local v2, "theDriverList":Ljava/lang/String;
    if-nez v2, :cond_0

    #@a
    .line 77
    return-void

    #@b
    .line 84
    :cond_0
    const-string/jumbo v4, ":"

    #@e
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 86
    .local v3, "theDriverNames":[Ljava/lang/String;
    const/4 v4, 0x0

    #@13
    array-length v5, v3

    #@14
    :goto_0
    if-ge v4, v5, :cond_1

    #@16
    aget-object v0, v3, v4

    #@18
    .line 90
    .local v0, "element":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@1b
    move-result-object v6

    #@1c
    const/4 v7, 0x1

    #@1d
    .line 89
    invoke-static {v0, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 86
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@22
    goto :goto_0

    #@23
    .line 74
    .end local v0    # "element":Ljava/lang/String;
    :cond_1
    return-void

    #@24
    .line 92
    .restart local v0    # "element":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@25
    .local v1, "t":Ljava/lang/Throwable;
    goto :goto_1
.end method

.method public static println(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 310
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 311
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    #@6
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 312
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    #@b
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    #@e
    .line 309
    :cond_0
    :goto_0
    return-void

    #@f
    .line 313
    :cond_1
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 314
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    #@15
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18
    .line 315
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    #@1a
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    #@1d
    goto :goto_0
.end method

.method public static registerDriver(Ljava/sql/Driver;)V
    .locals 2
    .param p0, "driver"    # Ljava/sql/Driver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    #@0
    .prologue
    .line 335
    if-nez p0, :cond_0

    #@2
    .line 336
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "driver == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 338
    :cond_0
    sget-object v1, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    #@d
    monitor-enter v1

    #@e
    .line 339
    :try_start_0
    sget-object v0, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    #@10
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 334
    return-void

    #@15
    .line 338
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public static setLogStream(Ljava/io/PrintStream;)V
    .locals 0
    .param p0, "out"    # Ljava/io/PrintStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 363
    sput-object p0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    #@2
    .line 362
    return-void
.end method

.method public static setLogWriter(Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "out"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 374
    sput-object p0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    #@2
    .line 373
    return-void
.end method

.method public static setLoginTimeout(I)V
    .locals 0
    .param p0, "seconds"    # I

    #@0
    .prologue
    .line 350
    sput p0, Ljava/sql/DriverManager;->loginTimeout:I

    #@2
    .line 349
    return-void
.end method
