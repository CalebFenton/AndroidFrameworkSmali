.class public final Ljava/util/ServiceLoader;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ServiceLoader$LazyIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TS;>;"
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "META-INF/services/"


# instance fields
.field private loader:Ljava/lang/ClassLoader;

.field private lookupIterator:Ljava/util/ServiceLoader$LazyIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ServiceLoader",
            "<TS;>.",
            "LazyIterator;"
        }
    .end annotation
.end field

.field private providers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "TS;>;"
        }
    .end annotation
.end field

.field private service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/util/ServiceLoader;)Ljava/util/ServiceLoader$LazyIterator;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/ServiceLoader;->lookupIterator:Ljava/util/ServiceLoader$LazyIterator;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/ServiceLoader;)Ljava/util/LinkedHashMap;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;
    .locals 1
    .param p1, "service"    # Ljava/lang/Class;
    .param p2, "u"    # Ljava/net/URL;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/ServiceLoader;->parse(Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p2, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 216
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    .local p1, "svc":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 195
    new-instance v0, Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;

    #@a
    .line 217
    iput-object p1, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    #@c
    .line 218
    iput-object p2, p0, Ljava/util/ServiceLoader;->loader:Ljava/lang/ClassLoader;

    #@e
    .line 219
    invoke-virtual {p0}, Ljava/util/ServiceLoader;->reload()V

    #@11
    .line 216
    return-void
.end method

