.class public Ljava/beans/PropertyChangeSupport;
.super Ljava/lang/Object;
.source "PropertyChangeSupport.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;
    }
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0x58d5d264574860bbL


# instance fields
.field private map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

.field private source:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 490
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@3
    .line 491
    new-instance v1, Ljava/io/ObjectStreamField;

    #@5
    const-string/jumbo v2, "children"

    #@8
    const-class v3, Ljava/util/Hashtable;

    #@a
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v1, v0, v2

    #@10
    .line 492
    new-instance v1, Ljava/io/ObjectStreamField;

    #@12
    const-string/jumbo v2, "source"

    #@15
    const-class v3, Ljava/lang/Object;

    #@17
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1a
    const/4 v2, 0x1

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 493
    new-instance v1, Ljava/io/ObjectStreamField;

    #@1f
    const-string/jumbo v2, "propertyChangeSupportSerializedDataVersion"

    #@22
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@24
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@27
    const/4 v2, 0x2

    #@28
    aput-object v1, v0, v2

    #@2a
    .line 490
    sput-object v0, Ljava/beans/PropertyChangeSupport;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@2c
    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "sourceBean"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 82
    new-instance v0, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@6
    invoke-direct {v0, v1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;-><init>(Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;)V

    #@9
    iput-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@b
    .line 90
    if-nez p1, :cond_0

    #@d
    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@12
    throw v0

    #@13
    .line 93
    :cond_0
    iput-object p1, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    #@15
    .line 89
    return-void
.end method

.method private static fire([Ljava/beans/PropertyChangeListener;Ljava/beans/PropertyChangeEvent;)V
    .locals 3
    .param p0, "listeners"    # [Ljava/beans/PropertyChangeListener;
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    #@0
    .prologue
    .line 333
    if-eqz p0, :cond_0

    #@2
    .line 334
    const/4 v1, 0x0

    #@3
    array-length v2, p0

    #@4
    :goto_0
    if-ge v1, v2, :cond_0

    #@6
    aget-object v0, p0, v1

    #@8
    .line 335
    .local v0, "listener":Ljava/beans/PropertyChangeListener;
    invoke-interface {v0, p1}, Ljava/beans/PropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    #@b
    .line 334
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 332
    .end local v0    # "listener":Ljava/beans/PropertyChangeListener;
    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 11
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 459
    new-instance v6, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@3
    invoke-direct {v6, v8}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;-><init>(Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;)V

    #@6
    iput-object v6, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@8
    .line 461
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@b
    move-result-object v3

    #@c
    .line 463
    .local v3, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v6, "children"

    #@f
    invoke-virtual {v3, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/util/Hashtable;

    #@15
    .line 464
    .local v0, "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    const-string/jumbo v6, "source"

    #@18
    invoke-virtual {v3, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v6

    #@1c
    iput-object v6, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    #@1e
    .line 465
    const-string/jumbo v6, "propertyChangeSupportSerializedDataVersion"

    #@21
    const/4 v7, 0x2

    #@22
    invoke-virtual {v3, v6, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@25
    .line 468
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    .local v5, "listenerOrNull":Ljava/lang/Object;
    if-eqz v5, :cond_0

    #@2b
    .line 469
    iget-object v6, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@2d
    check-cast v5, Ljava/beans/PropertyChangeListener;

    #@2f
    .end local v5    # "listenerOrNull":Ljava/lang/Object;
    invoke-virtual {v6, v8, v5}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->add(Ljava/lang/String;Ljava/util/EventListener;)V

    #@32
    goto :goto_0

    #@33
    .line 471
    .restart local v5    # "listenerOrNull":Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_2

    #@35
    .line 472
    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    #@38
    move-result-object v6

    #@39
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v2

    #@3d
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v6

    #@41
    if-eqz v6, :cond_2

    #@43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v1

    #@47
    check-cast v1, Ljava/util/Map$Entry;

    #@49
    .line 473
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4c
    move-result-object v6

    #@4d
    check-cast v6, Ljava/beans/PropertyChangeSupport;

    #@4f
    invoke-virtual {v6}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;

    #@52
    move-result-object v8

    #@53
    const/4 v6, 0x0

    #@54
    array-length v9, v8

    #@55
    move v7, v6

    #@56
    :goto_1
    if-ge v7, v9, :cond_1

    #@58
    aget-object v4, v8, v7

    #@5a
    .line 474
    .local v4, "listener":Ljava/beans/PropertyChangeListener;
    iget-object v10, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@5c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@5f
    move-result-object v6

    #@60
    check-cast v6, Ljava/lang/String;

    #@62
    invoke-virtual {v10, v6, v4}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->add(Ljava/lang/String;Ljava/util/EventListener;)V

    #@65
    .line 473
    add-int/lit8 v6, v7, 0x1

    #@67
    move v7, v6

    #@68
    goto :goto_1

    #@69
    .line 458
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "listener":Ljava/beans/PropertyChangeListener;
    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 15
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    .line 425
    const/4 v1, 0x0

    #@2
    .line 426
    .local v1, "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    const/4 v7, 0x0

    #@3
    .line 427
    .local v7, "listeners":[Ljava/beans/PropertyChangeListener;
    iget-object v11, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@5
    monitor-enter v11

    #@6
    .line 428
    :try_start_0
    iget-object v10, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@8
    invoke-virtual {v10}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->getEntries()Ljava/util/Set;

    #@b
    move-result-object v10

    #@c
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v4

    #@10
    .local v4, "entry$iterator":Ljava/util/Iterator;
    move-object v2, v1

    #@11
    .end local v1    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .end local v7    # "listeners":[Ljava/beans/PropertyChangeListener;
    .local v2, "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v10

    #@15
    if-eqz v10, :cond_1

    #@17
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Ljava/util/Map$Entry;

    #@1d
    .line 429
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/beans/PropertyChangeListener;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@20
    move-result-object v9

    #@21
    check-cast v9, Ljava/lang/String;

    #@23
    .line 430
    .local v9, "property":Ljava/lang/String;
    if-nez v9, :cond_0

    #@25
    .line 431
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@28
    move-result-object v10

    #@29
    move-object v0, v10

    #@2a
    check-cast v0, [Ljava/beans/PropertyChangeListener;

    #@2c
    move-object v7, v0

    #@2d
    .local v7, "listeners":[Ljava/beans/PropertyChangeListener;
    move-object v1, v2

    #@2e
    .end local v2    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .end local v7    # "listeners":[Ljava/beans/PropertyChangeListener;
    .local v1, "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    :goto_1
    move-object v2, v1

    #@2f
    .end local v1    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .restart local v2    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    goto :goto_0

    #@30
    .line 433
    :cond_0
    if-nez v2, :cond_4

    #@32
    .line 434
    new-instance v1, Ljava/util/Hashtable;

    #@34
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@37
    .line 436
    .end local v2    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .restart local v1    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    :goto_2
    :try_start_2
    new-instance v8, Ljava/beans/PropertyChangeSupport;

    #@39
    iget-object v10, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    #@3b
    invoke-direct {v8, v10}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    #@3e
    .line 437
    .local v8, "pcs":Ljava/beans/PropertyChangeSupport;
    iget-object v12, v8, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@40
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@43
    move-result-object v10

    #@44
    check-cast v10, [Ljava/beans/PropertyChangeListener;

    #@46
    const/4 v13, 0x0

    #@47
    invoke-virtual {v12, v13, v10}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->set(Ljava/lang/String;[Ljava/util/EventListener;)V

    #@4a
    .line 438
    invoke-virtual {v1, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4d
    goto :goto_1

    #@4e
    .line 427
    .end local v1    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/beans/PropertyChangeListener;>;"
    .end local v4    # "entry$iterator":Ljava/util/Iterator;
    .end local v8    # "pcs":Ljava/beans/PropertyChangeSupport;
    .end local v9    # "property":Ljava/lang/String;
    :catchall_0
    move-exception v10

    #@4f
    :goto_3
    monitor-exit v11

    #@50
    throw v10

    #@51
    .restart local v2    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .restart local v4    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v11

    #@52
    .line 442
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@55
    move-result-object v5

    #@56
    .line 443
    .local v5, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v10, "children"

    #@59
    invoke-virtual {v5, v10, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@5c
    .line 444
    const-string/jumbo v10, "source"

    #@5f
    iget-object v11, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    #@61
    invoke-virtual {v5, v10, v11}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@64
    .line 445
    const-string/jumbo v10, "propertyChangeSupportSerializedDataVersion"

    #@67
    const/4 v11, 0x2

    #@68
    invoke-virtual {v5, v10, v11}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@6b
    .line 446
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@6e
    .line 448
    if-eqz v7, :cond_3

    #@70
    .line 449
    const/4 v10, 0x0

    #@71
    array-length v11, v7

    #@72
    :goto_4
    if-ge v10, v11, :cond_3

    #@74
    aget-object v6, v7, v10

    #@76
    .line 450
    .local v6, "l":Ljava/beans/PropertyChangeListener;
    instance-of v12, v6, Ljava/io/Serializable;

    #@78
    if-eqz v12, :cond_2

    #@7a
    .line 451
    move-object/from16 v0, p1

    #@7c
    invoke-virtual {v0, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@7f
    .line 449
    :cond_2
    add-int/lit8 v10, v10, 0x1

    #@81
    goto :goto_4

    #@82
    .line 455
    .end local v6    # "l":Ljava/beans/PropertyChangeListener;
    :cond_3
    move-object/from16 v0, p1

    #@84
    invoke-virtual {v0, v14}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@87
    .line 424
    return-void

    #@88
    .line 427
    .end local v5    # "fields":Ljava/io/ObjectOutputStream$PutField;
    :catchall_1
    move-exception v10

    #@89
    move-object v1, v2

    #@8a
    .end local v2    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .restart local v1    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    goto :goto_3

    #@8b
    .end local v1    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .restart local v2    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/beans/PropertyChangeListener;>;"
    .restart local v9    # "property":Ljava/lang/String;
    :cond_4
    move-object v1, v2

    #@8c
    .end local v2    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .restart local v1    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    goto :goto_2
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 3
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 107
    if-nez p1, :cond_0

    #@3
    .line 108
    return-void

    #@4
    .line 110
    :cond_0
    instance-of v1, p1, Ljava/beans/PropertyChangeListenerProxy;

    #@6
    if-eqz v1, :cond_1

    #@8
    move-object v0, p1

    #@9
    .line 112
    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    #@b
    .line 114
    .local v0, "proxy":Ljava/beans/PropertyChangeListenerProxy;
    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 115
    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/beans/PropertyChangeListener;

    #@15
    .line 114
    invoke-virtual {p0, v2, v1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    #@18
    .line 106
    .end local v0    # "proxy":Ljava/beans/PropertyChangeListenerProxy;
    :goto_0
    return-void

    #@19
    .line 117
    :cond_1
    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@1b
    invoke-virtual {v1, v2, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->add(Ljava/lang/String;Ljava/util/EventListener;)V

    #@1e
    goto :goto_0
.end method

.method public addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/beans/PropertyChangeListener;

    #@0
    .prologue
    .line 198
    if-eqz p2, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 199
    :cond_0
    return-void

    #@5
    .line 201
    :cond_1
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@7
    invoke-virtual {v0, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->extract(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    #@a
    move-result-object p2

    #@b
    .line 202
    if-eqz p2, :cond_2

    #@d
    .line 203
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@f
    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->add(Ljava/lang/String;Ljava/util/EventListener;)V

    #@12
    .line 197
    :cond_2
    return-void
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;III)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "oldValue"    # I
    .param p4, "newValue"    # I

    #@0
    .prologue
    .line 379
    if-eq p3, p4, :cond_0

    #@2
    .line 380
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/beans/PropertyChangeSupport;->fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 378
    :cond_0
    return-void
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 357
    if-eqz p3, :cond_0

    #@2
    if-nez p4, :cond_1

    #@4
    .line 358
    :cond_0
    new-instance v0, Ljava/beans/IndexedPropertyChangeEvent;

    #@6
    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    #@8
    move-object v2, p1

    #@9
    move-object v3, p3

    #@a
    move-object v4, p4

    #@b
    move v5, p2

    #@c
    invoke-direct/range {v0 .. v5}, Ljava/beans/IndexedPropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    #@f
    invoke-virtual {p0, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    #@12
    .line 356
    :goto_0
    return-void

    #@13
    .line 357
    :cond_1
    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_0

    #@19
    goto :goto_0
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;IZZ)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "oldValue"    # Z
    .param p4, "newValue"    # Z

    #@0
    .prologue
    .line 401
    if-eq p3, p4, :cond_0

    #@2
    .line 402
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v0

    #@6
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/beans/PropertyChangeSupport;->fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 400
    :cond_0
    return-void
.end method

.method public firePropertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 7
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 317
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    #@4
    move-result-object v4

    #@5
    .line 318
    .local v4, "oldValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    #@8
    move-result-object v3

    #@9
    .line 319
    .local v3, "newValue":Ljava/lang/Object;
    if-eqz v4, :cond_0

    #@b
    if-nez v3, :cond_1

    #@d
    .line 320
    :cond_0
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 322
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@13
    invoke-virtual {v5, v6}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->get(Ljava/lang/String;)[Ljava/util/EventListener;

    #@16
    move-result-object v0

    #@17
    check-cast v0, [Ljava/beans/PropertyChangeListener;

    #@19
    .line 323
    .local v0, "common":[Ljava/beans/PropertyChangeListener;
    if-eqz v1, :cond_2

    #@1b
    .line 324
    iget-object v5, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@1d
    invoke-virtual {v5, v1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->get(Ljava/lang/String;)[Ljava/util/EventListener;

    #@20
    move-result-object v2

    #@21
    check-cast v2, [Ljava/beans/PropertyChangeListener;

    #@23
    .line 327
    :goto_0
    invoke-static {v0, p1}, Ljava/beans/PropertyChangeSupport;->fire([Ljava/beans/PropertyChangeListener;Ljava/beans/PropertyChangeEvent;)V

    #@26
    .line 328
    invoke-static {v2, p1}, Ljava/beans/PropertyChangeSupport;->fire([Ljava/beans/PropertyChangeListener;Ljava/beans/PropertyChangeEvent;)V

    #@29
    .line 316
    .end local v0    # "common":[Ljava/beans/PropertyChangeListener;
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    return-void

    #@2a
    .line 319
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_0

    #@30
    goto :goto_1

    #@31
    .line 325
    .restart local v0    # "common":[Ljava/beans/PropertyChangeListener;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    #@32
    .local v2, "named":[Ljava/beans/PropertyChangeListener;
    goto :goto_0
.end method

.method public firePropertyChange(Ljava/lang/String;II)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    #@0
    .prologue
    .line 282
    if-eq p2, p3, :cond_0

    #@2
    .line 283
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, p1, v0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 281
    :cond_0
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 262
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 263
    :cond_0
    new-instance v0, Ljava/beans/PropertyChangeEvent;

    #@6
    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    #@8
    invoke-direct {v0, v1, p1, p2, p3}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@b
    invoke-virtual {p0, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    #@e
    .line 261
    :goto_0
    return-void

    #@f
    .line 262
    :cond_1
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    goto :goto_0
.end method

.method public firePropertyChange(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "oldValue"    # Z
    .param p3, "newValue"    # Z

    #@0
    .prologue
    .line 302
    if-eq p2, p3, :cond_0

    #@2
    .line 303
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v0

    #@6
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, p1, v0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 301
    :cond_0
    return-void
.end method

.method public getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;
    .locals 1

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@2
    invoke-virtual {v0}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->getListeners()[Ljava/util/EventListener;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/beans/PropertyChangeListener;

    #@8
    return-object v0
.end method

.method public getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->getListeners(Ljava/lang/String;)[Ljava/util/EventListener;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/beans/PropertyChangeListener;

    #@8
    return-object v0
.end method

.method public hasListeners(Ljava/lang/String;)Z
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 415
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->hasListeners(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 3
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 133
    if-nez p1, :cond_0

    #@3
    .line 134
    return-void

    #@4
    .line 136
    :cond_0
    instance-of v1, p1, Ljava/beans/PropertyChangeListenerProxy;

    #@6
    if-eqz v1, :cond_1

    #@8
    move-object v0, p1

    #@9
    .line 138
    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    #@b
    .line 140
    .local v0, "proxy":Ljava/beans/PropertyChangeListenerProxy;
    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 141
    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/beans/PropertyChangeListener;

    #@15
    .line 140
    invoke-virtual {p0, v2, v1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    #@18
    .line 132
    .end local v0    # "proxy":Ljava/beans/PropertyChangeListenerProxy;
    :goto_0
    return-void

    #@19
    .line 143
    :cond_1
    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@1b
    invoke-virtual {v1, v2, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->remove(Ljava/lang/String;Ljava/util/EventListener;)V

    #@1e
    goto :goto_0
.end method

.method public removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/beans/PropertyChangeListener;

    #@0
    .prologue
    .line 223
    if-eqz p2, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 224
    :cond_0
    return-void

    #@5
    .line 226
    :cond_1
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@7
    invoke-virtual {v0, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->extract(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    #@a
    move-result-object p2

    #@b
    .line 227
    if-eqz p2, :cond_2

    #@d
    .line 228
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    #@f
    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->remove(Ljava/lang/String;Ljava/util/EventListener;)V

    #@12
    .line 222
    :cond_2
    return-void
.end method
