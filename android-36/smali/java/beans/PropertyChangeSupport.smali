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
.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final whitelist serialVersionUID:J = 0x58d5d264574860bbL


# instance fields
.field private greylist-max-o map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

.field private greylist-max-o source:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 491
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "children"

    const-class v3, Ljava/util/Hashtable;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "source"

    const-class v3, Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "propertyChangeSupportSerializedDataVersion"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Ljava/beans/PropertyChangeSupport;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "sourceBean"    # Ljava/lang/Object;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;-><init>(Ljava/beans/PropertyChangeSupport-IA;)V

    iput-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    .line 90
    if-eqz p1, :cond_10

    .line 93
    iput-object p1, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    .line 94
    return-void

    .line 91
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o fire([Ljava/beans/PropertyChangeListener;Ljava/beans/PropertyChangeEvent;)V
    .registers 5
    .param p0, "listeners"    # [Ljava/beans/PropertyChangeListener;
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    .line 333
    if-eqz p0, :cond_e

    .line 334
    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_e

    aget-object v2, p0, v1

    .line 335
    .local v2, "listener":Ljava/beans/PropertyChangeListener;
    invoke-interface {v2, p1}, Ljava/beans/PropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 334
    .end local v2    # "listener":Ljava/beans/PropertyChangeListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 338
    :cond_e
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 13
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;-><init>(Ljava/beans/PropertyChangeSupport-IA;)V

    iput-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    .line 461
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 464
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v2, "children"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    .line 465
    .local v2, "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    const-string v3, "source"

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    .line 466
    const-string v3, "propertyChangeSupportSerializedDataVersion"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    .line 469
    :goto_22
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .local v4, "listenerOrNull":Ljava/lang/Object;
    if-eqz v3, :cond_32

    .line 470
    iget-object v3, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    move-object v5, v4

    check-cast v5, Ljava/beans/PropertyChangeListener;

    invoke-virtual {v3, v1, v5}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->add(Ljava/lang/String;Ljava/util/EventListener;)V

    goto :goto_22

    .line 472
    :cond_32
    if-eqz v2, :cond_67

    .line 473
    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 474
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v5}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_54
    if-ge v7, v6, :cond_66

    aget-object v8, v5, v7

    .line 475
    .local v8, "listener":Ljava/beans/PropertyChangeListener;
    iget-object v9, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->add(Ljava/lang/String;Ljava/util/EventListener;)V

    .line 474
    .end local v8    # "listener":Ljava/beans/PropertyChangeListener;
    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    .line 477
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    :cond_66
    goto :goto_3c

    .line 479
    :cond_67
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 12
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    const/4 v1, 0x0

    .line 427
    .local v1, "listeners":[Ljava/beans/PropertyChangeListener;
    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    monitor-enter v2

    .line 428
    :try_start_5
    iget-object v3, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v3}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->getEntries()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 429
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/beans/PropertyChangeListener;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 430
    .local v6, "property":Ljava/lang/String;
    if-nez v6, :cond_2c

    .line 431
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/beans/PropertyChangeListener;

    move-object v1, v5

    .end local v1    # "listeners":[Ljava/beans/PropertyChangeListener;
    .local v5, "listeners":[Ljava/beans/PropertyChangeListener;
    goto :goto_49

    .line 433
    .end local v5    # "listeners":[Ljava/beans/PropertyChangeListener;
    .restart local v1    # "listeners":[Ljava/beans/PropertyChangeListener;
    :cond_2c
    if-nez v0, :cond_34

    .line 434
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    move-object v0, v7

    .line 436
    :cond_34
    new-instance v7, Ljava/beans/PropertyChangeSupport;

    iget-object v8, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    invoke-direct {v7, v8}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    .line 437
    .local v7, "pcs":Ljava/beans/PropertyChangeSupport;
    iget-object v8, v7, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/beans/PropertyChangeListener;

    invoke-virtual {v8, v5, v9}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->set(Ljava/lang/String;[Ljava/util/EventListener;)V

    .line 438
    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/beans/PropertyChangeListener;>;"
    .end local v6    # "property":Ljava/lang/String;
    .end local v7    # "pcs":Ljava/beans/PropertyChangeSupport;
    :goto_49
    goto :goto_f

    .line 441
    :cond_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_7a

    .line 442
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v2

    .line 443
    .local v2, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v3, "children"

    invoke-virtual {v2, v3, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    const-string v3, "source"

    iget-object v4, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    const-string v3, "propertyChangeSupportSerializedDataVersion"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 446
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 448
    if-eqz v1, :cond_76

    .line 449
    array-length v3, v1

    const/4 v4, 0x0

    :goto_68
    if-ge v4, v3, :cond_76

    aget-object v6, v1, v4

    .line 450
    .local v6, "l":Ljava/beans/PropertyChangeListener;
    instance-of v7, v6, Ljava/io/Serializable;

    if-eqz v7, :cond_73

    .line 451
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 449
    .end local v6    # "l":Ljava/beans/PropertyChangeListener;
    :cond_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 455
    :cond_76
    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 456
    return-void

    .line 441
    .end local v2    # "fields":Ljava/io/ObjectOutputStream$PutField;
    :catchall_7a
    move-exception v3

    :try_start_7b
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v3
.end method


# virtual methods
.method public whitelist test-api addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 5
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    .line 107
    if-nez p1, :cond_3

    .line 108
    return-void

    .line 110
    :cond_3
    instance-of v0, p1, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v0, :cond_18

    .line 111
    move-object v0, p1

    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    .line 114
    .local v0, "proxy":Ljava/beans/PropertyChangeListenerProxy;
    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v2

    check-cast v2, Ljava/beans/PropertyChangeListener;

    .line 114
    invoke-virtual {p0, v1, v2}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    .line 116
    .end local v0    # "proxy":Ljava/beans/PropertyChangeListenerProxy;
    goto :goto_1e

    .line 117
    :cond_18
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->add(Ljava/lang/String;Ljava/util/EventListener;)V

    .line 119
    :goto_1e
    return-void
.end method

.method public whitelist test-api addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/beans/PropertyChangeListener;

    .line 198
    if-eqz p2, :cond_13

    if-nez p1, :cond_5

    goto :goto_13

    .line 201
    :cond_5
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->extract(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    move-result-object p2

    .line 202
    if-eqz p2, :cond_12

    .line 203
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->add(Ljava/lang/String;Ljava/util/EventListener;)V

    .line 205
    :cond_12
    return-void

    .line 199
    :cond_13
    :goto_13
    return-void
.end method

.method public whitelist test-api fireIndexedPropertyChange(Ljava/lang/String;III)V
    .registers 7
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "oldValue"    # I
    .param p4, "newValue"    # I

    .line 379
    if-eq p3, p4, :cond_d

    .line 380
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/beans/PropertyChangeSupport;->fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 382
    :cond_d
    return-void
.end method

.method public whitelist test-api fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 12
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    .line 357
    if-eqz p3, :cond_10

    if-eqz p4, :cond_10

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_10

    :cond_b
    move-object v3, p1

    move v6, p2

    move-object v4, p3

    move-object v5, p4

    goto :goto_1e

    .line 358
    :cond_10
    :goto_10
    new-instance v1, Ljava/beans/IndexedPropertyChangeEvent;

    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    move-object v3, p1

    move v6, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "propertyName":Ljava/lang/String;
    .end local p2    # "index":I
    .end local p3    # "oldValue":Ljava/lang/Object;
    .end local p4    # "newValue":Ljava/lang/Object;
    .local v3, "propertyName":Ljava/lang/String;
    .local v4, "oldValue":Ljava/lang/Object;
    .local v5, "newValue":Ljava/lang/Object;
    .local v6, "index":I
    invoke-direct/range {v1 .. v6}, Ljava/beans/IndexedPropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 360
    :goto_1e
    return-void
.end method

.method public whitelist test-api fireIndexedPropertyChange(Ljava/lang/String;IZZ)V
    .registers 7
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "oldValue"    # Z
    .param p4, "newValue"    # Z

    .line 401
    if-eq p3, p4, :cond_d

    .line 402
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/beans/PropertyChangeSupport;->fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 404
    :cond_d
    return-void
.end method

.method public whitelist test-api firePropertyChange(Ljava/beans/PropertyChangeEvent;)V
    .registers 7
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    .line 317
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    .line 318
    .local v0, "oldValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    .line 319
    .local v1, "newValue":Ljava/lang/Object;
    if-eqz v0, :cond_12

    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 320
    :cond_12
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->get(Ljava/lang/String;)[Ljava/util/EventListener;

    move-result-object v3

    check-cast v3, [Ljava/beans/PropertyChangeListener;

    .line 323
    .local v3, "common":[Ljava/beans/PropertyChangeListener;
    if-eqz v2, :cond_2a

    .line 324
    iget-object v4, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v4, v2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->get(Ljava/lang/String;)[Ljava/util/EventListener;

    move-result-object v4

    check-cast v4, [Ljava/beans/PropertyChangeListener;

    goto :goto_2b

    .line 325
    :cond_2a
    nop

    :goto_2b
    nop

    .line 327
    .local v4, "named":[Ljava/beans/PropertyChangeListener;
    invoke-static {v3, p1}, Ljava/beans/PropertyChangeSupport;->fire([Ljava/beans/PropertyChangeListener;Ljava/beans/PropertyChangeEvent;)V

    .line 328
    invoke-static {v4, p1}, Ljava/beans/PropertyChangeSupport;->fire([Ljava/beans/PropertyChangeListener;Ljava/beans/PropertyChangeEvent;)V

    .line 330
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "common":[Ljava/beans/PropertyChangeListener;
    .end local v4    # "named":[Ljava/beans/PropertyChangeListener;
    :cond_32
    return-void
.end method

.method public whitelist test-api firePropertyChange(Ljava/lang/String;II)V
    .registers 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .line 282
    if-eq p2, p3, :cond_d

    .line 283
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    :cond_d
    return-void
.end method

.method public whitelist test-api firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .line 262
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 263
    :cond_a
    new-instance v0, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2, p3}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 265
    :cond_14
    return-void
.end method

.method public whitelist test-api firePropertyChange(Ljava/lang/String;ZZ)V
    .registers 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "oldValue"    # Z
    .param p3, "newValue"    # Z

    .line 302
    if-eq p2, p3, :cond_d

    .line 303
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    :cond_d
    return-void
.end method

.method public whitelist test-api getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;
    .registers 2

    .line 179
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->getListeners()[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Ljava/beans/PropertyChangeListener;

    return-object v0
.end method

.method public whitelist test-api getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 244
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->getListeners(Ljava/lang/String;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Ljava/beans/PropertyChangeListener;

    return-object v0
.end method

.method public whitelist test-api hasListeners(Ljava/lang/String;)Z
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 415
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->hasListeners(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 5
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    .line 133
    if-nez p1, :cond_3

    .line 134
    return-void

    .line 136
    :cond_3
    instance-of v0, p1, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v0, :cond_18

    .line 137
    move-object v0, p1

    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    .line 140
    .local v0, "proxy":Ljava/beans/PropertyChangeListenerProxy;
    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v2

    check-cast v2, Ljava/beans/PropertyChangeListener;

    .line 140
    invoke-virtual {p0, v1, v2}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    .line 142
    .end local v0    # "proxy":Ljava/beans/PropertyChangeListenerProxy;
    goto :goto_1e

    .line 143
    :cond_18
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->remove(Ljava/lang/String;Ljava/util/EventListener;)V

    .line 145
    :goto_1e
    return-void
.end method

.method public whitelist test-api removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/beans/PropertyChangeListener;

    .line 223
    if-eqz p2, :cond_13

    if-nez p1, :cond_5

    goto :goto_13

    .line 226
    :cond_5
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->extract(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    move-result-object p2

    .line 227
    if-eqz p2, :cond_12

    .line 228
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->remove(Ljava/lang/String;Ljava/util/EventListener;)V

    .line 230
    :cond_12
    return-void

    .line 224
    :cond_13
    :goto_13
    return-void
.end method
