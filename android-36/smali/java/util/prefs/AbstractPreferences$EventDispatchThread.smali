.class Ljava/util/prefs/AbstractPreferences$EventDispatchThread;
.super Ljava/lang/Thread;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/AbstractPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventDispatchThread"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1503
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/prefs/AbstractPreferences-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences$EventDispatchThread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 1507
    nop

    :goto_1
    const/4 v0, 0x0

    .line 1508
    .local v0, "event":Ljava/util/EventObject;
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-$$Nest$sfgeteventQueue()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 1510
    :goto_7
    :try_start_7
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-$$Nest$sfgeteventQueue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1511
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-$$Nest$sfgeteventQueue()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_7

    .line 1512
    :cond_19
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-$$Nest$sfgeteventQueue()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EventObject;
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_24} :catch_6c
    .catchall {:try_start_7 .. :try_end_24} :catchall_6a

    move-object v0, v2

    .line 1516
    nop

    .line 1517
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_6a

    .line 1520
    invoke-virtual {v0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/prefs/AbstractPreferences;

    .line 1521
    .local v1, "src":Ljava/util/prefs/AbstractPreferences;
    instance-of v2, v0, Ljava/util/prefs/PreferenceChangeEvent;

    if-eqz v2, :cond_45

    .line 1522
    move-object v2, v0

    check-cast v2, Ljava/util/prefs/PreferenceChangeEvent;

    .line 1523
    .local v2, "pce":Ljava/util/prefs/PreferenceChangeEvent;
    invoke-virtual {v1}, Ljava/util/prefs/AbstractPreferences;->prefListeners()[Ljava/util/prefs/PreferenceChangeListener;

    move-result-object v3

    .line 1524
    .local v3, "listeners":[Ljava/util/prefs/PreferenceChangeListener;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_39
    array-length v5, v3

    if-ge v4, v5, :cond_44

    .line 1525
    aget-object v5, v3, v4

    invoke-interface {v5, v2}, Ljava/util/prefs/PreferenceChangeListener;->preferenceChange(Ljava/util/prefs/PreferenceChangeEvent;)V

    .line 1524
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 1526
    .end local v2    # "pce":Ljava/util/prefs/PreferenceChangeEvent;
    .end local v3    # "listeners":[Ljava/util/prefs/PreferenceChangeListener;
    .end local v4    # "i":I
    :cond_44
    goto :goto_69

    .line 1527
    :cond_45
    move-object v2, v0

    check-cast v2, Ljava/util/prefs/NodeChangeEvent;

    .line 1528
    .local v2, "nce":Ljava/util/prefs/NodeChangeEvent;
    invoke-virtual {v1}, Ljava/util/prefs/AbstractPreferences;->nodeListeners()[Ljava/util/prefs/NodeChangeListener;

    move-result-object v3

    .line 1529
    .local v3, "listeners":[Ljava/util/prefs/NodeChangeListener;
    instance-of v4, v2, Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;

    if-eqz v4, :cond_5d

    .line 1530
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_51
    array-length v5, v3

    if-ge v4, v5, :cond_5c

    .line 1531
    aget-object v5, v3, v4

    invoke-interface {v5, v2}, Ljava/util/prefs/NodeChangeListener;->childAdded(Ljava/util/prefs/NodeChangeEvent;)V

    .line 1530
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .end local v4    # "i":I
    :cond_5c
    goto :goto_69

    .line 1534
    :cond_5d
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5e
    array-length v5, v3

    if-ge v4, v5, :cond_69

    .line 1535
    aget-object v5, v3, v4

    invoke-interface {v5, v2}, Ljava/util/prefs/NodeChangeListener;->childRemoved(Ljava/util/prefs/NodeChangeEvent;)V

    .line 1534
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 1538
    .end local v0    # "event":Ljava/util/EventObject;
    .end local v1    # "src":Ljava/util/prefs/AbstractPreferences;
    .end local v2    # "nce":Ljava/util/prefs/NodeChangeEvent;
    .end local v3    # "listeners":[Ljava/util/prefs/NodeChangeListener;
    .end local v4    # "i":I
    :cond_69
    :goto_69
    goto :goto_1

    .line 1517
    .restart local v0    # "event":Ljava/util/EventObject;
    :catchall_6a
    move-exception v2

    goto :goto_6f

    .line 1513
    :catch_6c
    move-exception v2

    .line 1515
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_6d
    monitor-exit v1

    return-void

    .line 1517
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_6a

    throw v2
.end method
