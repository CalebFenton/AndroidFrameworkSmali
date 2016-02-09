.class public abstract Ljava/util/prefs/AbstractPreferences;
.super Ljava/util/prefs/Preferences;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/prefs/AbstractPreferences$EventDispatcher;,
        Ljava/util/prefs/AbstractPreferences$NodeAddEvent;,
        Ljava/util/prefs/AbstractPreferences$NodeRemoveEvent;,
        Ljava/util/prefs/AbstractPreferences$1;
    }
.end annotation


# static fields
.field private static final dispatcher:Ljava/util/prefs/AbstractPreferences$EventDispatcher;

.field private static final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cachedNode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/prefs/AbstractPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private isRemoved:Z

.field protected final lock:Ljava/lang/Object;

.field protected newNode:Z

.field private nodeChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private nodeName:Ljava/lang/String;

.field private parentPref:Ljava/util/prefs/AbstractPreferences;

.field private preferenceChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private root:Ljava/util/prefs/AbstractPreferences;

.field userNode:Z


# direct methods
.method static synthetic -get0()Ljava/util/List;
    .locals 1

    #@0
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 50
    new-instance v0, Ljava/util/LinkedList;

    #@2
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@5
    sput-object v0, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    #@7
    .line 52
    new-instance v0, Ljava/util/prefs/AbstractPreferences$EventDispatcher;

    #@9
    const-string/jumbo v1, "Preference Event Dispatcher"

    #@c
    invoke-direct {v0, v1}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;-><init>(Ljava/lang/String;)V

    #@f
    sput-object v0, Ljava/util/prefs/AbstractPreferences;->dispatcher:Ljava/util/prefs/AbstractPreferences$EventDispatcher;

    #@11
    .line 60
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->dispatcher:Ljava/util/prefs/AbstractPreferences$EventDispatcher;

    #@13
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    #@17
    .line 61
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->dispatcher:Ljava/util/prefs/AbstractPreferences$EventDispatcher;

    #@19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@1c
    .line 62
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@1f
    move-result-object v0

    #@20
    new-instance v1, Ljava/util/prefs/AbstractPreferences$1;

    #@22
    invoke-direct {v1}, Ljava/util/prefs/AbstractPreferences$1;-><init>()V

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    #@28
    .line 43
    return-void
.end method

.method protected constructor <init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1, "parent"    # Ljava/util/prefs/AbstractPreferences;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 145
    invoke-direct {p0}, Ljava/util/prefs/Preferences;-><init>()V

    #@5
    .line 146
    if-nez p1, :cond_1

    #@7
    move v0, v1

    #@8
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_2

    #@e
    :goto_1
    xor-int/2addr v0, v1

    #@f
    if-nez v0, :cond_0

    #@11
    const-string/jumbo v0, "/"

    #@14
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@17
    move-result v0

    #@18
    if-ltz v0, :cond_3

    #@1a
    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1f
    throw v0

    #@20
    :cond_1
    move v0, v2

    #@21
    .line 146
    goto :goto_0

    #@22
    :cond_2
    move v1, v2

    #@23
    goto :goto_1

    #@24
    .line 149
    :cond_3
    if-nez p1, :cond_4

    #@26
    move-object v0, p0

    #@27
    :goto_2
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    #@29
    .line 150
    new-instance v0, Ljava/util/LinkedList;

    #@2b
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@2e
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    #@30
    .line 151
    new-instance v0, Ljava/util/LinkedList;

    #@32
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@35
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    #@37
    .line 152
    iput-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->isRemoved:Z

    #@39
    .line 153
    new-instance v0, Ljava/util/HashMap;

    #@3b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@3e
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    #@40
    .line 154
    iput-object p2, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    #@42
    .line 155
    iput-object p1, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    #@44
    .line 156
    new-instance v0, Ljava/lang/Object;

    #@46
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@49
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@4b
    .line 157
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    #@4d
    iget-boolean v0, v0, Ljava/util/prefs/AbstractPreferences;->userNode:Z

    #@4f
    iput-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->userNode:Z

    #@51
    .line 145
    return-void

    #@52
    .line 149
    :cond_4
    iget-object v0, p1, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    #@54
    goto :goto_2
.end method

