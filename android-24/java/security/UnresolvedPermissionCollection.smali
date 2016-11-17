.class final Ljava/security/UnresolvedPermissionCollection;
.super Ljava/security/PermissionCollection;
.source "UnresolvedPermissionCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x6396d132a67b4c70L


# instance fields
.field private transient perms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/UnresolvedPermission;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 147
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@3
    .line 148
    new-instance v1, Ljava/io/ObjectStreamField;

    #@5
    const-string/jumbo v2, "permissions"

    #@8
    const-class v3, Ljava/util/Hashtable;

    #@a
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v1, v0, v2

    #@10
    .line 147
    sput-object v0, Ljava/security/UnresolvedPermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@12
    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    #@3
    .line 64
    new-instance v0, Ljava/util/HashMap;

    #@5
    const/16 v1, 0xb

    #@7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@a
    iput-object v0, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    #@c
    .line 63
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@3
    move-result-object v2

    #@4
    .line 201
    .local v2, "gfields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v7, "permissions"

    #@7
    const/4 v8, 0x0

    #@8
    invoke-virtual {v2, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v4

    #@c
    check-cast v4, Ljava/util/Hashtable;

    #@e
    .line 202
    .local v4, "permissions":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    new-instance v7, Ljava/util/HashMap;

    #@10
    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    #@13
    move-result v8

    #@14
    mul-int/lit8 v8, v8, 0x2

    #@16
    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    #@19
    iput-object v7, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    #@1b
    .line 205
    invoke-virtual {v4}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    #@1e
    move-result-object v5

    #@1f
    .line 206
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v1

    #@23
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v7

    #@27
    if-eqz v7, :cond_0

    #@29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Ljava/util/Map$Entry;

    #@2f
    .line 208
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@32
    move-result-object v6

    #@33
    check-cast v6, Ljava/util/Vector;

    #@35
    .line 209
    .local v6, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@37
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    #@3a
    move-result v7

    #@3b
    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@3e
    .line 210
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@41
    .line 213
    iget-object v8, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    #@43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@46
    move-result-object v7

    #@47
    check-cast v7, Ljava/lang/String;

    #@49
    invoke-interface {v8, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    goto :goto_0

    #@4d
    .line 193
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .end local v6    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    new-instance v3, Ljava/util/Hashtable;

    #@2
    iget-object v7, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    #@4
    invoke-interface {v7}, Ljava/util/Map;->size()I

    #@7
    move-result v7

    #@8
    mul-int/lit8 v7, v7, 0x2

    #@a
    invoke-direct {v3, v7}, Ljava/util/Hashtable;-><init>(I)V

    #@d
    .line 167
    .local v3, "permissions":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    monitor-enter p0

    #@e
    .line 168
    :try_start_0
    iget-object v7, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    #@10
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@13
    move-result-object v5

    #@14
    .line 169
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_0

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/util/Map$Entry;

    #@24
    .line 171
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Ljava/util/List;

    #@2a
    .line 172
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    new-instance v6, Ljava/util/Vector;

    #@2c
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@2f
    move-result v7

    #@30
    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    #@33
    .line 173
    .local v6, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 174
    :try_start_1
    invoke-virtual {v6, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@37
    :try_start_2
    monitor-exit v2

    #@38
    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3b
    move-result-object v7

    #@3c
    check-cast v7, Ljava/lang/String;

    #@3e
    invoke-virtual {v3, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 167
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;>;"
    .end local v6    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    :catchall_0
    move-exception v7

    #@43
    monitor-exit p0

    #@44
    throw v7

    #@45
    .line 173
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;"
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .restart local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;>;"
    .restart local v6    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    :catchall_1
    move-exception v7

    #@46
    :try_start_3
    monitor-exit v2

    #@47
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .end local v6    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    :cond_0
    monitor-exit p0

    #@49
    .line 183
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@4c
    move-result-object v4

    #@4d
    .line 184
    .local v4, "pfields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v7, "permissions"

    #@50
    invoke-virtual {v4, v7, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@53
    .line 185
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@56
    .line 159
    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .locals 5
    .param p1, "permission"    # Ljava/security/Permission;

    #@0
    .prologue
    .line 76
    instance-of v2, p1, Ljava/security/UnresolvedPermission;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "invalid permission: "

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v2

    #@1e
    :cond_0
    move-object v0, p1

    #@1f
    .line 79
    nop

    #@20
    nop

    #@21
    .line 82
    .local v0, "up":Ljava/security/UnresolvedPermission;
    monitor-enter p0

    #@22
    .line 83
    :try_start_0
    iget-object v2, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    #@24
    invoke-virtual {v0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Ljava/util/List;

    #@2e
    .line 84
    .local v1, "v":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    if-nez v1, :cond_1

    #@30
    .line 85
    new-instance v1, Ljava/util/ArrayList;

    #@32
    .end local v1    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@35
    .line 86
    .restart local v1    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    iget-object v2, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    #@37
    invoke-virtual {v0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    :cond_1
    monitor-exit p0

    #@3f
    .line 89
    monitor-enter v1

    #@40
    .line 90
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@43
    monitor-exit v1

    #@44
    .line 74
    return-void

    #@45
    .line 82
    .end local v1    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    :catchall_0
    move-exception v2

    #@46
    monitor-exit p0

    #@47
    throw v2

    #@48
    .line 89
    .restart local v1    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    :catchall_1
    move-exception v2

    #@49
    monitor-exit v1

    #@4a
    throw v2
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 122
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 125
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Ljava/security/Permission;>;"
    monitor-enter p0

    #@6
    .line 126
    :try_start_0
    iget-object v3, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    #@8
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/util/List;

    #@1c
    .line 127
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 128
    :try_start_1
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@20
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 125
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@23
    monitor-exit p0

    #@24
    throw v3

    #@25
    .line 127
    .restart local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    #@26
    :try_start_3
    monitor-exit v0

    #@27
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@28
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    :cond_0
    monitor-exit p0

    #@29
    .line 133
    invoke-static {v2}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@2c
    move-result-object v3

    #@2d
    return-object v3
.end method

.method getUnresolvedPermissions(Ljava/security/Permission;)Ljava/util/List;
    .locals 2
    .param p1, "p"    # Ljava/security/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Permission;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/UnresolvedPermission;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 99
    monitor-enter p0

    #@1
    .line 100
    :try_start_0
    iget-object v0, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    #@3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    return-object v0

    #@13
    .line 99
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 1
    .param p1, "permission"    # Ljava/security/Permission;

    #@0
    .prologue
    .line 110
    const/4 v0, 0x0

    #@1
    return v0
.end method
