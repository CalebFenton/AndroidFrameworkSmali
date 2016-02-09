.class public final Lorg/apache/http/auth/AuthSchemeRegistry;
.super Ljava/lang/Object;
.source "AuthSchemeRegistry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final registeredSchemes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/auth/AuthSchemeFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/http/auth/AuthSchemeRegistry;->registeredSchemes:Ljava/util/Map;

    #@a
    .line 60
    return-void
.end method


# virtual methods
.method public declared-synchronized getAuthScheme(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 119
    if-nez p1, :cond_0

    #@3
    .line 120
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "Name may not be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v1

    #@d
    monitor-exit p0

    #@e
    throw v1

    #@f
    .line 122
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/http/auth/AuthSchemeRegistry;->registeredSchemes:Ljava/util/Map;

    #@11
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@13
    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lorg/apache/http/auth/AuthSchemeFactory;

    #@1d
    .line 123
    .local v0, "factory":Lorg/apache/http/auth/AuthSchemeFactory;
    if-eqz v0, :cond_1

    #@1f
    .line 124
    invoke-interface {v0, p2}, Lorg/apache/http/auth/AuthSchemeFactory;->newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    move-result-object v1

    #@23
    monitor-exit p0

    #@24
    return-object v1

    #@25
    .line 126
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    #@27
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v3, "Unsupported authentication scheme: "

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized getSchemeNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 137
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #@3
    iget-object v1, p0, Lorg/apache/http/auth/AuthSchemeRegistry;->registeredSchemes:Ljava/util/Map;

    #@5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    return-object v0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public declared-synchronized register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Lorg/apache/http/auth/AuthSchemeFactory;

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
    const-string/jumbo v1, "Name may not be null"

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
    if-nez p2, :cond_1

    #@11
    .line 87
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "Authentication scheme factory may not be null"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 89
    :cond_1
    iget-object v0, p0, Lorg/apache/http/auth/AuthSchemeRegistry;->registeredSchemes:Ljava/util/Map;

    #@1c
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit p0

    #@26
    .line 82
    return-void
.end method

.method public declared-synchronized setItems(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/auth/AuthSchemeFactory;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;>;"
    monitor-enter p0

    #@1
    .line 147
    if-nez p1, :cond_0

    #@3
    monitor-exit p0

    #@4
    .line 148
    return-void

    #@5
    .line 150
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/auth/AuthSchemeRegistry;->registeredSchemes:Ljava/util/Map;

    #@7
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@a
    .line 151
    iget-object v0, p0, Lorg/apache/http/auth/AuthSchemeRegistry;->registeredSchemes:Ljava/util/Map;

    #@c
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 146
    return-void

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public declared-synchronized unregister(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 99
    if-nez p1, :cond_0

    #@3
    .line 100
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Name may not be null"

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
    .line 102
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/auth/AuthSchemeRegistry;->registeredSchemes:Ljava/util/Map;

    #@11
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@13
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 98
    return-void
.end method