.method private checkState()V
    .locals 2

    #@0
    .prologue
    .line 636
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 637
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "This node has been removed"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 635
    :cond_0
    return-void
.end method

.method private getNodeFromBackend(ZLjava/util/prefs/AbstractPreferences;Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .locals 4
    .param p1, "createNew"    # Z
    .param p2, "currentNode"    # Ljava/util/prefs/AbstractPreferences;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 581
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    const/16 v2, 0x50

    #@6
    if-le v1, v2, :cond_0

    #@8
    .line 582
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Name \'"

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, "\' too long"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 585
    :cond_0
    if-eqz p1, :cond_2

    #@2b
    .line 586
    invoke-virtual {p2, p3}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    #@2e
    move-result-object v0

    #@2f
    .line 587
    .local v0, "temp":Ljava/util/prefs/AbstractPreferences;
    iget-object v1, p2, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    #@31
    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    .line 588
    iget-boolean v1, v0, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    #@36
    if-eqz v1, :cond_1

    #@38
    iget-object v1, p2, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    #@3a
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@3d
    move-result v1

    #@3e
    if-lez v1, :cond_1

    #@40
    .line 589
    invoke-direct {p2, v0}, Ljava/util/prefs/AbstractPreferences;->notifyChildAdded(Ljava/util/prefs/Preferences;)V

    #@43
    .line 594
    :cond_1
    :goto_0
    return-object v0

    #@44
    .line 592
    .end local v0    # "temp":Ljava/util/prefs/AbstractPreferences;
    :cond_2
    invoke-virtual {p2, p3}, Ljava/util/prefs/AbstractPreferences;->getChild(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    #@47
    move-result-object v0

    #@48
    .restart local v0    # "temp":Ljava/util/prefs/AbstractPreferences;
    goto :goto_0
.end method

.method private nodeImpl(Ljava/lang/String;Z)Ljava/util/prefs/AbstractPreferences;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "createNew"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 561
    const-string/jumbo v4, "/"

    #@3
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 562
    .local v2, "names":[Ljava/lang/String;
    move-object v0, p0

    #@8
    .line 564
    .local v0, "currentNode":Ljava/util/prefs/AbstractPreferences;
    const/4 v4, 0x0

    #@9
    array-length v5, v2

    #@a
    :goto_0
    if-ge v4, v5, :cond_1

    #@c
    aget-object v1, v2, v4

    #@e
    .line 565
    .local v1, "name":Ljava/lang/String;
    iget-object v6, v0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@10
    monitor-enter v6

    #@11
    .line 566
    :try_start_0
    iget-object v7, v0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    #@13
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Ljava/util/prefs/AbstractPreferences;

    #@19
    .line 567
    .local v3, "temp":Ljava/util/prefs/AbstractPreferences;
    if-nez v3, :cond_0

    #@1b
    .line 568
    invoke-direct {p0, p2, v0, v1}, Ljava/util/prefs/AbstractPreferences;->getNodeFromBackend(ZLjava/util/prefs/AbstractPreferences;Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v3

    #@1f
    :cond_0
    monitor-exit v6

    #@20
    .line 571
    move-object v0, v3

    #@21
    .line 572
    if-nez v0, :cond_2

    #@23
    .line 576
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "temp":Ljava/util/prefs/AbstractPreferences;
    :cond_1
    return-object v0

    #@24
    .line 565
    .restart local v1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@25
    monitor-exit v6

    #@26
    throw v4

    #@27
    .line 564
    .restart local v3    # "temp":Ljava/util/prefs/AbstractPreferences;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@29
    goto :goto_0
.end method

.method private notifyChildAdded(Ljava/util/prefs/Preferences;)V
    .locals 3
    .param p1, "child"    # Ljava/util/prefs/Preferences;

    #@0
    .prologue
    .line 795
    new-instance v0, Ljava/util/prefs/AbstractPreferences$NodeAddEvent;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/prefs/AbstractPreferences$NodeAddEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    #@5
    .line 796
    .local v0, "nce":Ljava/util/prefs/NodeChangeEvent;
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    #@7
    monitor-enter v2

    #@8
    .line 797
    :try_start_0
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    #@a
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 798
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    #@f
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 794
    return-void

    #@14
    .line 796
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method private notifyChildRemoved(Ljava/util/prefs/Preferences;)V
    .locals 3
    .param p1, "child"    # Ljava/util/prefs/Preferences;

    #@0
    .prologue
    .line 803
    new-instance v0, Ljava/util/prefs/AbstractPreferences$NodeRemoveEvent;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/prefs/AbstractPreferences$NodeRemoveEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    #@5
    .line 804
    .local v0, "nce":Ljava/util/prefs/NodeChangeEvent;
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    #@7
    monitor-enter v2

    #@8
    .line 805
    :try_start_0
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    #@a
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 806
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    #@f
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 802
    return-void

    #@14
    .line 804
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method private notifyPreferenceChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 811
    new-instance v0, Ljava/util/prefs/PreferenceChangeEvent;

    #@2
    invoke-direct {v0, p0, p1, p2}, Ljava/util/prefs/PreferenceChangeEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 812
    .local v0, "pce":Ljava/util/prefs/PreferenceChangeEvent;
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    #@7
    monitor-enter v2

    #@8
    .line 813
    :try_start_0
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    #@a
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 814
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    #@f
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 810
    return-void

    #@14
    .line 812
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method private removeNodeImpl()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 708
    iget-object v7, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v7

    #@4
    .line 709
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    #@7
    .line 710
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNamesSpi()[Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 711
    .local v3, "childrenNames":[Ljava/lang/String;
    array-length v8, v3

    #@c
    move v6, v5

    #@d
    :goto_0
    if-ge v6, v8, :cond_1

    #@f
    aget-object v2, v3, v6

    #@11
    .line 712
    .local v2, "childrenName":Ljava/lang/String;
    iget-object v9, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    #@13
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v9

    #@17
    if-nez v9, :cond_0

    #@19
    .line 713
    invoke-virtual {p0, v2}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    #@1c
    move-result-object v0

    #@1d
    .line 714
    .local v0, "child":Ljava/util/prefs/AbstractPreferences;
    iget-object v9, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    #@1f
    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 711
    .end local v0    # "child":Ljava/util/prefs/AbstractPreferences;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@24
    goto :goto_0

    #@25
    .line 718
    .end local v2    # "childrenName":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    #@27
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@2a
    move-result-object v4

    #@2b
    .line 719
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/prefs/AbstractPreferences;>;"
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    #@2e
    move-result v6

    #@2f
    new-array v6, v6, [Ljava/util/prefs/AbstractPreferences;

    #@31
    invoke-interface {v4, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, [Ljava/util/prefs/AbstractPreferences;

    #@37
    .line 720
    .local v1, "children":[Ljava/util/prefs/AbstractPreferences;
    array-length v6, v1

    #@38
    :goto_1
    if-ge v5, v6, :cond_2

    #@3a
    aget-object v0, v1, v5

    #@3c
    .line 721
    .restart local v0    # "child":Ljava/util/prefs/AbstractPreferences;
    invoke-direct {v0}, Ljava/util/prefs/AbstractPreferences;->removeNodeImpl()V

    #@3f
    .line 720
    add-int/lit8 v5, v5, 0x1

    #@41
    goto :goto_1

    #@42
    .line 723
    .end local v0    # "child":Ljava/util/prefs/AbstractPreferences;
    :cond_2
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->removeNodeSpi()V

    #@45
    .line 724
    const/4 v5, 0x1

    #@46
    iput-boolean v5, p0, Ljava/util/prefs/AbstractPreferences;->isRemoved:Z

    #@48
    .line 725
    iget-object v5, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    #@4a
    iget-object v5, v5, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    #@4c
    iget-object v6, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    #@4e
    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    monitor-exit v7

    #@52
    .line 727
    iget-object v5, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    #@54
    iget-object v5, v5, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    #@56
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@59
    move-result v5

    #@5a
    if-lez v5, :cond_3

    #@5c
    .line 728
    iget-object v5, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    #@5e
    invoke-direct {v5, p0}, Ljava/util/prefs/AbstractPreferences;->notifyChildRemoved(Ljava/util/prefs/Preferences;)V

    #@61
    .line 707
    :cond_3
    return-void

    #@62
    .line 708
    .end local v1    # "children":[Ljava/util/prefs/AbstractPreferences;
    .end local v3    # "childrenNames":[Ljava/lang/String;
    .end local v4    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/prefs/AbstractPreferences;>;"
    :catchall_0
    move-exception v5

    #@63
    monitor-exit v7

    #@64
    throw v5
.end method

.method private validateName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 551
    const-string/jumbo v0, "/"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    const/4 v1, 0x1

    #@e
    if-le v0, v1, :cond_0

    #@10
    .line 552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "Name cannot end with \'/\'"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 554
    :cond_0
    const-string/jumbo v0, "//"

    #@1c
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1f
    move-result v0

    #@20
    if-ltz v0, :cond_1

    #@22
    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v1, "Name cannot contain consecutive \'/\' characters"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 550
    :cond_1
    return-void
.end method


# virtual methods
.method public absolutePath()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 343
    const-string/jumbo v0, "/"

    #@7
    return-object v0

    #@8
    .line 344
    :cond_0
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    #@a
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    #@c
    if-ne v0, v1, :cond_1

    #@e
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v1, "/"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0

    #@25
    .line 347
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    #@2c
    invoke-virtual {v1}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    const-string/jumbo v1, "/"

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    return-object v0
.end method

.method public addNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
    .locals 2
    .param p1, "ncl"    # Ljava/util/prefs/NodeChangeListener;

    #@0
    .prologue
    .line 734
    if-nez p1, :cond_0

    #@2
    .line 735
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "ncl == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 737
    :cond_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    #@e
    .line 738
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    #@10
    monitor-enter v1

    #@11
    .line 739
    :try_start_0
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    #@13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 733
    return-void

    #@18
    .line 738
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public addPreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
    .locals 2
    .param p1, "pcl"    # Ljava/util/prefs/PreferenceChangeListener;

    #@0
    .prologue
    .line 745
    if-nez p1, :cond_0

    #@2
    .line 746
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "pcl == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 748
    :cond_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    #@e
    .line 749
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    #@10
    monitor-enter v1

    #@11
    .line 750
    :try_start_0
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    #@13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 744
    return-void

    #@18
    .line 749
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method protected final cachedChildren()[Ljava/util/prefs/AbstractPreferences;
    .locals 2

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    #@8
    invoke-interface {v1}, Ljava/util/Map;->size()I

    #@b
    move-result v1

    #@c
    new-array v1, v1, [Ljava/util/prefs/AbstractPreferences;

    #@e
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [Ljava/util/prefs/AbstractPreferences;

    #@14
    return-object v0
.end method

.method protected abstract childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
.end method

.method public childrenNames()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 352
    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 353
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    #@6
    .line 354
    new-instance v2, Ljava/util/TreeSet;

    #@8
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    #@a
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@d
    move-result-object v3

    #@e
    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    #@11
    .line 355
    .local v2, "result":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNamesSpi()[Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 356
    .local v1, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    array-length v3, v1

    #@17
    if-ge v0, v3, :cond_0

    #@19
    .line 357
    aget-object v3, v1, v0

    #@1b
    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@1e
    .line 356
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 359
    :cond_0
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    #@24
    move-result v3

    #@25
    new-array v3, v3, [Ljava/lang/String;

    #@27
    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    monitor-exit v4

    #@2e
    return-object v3

    #@2f
    .line 352
    .end local v0    # "i":I
    .end local v1    # "names":[Ljava/lang/String;
    .end local v2    # "result":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    #@30
    monitor-exit v4

    #@31
    throw v3
.end method

.method protected abstract childrenNamesSpi()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public clear()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 365
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 366
    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->keys()[Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    const/4 v1, 0x0

    #@8
    array-length v4, v3

    #@9
    :goto_0
    if-ge v1, v4, :cond_0

    #@b
    aget-object v0, v3, v1

    #@d
    .line 367
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/util/prefs/AbstractPreferences;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 366
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    monitor-exit v2

    #@14
    .line 364
    return-void

    #@15
    .line 365
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method public exportNode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "ostream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 374
    if-nez p1, :cond_0

    #@2
    .line 375
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "ostream == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 377
    :cond_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    #@e
    .line 378
    const/4 v0, 0x0

    #@f
    invoke-static {p0, p1, v0}, Ljava/util/prefs/XMLParser;->exportPrefs(Ljava/util/prefs/Preferences;Ljava/io/OutputStream;Z)V

    #@12
    .line 373
    return-void
.end method

.method public exportSubtree(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "ostream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 383
    if-nez p1, :cond_0

    #@2
    .line 384
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "ostream == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 386
    :cond_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    #@e
    .line 387
    const/4 v0, 0x1

    #@f
    invoke-static {p0, p1, v0}, Ljava/util/prefs/XMLParser;->exportPrefs(Ljava/util/prefs/Preferences;Ljava/io/OutputStream;Z)V

    #@12
    .line 382
    return-void
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 392
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 393
    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->flushSpi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v2

    #@7
    .line 395
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->cachedChildren()[Ljava/util/prefs/AbstractPreferences;

    #@a
    move-result-object v0

    #@b
    .line 397
    .local v0, "cc":[Ljava/util/prefs/AbstractPreferences;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@d
    if-ge v1, v2, :cond_0

    #@f
    .line 398
    aget-object v2, v0, v1

    #@11
    invoke-virtual {v2}, Ljava/util/prefs/AbstractPreferences;->flush()V

    #@14
    .line 397
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 392
    .end local v0    # "cc":[Ljava/util/prefs/AbstractPreferences;
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@18
    monitor-exit v2

    #@19
    throw v3

    #@1a
    .line 391
    .restart local v0    # "cc":[Ljava/util/prefs/AbstractPreferences;
    .restart local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected abstract flushSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deflt"    # Ljava/lang/String;

    #@0
    .prologue
    .line 404
    if-nez p1, :cond_0

    #@2
    .line 405
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "key == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 407
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 408
    .local v1, "result":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@e
    monitor-enter v3

    #@f
    .line 409
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 411
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->getSpi(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    move-result-object v1

    #@16
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    monitor-exit v3

    #@17
    .line 416
    if-nez v1, :cond_1

    #@19
    .end local p2    # "deflt":Ljava/lang/String;
    :goto_1
    return-object p2

    #@1a
    .line 412
    .restart local v1    # "result":Ljava/lang/String;
    .restart local p2    # "deflt":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@1b
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    #@1c
    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@1d
    monitor-exit v3

    #@1e
    throw v2

    #@1f
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    move-object p2, v1

    #@20
    .line 416
    goto :goto_1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deflt"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 421
    invoke-virtual {p0, p1, v1}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 422
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 423
    return p2

    #@8
    .line 425
    :cond_0
    const-string/jumbo v1, "true"

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 426
    const/4 v1, 0x1

    #@12
    return v1

    #@13
    .line 427
    :cond_1
    const-string/jumbo v1, "false"

    #@16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 428
    const/4 v1, 0x0

    #@1d
    return v1

    #@1e
    .line 430
    :cond_2
    return p2
.end method

.method public getByteArray(Ljava/lang/String;[B)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deflt"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 436
    invoke-virtual {p0, p1, v3}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 437
    .local v2, "svalue":Ljava/lang/String;
    if-nez v2, :cond_0

    #@7
    .line 438
    return-object p2

    #@8
    .line 440
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_1

    #@e
    .line 441
    sget-object v3, Llibcore/util/EmptyArray;->BYTE:[B

    #@10
    return-object v3

    #@11
    .line 444
    :cond_1
    :try_start_0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@16
    move-result-object v0

    #@17
    .line 445
    .local v0, "bavalue":[B
    array-length v3, v0

    #@18
    rem-int/lit8 v3, v3, 0x4

    #@1a
    if-eqz v3, :cond_2

    #@1c
    .line 446
    return-object p2

    #@1d
    .line 448
    :cond_2
    invoke-static {v0}, Llibcore/io/Base64;->decode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result-object v3

    #@21
    return-object v3

    #@22
    .line 449
    .end local v0    # "bavalue":[B
    :catch_0
    move-exception v1

    #@23
    .line 450
    .local v1, "e":Ljava/lang/Exception;
    return-object p2
.end method

.method protected getChild(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 192
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    #@6
    .line 193
    const/4 v2, 0x0

    #@7
    .line 194
    .local v2, "result":Ljava/util/prefs/AbstractPreferences;
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNames()[Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 195
    .local v1, "childrenNames":[Ljava/lang/String;
    const/4 v3, 0x0

    #@c
    array-length v5, v1

    #@d
    :goto_0
    if-ge v3, v5, :cond_0

    #@f
    aget-object v0, v1, v3

    #@11
    .line 196
    .local v0, "childrenName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_1

    #@17
    .line 197
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v2

    #@1b
    .end local v0    # "childrenName":Ljava/lang/String;
    .end local v2    # "result":Ljava/util/prefs/AbstractPreferences;
    :cond_0
    monitor-exit v4

    #@1c
    .line 201
    return-object v2

    #@1d
    .line 195
    .restart local v0    # "childrenName":Ljava/lang/String;
    .restart local v2    # "result":Ljava/util/prefs/AbstractPreferences;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 191
    .end local v0    # "childrenName":Ljava/lang/String;
    .end local v1    # "childrenNames":[Ljava/lang/String;
    .end local v2    # "result":Ljava/util/prefs/AbstractPreferences;
    :catchall_0
    move-exception v3

    #@21
    monitor-exit v4

    #@22
    throw v3
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deflt"    # D

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 456
    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 457
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    #@7
    .line 458
    return-wide p2

    #@8
    .line 461
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-wide v2

    #@c
    return-wide v2

    #@d
    .line 462
    :catch_0
    move-exception v0

    #@e
    .line 463
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deflt"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 469
    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 470
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    #@7
    .line 471
    return p2

    #@8
    .line 474
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v2

    #@c
    return v2

    #@d
    .line 475
    :catch_0
    move-exception v0

    #@e
    .line 476
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deflt"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 482
    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 483
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    #@7
    .line 484
    return p2

    #@8
    .line 487
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v2

    #@c
    return v2

    #@d
    .line 488
    :catch_0
    move-exception v0

    #@e
    .line 489
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deflt"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 495
    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 496
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    #@7
    .line 497
    return-wide p2

    #@8
    .line 500
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-wide v2

    #@c
    return-wide v2

    #@d
    .line 501
    :catch_0
    move-exception v0

    #@e
    .line 502
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p2
.end method

.method protected abstract getSpi(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected isRemoved()Z
    .locals 2

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 215
    :try_start_0
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->isRemoved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 214
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public isUserNode()Z
    .locals 2

    #@0
    .prologue
    .line 508
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    #@2
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    #@5
    move-result-object v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public keys()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 513
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 514
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    #@6
    .line 515
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->keysSpi()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v0

    #@a
    monitor-exit v1

    #@b
    return-object v0

    #@c
    .line 513
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method protected abstract keysSpi()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public name()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 521
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public node(Ljava/lang/String;)Ljava/util/prefs/Preferences;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 526
    const/4 v1, 0x0

    #@1
    .line 527
    .local v1, "startNode":Ljava/util/prefs/AbstractPreferences;
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 528
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    #@7
    .line 529
    invoke-direct {p0, p1}, Ljava/util/prefs/AbstractPreferences;->validateName(Ljava/lang/String;)V

    #@a
    .line 530
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    monitor-exit v3

    #@11
    .line 531
    return-object p0

    #@12
    .line 532
    :cond_0
    :try_start_1
    const-string/jumbo v2, "/"

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 533
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit v3

    #@1e
    return-object v2

    #@1f
    .line 535
    :cond_1
    :try_start_2
    const-string/jumbo v2, "/"

    #@22
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 536
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    #@2a
    .line 537
    .local v1, "startNode":Ljava/util/prefs/AbstractPreferences;
    const/4 v2, 0x1

    #@2b
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    move-result-object p1

    #@2f
    :goto_0
    monitor-exit v3

    #@30
    .line 543
    const/4 v2, 0x1

    #@31
    :try_start_3
    invoke-direct {v1, p1, v2}, Ljava/util/prefs/AbstractPreferences;->nodeImpl(Ljava/lang/String;Z)Ljava/util/prefs/AbstractPreferences;
    :try_end_3
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_3 .. :try_end_3} :catch_0

    #@34
    move-result-object v2

    #@35
    return-object v2

    #@36
    .line 539
    .local v1, "startNode":Ljava/util/prefs/AbstractPreferences;
    :cond_2
    move-object v1, p0

    #@37
    .local v1, "startNode":Ljava/util/prefs/AbstractPreferences;
    goto :goto_0

    #@38
    .line 527
    .end local v1    # "startNode":Ljava/util/prefs/AbstractPreferences;
    :catchall_0
    move-exception v2

    #@39
    monitor-exit v3

    #@3a
    throw v2

    #@3b
    .line 544
    .restart local v1    # "startNode":Ljava/util/prefs/AbstractPreferences;
    :catch_0
    move-exception v0

    #@3c
    .line 546
    .local v0, "e":Ljava/util/prefs/BackingStoreException;
    const/4 v2, 0x0

    #@3d
    return-object v2
.end method

.method public nodeExists(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 599
    if-nez p1, :cond_0

    #@4
    .line 600
    new-instance v3, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v4, "name == null"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 602
    :cond_0
    const/4 v2, 0x0

    #@e
    .line 603
    .local v2, "startNode":Ljava/util/prefs/AbstractPreferences;
    iget-object v5, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@10
    monitor-enter v5

    #@11
    .line 604
    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_2

    #@17
    .line 605
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    monitor-exit v5

    #@1e
    .line 606
    return v4

    #@1f
    .line 608
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalStateException;

    #@21
    const-string/jumbo v4, "This node has been removed"

    #@24
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 603
    .end local v2    # "startNode":Ljava/util/prefs/AbstractPreferences;
    :catchall_0
    move-exception v3

    #@29
    monitor-exit v5

    #@2a
    throw v3

    #@2b
    .line 610
    .restart local v2    # "startNode":Ljava/util/prefs/AbstractPreferences;
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Ljava/util/prefs/AbstractPreferences;->validateName(Ljava/lang/String;)V

    #@2e
    .line 611
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@31
    move-result v6

    #@32
    if-nez v6, :cond_3

    #@34
    const-string/jumbo v6, "/"

    #@37
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_4

    #@3d
    :cond_3
    monitor-exit v5

    #@3e
    .line 612
    return v3

    #@3f
    .line 614
    :cond_4
    :try_start_3
    const-string/jumbo v6, "/"

    #@42
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_5

    #@48
    .line 615
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    #@4a
    .line 616
    .local v2, "startNode":Ljava/util/prefs/AbstractPreferences;
    const/4 v6, 0x1

    #@4b
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4e
    move-result-object p1

    #@4f
    :goto_0
    monitor-exit v5

    #@50
    .line 622
    const/4 v5, 0x0

    #@51
    :try_start_4
    invoke-direct {v2, p1, v5}, Ljava/util/prefs/AbstractPreferences;->nodeImpl(Ljava/lang/String;Z)Ljava/util/prefs/AbstractPreferences;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    #@54
    move-result-object v1

    #@55
    .line 623
    .local v1, "result":Ljava/util/prefs/Preferences;
    if-eqz v1, :cond_6

    #@57
    :goto_1
    return v3

    #@58
    .line 618
    .end local v1    # "result":Ljava/util/prefs/Preferences;
    .local v2, "startNode":Ljava/util/prefs/AbstractPreferences;
    :cond_5
    move-object v2, p0

    #@59
    .local v2, "startNode":Ljava/util/prefs/AbstractPreferences;
    goto :goto_0

    #@5a
    .restart local v1    # "result":Ljava/util/prefs/Preferences;
    :cond_6
    move v3, v4

    #@5b
    .line 623
    goto :goto_1

    #@5c
    .line 624
    .end local v1    # "result":Ljava/util/prefs/Preferences;
    :catch_0
    move-exception v0

    #@5d
    .line 625
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return v4
.end method

.method public parent()Ljava/util/prefs/Preferences;
    .locals 1

    #@0
    .prologue
    .line 631
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    #@3
    .line 632
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    #@5
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 643
    if-nez p1, :cond_0

    #@2
    .line 644
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "key == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 645
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 646
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v1, "value == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 648
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@19
    move-result v0

    #@1a
    const/16 v1, 0x50

    #@1c
    if-gt v0, v1, :cond_2

    #@1e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@21
    move-result v0

    #@22
    const/16 v1, 0x2000

    #@24
    if-le v0, v1, :cond_3

    #@26
    .line 649
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2b
    throw v0

    #@2c
    .line 651
    :cond_3
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2e
    monitor-enter v1

    #@2f
    .line 652
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    #@32
    .line 653
    invoke-virtual {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;->putSpi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    monitor-exit v1

    #@36
    .line 655
    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;->notifyPreferenceChange(Ljava/lang/String;Ljava/lang/String;)V

    #@39
    .line 642
    return-void

    #@3a
    .line 651
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v1

    #@3c
    throw v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 660
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 659
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    #@0
    .prologue
    .line 665
    invoke-static {p2}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 664
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    #@0
    .prologue
    .line 670
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 669
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 675
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 674
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 680
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 679
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    #@0
    .prologue
    .line 685
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 684
    return-void
.end method

.method protected abstract putSpi(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 690
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 691
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    #@6
    .line 692
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->removeSpi(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 694
    const/4 v0, 0x0

    #@b
    invoke-direct {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->notifyPreferenceChange(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 689
    return-void

    #@f
    .line 690
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public removeNode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 699
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 700
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    const-string/jumbo v1, "Cannot remove root node"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 702
    :cond_0
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    #@f
    iget-object v0, v0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@11
    monitor-enter v0

    #@12
    .line 703
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->removeNodeImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v0

    #@16
    .line 698
    return-void

    #@17
    .line 702
    :catchall_0
    move-exception v1

    #@18
    monitor-exit v0

    #@19
    throw v1
.end method

.method public removeNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
    .locals 3
    .param p1, "ncl"    # Ljava/util/prefs/NodeChangeListener;

    #@0
    .prologue
    .line 756
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    #@3
    .line 757
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    #@5
    monitor-enter v2

    #@6
    .line 759
    :try_start_0
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    #@8
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@b
    move-result v0

    #@c
    .local v0, "pos":I
    const/4 v1, -0x1

    #@d
    if-ne v0, v1, :cond_0

    #@f
    .line 760
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@11
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@14
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 757
    .end local v0    # "pos":I
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1

    #@18
    .line 762
    .restart local v0    # "pos":I
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    #@1a
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit v2

    #@1e
    .line 755
    return-void
.end method

.method protected abstract removeNodeSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public removePreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
    .locals 3
    .param p1, "pcl"    # Ljava/util/prefs/PreferenceChangeListener;

    #@0
    .prologue
    .line 768
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    #@3
    .line 769
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    #@5
    monitor-enter v2

    #@6
    .line 771
    :try_start_0
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    #@8
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@b
    move-result v0

    #@c
    .local v0, "pos":I
    const/4 v1, -0x1

    #@d
    if-ne v0, v1, :cond_0

    #@f
    .line 772
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@11
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@14
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 769
    .end local v0    # "pos":I
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1

    #@18
    .line 774
    .restart local v0    # "pos":I
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    #@1a
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit v2

    #@1e
    .line 767
    return-void
.end method

.method protected abstract removeSpi(Ljava/lang/String;)V
.end method

.method public sync()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 780
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 781
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    #@6
    .line 782
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->syncSpi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v2

    #@a
    .line 784
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->cachedChildren()[Ljava/util/prefs/AbstractPreferences;

    #@d
    move-result-object v2

    #@e
    const/4 v1, 0x0

    #@f
    array-length v3, v2

    #@10
    :goto_0
    if-ge v1, v3, :cond_0

    #@12
    aget-object v0, v2, v1

    #@14
    .line 785
    .local v0, "child":Ljava/util/prefs/AbstractPreferences;
    invoke-virtual {v0}, Ljava/util/prefs/AbstractPreferences;->sync()V

    #@17
    .line 784
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 780
    .end local v0    # "child":Ljava/util/prefs/AbstractPreferences;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1

    #@1d
    .line 779
    :cond_0
    return-void
.end method

.method protected abstract syncSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->isUserNode()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    const-string/jumbo v0, "User"

    #@e
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " Preference Node: "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0

    #@26
    :cond_0
    const-string/jumbo v0, "System"

    #@29
    goto :goto_0
.end method
