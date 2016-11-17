.class public Lorg/apache/http/impl/client/BasicCredentialsProvider;
.super Ljava/lang/Object;
.source "BasicCredentialsProvider.java"

# interfaces
.implements Lorg/apache/http/client/CredentialsProvider;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final credMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/apache/http/auth/AuthScope;",
            "Lorg/apache/http/auth/Credentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/HashMap;

    #@a
    .line 65
    return-void
.end method

.method private static matchCredentials(Ljava/util/HashMap;Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;
    .locals 7
    .param p1, "authscope"    # Lorg/apache/http/auth/AuthScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lorg/apache/http/auth/AuthScope;",
            "Lorg/apache/http/auth/Credentials;",
            ">;",
            "Lorg/apache/http/auth/AuthScope;",
            ")",
            "Lorg/apache/http/auth/Credentials;"
        }
    .end annotation

    #@0
    .prologue
    .line 101
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v2

    #@4
    check-cast v2, Lorg/apache/http/auth/Credentials;

    #@6
    .line 102
    .local v2, "creds":Lorg/apache/http/auth/Credentials;
    if-nez v2, :cond_2

    #@8
    .line 105
    const/4 v1, -0x1

    #@9
    .line 106
    .local v1, "bestMatchFactor":I
    const/4 v0, 0x0

    #@a
    .line 107
    .local v0, "bestMatch":Lorg/apache/http/auth/AuthScope;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@d
    move-result-object v6

    #@e
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v4

    #@12
    .end local v0    # "bestMatch":Lorg/apache/http/auth/AuthScope;
    .local v4, "current$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_1

    #@18
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Lorg/apache/http/auth/AuthScope;

    #@1e
    .line 108
    .local v3, "current":Lorg/apache/http/auth/AuthScope;
    invoke-virtual {p1, v3}, Lorg/apache/http/auth/AuthScope;->match(Lorg/apache/http/auth/AuthScope;)I

    #@21
    move-result v5

    #@22
    .line 109
    .local v5, "factor":I
    if-le v5, v1, :cond_0

    #@24
    .line 110
    move v1, v5

    #@25
    .line 111
    move-object v0, v3

    #@26
    .local v0, "bestMatch":Lorg/apache/http/auth/AuthScope;
    goto :goto_0

    #@27
    .line 114
    .end local v0    # "bestMatch":Lorg/apache/http/auth/AuthScope;
    .end local v3    # "current":Lorg/apache/http/auth/AuthScope;
    .end local v5    # "factor":I
    :cond_1
    if-eqz v0, :cond_2

    #@29
    .line 115
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    .end local v2    # "creds":Lorg/apache/http/auth/Credentials;
    check-cast v2, Lorg/apache/http/auth/Credentials;

    #@2f
    .line 118
    .end local v1    # "bestMatchFactor":I
    .end local v4    # "current$iterator":Ljava/util/Iterator;
    .restart local v2    # "creds":Lorg/apache/http/auth/Credentials;
    :cond_2
    return-object v2
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 145
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/HashMap;

    #@3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 144
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;
    .locals 2
    .param p1, "authscope"    # Lorg/apache/http/auth/AuthScope;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 130
    if-nez p1, :cond_0

    #@3
    .line 131
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Authentication scope may not be null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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
    .line 133
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/HashMap;

    #@11
    invoke-static {v0, p1}, Lorg/apache/http/impl/client/BasicCredentialsProvider;->matchCredentials(Ljava/util/HashMap;Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result-object v0

    #@15
    monitor-exit p0

    #@16
    return-object v0
.end method

.method public declared-synchronized setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V
    .locals 2
    .param p1, "authscope"    # Lorg/apache/http/auth/AuthScope;
    .param p2, "credentials"    # Lorg/apache/http/auth/Credentials;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 83
    if-nez p1, :cond_0

    #@3
    .line 84
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Authentication scope may not be null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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
    .line 86
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/HashMap;

    #@11
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
