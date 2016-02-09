.class public Ljava/beans/PropertyChangeSupport;
.super Ljava/lang/Object;
.source "PropertyChangeSupport.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x58d5d264574860bbL


# instance fields
.field private transient listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/beans/PropertyChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private transient sourceBean:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 45
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@3
    .line 46
    new-instance v1, Ljava/io/ObjectStreamField;

    #@5
    const-string/jumbo v2, "source"

    #@8
    const-class v3, Ljava/lang/Object;

    #@a
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v1, v0, v2

    #@10
    .line 47
    new-instance v1, Ljava/io/ObjectStreamField;

    #@12
    const-string/jumbo v2, "children"

    #@15
    const-class v3, Ljava/lang/Object;

    #@17
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1a
    const/4 v2, 0x1

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 48
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
    .line 45
    sput-object v0, Ljava/beans/PropertyChangeSupport;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@2c
    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "sourceBean"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@8
    .line 58
    iput-object v0, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@a
    .line 68
    if-nez p1, :cond_0

    #@c
    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    #@e
    const-string/jumbo v1, "sourceBean == null"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 71
    :cond_0
    iput-object p1, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    #@17
    .line 67
    return-void
.end method

.method private equals(Ljava/lang/String;Ljava/util/EventListener;Ljava/util/EventListener;)Z
    .locals 5
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "a"    # Ljava/util/EventListener;
    .param p3, "b"    # Ljava/util/EventListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 140
    :goto_0
    instance-of v4, p3, Ljava/beans/PropertyChangeListenerProxy;

    #@3
    if-eqz v4, :cond_3

    #@5
    move-object v2, p3

    #@6
    .line 141
    check-cast v2, Ljava/beans/PropertyChangeListenerProxy;

    #@8
    .line 142
    .local v2, "bProxy":Ljava/beans/PropertyChangeListenerProxy;
    invoke-virtual {v2}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 143
    .local v1, "bName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    #@f
    move-result-object p3

    #@10
    .line 144
    if-nez p1, :cond_1

    #@12
    .line 145
    instance-of v4, p2, Ljava/beans/PropertyChangeListenerProxy;

    #@14
    if-nez v4, :cond_0

    #@16
    .line 146
    return v3

    #@17
    :cond_0
    move-object v0, p2

    #@18
    .line 148
    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    #@1a
    .line 149
    .local v0, "aProxy":Ljava/beans/PropertyChangeListenerProxy;
    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    #@1d
    move-result-object p1

    #@1e
    .line 150
    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    #@21
    move-result-object p2

    #@22
    .line 152
    .end local v0    # "aProxy":Ljava/beans/PropertyChangeListenerProxy;
    .end local p1    # "aName":Ljava/lang/String;
    :cond_1
    invoke-static {p1, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v4

    #@26
    if-nez v4, :cond_2

    #@28
    .line 153
    return v3

    #@29
    .line 155
    :cond_2
    const/4 p1, 0x0

    #@2a
    .local p1, "aName":Ljava/lang/String;
    goto :goto_0

    #@2b
    .line 157
    .end local v1    # "bName":Ljava/lang/String;
    .end local v2    # "bProxy":Ljava/beans/PropertyChangeListenerProxy;
    .end local p1    # "aName":Ljava/lang/String;
    :cond_3
    if-nez p1, :cond_4

    #@2d
    invoke-static {p2, p3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@30
    move-result v3

    #@31
    :cond_4
    return v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 353
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@4
    move-result-object v6

    #@5
    .line 354
    .local v6, "readFields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v7, "source"

    #@8
    invoke-virtual {v6, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v7

    #@c
    iput-object v7, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    #@e
    .line 355
    new-instance v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@10
    invoke-direct {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@13
    iput-object v7, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@15
    .line 358
    const-string/jumbo v7, "children"

    #@18
    invoke-virtual {v6, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/util/Map;

    #@1e
    .line 359
    .local v0, "children":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    if-eqz v0, :cond_1

    #@20
    .line 360
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@23
    move-result-object v7

    #@24
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v2

    #@28
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v7

    #@2c
    if-eqz v7, :cond_1

    #@2e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Ljava/util/Map$Entry;

    #@34
    .line 361
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@37
    move-result-object v7

    #@38
    check-cast v7, Ljava/beans/PropertyChangeSupport;

    #@3a
    iget-object v7, v7, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@3c
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3f
    move-result-object v5

    #@40
    .local v5, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v7

    #@44
    if-eqz v7, :cond_0

    #@46
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v4

    #@4a
    check-cast v4, Ljava/beans/PropertyChangeListener;

    #@4c
    .line 362
    .local v4, "p":Ljava/beans/PropertyChangeListener;
    iget-object v8, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@4e
    new-instance v9, Ljava/beans/PropertyChangeListenerProxy;

    #@50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@53
    move-result-object v7

    #@54
    check-cast v7, Ljava/lang/String;

    #@56
    invoke-direct {v9, v7, v4}, Ljava/beans/PropertyChangeListenerProxy;-><init>(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    #@59
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5c
    goto :goto_0

    #@5d
    .line 368
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "p":Ljava/beans/PropertyChangeListener;
    .end local v5    # "p$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@60
    move-result-object v3

    #@61
    check-cast v3, Ljava/beans/PropertyChangeListener;

    #@63
    .local v3, "listener":Ljava/beans/PropertyChangeListener;
    if-eqz v3, :cond_2

    #@65
    .line 369
    iget-object v7, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@67
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6a
    goto :goto_1

    #@6b
    .line 352
    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 10
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 322
    new-instance v2, Ljava/util/Hashtable;

    #@3
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@6
    .line 323
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    iget-object v7, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@8
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v4

    #@c
    .local v4, "p$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v7

    #@10
    if-eqz v7, :cond_2

    #@12
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Ljava/beans/PropertyChangeListener;

    #@18
    .line 324
    .local v3, "p":Ljava/beans/PropertyChangeListener;
    instance-of v7, v3, Ljava/beans/PropertyChangeListenerProxy;

    #@1a
    if-eqz v7, :cond_0

    #@1c
    instance-of v7, v3, Ljava/io/Serializable;

    #@1e
    if-nez v7, :cond_0

    #@20
    move-object v5, v3

    #@21
    .line 325
    check-cast v5, Ljava/beans/PropertyChangeListenerProxy;

    #@23
    .line 326
    .local v5, "proxy":Ljava/beans/PropertyChangeListenerProxy;
    invoke-virtual {v5}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Ljava/beans/PropertyChangeListener;

    #@29
    .line 327
    .local v1, "listener":Ljava/beans/PropertyChangeListener;
    instance-of v7, v1, Ljava/io/Serializable;

    #@2b
    if-eqz v7, :cond_0

    #@2d
    .line 328
    invoke-virtual {v5}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    #@30
    move-result-object v7

    #@31
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Ljava/beans/PropertyChangeSupport;

    #@37
    .line 329
    .local v0, "list":Ljava/beans/PropertyChangeSupport;
    if-nez v0, :cond_1

    #@39
    .line 330
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    #@3b
    .end local v0    # "list":Ljava/beans/PropertyChangeSupport;
    iget-object v7, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    #@3d
    invoke-direct {v0, v7}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    #@40
    .line 331
    .restart local v0    # "list":Ljava/beans/PropertyChangeSupport;
    invoke-virtual {v5}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    #@43
    move-result-object v7

    #@44
    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 333
    :cond_1
    iget-object v7, v0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@49
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4c
    goto :goto_0

    #@4d
    .line 338
    .end local v0    # "list":Ljava/beans/PropertyChangeSupport;
    .end local v1    # "listener":Ljava/beans/PropertyChangeListener;
    .end local v3    # "p":Ljava/beans/PropertyChangeListener;
    .end local v5    # "proxy":Ljava/beans/PropertyChangeListenerProxy;
    :cond_2
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@50
    move-result-object v6

    #@51
    .line 339
    .local v6, "putFields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v7, "source"

    #@54
    iget-object v8, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    #@56
    invoke-virtual {v6, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@59
    .line 340
    const-string/jumbo v7, "children"

    #@5c
    invoke-virtual {v6, v7, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@5f
    .line 341
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@62
    .line 343
    iget-object v7, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@64
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object v4

    #@68
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@6b
    move-result v7

    #@6c
    if-eqz v7, :cond_4

    #@6e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object v3

    #@72
    check-cast v3, Ljava/beans/PropertyChangeListener;

    #@74
    .line 344
    .restart local v3    # "p":Ljava/beans/PropertyChangeListener;
    instance-of v7, v3, Ljava/io/Serializable;

    #@76
    if-eqz v7, :cond_3

    #@78
    .line 345
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@7b
    goto :goto_1

    #@7c
    .line 348
    .end local v3    # "p":Ljava/beans/PropertyChangeListener;
    :cond_4
    invoke-virtual {p1, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@7f
    .line 317
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    #@0
    .prologue
    .line 304
    if-eqz p1, :cond_0

    #@2
    .line 305
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7
    .line 303
    :cond_0
    return-void
.end method

.method public addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/beans/PropertyChangeListener;

    #@0
    .prologue
    .line 167
    if-eqz p2, :cond_0

    #@2
    if-eqz p1, :cond_0

    #@4
    .line 168
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@6
    new-instance v1, Ljava/beans/PropertyChangeListenerProxy;

    #@8
    invoke-direct {v1, p1, p2}, Ljava/beans/PropertyChangeListenerProxy;-><init>(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    #@b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e
    .line 166
    :cond_0
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
    .line 258
    if-eq p3, p4, :cond_0

    #@2
    .line 260
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    .line 259
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/beans/PropertyChangeSupport;->fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 257
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
    .line 108
    new-instance v0, Ljava/beans/IndexedPropertyChangeEvent;

    #@2
    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    #@4
    move-object v2, p1

    #@5
    move-object v3, p3

    #@6
    move-object v4, p4

    #@7
    move v5, p2

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/beans/IndexedPropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    #@b
    invoke-virtual {p0, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    #@e
    .line 107
    return-void
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;IZZ)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "oldValue"    # Z
    .param p4, "newValue"    # Z

    #@0
    .prologue
    .line 220
    if-eq p3, p4, :cond_0

    #@2
    .line 222
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v0

    #@6
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9
    move-result-object v1

    #@a
    .line 221
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/beans/PropertyChangeSupport;->fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 219
    :cond_0
    return-void
.end method

.method public firePropertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 7
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    #@0
    .prologue
    .line 379
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 380
    .local v4, "propertyName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    .line 381
    .local v1, "oldValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    .line 382
    .local v0, "newValue":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@e
    if-eqz v1, :cond_0

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_0

    #@16
    .line 383
    return-void

    #@17
    .line 387
    :cond_0
    iget-object v6, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@19
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v3

    #@1d
    .local v3, "p$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_3

    #@23
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Ljava/beans/PropertyChangeListener;

    #@29
    .line 389
    .local v2, "p":Ljava/beans/PropertyChangeListener;
    :goto_1
    instance-of v6, v2, Ljava/beans/PropertyChangeListenerProxy;

    #@2b
    if-eqz v6, :cond_2

    #@2d
    move-object v5, v2

    #@2e
    .line 390
    check-cast v5, Ljava/beans/PropertyChangeListenerProxy;

    #@30
    .line 391
    .local v5, "proxy":Ljava/beans/PropertyChangeListenerProxy;
    invoke-virtual {v5}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    invoke-static {v6, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_1

    #@3a
    .line 394
    invoke-virtual {v5}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    #@3d
    move-result-object v2

    #@3e
    .end local v2    # "p":Ljava/beans/PropertyChangeListener;
    check-cast v2, Ljava/beans/PropertyChangeListener;

    #@40
    .restart local v2    # "p":Ljava/beans/PropertyChangeListener;
    goto :goto_1

    #@41
    .line 396
    .end local v5    # "proxy":Ljava/beans/PropertyChangeListenerProxy;
    :cond_2
    invoke-interface {v2, p1}, Ljava/beans/PropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    #@44
    goto :goto_0

    #@45
    .line 378
    .end local v2    # "p":Ljava/beans/PropertyChangeListener;
    :cond_3
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;II)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    #@0
    .prologue
    .line 239
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, p1, v0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@b
    .line 238
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 88
    new-instance v0, Ljava/beans/PropertyChangeEvent;

    #@2
    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    #@4
    invoke-direct {v0, v1, p1, p2, p3}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@7
    invoke-virtual {p0, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    #@a
    .line 87
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "oldValue"    # Z
    .param p3, "newValue"    # Z

    #@0
    .prologue
    .line 201
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, p1, v0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@b
    .line 200
    return-void
.end method

.method public getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;
    .locals 2

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@2
    const/4 v1, 0x0

    #@3
    new-array v1, v1, [Ljava/beans/PropertyChangeListener;

    #@5
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Ljava/beans/PropertyChangeListener;

    #@b
    return-object v0
.end method

.method public getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 178
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 179
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    iget-object v3, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/beans/PropertyChangeListener;

    #@17
    .line 180
    .local v0, "p":Ljava/beans/PropertyChangeListener;
    instance-of v3, v0, Ljava/beans/PropertyChangeListenerProxy;

    #@19
    if-eqz v3, :cond_0

    #@1b
    move-object v3, v0

    #@1c
    .line 181
    check-cast v3, Ljava/beans/PropertyChangeListenerProxy;

    #@1e
    invoke-virtual {v3}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 180
    invoke-static {p1, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    .line 182
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_0

    #@2c
    .line 185
    .end local v0    # "p":Ljava/beans/PropertyChangeListener;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@2f
    move-result v3

    #@30
    new-array v3, v3, [Ljava/beans/PropertyChangeListener;

    #@32
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, [Ljava/beans/PropertyChangeListener;

    #@38
    return-object v3
.end method

.method public hasListeners(Ljava/lang/String;)Z
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 274
    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_2

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/beans/PropertyChangeListener;

    #@12
    .line 275
    .local v0, "p":Ljava/beans/PropertyChangeListener;
    instance-of v2, v0, Ljava/beans/PropertyChangeListenerProxy;

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 276
    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    #@18
    .end local v0    # "p":Ljava/beans/PropertyChangeListener;
    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 275
    invoke-static {p1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 277
    :cond_1
    const/4 v2, 0x1

    #@23
    return v2

    #@24
    .line 280
    :cond_2
    const/4 v2, 0x0

    #@25
    return v2
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 3
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    #@0
    .prologue
    .line 290
    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/beans/PropertyChangeListener;

    #@12
    .line 291
    .local v0, "p":Ljava/beans/PropertyChangeListener;
    const/4 v2, 0x0

    #@13
    invoke-direct {p0, v2, p1, v0}, Ljava/beans/PropertyChangeSupport;->equals(Ljava/lang/String;Ljava/util/EventListener;Ljava/util/EventListener;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 292
    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@1b
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@1e
    .line 293
    return-void

    #@1f
    .line 289
    .end local v0    # "p":Ljava/beans/PropertyChangeListener;
    :cond_1
    return-void
.end method

.method public removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/beans/PropertyChangeListener;

    #@0
    .prologue
    .line 120
    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/beans/PropertyChangeListener;

    #@12
    .line 121
    .local v0, "p":Ljava/beans/PropertyChangeListener;
    invoke-direct {p0, p1, p2, v0}, Ljava/beans/PropertyChangeSupport;->equals(Ljava/lang/String;Ljava/util/EventListener;Ljava/util/EventListener;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 122
    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    #@1a
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@1d
    .line 123
    return-void

    #@1e
    .line 119
    .end local v0    # "p":Ljava/beans/PropertyChangeListener;
    :cond_1
    return-void
.end method
