.class Ljava/lang/BootClassLoader;
.super Ljava/lang/ClassLoader;
.source "ClassLoader.java"


# static fields
.field private static volatile blacklist instance:Ljava/lang/BootClassLoader;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 2693
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 2694
    return-void
.end method

.method public static blacklist getInstance()Ljava/lang/BootClassLoader;
    .registers 3

    .line 2680
    sget-object v0, Ljava/lang/BootClassLoader;->instance:Ljava/lang/BootClassLoader;

    .line 2681
    .local v0, "myInstance":Ljava/lang/BootClassLoader;
    if-nez v0, :cond_18

    .line 2682
    const-class v1, Ljava/lang/BootClassLoader;

    monitor-enter v1

    .line 2683
    :try_start_7
    sget-object v2, Ljava/lang/BootClassLoader;->instance:Ljava/lang/BootClassLoader;

    if-nez v2, :cond_13

    .line 2684
    new-instance v2, Ljava/lang/BootClassLoader;

    invoke-direct {v2}, Ljava/lang/BootClassLoader;-><init>()V

    move-object v0, v2

    sput-object v2, Ljava/lang/BootClassLoader;->instance:Ljava/lang/BootClassLoader;

    .line 2686
    :cond_13
    monitor-exit v1

    goto :goto_18

    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v2

    .line 2689
    :cond_18
    :goto_18
    return-object v0
.end method


# virtual methods
.method protected whitelist test-api findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2698
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2703
    invoke-static {p1}, Ljava/lang/VMClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2709
    invoke-static {p1}, Ljava/lang/VMClassLoader;->getResources(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;

    .line 2731
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 2732
    monitor-enter p0

    .line 2733
    :try_start_9
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    .line 2735
    .local v0, "pack":Ljava/lang/Package;
    if-nez v0, :cond_24

    .line 2736
    const-string v3, "Unknown"

    const-string v4, "0.0"

    const-string v5, "Unknown"

    const-string v6, "Unknown"

    const-string v7, "0.0"

    const-string v8, "Unknown"
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_28

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    :try_start_1e
    invoke-virtual/range {v1 .. v9}, Ljava/lang/BootClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object p1

    move-object v0, p1

    goto :goto_26

    .line 2735
    .end local v2    # "name":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_24
    move-object v1, p0

    move-object v2, p1

    .line 2740
    .end local p1    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    :goto_26
    monitor-exit p0

    return-object v0

    .line 2741
    .end local v0    # "pack":Ljava/lang/Package;
    .end local v2    # "name":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_28
    move-exception v0

    move-object v1, p0

    move-object v2, p1

    move-object p1, v0

    .end local p1    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    :goto_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2e

    throw p1

    :catchall_2e
    move-exception v0

    move-object p1, v0

    goto :goto_2c

    .line 2731
    .end local v2    # "name":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_31
    move-object v1, p0

    move-object v2, p1

    .line 2744
    .end local p1    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist test-api getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .param p1, "resName"    # Ljava/lang/String;

    .line 2749
    invoke-virtual {p0, p1}, Ljava/lang/BootClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2766
    invoke-virtual {p0, p1}, Ljava/lang/BootClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2755
    invoke-virtual {p0, p1}, Ljava/lang/BootClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2757
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_a

    .line 2758
    invoke-virtual {p0, p1}, Ljava/lang/BootClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2761
    :cond_a
    return-object v0
.end method
