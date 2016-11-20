.class public abstract Ljava/util/prefs/AbstractPreferences;
.super Ljava/util/prefs/Preferences;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/prefs/AbstractPreferences$EventDispatchThread;,
        Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;,
        Ljava/util/prefs/AbstractPreferences$NodeRemovedEvent;
    }
.end annotation


# static fields
.field private static final EMPTY_ABSTRACT_PREFS_ARRAY:[Ljava/util/prefs/AbstractPreferences;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static eventDispatchThread:Ljava/lang/Thread;

.field private static final eventQueue:Ljava/util/List;
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
.field private final absolutePath:Ljava/lang/String;

.field private kidCache:Ljava/util/Map;
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

.field protected final lock:Ljava/lang/Object;

.field private final name:Ljava/lang/String;

.field protected newNode:Z

.field private final nodeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/prefs/NodeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final parent:Ljava/util/prefs/AbstractPreferences;

.field private final prefListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/prefs/PreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private removed:Z

.field private final root:Ljava/util/prefs/AbstractPreferences;


# direct methods
.method static synthetic -get0()Ljava/util/List;
    .locals 1

    #@0
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/prefs/AbstractPreferences;)Ljava/util/prefs/AbstractPreferences;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 722
    new-array v0, v1, [Ljava/lang/String;

    #@3
    sput-object v0, Ljava/util/prefs/AbstractPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@5
    .line 734
    new-array v0, v1, [Ljava/util/prefs/AbstractPreferences;

    #@7
    .line 733
    sput-object v0, Ljava/util/prefs/AbstractPreferences;->EMPTY_ABSTRACT_PREFS_ARRAY:[Ljava/util/prefs/AbstractPreferences;

    #@9
    .line 1411
    new-instance v0, Ljava/util/LinkedList;

    #@b
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@e
    sput-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    #@10
    .line 1474
    const/4 v0, 0x0

    #@11
    sput-object v0, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    #@13
    .line 124
    return-void
.end method

.method protected constructor <init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "parent"    # Ljava/util/prefs/AbstractPreferences;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 198
    invoke-direct {p0}, Ljava/util/prefs/Preferences;-><init>()V

    #@4
    .line 153
    iput-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    #@6
    .line 159
    new-instance v0, Ljava/util/HashMap;

    #@8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@b
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    #@d
    .line 165
    iput-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    #@f
    .line 170
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    #@16
    .line 175
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    #@1d
    .line 184
    new-instance v0, Ljava/lang/Object;

    #@1f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@22
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@24
    .line 199
    if-nez p1, :cond_1

    #@26
    .line 200
    const-string/jumbo v0, ""

    #@29
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_0

    #@2f
    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@31
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v2, "Root name \'"

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 202
    const-string/jumbo v2, "\' must be \"\""

    #@44
    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v0

    #@50
    .line 203
    :cond_0
    const-string/jumbo v0, "/"

    #@53
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->absolutePath:Ljava/lang/String;

    #@55
    .line 204
    iput-object p0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    #@57
    .line 216
    :goto_0
    iput-object p2, p0, Ljava/util/prefs/AbstractPreferences;->name:Ljava/lang/String;

    #@59
    .line 217
    iput-object p1, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    #@5b
    .line 198
    return-void

    #@5c
    .line 206
    :cond_1
    const/16 v0, 0x2f

    #@5e
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    #@61
    move-result v0

    #@62
    const/4 v1, -0x1

    #@63
    if-eq v0, v1, :cond_2

    #@65
    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@67
    new-instance v1, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v2, "Name \'"

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    .line 208
    const-string/jumbo v2, "\' contains \'/\'"

    #@7a
    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@85
    throw v0

    #@86
    .line 209
    :cond_2
    const-string/jumbo v0, ""

    #@89
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v0

    #@8d
    if-eqz v0, :cond_3

    #@8f
    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@91
    const-string/jumbo v1, "Illegal name: empty string"

    #@94
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@97
    throw v0

    #@98
    .line 212
    :cond_3
    iget-object v0, p1, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    #@9a
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    #@9c
    .line 213
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    #@9e
    if-ne p1, v0, :cond_4

    #@a0
    new-instance v0, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v1, "/"

    #@a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v0

    #@ac
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v0

    #@b0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v0

    #@b4
    :goto_1
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->absolutePath:Ljava/lang/String;

    #@b6
    goto :goto_0

    #@b7
    .line 214
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    invoke-virtual {p1}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    #@bf
    move-result-object v1

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    const-string/jumbo v1, "/"

    #@c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v0

    #@cb
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v0

    #@cf
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v0

    #@d3
    goto :goto_1
.end method

.method private enqueueNodeAddedEvent(Ljava/util/prefs/Preferences;)V
    .locals 3
    .param p1, "child"    # Ljava/util/prefs/Preferences;

    #@0
    .prologue
    .line 1527
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1528
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    #@a
    monitor-enter v1

    #@b
    .line 1529
    :try_start_0
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    #@d
    new-instance v2, Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;

    #@f
    invoke-direct {v2, p0, p0, p1}, Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    #@12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15
    .line 1530
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    #@17
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 1526
    :cond_0
    return-void

    #@1c
    .line 1528
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private enqueueNodeRemovedEvent(Ljava/util/prefs/Preferences;)V
    .locals 3
    .param p1, "child"    # Ljava/util/prefs/Preferences;

    #@0
    .prologue
    .line 1541
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1542
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    #@a
    monitor-enter v1

    #@b
    .line 1543
    :try_start_0
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    #@d
    new-instance v2, Ljava/util/prefs/AbstractPreferences$NodeRemovedEvent;

    #@f
    invoke-direct {v2, p0, p0, p1}, Ljava/util/prefs/AbstractPreferences$NodeRemovedEvent;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    #@12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15
    .line 1544
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    #@17
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 1540
    :cond_0
    return-void

    #@1c
    .line 1542
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private enqueuePreferenceChangeEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1513
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1514
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    #@a
    monitor-enter v1

    #@b
    .line 1515
    :try_start_0
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    #@d
    new-instance v2, Ljava/util/prefs/PreferenceChangeEvent;

    #@f
    invoke-direct {v2, p0, p1, p2}, Ljava/util/prefs/PreferenceChangeEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/lang/String;Ljava/lang/String;)V

    #@12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15
    .line 1516
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    #@17
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 1512
    :cond_0
    return-void

    #@1c
    .line 1514
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private flush2()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 1356
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1357
    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->flushSpi()V

    #@6
    .line 1358
    iget-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-eqz v2, :cond_0

    #@a
    monitor-exit v3

    #@b
    .line 1359
    return-void

    #@c
    .line 1360
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->cachedChildren()[Ljava/util/prefs/AbstractPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    move-result-object v0

    #@10
    .local v0, "cachedKids":[Ljava/util/prefs/AbstractPreferences;
    monitor-exit v3

    #@11
    .line 1363
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@13
    if-ge v1, v2, :cond_1

    #@15
    .line 1364
    aget-object v2, v0, v1

    #@17
    invoke-direct {v2}, Ljava/util/prefs/AbstractPreferences;->flush2()V

    #@1a
    .line 1363
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1356
    .end local v0    # "cachedKids":[Ljava/util/prefs/AbstractPreferences;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit v3

    #@1f
    throw v2

    #@20
    .line 1353
    .restart local v0    # "cachedKids":[Ljava/util/prefs/AbstractPreferences;
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method private node(Ljava/util/StringTokenizer;)Ljava/util/prefs/Preferences;
    .locals 6
    .param p1, "path"    # Ljava/util/StringTokenizer;

    #@0
    .prologue
    .line 822
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 823
    .local v1, "token":Ljava/lang/String;
    const-string/jumbo v2, "/"

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 824
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "Consecutive slashes in path"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 825
    :cond_0
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@18
    monitor-enter v3

    #@19
    .line 826
    :try_start_0
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    #@1b
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    #@21
    .line 827
    .local v0, "child":Ljava/util/prefs/AbstractPreferences;
    if-nez v0, :cond_3

    #@23
    .line 828
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@26
    move-result v2

    #@27
    const/16 v4, 0x50

    #@29
    if-le v2, v4, :cond_1

    #@2b
    .line 829
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2d
    .line 830
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v5, "Node name "

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    const-string/jumbo v5, " too long"

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    .line 829
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .line 825
    .end local v0    # "child":Ljava/util/prefs/AbstractPreferences;
    :catchall_0
    move-exception v2

    #@4d
    monitor-exit v3

    #@4e
    throw v2

    #@4f
    .line 831
    .restart local v0    # "child":Ljava/util/prefs/AbstractPreferences;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    #@52
    move-result-object v0

    #@53
    .line 832
    iget-boolean v2, v0, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    #@55
    if-eqz v2, :cond_2

    #@57
    .line 833
    invoke-direct {p0, v0}, Ljava/util/prefs/AbstractPreferences;->enqueueNodeAddedEvent(Ljava/util/prefs/Preferences;)V

    #@5a
    .line 834
    :cond_2
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    #@5c
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    .line 836
    :cond_3
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    move-result v2

    #@63
    if-nez v2, :cond_4

    #@65
    monitor-exit v3

    #@66
    .line 837
    return-object v0

    #@67
    .line 838
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@6a
    .line 839
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@6d
    move-result v2

    #@6e
    if-nez v2, :cond_5

    #@70
    .line 840
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@72
    const-string/jumbo v4, "Path ends with slash"

    #@75
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@78
    throw v2

    #@79
    .line 841
    :cond_5
    invoke-direct {v0, p1}, Ljava/util/prefs/AbstractPreferences;->node(Ljava/util/StringTokenizer;)Ljava/util/prefs/Preferences;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7c
    move-result-object v2

    #@7d
    monitor-exit v3

    #@7e
    return-object v2
.end method

.method private nodeExists(Ljava/util/StringTokenizer;)Z
    .locals 5
    .param p1, "path"    # Ljava/util/StringTokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 890
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 891
    .local v1, "token":Ljava/lang/String;
    const-string/jumbo v2, "/"

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 892
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "Consecutive slashes in path"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 893
    :cond_0
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@18
    monitor-enter v3

    #@19
    .line 894
    :try_start_0
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    #@1b
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    #@21
    .line 895
    .local v0, "child":Ljava/util/prefs/AbstractPreferences;
    if-nez v0, :cond_1

    #@23
    .line 896
    invoke-virtual {p0, v1}, Ljava/util/prefs/AbstractPreferences;->getChild(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result-object v0

    #@27
    .line 897
    :cond_1
    if-nez v0, :cond_2

    #@29
    .line 898
    const/4 v2, 0x0

    #@2a
    monitor-exit v3

    #@2b
    return v2

    #@2c
    .line 899
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    move-result v2

    #@30
    if-nez v2, :cond_3

    #@32
    .line 900
    const/4 v2, 0x1

    #@33
    monitor-exit v3

    #@34
    return v2

    #@35
    .line 901
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@38
    .line 902
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@3b
    move-result v2

    #@3c
    if-nez v2, :cond_4

    #@3e
    .line 903
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@40
    const-string/jumbo v4, "Path ends with slash"

    #@43
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    .line 893
    .end local v0    # "child":Ljava/util/prefs/AbstractPreferences;
    :catchall_0
    move-exception v2

    #@48
    monitor-exit v3

    #@49
    throw v2

    #@4a
    .line 904
    .restart local v0    # "child":Ljava/util/prefs/AbstractPreferences;
    :cond_4
    :try_start_3
    invoke-direct {v0, p1}, Ljava/util/prefs/AbstractPreferences;->nodeExists(Ljava/util/StringTokenizer;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4d
    move-result v2

    #@4e
    monitor-exit v3

    #@4f
    return v2
.end method

.method private removeNode2()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 954
    iget-object v5, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 955
    :try_start_0
    iget-boolean v4, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 956
    new-instance v4, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v6, "Node already removed."

    #@c
    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 954
    :catchall_0
    move-exception v4

    #@11
    monitor-exit v5

    #@12
    throw v4

    #@13
    .line 959
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNamesSpi()[Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 960
    .local v2, "kidNames":[Ljava/lang/String;
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    #@19
    if-ge v0, v4, :cond_2

    #@1b
    .line 961
    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    #@1d
    aget-object v6, v2, v0

    #@1f
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@22
    move-result v4

    #@23
    if-nez v4, :cond_1

    #@25
    .line 962
    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    #@27
    aget-object v6, v2, v0

    #@29
    aget-object v7, v2, v0

    #@2b
    invoke-virtual {p0, v7}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    #@2e
    move-result-object v7

    #@2f
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 960
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 965
    :cond_2
    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    #@37
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@3a
    move-result-object v4

    #@3b
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v1

    #@3f
    .line 966
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/prefs/AbstractPreferences;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    move-result v4

    #@43
    .line 965
    if-eqz v4, :cond_3

    #@45
    .line 968
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v4

    #@49
    check-cast v4, Ljava/util/prefs/AbstractPreferences;

    #@4b
    invoke-direct {v4}, Ljava/util/prefs/AbstractPreferences;->removeNode2()V

    #@4e
    .line 969
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_1

    #@52
    .line 970
    :catch_0
    move-exception v3

    #@53
    .local v3, "x":Ljava/util/prefs/BackingStoreException;
    goto :goto_1

    #@54
    .line 974
    .end local v3    # "x":Ljava/util/prefs/BackingStoreException;
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->removeNodeSpi()V

    #@57
    .line 975
    const/4 v4, 0x1

    #@58
    iput-boolean v4, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    #@5a
    .line 976
    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    #@5c
    invoke-direct {v4, p0}, Ljava/util/prefs/AbstractPreferences;->enqueueNodeRemovedEvent(Ljava/util/prefs/Preferences;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5f
    monitor-exit v5

    #@60
    .line 953
    return-void
.end method

.method private static declared-synchronized startEventDispatchThreadIfNecessary()V
    .locals 3

    #@0
    .prologue
    const-class v1, Ljava/util/prefs/AbstractPreferences;

    #@2
    monitor-enter v1

    #@3
    .line 1482
    :try_start_0
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1484
    new-instance v0, Ljava/util/prefs/AbstractPreferences$EventDispatchThread;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-direct {v0, v2}, Ljava/util/prefs/AbstractPreferences$EventDispatchThread;-><init>(Ljava/util/prefs/AbstractPreferences$EventDispatchThread;)V

    #@d
    sput-object v0, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    #@f
    .line 1485
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    #@11
    const/4 v2, 0x1

    #@12
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    #@15
    .line 1486
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    #@17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit v1

    #@1b
    .line 1481
    return-void

    #@1c
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private sync2()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 1296
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1297
    :try_start_0
    iget-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1298
    new-instance v2, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v4, "Node has been removed"

    #@c
    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 1296
    :catchall_0
    move-exception v2

    #@11
    monitor-exit v3

    #@12
    throw v2

    #@13
    .line 1299
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->syncSpi()V

    #@16
    .line 1300
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->cachedChildren()[Ljava/util/prefs/AbstractPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    move-result-object v0

    #@1a
    .local v0, "cachedKids":[Ljava/util/prefs/AbstractPreferences;
    monitor-exit v3

    #@1b
    .line 1303
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@1d
    if-ge v1, v2, :cond_1

    #@1f
    .line 1304
    aget-object v2, v0, v1

    #@21
    invoke-direct {v2}, Ljava/util/prefs/AbstractPreferences;->sync2()V

    #@24
    .line 1303
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1293
    :cond_1
    return-void
.end method


# virtual methods
.method public absolutePath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1005
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->absolutePath:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public addNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
    .locals 3
    .param p1, "ncl"    # Ljava/util/prefs/NodeChangeListener;

    #@0
    .prologue
    .line 1056
    if-nez p1, :cond_0

    #@2
    .line 1057
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "Change listener is null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1058
    :cond_0
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 1059
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1060
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    const-string/jumbo v2, "Node has been removed."

    #@17
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 1058
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0

    #@1e
    .line 1062
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit v1

    #@24
    .line 1064
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->startEventDispatchThreadIfNecessary()V

    #@27
    .line 1055
    return-void
.end method

.method public addPreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
    .locals 3
    .param p1, "pcl"    # Ljava/util/prefs/PreferenceChangeListener;

    #@0
    .prologue
    .line 1031
    if-nez p1, :cond_0

    #@2
    .line 1032
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "Change listener is null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1033
    :cond_0
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 1034
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1035
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    const-string/jumbo v2, "Node has been removed."

    #@17
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 1033
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0

    #@1e
    .line 1037
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit v1

    #@24
    .line 1039
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->startEventDispatchThreadIfNecessary()V

    #@27
    .line 1030
    return-void
.end method

.method protected final cachedChildren()[Ljava/util/prefs/AbstractPreferences;
    .locals 2

    #@0
    .prologue
    .line 730
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->EMPTY_ABSTRACT_PREFS_ARRAY:[Ljava/util/prefs/AbstractPreferences;

    #@8
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [Ljava/util/prefs/AbstractPreferences;

    #@e
    return-object v0
.end method

.method protected abstract childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
.end method

.method public childrenNames()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 711
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 712
    :try_start_0
    iget-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 713
    new-instance v2, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v4, "Node has been removed."

    #@c
    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 711
    :catchall_0
    move-exception v2

    #@11
    monitor-exit v3

    #@12
    throw v2

    #@13
    .line 715
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/TreeSet;

    #@15
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    #@17
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    #@1e
    .line 716
    .local v1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNamesSpi()[Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    const/4 v2, 0x0

    #@23
    array-length v5, v4

    #@24
    :goto_0
    if-ge v2, v5, :cond_1

    #@26
    aget-object v0, v4, v2

    #@28
    .line 717
    .local v0, "kid":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2b
    .line 716
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 718
    .end local v0    # "kid":Ljava/lang/String;
    :cond_1
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@30
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    monitor-exit v3

    #@37
    return-object v2
.end method

.method protected abstract childrenNamesSpi()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public clear()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 335
    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->keys()[Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 336
    .local v1, "keys":[Ljava/lang/String;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 337
    aget-object v2, v1, v0

    #@d
    invoke-virtual {p0, v2}, Ljava/util/prefs/AbstractPreferences;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 336
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    :cond_0
    monitor-exit v3

    #@14
    .line 333
    return-void

    #@15
    .line 334
    .end local v0    # "i":I
    .end local v1    # "keys":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@16
    monitor-exit v3

    #@17
    throw v2
.end method

.method public exportNode(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 1562
    const/4 v0, 0x0

    #@1
    invoke-static {p1, p0, v0}, Ljava/util/prefs/XmlSupport;->export(Ljava/io/OutputStream;Ljava/util/prefs/Preferences;Z)V

    #@4
    .line 1560
    return-void
.end method

.method public exportSubtree(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 1578
    const/4 v0, 0x1

    #@1
    invoke-static {p1, p0, v0}, Ljava/util/prefs/XmlSupport;->export(Ljava/io/OutputStream;Ljava/util/prefs/Preferences;Z)V

    #@4
    .line 1576
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 1350
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->flush2()V

    #@3
    .line 1349
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
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    #@0
    .prologue
    .line 279
    if-nez p1, :cond_0

    #@2
    .line 280
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "Null key"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 281
    :cond_0
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@d
    monitor-enter v3

    #@e
    .line 282
    :try_start_0
    iget-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 283
    new-instance v2, Ljava/lang/IllegalStateException;

    #@14
    const-string/jumbo v4, "Node has been removed."

    #@17
    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 281
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit v3

    #@1d
    throw v2

    #@1e
    .line 285
    :cond_1
    const/4 v1, 0x0

    #@1f
    .line 287
    .local v1, "result":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->getSpi(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    move-result-object v1

    #@23
    .line 291
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_2

    #@25
    .end local p2    # "def":Ljava/lang/String;
    :goto_1
    monitor-exit v3

    #@26
    return-object p2

    #@27
    .line 288
    .restart local v1    # "result":Ljava/lang/String;
    .restart local p2    # "def":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@28
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    #@29
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    move-object p2, v1

    #@2a
    .line 291
    goto :goto_1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 497
    move v0, p2

    #@2
    .line 498
    .local v0, "result":Z
    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 499
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@8
    .line 500
    const-string/jumbo v2, "true"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 501
    const/4 v0, 0x1

    #@12
    .line 506
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    #@13
    .line 502
    .restart local v0    # "result":Z
    :cond_1
    const-string/jumbo v2, "false"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 503
    const/4 v0, 0x0

    #@1d
    .local v0, "result":Z
    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;[B)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 653
    move-object v1, p2

    #@2
    .line 654
    .local v1, "result":[B
    invoke-virtual {p0, p1, v3}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 656
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@8
    .line 657
    :try_start_0
    invoke-static {v2}, Ljava/util/prefs/Base64;->base64ToByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    .line 663
    :cond_0
    :goto_0
    return-object v1

    #@d
    .line 659
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method protected getChild(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .locals 4
    .param p1, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 1218
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1220
    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNames()[Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 1221
    .local v1, "kidNames":[Ljava/lang/String;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@9
    if-ge v0, v2, :cond_1

    #@b
    .line 1222
    aget-object v2, v1, v0

    #@d
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 1223
    aget-object v2, v1, v0

    #@15
    invoke-virtual {p0, v2}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result-object v2

    #@19
    monitor-exit v3

    #@1a
    return-object v2

    #@1b
    .line 1221
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    :cond_1
    monitor-exit v3

    #@1f
    .line 1225
    const/4 v2, 0x0

    #@20
    return-object v2

    #@21
    .line 1218
    .end local v0    # "i":I
    .end local v1    # "kidNames":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # D

    #@0
    .prologue
    .line 607
    move-wide v2, p2

    #@1
    .line 609
    .local v2, "result":D
    const/4 v4, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, p1, v4}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 610
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@8
    .line 611
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-wide v2

    #@c
    .line 616
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v2

    #@d
    .line 612
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # F

    #@0
    .prologue
    .line 552
    move v1, p2

    #@1
    .line 554
    .local v1, "result":F
    const/4 v3, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, p1, v3}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 555
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@8
    .line 556
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    .line 561
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    #@d
    .line 557
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I

    #@0
    .prologue
    .line 384
    move v1, p2

    #@1
    .line 386
    .local v1, "result":I
    const/4 v3, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, p1, v3}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 387
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@8
    .line 388
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    .line 393
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    #@d
    .line 389
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # J

    #@0
    .prologue
    .line 439
    move-wide v2, p2

    #@1
    .line 441
    .local v2, "result":J
    const/4 v4, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, p1, v4}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 442
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@8
    .line 443
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-wide v2

    #@c
    .line 448
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v2

    #@d
    .line 444
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method protected abstract getSpi(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected isRemoved()Z
    .locals 2

    #@0
    .prologue
    .line 1398
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1399
    :try_start_0
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 1398
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public isUserNode()Z
    .locals 1

    #@0
    .prologue
    .line 1023
    new-instance v0, Ljava/util/prefs/AbstractPreferences$1;

    #@2
    invoke-direct {v0, p0}, Ljava/util/prefs/AbstractPreferences$1;-><init>(Ljava/util/prefs/AbstractPreferences;)V

    #@5
    .line 1022
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Boolean;

    #@b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public keys()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 682
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 683
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 684
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "Node has been removed."

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 682
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 686
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->keysSpi()[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v0

    #@17
    monitor-exit v1

    #@18
    return-object v0
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
    .line 990
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public node(Ljava/lang/String;)Ljava/util/prefs/Preferences;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 803
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 804
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 805
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v2, "Node has been removed."

    #@d
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 803
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0

    #@14
    .line 806
    :cond_0
    :try_start_1
    const-string/jumbo v0, ""

    #@17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    monitor-exit v1

    #@1e
    .line 807
    return-object p0

    #@1f
    .line 808
    :cond_1
    :try_start_2
    const-string/jumbo v0, "/"

    #@22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 809
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2a
    monitor-exit v1

    #@2b
    return-object v0

    #@2c
    .line 810
    :cond_2
    const/4 v0, 0x0

    #@2d
    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@30
    move-result v0

    #@31
    const/16 v2, 0x2f

    #@33
    if-eq v0, v2, :cond_3

    #@35
    .line 811
    new-instance v0, Ljava/util/StringTokenizer;

    #@37
    const-string/jumbo v2, "/"

    #@3a
    const/4 v3, 0x1

    #@3b
    invoke-direct {v0, p1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@3e
    invoke-direct {p0, v0}, Ljava/util/prefs/AbstractPreferences;->node(Ljava/util/StringTokenizer;)Ljava/util/prefs/Preferences;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@41
    move-result-object v0

    #@42
    monitor-exit v1

    #@43
    return-object v0

    #@44
    :cond_3
    monitor-exit v1

    #@45
    .line 815
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    #@47
    new-instance v1, Ljava/util/StringTokenizer;

    #@49
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    const-string/jumbo v3, "/"

    #@50
    invoke-direct {v1, v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@53
    invoke-direct {v0, v1}, Ljava/util/prefs/AbstractPreferences;->node(Ljava/util/StringTokenizer;)Ljava/util/prefs/Preferences;

    #@56
    move-result-object v0

    #@57
    return-object v0
.end method

.method public nodeExists(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 868
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 869
    :try_start_0
    const-string/jumbo v3, ""

    #@8
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 870
    iget-boolean v3, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    if-eqz v3, :cond_0

    #@12
    :goto_0
    monitor-exit v2

    #@13
    return v0

    #@14
    :cond_0
    move v0, v1

    #@15
    goto :goto_0

    #@16
    .line 871
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 872
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1c
    const-string/jumbo v1, "Node has been removed."

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .line 868
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v2

    #@25
    throw v0

    #@26
    .line 873
    :cond_2
    :try_start_2
    const-string/jumbo v0, "/"

    #@29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_3

    #@2f
    monitor-exit v2

    #@30
    .line 874
    return v1

    #@31
    .line 875
    :cond_3
    const/4 v0, 0x0

    #@32
    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@35
    move-result v0

    #@36
    const/16 v3, 0x2f

    #@38
    if-eq v0, v3, :cond_4

    #@3a
    .line 876
    new-instance v0, Ljava/util/StringTokenizer;

    #@3c
    const-string/jumbo v1, "/"

    #@3f
    const/4 v3, 0x1

    #@40
    invoke-direct {v0, p1, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@43
    invoke-direct {p0, v0}, Ljava/util/prefs/AbstractPreferences;->nodeExists(Ljava/util/StringTokenizer;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@46
    move-result v0

    #@47
    monitor-exit v2

    #@48
    return v0

    #@49
    :cond_4
    monitor-exit v2

    #@4a
    .line 880
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    #@4c
    new-instance v2, Ljava/util/StringTokenizer;

    #@4e
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    const-string/jumbo v4, "/"

    #@55
    invoke-direct {v2, v3, v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@58
    invoke-direct {v0, v2}, Ljava/util/prefs/AbstractPreferences;->nodeExists(Ljava/util/StringTokenizer;)Z

    #@5b
    move-result v0

    #@5c
    return v0
.end method

.method nodeListeners()[Ljava/util/prefs/NodeChangeListener;
    .locals 3

    #@0
    .prologue
    .line 1502
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1503
    :try_start_0
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    #@5
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    new-array v2, v2, [Ljava/util/prefs/NodeChangeListener;

    #@d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, [Ljava/util/prefs/NodeChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    .line 1502
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public parent()Ljava/util/prefs/Preferences;
    .locals 3

    #@0
    .prologue
    .line 749
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 750
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 751
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "Node has been removed."

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 749
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 753
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    return-object v0
.end method

.method prefListeners()[Ljava/util/prefs/PreferenceChangeListener;
    .locals 3

    #@0
    .prologue
    .line 1497
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1498
    :try_start_0
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    #@5
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    new-array v2, v2, [Ljava/util/prefs/PreferenceChangeListener;

    #@d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, [Ljava/util/prefs/PreferenceChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    .line 1497
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 240
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 241
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 242
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    const/16 v1, 0x50

    #@10
    if-le v0, v1, :cond_2

    #@12
    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Key too long: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 244
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@2f
    move-result v0

    #@30
    const/16 v1, 0x2000

    #@32
    if-le v0, v1, :cond_3

    #@34
    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@36
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v2, "Value too long: "

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v0

    #@4e
    .line 247
    :cond_3
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@50
    monitor-enter v1

    #@51
    .line 248
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    #@53
    if-eqz v0, :cond_4

    #@55
    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    #@57
    const-string/jumbo v2, "Node has been removed."

    #@5a
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    .line 247
    :catchall_0
    move-exception v0

    #@5f
    monitor-exit v1

    #@60
    throw v0

    #@61
    .line 251
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;->putSpi(Ljava/lang/String;Ljava/lang/String;)V

    #@64
    .line 252
    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;->enqueuePreferenceChangeEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@67
    monitor-exit v1

    #@68
    .line 239
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 468
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 467
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    #@0
    .prologue
    .line 632
    invoke-static {p2}, Ljava/util/prefs/Base64;->byteArrayToBase64([B)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 631
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    #@0
    .prologue
    .line 581
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 580
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 526
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 525
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 358
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 357
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    #@0
    .prologue
    .line 413
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 412
    return-void
.end method

.method protected abstract putSpi(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 310
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 311
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 312
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "Node has been removed."

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 310
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 314
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->removeSpi(Ljava/lang/String;)V

    #@16
    .line 315
    const/4 v0, 0x0

    #@17
    invoke-direct {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->enqueuePreferenceChangeEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 309
    return-void
.end method

.method public removeNode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 941
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    .line 942
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    const-string/jumbo v1, "Can\'t remove the root!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 943
    :cond_0
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    #@f
    iget-object v1, v0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@11
    monitor-enter v1

    #@12
    .line 944
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->removeNode2()V

    #@15
    .line 945
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    #@17
    iget-object v0, v0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    #@19
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->name:Ljava/lang/String;

    #@1b
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v1

    #@1f
    .line 940
    return-void

    #@20
    .line 943
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0
.end method

.method public removeNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
    .locals 3
    .param p1, "ncl"    # Ljava/util/prefs/NodeChangeListener;

    #@0
    .prologue
    .line 1068
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1069
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1070
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "Node has been removed."

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 1068
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 1072
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 1073
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v2, "Listener not registered."

    #@20
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 1076
    :cond_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    monitor-exit v1

    #@2a
    .line 1067
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
    .line 1043
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1044
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1045
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "Node has been removed."

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 1043
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 1047
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 1048
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v2, "Listener not registered."

    #@20
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 1051
    :cond_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    monitor-exit v1

    #@2a
    .line 1042
    return-void
.end method

.method protected abstract removeSpi(Ljava/lang/String;)V
.end method

.method public sync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 1290
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->sync2()V

    #@3
    .line 1289
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
    .line 1265
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
    .line 1266
    const-string/jumbo v1, " Preference Node: "

    #@15
    .line 1265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 1266
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 1265
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
