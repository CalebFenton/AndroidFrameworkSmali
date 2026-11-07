.class final Ljava/security/UnresolvedPermissionCollection;
.super Ljava/security/PermissionCollection;
.source "UnresolvedPermissionCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = -0x6396d132a67b4c70L


# instance fields
.field private transient blacklist perms:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/UnresolvedPermission;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 151
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "permissions"

    const-class v3, Ljava/util/Hashtable;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ljava/security/UnresolvedPermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 11
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 202
    .local v0, "gfields":Ljava/io/ObjectInputStream$GetField;
    nop

    .line 204
    const-string v1, "permissions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 205
    .local v1, "permissions":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v2, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/concurrent/ConcurrentHashMap;

    .line 208
    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 209
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 211
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Vector;

    .line 212
    .local v5, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    iget-object v7, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    .end local v5    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    goto :goto_23

    .line 217
    :cond_46
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 9
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/Hashtable;

    iget-object v1, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/concurrent/ConcurrentHashMap;

    .line 168
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 171
    .local v0, "permissions":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    iget-object v1, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 172
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 174
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 175
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5, v4}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 178
    .local v5, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;"
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .end local v5    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    goto :goto_17

    .line 182
    :cond_38
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v2

    .line 183
    .local v2, "pfields":Ljava/io/ObjectOutputStream$PutField;
    const-string v3, "permissions"

    invoke-virtual {v2, v3, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 185
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/security/Permission;)V
    .registers 6
    .param p1, "permission"    # Ljava/security/Permission;

    .line 78
    instance-of v0, p1, Ljava/security/UnresolvedPermission;

    if-eqz v0, :cond_16

    .line 81
    move-object v0, p1

    check-cast v0, Ljava/security/UnresolvedPermission;

    .line 85
    .local v0, "up":Ljava/security/UnresolvedPermission;
    iget-object v1, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/security/UnresolvedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/security/UnresolvedPermissionCollection$1;

    invoke-direct {v3, p0, v0}, Ljava/security/UnresolvedPermissionCollection$1;-><init>(Ljava/security/UnresolvedPermissionCollection;Ljava/security/UnresolvedPermission;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 102
    return-void

    .line 79
    .end local v0    # "up":Ljava/security/UnresolvedPermission;
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api elements()Ljava/util/Enumeration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Ljava/security/Permission;>;"
    iget-object v1, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 134
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    .end local v2    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    goto :goto_f

    .line 137
    :cond_1f
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method blacklist getUnresolvedPermissions(Ljava/security/Permission;)Ljava/util/List;
    .registers 4
    .param p1, "p"    # Ljava/security/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Permission;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/UnresolvedPermission;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api implies(Ljava/security/Permission;)Z
    .registers 3
    .param p1, "permission"    # Ljava/security/Permission;

    .line 118
    const/4 v0, 0x0

    return v0
.end method