.method private static fail(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 232
    new-instance v0, Ljava/util/ServiceConfigurationError;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, ": "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method private static fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 225
    new-instance v0, Ljava/util/ServiceConfigurationError;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, ": "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1, p2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@21
    throw v0
.end method

.method private static fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V
    .locals 2
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "line"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, ":"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, ": "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    #@26
    .line 236
    return-void
.end method

.method public static load(Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Ljava/util/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 501
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 502
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 476
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    new-instance v0, Ljava/util/ServiceLoader;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/ServiceLoader;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    #@5
    return-object v0
.end method

.method public static loadFromSystemProperty(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)TS;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    const/4 v4, 0x0

    #@1
    .line 547
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 548
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@b
    .line 549
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@12
    move-result-object v0

    #@13
    .line 550
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v3

    #@17
    return-object v3

    #@18
    .line 552
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v4

    #@19
    .line 553
    .end local v1    # "className":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@1a
    .line 554
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    #@1c
    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@1f
    throw v3
.end method

.method public static loadInstalled(Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Ljava/util/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 530
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    .line 531
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    #@5
    .line 532
    :goto_0
    if-eqz v0, :cond_0

    #@7
    .line 533
    move-object v1, v0

    #@8
    .line 534
    .local v1, "prev":Ljava/lang/ClassLoader;
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@b
    move-result-object v0

    #@c
    goto :goto_0

    #@d
    .line 536
    .end local v1    # "prev":Ljava/lang/ClassLoader;
    :cond_0
    invoke-static {p0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    #@10
    move-result-object v2

    #@11
    return-object v2
.end method

.method private parse(Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;
    .locals 10
    .param p1, "service"    # Ljava/lang/Class;
    .param p2, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 293
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    const/4 v6, 0x0

    #@1
    .line 294
    .local v6, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    #@2
    .line 295
    .local v7, "r":Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/ArrayList;

    #@4
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 297
    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    #@a
    move-result-object v6

    #@b
    .line 298
    .local v6, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    #@d
    new-instance v0, Ljava/io/InputStreamReader;

    #@f
    const-string/jumbo v1, "utf-8"

    #@12
    invoke-direct {v0, v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@15
    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 299
    .end local v7    # "r":Ljava/io/BufferedReader;
    .local v3, "r":Ljava/io/BufferedReader;
    const/4 v4, 0x1

    #@19
    .local v4, "lc":I
    :cond_0
    move-object v0, p0

    #@1a
    move-object v1, p1

    #@1b
    move-object v2, p2

    #@1c
    .line 300
    :try_start_1
    invoke-direct/range {v0 .. v5}, Ljava/util/ServiceLoader;->parseLine(Ljava/lang/Class;Ljava/net/URL;Ljava/io/BufferedReader;ILjava/util/List;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1f
    move-result v4

    #@20
    if-gez v4, :cond_0

    #@22
    .line 305
    if-eqz v3, :cond_1

    #@24
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    #@27
    .line 306
    :cond_1
    if-eqz v6, :cond_2

    #@29
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@2c
    .line 311
    .end local v4    # "lc":I
    .end local v6    # "in":Ljava/io/InputStream;
    :cond_2
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v0

    #@30
    return-object v0

    #@31
    .line 307
    .restart local v4    # "lc":I
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v9

    #@32
    .line 308
    .local v9, "y":Ljava/io/IOException;
    const-string/jumbo v0, "Error closing configuration file"

    #@35
    invoke-static {p1, v0, v9}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@38
    goto :goto_0

    #@39
    .line 301
    .end local v3    # "r":Ljava/io/BufferedReader;
    .end local v4    # "lc":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v9    # "y":Ljava/io/IOException;
    .restart local v7    # "r":Ljava/io/BufferedReader;
    :catch_1
    move-exception v8

    #@3a
    .local v8, "x":Ljava/io/IOException;
    move-object v3, v7

    #@3b
    .line 302
    .end local v7    # "r":Ljava/io/BufferedReader;
    .restart local v3    # "r":Ljava/io/BufferedReader;
    :goto_1
    :try_start_3
    const-string/jumbo v0, "Error reading configuration file"

    #@3e
    invoke-static {p1, v0, v8}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@41
    .line 305
    if-eqz v3, :cond_3

    #@43
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    #@46
    .line 306
    :cond_3
    if-eqz v6, :cond_2

    #@48
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@4b
    goto :goto_0

    #@4c
    .line 307
    :catch_2
    move-exception v9

    #@4d
    .line 308
    .restart local v9    # "y":Ljava/io/IOException;
    const-string/jumbo v0, "Error closing configuration file"

    #@50
    invoke-static {p1, v0, v9}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@53
    goto :goto_0

    #@54
    .line 303
    .end local v3    # "r":Ljava/io/BufferedReader;
    .end local v8    # "x":Ljava/io/IOException;
    .end local v9    # "y":Ljava/io/IOException;
    .restart local v7    # "r":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    #@55
    move-object v3, v7

    #@56
    .line 305
    .end local v7    # "r":Ljava/io/BufferedReader;
    .restart local v3    # "r":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v3, :cond_4

    #@58
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    #@5b
    .line 306
    :cond_4
    if-eqz v6, :cond_5

    #@5d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@60
    .line 303
    :cond_5
    :goto_3
    throw v0

    #@61
    .line 307
    :catch_3
    move-exception v9

    #@62
    .line 308
    .restart local v9    # "y":Ljava/io/IOException;
    const-string/jumbo v1, "Error closing configuration file"

    #@65
    invoke-static {p1, v1, v9}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@68
    goto :goto_3

    #@69
    .line 303
    .end local v9    # "y":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    #@6a
    goto :goto_2

    #@6b
    .line 301
    .restart local v4    # "lc":I
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v8

    #@6c
    .restart local v8    # "x":Ljava/io/IOException;
    goto :goto_1
.end method

.method private parseLine(Ljava/lang/Class;Ljava/net/URL;Ljava/io/BufferedReader;ILjava/util/List;)I
    .locals 7
    .param p1, "service"    # Ljava/lang/Class;
    .param p2, "u"    # Ljava/net/URL;
    .param p3, "r"    # Ljava/io/BufferedReader;
    .param p4, "lc"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/net/URL;",
            "Ljava/io/BufferedReader;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    .local p5, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    #@1
    .line 248
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 249
    .local v3, "ln":Ljava/lang/String;
    if-nez v3, :cond_0

    #@7
    .line 250
    const/4 v5, -0x1

    #@8
    return v5

    #@9
    .line 252
    :cond_0
    const/16 v5, 0x23

    #@b
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v0

    #@f
    .line 253
    .local v0, "ci":I
    if-ltz v0, :cond_1

    #@11
    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    .line 254
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 255
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1c
    move-result v4

    #@1d
    .line 256
    .local v4, "n":I
    if-eqz v4, :cond_7

    #@1f
    .line 257
    const/16 v5, 0x20

    #@21
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    #@24
    move-result v5

    #@25
    if-gez v5, :cond_2

    #@27
    const/16 v5, 0x9

    #@29
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    #@2c
    move-result v5

    #@2d
    if-ltz v5, :cond_3

    #@2f
    .line 258
    :cond_2
    const-string/jumbo v5, "Illegal configuration-file syntax"

    #@32
    invoke-static {p1, p2, p4, v5}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    #@35
    .line 259
    :cond_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->codePointAt(I)I

    #@38
    move-result v1

    #@39
    .line 260
    .local v1, "cp":I
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    #@3c
    move-result v5

    #@3d
    if-nez v5, :cond_4

    #@3f
    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v6, "Illegal provider-class name: "

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    invoke-static {p1, p2, p4, v5}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    #@56
    .line 262
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@59
    move-result v2

    #@5a
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    #@5c
    .line 263
    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    #@5f
    move-result v1

    #@60
    .line 264
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    #@63
    move-result v5

    #@64
    if-nez v5, :cond_5

    #@66
    const/16 v5, 0x2e

    #@68
    if-eq v1, v5, :cond_5

    #@6a
    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v6, "Illegal provider-class name: "

    #@72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    invoke-static {p1, p2, p4, v5}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    #@81
    .line 262
    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@84
    move-result v5

    #@85
    add-int/2addr v2, v5

    #@86
    goto :goto_0

    #@87
    .line 267
    :cond_6
    iget-object v5, p0, Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;

    #@89
    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    #@8c
    move-result v5

    #@8d
    if-nez v5, :cond_7

    #@8f
    invoke-interface {p5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@92
    move-result v5

    #@93
    if-eqz v5, :cond_8

    #@95
    .line 270
    .end local v1    # "cp":I
    .end local v2    # "i":I
    :cond_7
    :goto_1
    add-int/lit8 v5, p4, 0x1

    #@97
    return v5

    #@98
    .line 268
    .restart local v1    # "cp":I
    .restart local v2    # "i":I
    :cond_8
    invoke-interface {p5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9b
    goto :goto_1
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TS;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 434
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    new-instance v0, Ljava/util/ServiceLoader$1;

    #@2
    invoke-direct {v0, p0}, Ljava/util/ServiceLoader$1;-><init>(Ljava/util/ServiceLoader;)V

    #@5
    return-object v0
.end method

.method public reload()V
    .locals 4

    #@0
    .prologue
    .line 212
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    iget-object v0, p0, Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    #@5
    .line 213
    new-instance v0, Ljava/util/ServiceLoader$LazyIterator;

    #@7
    iget-object v1, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    #@9
    iget-object v2, p0, Ljava/util/ServiceLoader;->loader:Ljava/lang/ClassLoader;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-direct {v0, p0, v1, v2, v3}, Ljava/util/ServiceLoader$LazyIterator;-><init>(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/util/ServiceLoader$LazyIterator;)V

    #@f
    iput-object v0, p0, Ljava/util/ServiceLoader;->lookupIterator:Ljava/util/ServiceLoader$LazyIterator;

    #@11
    .line 211
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 564
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "java.util.ServiceLoader["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    #@e
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, "]"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method
