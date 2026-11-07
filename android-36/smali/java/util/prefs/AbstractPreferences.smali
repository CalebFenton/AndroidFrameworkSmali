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
.field private static final greylist-max-o EMPTY_ABSTRACT_PREFS_ARRAY:[Ljava/util/prefs/AbstractPreferences;

.field private static final greylist-max-o EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static greylist-max-o eventDispatchThread:Ljava/lang/Thread;

.field private static final greylist-max-o eventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/EventObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o absolutePath:Ljava/lang/String;

.field private greylist-max-o kidCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/prefs/AbstractPreferences;",
            ">;"
        }
    .end annotation
.end field

.field protected final whitelist test-api lock:Ljava/lang/Object;

.field private final greylist-max-o name:Ljava/lang/String;

.field protected whitelist test-api newNode:Z

.field private final greylist-max-o nodeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/prefs/NodeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o parent:Ljava/util/prefs/AbstractPreferences;

.field private final greylist-max-o prefListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/prefs/PreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o removed:Z

.field private final greylist-max-o root:Ljava/util/prefs/AbstractPreferences;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetroot(Ljava/util/prefs/AbstractPreferences;)Ljava/util/prefs/AbstractPreferences;
    .registers 1

    iget-object p0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgeteventQueue()Ljava/util/List;
    .registers 1

    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 731
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Ljava/util/prefs/AbstractPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 742
    new-array v0, v0, [Ljava/util/prefs/AbstractPreferences;

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->EMPTY_ABSTRACT_PREFS_ARRAY:[Ljava/util/prefs/AbstractPreferences;

    .line 1479
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    .line 1542
    const/4 v0, 0x0

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V
    .registers 7
    .param p1, "parent"    # Ljava/util/prefs/AbstractPreferences;
    .param p2, "name"    # Ljava/lang/String;

    .line 205
    invoke-direct {p0}, Ljava/util/prefs/Preferences;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    .line 165
    iput-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    .line 206
    const-string v0, ""

    const-string v1, "/"

    if-nez p1, :cond_54

    .line 207
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 210
    iput-object v1, p0, Ljava/util/prefs/AbstractPreferences;->absolutePath:Ljava/lang/String;

    .line 211
    iput-object p0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    goto :goto_98

    .line 208
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be \"\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_54
    const/16 v2, 0x2f

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a5

    .line 216
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 219
    iget-object v0, p1, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    .line 220
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    if-ne p1, v0, :cond_7d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_96

    .line 221
    :cond_7d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_96
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->absolutePath:Ljava/lang/String;

    .line 223
    :goto_98
    iput-object p2, p0, Ljava/util/prefs/AbstractPreferences;->name:Ljava/lang/String;

    .line 224
    iput-object p1, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    .line 225
    return-void

    .line 217
    :cond_9d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal name: empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' contains \'/\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o enqueueNodeAddedEvent(Ljava/util/prefs/Preferences;)V
    .registers 5
    .param p1, "child"    # Ljava/util/prefs/Preferences;

    .line 1614
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1615
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    monitor-enter v0

    .line 1616
    :try_start_b
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    new-instance v2, Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;

    invoke-direct {v2, p0, p0, p1}, Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1618
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw v1

    .line 1620
    :cond_1f
    :goto_1f
    return-void
.end method

.method private greylist-max-o enqueueNodeRemovedEvent(Ljava/util/prefs/Preferences;)V
    .registers 5
    .param p1, "child"    # Ljava/util/prefs/Preferences;

    .line 1630
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1631
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    monitor-enter v0

    .line 1632
    :try_start_b
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    new-instance v2, Ljava/util/prefs/AbstractPreferences$NodeRemovedEvent;

    invoke-direct {v2, p0, p0, p1}, Ljava/util/prefs/AbstractPreferences$NodeRemovedEvent;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1633
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1634
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw v1

    .line 1636
    :cond_1f
    :goto_1f
    return-void
.end method

.method private greylist-max-o enqueuePreferenceChangeEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 1598
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1599
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    monitor-enter v0

    .line 1600
    :try_start_b
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    new-instance v2, Ljava/util/prefs/PreferenceChangeEvent;

    invoke-direct {v2, p0, p1, p2}, Ljava/util/prefs/PreferenceChangeEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1601
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1602
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw v1

    .line 1604
    :cond_1f
    :goto_1f
    return-void
.end method

.method private greylist-max-o flush2()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 1424
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1425
    :try_start_3
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->flushSpi()V

    .line 1426
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v1, :cond_c

    .line 1427
    monitor-exit v0

    return-void

    .line 1428
    :cond_c
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->cachedChildren()[Ljava/util/prefs/AbstractPreferences;

    move-result-object v1

    .line 1429
    .local v1, "cachedKids":[Ljava/util/prefs/AbstractPreferences;
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    .line 1431
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v2, v1

    if-ge v0, v2, :cond_1d

    .line 1432
    aget-object v2, v1, v0

    invoke-direct {v2}, Ljava/util/prefs/AbstractPreferences;->flush2()V

    .line 1431
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1433
    .end local v0    # "i":I
    :cond_1d
    return-void

    .line 1429
    .end local v1    # "cachedKids":[Ljava/util/prefs/AbstractPreferences;
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private greylist-max-o node(Ljava/util/StringTokenizer;)Ljava/util/prefs/Preferences;
    .registers 8
    .param p1, "path"    # Ljava/util/StringTokenizer;

    .line 831
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "token":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    .line 834
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 835
    :try_start_f
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/prefs/AbstractPreferences;

    .line 836
    .local v2, "child":Ljava/util/prefs/AbstractPreferences;
    if-nez v2, :cond_52

    .line 837
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x50

    if-gt v3, v4, :cond_33

    .line 840
    invoke-virtual {p0, v0}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v3

    move-object v2, v3

    .line 841
    iget-boolean v3, v2, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    if-eqz v3, :cond_2d

    .line 842
    invoke-direct {p0, v2}, Ljava/util/prefs/AbstractPreferences;->enqueueNodeAddedEvent(Ljava/util/prefs/Preferences;)V

    .line 843
    :cond_2d
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 838
    :cond_33
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Node name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " too long"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Ljava/lang/String;
    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .end local p1    # "path":Ljava/util/StringTokenizer;
    throw v3

    .line 845
    .restart local v0    # "token":Ljava/lang/String;
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .restart local p1    # "path":Ljava/util/StringTokenizer;
    :cond_52
    :goto_52
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 846
    monitor-exit v1

    return-object v2

    .line 847
    :cond_5a
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 848
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 850
    invoke-direct {v2, p1}, Ljava/util/prefs/AbstractPreferences;->node(Ljava/util/StringTokenizer;)Ljava/util/prefs/Preferences;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 849
    :cond_69
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Path ends with slash"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Ljava/lang/String;
    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .end local p1    # "path":Ljava/util/StringTokenizer;
    throw v3

    .line 851
    .end local v2    # "child":Ljava/util/prefs/AbstractPreferences;
    .restart local v0    # "token":Ljava/lang/String;
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .restart local p1    # "path":Ljava/util/StringTokenizer;
    :catchall_71
    move-exception v2

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_f .. :try_end_73} :catchall_71

    throw v2

    .line 833
    :cond_74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Consecutive slashes in path"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o nodeExists(Ljava/util/StringTokenizer;)Z
    .registers 7
    .param p1, "path"    # Ljava/util/StringTokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 899
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "token":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 902
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 903
    :try_start_f
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/prefs/AbstractPreferences;

    .line 904
    .local v2, "child":Ljava/util/prefs/AbstractPreferences;
    if-nez v2, :cond_1e

    .line 905
    invoke-virtual {p0, v0}, Ljava/util/prefs/AbstractPreferences;->getChild(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v3

    move-object v2, v3

    .line 906
    :cond_1e
    if-nez v2, :cond_23

    .line 907
    monitor-exit v1

    const/4 v1, 0x0

    return v1

    .line 908
    :cond_23
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 909
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 910
    :cond_2c
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 911
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 913
    invoke-direct {v2, p1}, Ljava/util/prefs/AbstractPreferences;->nodeExists(Ljava/util/StringTokenizer;)Z

    move-result v3

    monitor-exit v1

    return v3

    .line 912
    :cond_3b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Path ends with slash"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Ljava/lang/String;
    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .end local p1    # "path":Ljava/util/StringTokenizer;
    throw v3

    .line 914
    .end local v2    # "child":Ljava/util/prefs/AbstractPreferences;
    .restart local v0    # "token":Ljava/lang/String;
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .restart local p1    # "path":Ljava/util/StringTokenizer;
    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_f .. :try_end_45} :catchall_43

    throw v2

    .line 901
    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Consecutive slashes in path"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o removeNode2()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 963
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 964
    :try_start_3
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-nez v1, :cond_55

    .line 968
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNamesSpi()[Ljava/lang/String;

    move-result-object v1

    .line 969
    .local v1, "kidNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v1

    if-ge v2, v3, :cond_29

    .line 970
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    aget-object v4, v1, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 971
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    aget-object v4, v1, v2

    aget-object v5, v1, v2

    invoke-virtual {p0, v5}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 974
    .end local v2    # "i":I
    :cond_29
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 975
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/prefs/AbstractPreferences;>;"
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_5d

    if-eqz v3, :cond_48

    .line 977
    :try_start_39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/prefs/AbstractPreferences;

    invoke-direct {v3}, Ljava/util/prefs/AbstractPreferences;->removeNode2()V

    .line 978
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_45
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_39 .. :try_end_45} :catch_46
    .catchall {:try_start_39 .. :try_end_45} :catchall_5d

    goto :goto_47

    .line 979
    :catch_46
    move-exception v3

    :goto_47
    goto :goto_33

    .line 983
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/prefs/AbstractPreferences;>;"
    :cond_48
    :try_start_48
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->removeNodeSpi()V

    .line 984
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    .line 985
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    invoke-direct {v2, p0}, Ljava/util/prefs/AbstractPreferences;->enqueueNodeRemovedEvent(Ljava/util/prefs/Preferences;)V

    .line 986
    .end local v1    # "kidNames":[Ljava/lang/String;
    monitor-exit v0

    .line 987
    return-void

    .line 965
    :cond_55
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Node already removed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    throw v1

    .line 986
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_48 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method private static declared-synchronized greylist-max-o startEventDispatchThreadIfNecessary()V
    .registers 3

    const-class v0, Ljava/util/prefs/AbstractPreferences;

    monitor-enter v0

    .line 1550
    :try_start_3
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    if-nez v1, :cond_1a

    .line 1552
    new-instance v1, Ljava/util/prefs/AbstractPreferences$EventDispatchThread;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/prefs/AbstractPreferences$EventDispatchThread;-><init>(Ljava/util/prefs/AbstractPreferences-IA;)V

    sput-object v1, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    .line 1553
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1554
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    .line 1556
    :cond_1a
    monitor-exit v0

    return-void

    .line 1549
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private greylist-max-o sync2()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 1364
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1365
    :try_start_3
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-nez v1, :cond_1c

    .line 1367
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->syncSpi()V

    .line 1368
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->cachedChildren()[Ljava/util/prefs/AbstractPreferences;

    move-result-object v1

    .line 1369
    .local v1, "cachedKids":[Ljava/util/prefs/AbstractPreferences;
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_24

    .line 1371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, v1

    if-ge v0, v2, :cond_1b

    .line 1372
    aget-object v2, v1, v0

    invoke-direct {v2}, Ljava/util/prefs/AbstractPreferences;->sync2()V

    .line 1371
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1373
    .end local v0    # "i":I
    :cond_1b
    return-void

    .line 1366
    .end local v1    # "cachedKids":[Ljava/util/prefs/AbstractPreferences;
    :cond_1c
    :try_start_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Node has been removed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    throw v1

    .line 1369
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_24

    throw v1
.end method


# virtual methods
.method public whitelist test-api absolutePath()Ljava/lang/String;
    .registers 2

    .line 1014
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->absolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api addNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
    .registers 5
    .param p1, "ncl"    # Ljava/util/prefs/NodeChangeListener;

    .line 1089
    if-eqz p1, :cond_1e

    .line 1091
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1092
    :try_start_5
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-nez v1, :cond_13

    .line 1108
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_1b

    .line 1110
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->startEventDispatchThreadIfNecessary()V

    .line 1111
    return-void

    .line 1093
    :cond_13
    :try_start_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Node has been removed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .end local p1    # "ncl":Ljava/util/prefs/NodeChangeListener;
    throw v1

    .line 1109
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .restart local p1    # "ncl":Ljava/util/prefs/NodeChangeListener;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw v1

    .line 1090
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Change listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api addPreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
    .registers 5
    .param p1, "pcl"    # Ljava/util/prefs/PreferenceChangeListener;

    .line 1040
    if-eqz p1, :cond_1e

    .line 1042
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1043
    :try_start_5
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-nez v1, :cond_13

    .line 1054
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_1b

    .line 1056
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->startEventDispatchThreadIfNecessary()V

    .line 1057
    return-void

    .line 1044
    :cond_13
    :try_start_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Node has been removed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .end local p1    # "pcl":Ljava/util/prefs/PreferenceChangeListener;
    throw v1

    .line 1055
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .restart local p1    # "pcl":Ljava/util/prefs/PreferenceChangeListener;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw v1

    .line 1041
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Change listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final whitelist test-api cachedChildren()[Ljava/util/prefs/AbstractPreferences;
    .registers 3

    .line 739
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Ljava/util/prefs/AbstractPreferences;->EMPTY_ABSTRACT_PREFS_ARRAY:[Ljava/util/prefs/AbstractPreferences;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/prefs/AbstractPreferences;

    return-object v0
.end method

.method protected abstract whitelist test-api childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
.end method

.method public whitelist test-api childrenNames()[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 720
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_3
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-nez v1, :cond_2d

    .line 724
    new-instance v1, Ljava/util/TreeSet;

    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 725
    .local v1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNamesSpi()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_23

    aget-object v5, v2, v4

    .line 726
    .local v5, "kid":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 725
    nop

    .end local v5    # "kid":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 727
    :cond_23
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 722
    .end local v1    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Node has been removed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    throw v1

    .line 728
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method protected abstract whitelist test-api childrenNamesSpi()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public whitelist test-api clear()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_3
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->keys()[Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "keys":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, v1

    if-ge v2, v3, :cond_13

    .line 346
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/util/prefs/AbstractPreferences;->remove(Ljava/lang/String;)V

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 347
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_13
    monitor-exit v0

    .line 348
    return-void

    .line 347
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist test-api exportNode(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 1651
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Ljava/util/prefs/XmlSupport;->export(Ljava/io/OutputStream;Ljava/util/prefs/Preferences;Z)V

    .line 1652
    return-void
.end method

.method public whitelist test-api exportSubtree(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 1667
    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Ljava/util/prefs/XmlSupport;->export(Ljava/io/OutputStream;Ljava/util/prefs/Preferences;Z)V

    .line 1668
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 1418
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->flush2()V

    .line 1419
    return-void
.end method

.method protected abstract whitelist test-api flushSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public whitelist test-api get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 286
    if-eqz p1, :cond_23

    .line 288
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_5
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_20

    if-nez v1, :cond_18

    .line 292
    const/4 v1, 0x0

    .line 294
    .local v1, "result":Ljava/lang/String;
    :try_start_a
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->getSpi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_10
    .catchall {:try_start_a .. :try_end_e} :catchall_20

    move-object v1, v2

    .line 297
    goto :goto_11

    .line 295
    :catch_10
    move-exception v2

    .line 298
    :goto_11
    if-nez v1, :cond_15

    move-object v2, p2

    goto :goto_16

    :cond_15
    move-object v2, v1

    :goto_16
    :try_start_16
    monitor-exit v0

    return-object v2

    .line 290
    .end local v1    # "result":Ljava/lang/String;
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Node has been removed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "def":Ljava/lang/String;
    throw v1

    .line 299
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "def":Ljava/lang/String;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_20

    throw v1

    .line 287
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getBoolean(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 506
    move v0, p2

    .line 507
    .local v0, "result":Z
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1b

    .line 509
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 510
    const/4 v0, 0x1

    goto :goto_1b

    .line 511
    :cond_12
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 512
    const/4 v0, 0x0

    .line 515
    :cond_1b
    :goto_1b
    return v0
.end method

.method public whitelist test-api getByteArray(Ljava/lang/String;[B)[B
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # [B

    .line 662
    move-object v0, p2

    .line 663
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 666
    :try_start_8
    invoke-static {v1}, Ljava/util/prefs/Base64;->base64ToByteArray(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_e

    move-object v0, v2

    goto :goto_10

    .line 668
    :catch_e
    move-exception v2

    goto :goto_11

    .line 670
    :cond_10
    :goto_10
    nop

    .line 672
    :goto_11
    return-object v0
.end method

.method protected whitelist test-api getChild(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .registers 6
    .param p1, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 1286
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1288
    :try_start_3
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNames()[Ljava/lang/String;

    move-result-object v1

    .line 1289
    .local v1, "kidNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, v1

    if-ge v2, v3, :cond_1e

    .line 1290
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1291
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1289
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1292
    .end local v1    # "kidNames":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1e
    monitor-exit v0

    .line 1293
    const/4 v0, 0x0

    return-object v0

    .line 1292
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist test-api getDouble(Ljava/lang/String;D)D
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # D

    .line 616
    move-wide v0, p2

    .line 618
    .local v0, "result":D
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 619
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 620
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_c} :catch_e

    move-wide v0, v3

    .line 623
    .end local v2    # "value":Ljava/lang/String;
    :cond_d
    goto :goto_f

    .line 621
    :catch_e
    move-exception v2

    .line 625
    :goto_f
    return-wide v0
.end method

.method public whitelist test-api getFloat(Ljava/lang/String;F)F
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # F

    .line 561
    move v0, p2

    .line 563
    .local v0, "result":F
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v1}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 565
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_c} :catch_e

    move v0, v2

    .line 568
    .end local v1    # "value":Ljava/lang/String;
    :cond_d
    goto :goto_f

    .line 566
    :catch_e
    move-exception v1

    .line 570
    :goto_f
    return v0
.end method

.method public whitelist test-api getInt(Ljava/lang/String;I)I
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 393
    move v0, p2

    .line 395
    .local v0, "result":I
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v1}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 397
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_c} :catch_e

    move v0, v2

    .line 400
    .end local v1    # "value":Ljava/lang/String;
    :cond_d
    goto :goto_f

    .line 398
    :catch_e
    move-exception v1

    .line 402
    :goto_f
    return v0
.end method

.method public whitelist test-api getLong(Ljava/lang/String;J)J
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 448
    move-wide v0, p2

    .line 450
    .local v0, "result":J
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 452
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_c} :catch_e

    move-wide v0, v3

    .line 455
    .end local v2    # "value":Ljava/lang/String;
    :cond_d
    goto :goto_f

    .line 453
    :catch_e
    move-exception v2

    .line 457
    :goto_f
    return-wide v0
.end method

.method protected abstract whitelist test-api getSpi(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected whitelist test-api isRemoved()Z
    .registers 3

    .line 1466
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1467
    :try_start_3
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    monitor-exit v0

    return v1

    .line 1468
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist test-api isUserNode()Z
    .registers 2

    .line 1031
    new-instance v0, Ljava/util/prefs/AbstractPreferences$1;

    invoke-direct {v0, p0}, Ljava/util/prefs/AbstractPreferences$1;-><init>(Ljava/util/prefs/AbstractPreferences;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1036
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1031
    return v0
.end method

.method public whitelist test-api keys()[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 691
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_3
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-nez v1, :cond_d

    .line 695
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->keysSpi()[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 693
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Node has been removed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    throw v1

    .line 696
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected abstract whitelist test-api keysSpi()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 999
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api node(Ljava/lang/String;)Ljava/util/prefs/Preferences;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .line 812
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 813
    :try_start_3
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-nez v1, :cond_47

    .line 815
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 816
    monitor-exit v0

    return-object p0

    .line 817
    :cond_11
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 818
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    monitor-exit v0

    return-object v1

    .line 819
    :cond_1d
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    const/4 v3, 0x1

    if-eq v1, v2, :cond_34

    .line 820
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "/"

    invoke-direct {v1, p1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Ljava/util/prefs/AbstractPreferences;->node(Ljava/util/StringTokenizer;)Ljava/util/prefs/Preferences;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 821
    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_4f

    .line 824
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    invoke-direct {v1, v2, v4, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/util/prefs/AbstractPreferences;->node(Ljava/util/StringTokenizer;)Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0

    .line 814
    :cond_47
    :try_start_47
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Node has been removed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .end local p1    # "path":Ljava/lang/String;
    throw v1

    .line 821
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .restart local p1    # "path":Ljava/lang/String;
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public whitelist test-api nodeExists(Ljava/lang/String;)Z
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 877
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    :try_start_3
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_14

    .line 879
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-nez v1, :cond_12

    move v2, v3

    :cond_12
    monitor-exit v0

    return v2

    .line 880
    :cond_14
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-nez v1, :cond_4a

    .line 882
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 883
    monitor-exit v0

    return v3

    .line 884
    :cond_22
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_37

    .line 885
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "/"

    invoke-direct {v1, p1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Ljava/util/prefs/AbstractPreferences;->nodeExists(Ljava/util/StringTokenizer;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 886
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_52

    .line 889
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    invoke-direct {v1, v2, v4, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/util/prefs/AbstractPreferences;->nodeExists(Ljava/util/StringTokenizer;)Z

    move-result v0

    return v0

    .line 881
    :cond_4a
    :try_start_4a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Node has been removed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .end local p1    # "path":Ljava/lang/String;
    throw v1

    .line 886
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .restart local p1    # "path":Ljava/lang/String;
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_52

    throw v1
.end method

.method greylist-max-o nodeListeners()[Ljava/util/prefs/NodeChangeListener;
    .registers 4

    .line 1583
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1586
    :try_start_3
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/prefs/NodeChangeListener;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/prefs/NodeChangeListener;

    monitor-exit v0

    return-object v1

    .line 1587
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist test-api parent()Ljava/util/prefs/Preferences;
    .registers 4

    .line 758
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_3
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-nez v1, :cond_b

    .line 762
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    monitor-exit v0

    return-object v1

    .line 760
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Node has been removed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    throw v1

    .line 763
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method greylist-max-o prefListeners()[Ljava/util/prefs/PreferenceChangeListener;
    .registers 4

    .line 1576
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1579
    :try_start_3
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/prefs/PreferenceChangeListener;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/prefs/PreferenceChangeListener;

    monitor-exit v0

    return-object v1

    .line 1580
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist test-api put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 247
    if-eqz p1, :cond_60

    if-eqz p2, :cond_60

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_47

    .line 251
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_2e

    .line 254
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_17
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-nez v1, :cond_23

    .line 258
    invoke-virtual {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;->putSpi(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;->enqueuePreferenceChangeEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    monitor-exit v0

    .line 261
    return-void

    .line 256
    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Node has been removed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    throw v1

    .line 260
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_2b

    throw v1

    .line 252
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_60
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api putBoolean(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 477
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public whitelist test-api putByteArray(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 641
    invoke-static {p2}, Ljava/util/prefs/Base64;->byteArrayToBase64([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method public whitelist test-api putDouble(Ljava/lang/String;D)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 590
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public whitelist test-api putFloat(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 535
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public whitelist test-api putInt(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 367
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public whitelist test-api putLong(Ljava/lang/String;J)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 422
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method protected abstract whitelist test-api putSpi(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public whitelist test-api remove(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 318
    const-string v0, "Specified key cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_8
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-nez v1, :cond_15

    .line 323
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->removeSpi(Ljava/lang/String;)V

    .line 324
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/util/prefs/AbstractPreferences;->enqueuePreferenceChangeEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    monitor-exit v0

    .line 326
    return-void

    .line 321
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Node has been removed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .end local p1    # "key":Ljava/lang/String;
    throw v1

    .line 325
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .restart local p1    # "key":Ljava/lang/String;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist test-api removeNode()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 950
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    if-eq p0, v0, :cond_1a

    .line 952
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    iget-object v0, v0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 953
    :try_start_9
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->removeNode2()V

    .line 954
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    iget-object v1, v1, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    monitor-exit v0

    .line 956
    return-void

    .line 955
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    throw v1

    .line 951
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove the root!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api removeNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
    .registers 5
    .param p1, "ncl"    # Ljava/util/prefs/NodeChangeListener;

    .line 1114
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1115
    :try_start_3
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-nez v1, :cond_1e

    .line 1119
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1140
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1141
    monitor-exit v0

    .line 1142
    return-void

    .line 1120
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Listener not registered."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .end local p1    # "ncl":Ljava/util/prefs/NodeChangeListener;
    throw v1

    .line 1116
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .restart local p1    # "ncl":Ljava/util/prefs/NodeChangeListener;
    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Node has been removed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .end local p1    # "ncl":Ljava/util/prefs/NodeChangeListener;
    throw v1

    .line 1141
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .restart local p1    # "ncl":Ljava/util/prefs/NodeChangeListener;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method protected abstract whitelist test-api removeNodeSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public whitelist test-api removePreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
    .registers 5
    .param p1, "pcl"    # Ljava/util/prefs/PreferenceChangeListener;

    .line 1060
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1061
    :try_start_3
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-nez v1, :cond_1e

    .line 1065
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1084
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1085
    monitor-exit v0

    .line 1086
    return-void

    .line 1066
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Listener not registered."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .end local p1    # "pcl":Ljava/util/prefs/PreferenceChangeListener;
    throw v1

    .line 1062
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .restart local p1    # "pcl":Ljava/util/prefs/PreferenceChangeListener;
    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Node has been removed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .end local p1    # "pcl":Ljava/util/prefs/PreferenceChangeListener;
    throw v1

    .line 1085
    .restart local p0    # "this":Ljava/util/prefs/AbstractPreferences;
    .restart local p1    # "pcl":Ljava/util/prefs/PreferenceChangeListener;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method protected abstract whitelist test-api removeSpi(Ljava/lang/String;)V
.end method

.method public whitelist test-api sync()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 1358
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->sync2()V

    .line 1359
    return-void
.end method

.method protected abstract whitelist test-api syncSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->isUserNode()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "User"

    goto :goto_10

    :cond_e
    const-string v1, "System"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Preference Node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1334
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1333
    return-object v0
.end method
