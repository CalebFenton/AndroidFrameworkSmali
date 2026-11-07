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
.field private static greylist-max-o intToLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/util/logging/Level$KnownLevel;",
            ">;>;"
        }
    .end annotation
.end field

.field private static greylist-max-o nameToLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/logging/Level$KnownLevel;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-o levelObject:Ljava/util/logging/Level;

.field final greylist-max-o mirroredLevel:Ljava/util/logging/Level;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 533
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    .line 534
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/util/logging/Level$KnownLevel;->intToLevels:Ljava/util/Map;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/logging/Level;)V
    .registers 10
    .param p1, "l"    # Ljava/util/logging/Level;

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput-object p1, p0, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;

    .line 539
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/logging/Level;

    if-ne v0, v1, :cond_10

    .line 540
    iput-object p1, p0, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    goto :goto_25

    .line 543
    :cond_10
    new-instance v2, Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/util/logging/Level;->-$$Nest$fgetname(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/util/logging/Level;->-$$Nest$fgetvalue(Ljava/util/logging/Level;)I

    move-result v4

    invoke-static {p1}, Ljava/util/logging/Level;->-$$Nest$fgetresourceBundleName(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/util/logging/Level-IA;)V

    iput-object v2, p0, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    .line 545
    :goto_25
    return-void
.end method

.method static declared-synchronized greylist-max-o add(Ljava/util/logging/Level;)V
    .registers 6
    .param p0, "l"    # Ljava/util/logging/Level;

    const-class v0, Ljava/util/logging/Level$KnownLevel;

    monitor-enter v0

    .line 550
    :try_start_3
    new-instance v1, Ljava/util/logging/Level$KnownLevel;

    invoke-direct {v1, p0}, Ljava/util/logging/Level$KnownLevel;-><init>(Ljava/util/logging/Level;)V

    .line 551
    .local v1, "o":Ljava/util/logging/Level$KnownLevel;
    sget-object v2, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/logging/Level;->-$$Nest$fgetname(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 552
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-nez v2, :cond_25

    .line 553
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 554
    sget-object v3, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/logging/Level;->-$$Nest$fgetname(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_25
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    sget-object v3, Ljava/util/logging/Level$KnownLevel;->intToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/logging/Level;->-$$Nest$fgetvalue(Ljava/util/logging/Level;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 559
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-nez v3, :cond_4d

    .line 560
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    .line 561
    sget-object v2, Ljava/util/logging/Level$KnownLevel;->intToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/logging/Level;->-$$Nest$fgetvalue(Ljava/util/logging/Level;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_4d
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_52

    .line 564
    monitor-exit v0

    return-void

    .line 549
    .end local v1    # "o":Ljava/util/logging/Level$KnownLevel;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    .end local p0    # "l":Ljava/util/logging/Level;
    :catchall_52
    move-exception p0

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0
.end method

.method static declared-synchronized greylist-max-o findByLocalizedLevelName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;
    .registers 8
    .param p0, "name"    # Ljava/lang/String;

    const-class v0, Ljava/util/logging/Level$KnownLevel;

    monitor-enter v0

    .line 590
    :try_start_3
    sget-object v1, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 591
    .local v2, "levels":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/logging/Level$KnownLevel;

    .line 592
    .local v4, "l":Ljava/util/logging/Level$KnownLevel;
    iget-object v5, v4, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;

    invoke-virtual {v5}, Ljava/util/logging/Level;->getLocalizedLevelName()Ljava/lang/String;

    move-result-object v5

    .line 593
    .local v5, "lname":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_3c

    if-eqz v6, :cond_37

    .line 594
    monitor-exit v0

    return-object v4

    .line 596
    .end local v4    # "l":Ljava/util/logging/Level$KnownLevel;
    .end local v5    # "lname":Ljava/lang/String;
    :cond_37
    goto :goto_1d

    .line 597
    .end local v2    # "levels":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    :cond_38
    goto :goto_d

    .line 598
    :cond_39
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 589
    .end local p0    # "name":Ljava/lang/String;
    :catchall_3c
    move-exception p0

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method static declared-synchronized greylist-max-o findByName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    const-class v0, Ljava/util/logging/Level$KnownLevel;

    monitor-enter v0

    .line 568
    :try_start_3
    sget-object v1, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 569
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-eqz v1, :cond_16

    .line 570
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/logging/Level$KnownLevel;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_19

    monitor-exit v0

    return-object v2

    .line 572
    :cond_16
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 567
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    .end local p0    # "name":Ljava/lang/String;
    :catchall_19
    move-exception p0

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method static declared-synchronized greylist-max-o findByValue(I)Ljava/util/logging/Level$KnownLevel;
    .registers 4
    .param p0, "value"    # I

    const-class v0, Ljava/util/logging/Level$KnownLevel;

    monitor-enter v0

    .line 577
    :try_start_3
    sget-object v1, Ljava/util/logging/Level$KnownLevel;->intToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 578
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-eqz v1, :cond_1a

    .line 579
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/logging/Level$KnownLevel;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1d

    monitor-exit v0

    return-object v2

    .line 581
    :cond_1a
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 576
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    .end local p0    # "value":I
    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method static declared-synchronized greylist-max-o matches(Ljava/util/logging/Level;)Ljava/util/logging/Level$KnownLevel;
    .registers 9
    .param p0, "l"    # Ljava/util/logging/Level;

    const-class v0, Ljava/util/logging/Level$KnownLevel;

    monitor-enter v0

    .line 602
    :try_start_3
    sget-object v1, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/logging/Level;->-$$Nest$fgetname(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 603
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-eqz v1, :cond_5a

    .line 604
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/Level$KnownLevel;

    .line 605
    .local v3, "level":Ljava/util/logging/Level$KnownLevel;
    iget-object v4, v3, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    .line 606
    .local v4, "other":Ljava/util/logging/Level;
    iget-object v5, v3, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 607
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/logging/Level;>;"
    invoke-static {p0}, Ljava/util/logging/Level;->-$$Nest$fgetvalue(Ljava/util/logging/Level;)I

    move-result v6

    invoke-static {v4}, Ljava/util/logging/Level;->-$$Nest$fgetvalue(Ljava/util/logging/Level;)I

    move-result v7

    if-ne v6, v7, :cond_59

    invoke-static {p0}, Ljava/util/logging/Level;->-$$Nest$fgetresourceBundleName(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/util/logging/Level;->-$$Nest$fgetresourceBundleName(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v7

    if-eq v6, v7, :cond_51

    invoke-static {p0}, Ljava/util/logging/Level;->-$$Nest$fgetresourceBundleName(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_59

    invoke-static {p0}, Ljava/util/logging/Level;->-$$Nest$fgetresourceBundleName(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/util/logging/Level;->-$$Nest$fgetresourceBundleName(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v7

    .line 610
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 611
    :cond_51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_5d

    if-ne v5, v6, :cond_59

    .line 612
    monitor-exit v0

    return-object v3

    .line 615
    .end local v3    # "level":Ljava/util/logging/Level$KnownLevel;
    .end local v4    # "other":Ljava/util/logging/Level;
    .end local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/logging/Level;>;"
    :cond_59
    goto :goto_15

    .line 617
    :cond_5a
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 601
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    .end local p0    # "l":Ljava/util/logging/Level;
    :catchall_5d
    move-exception p0

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p0
.end method
