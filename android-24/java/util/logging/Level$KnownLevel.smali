.class final Ljava/util/logging/Level$KnownLevel;
.super Ljava/lang/Object;
.source "Level.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KnownLevel"
.end annotation


# static fields
.field private static intToLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Level$KnownLevel;",
            ">;>;"
        }
    .end annotation
.end field

.field private static nameToLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Level$KnownLevel;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final levelObject:Ljava/util/logging/Level;

.field final mirroredLevel:Ljava/util/logging/Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 478
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    #@7
    .line 479
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    sput-object v0, Ljava/util/logging/Level$KnownLevel;->intToLevels:Ljava/util/Map;

    #@e
    .line 477
    return-void
.end method

.method constructor <init>(Ljava/util/logging/Level;)V
    .locals 4
    .param p1, "l"    # Ljava/util/logging/Level;

    #@0
    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 483
    iput-object p1, p0, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;

    #@5
    .line 484
    invoke-virtual {p1}, Ljava/util/logging/Level;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    const-class v1, Ljava/util/logging/Level;

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 485
    iput-object p1, p0, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    #@f
    .line 482
    :goto_0
    return-void

    #@10
    .line 487
    :cond_0
    new-instance v0, Ljava/util/logging/Level;

    #@12
    invoke-static {p1}, Ljava/util/logging/Level;->-get0(Ljava/util/logging/Level;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {p1}, Ljava/util/logging/Level;->-get2(Ljava/util/logging/Level;)I

    #@19
    move-result v2

    #@1a
    invoke-static {p1}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-direct {v0, v1, v2, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@21
    iput-object v0, p0, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    #@23
    goto :goto_0
.end method

.method static declared-synchronized add(Ljava/util/logging/Level;)V
    .locals 5
    .param p0, "l"    # Ljava/util/logging/Level;

    #@0
    .prologue
    const-class v3, Ljava/util/logging/Level$KnownLevel;

    #@2
    monitor-enter v3

    #@3
    .line 494
    :try_start_0
    new-instance v1, Ljava/util/logging/Level$KnownLevel;

    #@5
    invoke-direct {v1, p0}, Ljava/util/logging/Level$KnownLevel;-><init>(Ljava/util/logging/Level;)V

    #@8
    .line 495
    .local v1, "o":Ljava/util/logging/Level$KnownLevel;
    sget-object v2, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    #@a
    invoke-static {p0}, Ljava/util/logging/Level;->-get0(Ljava/util/logging/Level;)Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/util/List;

    #@14
    .line 496
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-nez v0, :cond_0

    #@16
    .line 497
    new-instance v0, Ljava/util/ArrayList;

    #@18
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 498
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    sget-object v2, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    #@1d
    invoke-static {p0}, Ljava/util/logging/Level;->-get0(Ljava/util/logging/Level;)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 500
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27
    .line 502
    sget-object v2, Ljava/util/logging/Level$KnownLevel;->intToLevels:Ljava/util/Map;

    #@29
    invoke-static {p0}, Ljava/util/logging/Level;->-get2(Ljava/util/logging/Level;)I

    #@2c
    move-result v4

    #@2d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v4

    #@31
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    check-cast v0, Ljava/util/List;

    #@37
    .line 503
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-nez v0, :cond_1

    #@39
    .line 504
    new-instance v0, Ljava/util/ArrayList;

    #@3b
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@3e
    .line 505
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    sget-object v2, Ljava/util/logging/Level$KnownLevel;->intToLevels:Ljava/util/Map;

    #@40
    invoke-static {p0}, Ljava/util/logging/Level;->-get2(Ljava/util/logging/Level;)I

    #@43
    move-result v4

    #@44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v4

    #@48
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 507
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    monitor-exit v3

    #@4f
    .line 491
    return-void

    #@50
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    .end local v1    # "o":Ljava/util/logging/Level$KnownLevel;
    :catchall_0
    move-exception v2

    #@51
    monitor-exit v3

    #@52
    throw v2
.end method

.method static declared-synchronized findByLocalizedLevelName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const-class v6, Ljava/util/logging/Level$KnownLevel;

    #@2
    monitor-enter v6

    #@3
    .line 534
    :try_start_0
    sget-object v5, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    #@5
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@8
    move-result-object v5

    #@9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v3

    #@d
    .local v3, "levels$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_2

    #@13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/util/List;

    #@19
    .line 535
    .local v2, "levels":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_0

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/util/logging/Level$KnownLevel;

    #@29
    .line 536
    .local v0, "l":Ljava/util/logging/Level$KnownLevel;
    iget-object v5, v0, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;

    #@2b
    invoke-virtual {v5}, Ljava/util/logging/Level;->getLocalizedLevelName()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    .line 537
    .local v4, "lname":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_1

    #@35
    monitor-exit v6

    #@36
    .line 538
    return-object v0

    #@37
    .line 542
    .end local v0    # "l":Ljava/util/logging/Level$KnownLevel;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    .end local v2    # "levels":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    .end local v4    # "lname":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    #@38
    monitor-exit v6

    #@39
    return-object v5

    #@3a
    .end local v3    # "levels$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@3b
    monitor-exit v6

    #@3c
    throw v5
.end method

.method static declared-synchronized findByLocalizedName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const-class v6, Ljava/util/logging/Level$KnownLevel;

    #@2
    monitor-enter v6

    #@3
    .line 548
    :try_start_0
    sget-object v5, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    #@5
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@8
    move-result-object v5

    #@9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v3

    #@d
    .local v3, "levels$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_2

    #@13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/util/List;

    #@19
    .line 549
    .local v2, "levels":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_0

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/util/logging/Level$KnownLevel;

    #@29
    .line 550
    .local v0, "l":Ljava/util/logging/Level$KnownLevel;
    iget-object v5, v0, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;

    #@2b
    invoke-virtual {v5}, Ljava/util/logging/Level;->getLocalizedName()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    .line 551
    .local v4, "lname":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_1

    #@35
    monitor-exit v6

    #@36
    .line 552
    return-object v0

    #@37
    .line 556
    .end local v0    # "l":Ljava/util/logging/Level$KnownLevel;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    .end local v2    # "levels":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    .end local v4    # "lname":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    #@38
    monitor-exit v6

    #@39
    return-object v5

    #@3a
    .end local v3    # "levels$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@3b
    monitor-exit v6

    #@3c
    throw v5
.end method

.method static declared-synchronized findByName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const-class v2, Ljava/util/logging/Level$KnownLevel;

    #@3
    monitor-enter v2

    #@4
    .line 512
    :try_start_0
    sget-object v1, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    #@6
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/List;

    #@c
    .line 513
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-eqz v0, :cond_0

    #@e
    .line 514
    const/4 v1, 0x0

    #@f
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/util/logging/Level$KnownLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v2

    #@16
    return-object v1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 516
    return-object v3

    #@19
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method static declared-synchronized findByValue(I)Ljava/util/logging/Level$KnownLevel;
    .locals 5
    .param p0, "value"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-class v2, Ljava/util/logging/Level$KnownLevel;

    #@3
    monitor-enter v2

    #@4
    .line 521
    :try_start_0
    sget-object v1, Ljava/util/logging/Level$KnownLevel;->intToLevels:Ljava/util/Map;

    #@6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/List;

    #@10
    .line 522
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-eqz v0, :cond_0

    #@12
    .line 523
    const/4 v1, 0x0

    #@13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/util/logging/Level$KnownLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v2

    #@1a
    return-object v1

    #@1b
    :cond_0
    monitor-exit v2

    #@1c
    .line 525
    return-object v4

    #@1d
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method static declared-synchronized matches(Ljava/util/logging/Level;)Ljava/util/logging/Level$KnownLevel;
    .locals 8
    .param p0, "l"    # Ljava/util/logging/Level;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const-class v5, Ljava/util/logging/Level$KnownLevel;

    #@3
    monitor-enter v5

    #@4
    .line 560
    :try_start_0
    sget-object v4, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    #@6
    invoke-static {p0}, Ljava/util/logging/Level;->-get0(Ljava/util/logging/Level;)Ljava/lang/String;

    #@9
    move-result-object v6

    #@a
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/util/List;

    #@10
    .line 561
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-eqz v2, :cond_2

    #@12
    .line 562
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "level$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_2

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/logging/Level$KnownLevel;

    #@22
    .line 563
    .local v0, "level":Ljava/util/logging/Level$KnownLevel;
    iget-object v3, v0, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    #@24
    .line 564
    .local v3, "other":Ljava/util/logging/Level;
    invoke-static {p0}, Ljava/util/logging/Level;->-get2(Ljava/util/logging/Level;)I

    #@27
    move-result v4

    #@28
    invoke-static {v3}, Ljava/util/logging/Level;->-get2(Ljava/util/logging/Level;)I

    #@2b
    move-result v6

    #@2c
    if-ne v4, v6, :cond_0

    #@2e
    .line 565
    invoke-static {p0}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-static {v3}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    if-eq v4, v6, :cond_1

    #@38
    .line 566
    invoke-static {p0}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    if-eqz v4, :cond_0

    #@3e
    .line 567
    invoke-static {p0}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-static {v3}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    move-result v4

    #@4a
    .line 564
    if-eqz v4, :cond_0

    #@4c
    :cond_1
    monitor-exit v5

    #@4d
    .line 568
    return-object v0

    #@4e
    .end local v0    # "level":Ljava/util/logging/Level$KnownLevel;
    .end local v1    # "level$iterator":Ljava/util/Iterator;
    .end local v3    # "other":Ljava/util/logging/Level;
    :cond_2
    monitor-exit v5

    #@4f
    .line 572
    return-object v7

    #@50
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    :catchall_0
    move-exception v4

    #@51
    monitor-exit v5

    #@52
    throw v4
.end method
