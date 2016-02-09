.class public Lorg/apache/harmony/security/SystemScope;
.super Ljava/security/IdentityScope;
.source "SystemScope.java"


# static fields
.field private static final serialVersionUID:J = -0x42c1915b3568f46fL


# instance fields
.field private keys:Ljava/util/Hashtable;

.field private names:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/security/IdentityScope;-><init>()V

    #@3
    .line 44
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    #@a
    .line 47
    new-instance v0, Ljava/util/Hashtable;

    #@c
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@f
    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    #@11
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/security/IdentityScope;-><init>(Ljava/lang/String;)V

    #@3
    .line 44
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    #@a
    .line 47
    new-instance v0, Ljava/util/Hashtable;

    #@c
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@f
    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    #@11
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/security/IdentityScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/security/IdentityScope;-><init>(Ljava/lang/String;Ljava/security/IdentityScope;)V

    #@3
    .line 44
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    #@a
    .line 47
    new-instance v0, Ljava/util/Hashtable;

    #@c
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@f
    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    #@11
    .line 66
    return-void
.end method


# virtual methods
.method public declared-synchronized addIdentity(Ljava/security/Identity;)V
    .locals 5
    .param p1, "identity"    # Ljava/security/Identity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 101
    if-nez p1, :cond_0

    #@3
    .line 102
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "identity == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v2

    #@d
    monitor-exit p0

    #@e
    throw v2

    #@f
    .line 105
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/security/Identity;->getName()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 106
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    #@15
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 107
    new-instance v2, Ljava/security/KeyManagementException;

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "name \'"

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    const-string/jumbo v4, "\' is already used"

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v2

    #@3c
    .line 110
    :cond_1
    invoke-virtual {p1}, Ljava/security/Identity;->getPublicKey()Ljava/security/PublicKey;

    #@3f
    move-result-object v0

    #@40
    .line 111
    .local v0, "key":Ljava/security/PublicKey;
    if-eqz v0, :cond_2

    #@42
    iget-object v2, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    #@44
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_2

    #@4a
    .line 112
    new-instance v2, Ljava/security/KeyManagementException;

    #@4c
    new-instance v3, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v4, "key \'"

    #@54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    const-string/jumbo v4, "\' is already used"

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v2

    #@6b
    .line 115
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    #@6d
    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    .line 116
    if-eqz v0, :cond_3

    #@72
    .line 117
    iget-object v2, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    #@74
    invoke-virtual {v2, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    :cond_3
    monitor-exit p0

    #@78
    .line 100
    return-void
.end method

.method public declared-synchronized getIdentity(Ljava/lang/String;)Ljava/security/Identity;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 81
    if-nez p1, :cond_0

    #@3
    .line 82
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "name == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 84
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    #@11
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/security/Identity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit p0

    #@18
    return-object v0
.end method

.method public declared-synchronized getIdentity(Ljava/security/PublicKey;)Ljava/security/Identity;
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 91
    if-nez p1, :cond_0

    #@4
    monitor-exit p0

    #@5
    .line 92
    return-object v0

    #@6
    .line 94
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/security/Identity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    return-object v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public identities()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public declared-synchronized removeIdentity(Ljava/security/Identity;)V
    .locals 5
    .param p1, "identity"    # Ljava/security/Identity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 128
    if-nez p1, :cond_0

    #@3
    .line 129
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v4, "identity == null"

    #@8
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v3

    #@d
    monitor-exit p0

    #@e
    throw v3

    #@f
    .line 132
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/security/Identity;->getName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 133
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_1

    #@15
    .line 134
    new-instance v3, Ljava/lang/NullPointerException;

    #@17
    const-string/jumbo v4, "name == null"

    #@1a
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v3

    #@1e
    .line 137
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    #@20
    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    .line 138
    .local v0, "contains":Z
    iget-object v3, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    #@26
    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 140
    invoke-virtual {p1}, Ljava/security/Identity;->getPublicKey()Ljava/security/PublicKey;

    #@2c
    move-result-object v1

    #@2d
    .line 142
    .local v1, "key":Ljava/security/PublicKey;
    if-eqz v1, :cond_2

    #@2f
    .line 143
    if-nez v0, :cond_3

    #@31
    iget-object v3, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    #@33
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    .line 144
    .end local v0    # "contains":Z
    :goto_0
    iget-object v3, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    #@39
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 147
    :cond_2
    if-nez v0, :cond_4

    #@3e
    .line 148
    new-instance v3, Ljava/security/KeyManagementException;

    #@40
    const-string/jumbo v4, "identity not found"

    #@43
    invoke-direct {v3, v4}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    #@46
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .line 143
    .restart local v0    # "contains":Z
    :cond_3
    const/4 v0, 0x1

    #@48
    .local v0, "contains":Z
    goto :goto_0

    #@49
    .end local v0    # "contains":Z
    :cond_4
    monitor-exit p0

    #@4a
    .line 125
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
