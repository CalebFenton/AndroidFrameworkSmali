.class public Lorg/apache/http/impl/client/BasicCookieStore;
.super Ljava/lang/Object;
.source "BasicCookieStore.java"

# interfaces
.implements Lorg/apache/http/client/CookieStore;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cookieComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private final cookies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    #@a
    .line 77
    new-instance v0, Lorg/apache/http/cookie/CookieIdentityComparator;

    #@c
    invoke-direct {v0}, Lorg/apache/http/cookie/CookieIdentityComparator;-><init>()V

    #@f
    iput-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookieComparator:Ljava/util/Comparator;

    #@11
    .line 74
    return-void
.end method


# virtual methods
.method public declared-synchronized addCookie(Lorg/apache/http/cookie/Cookie;)V
    .locals 3
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 91
    if-eqz p1, :cond_2

    #@3
    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 94
    iget-object v2, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookieComparator:Ljava/util/Comparator;

    #@11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lorg/apache/http/cookie/Cookie;

    #@17
    invoke-interface {v2, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@20
    .line 99
    :cond_1
    new-instance v1, Ljava/util/Date;

    #@22
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    #@25
    invoke-interface {p1, v1}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_2

    #@2b
    .line 100
    iget-object v1, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    :cond_2
    monitor-exit p0

    #@31
    .line 90
    return-void

    #@32
    :catchall_0
    move-exception v1

    #@33
    monitor-exit p0

    #@34
    throw v1
.end method

.method public declared-synchronized addCookies([Lorg/apache/http/cookie/Cookie;)V
    .locals 3
    .param p1, "cookies"    # [Lorg/apache/http/cookie/Cookie;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 116
    if-eqz p1, :cond_0

    #@3
    .line 117
    const/4 v1, 0x0

    #@4
    :try_start_0
    array-length v2, p1

    #@5
    :goto_0
    if-ge v1, v2, :cond_0

    #@7
    aget-object v0, p1, v1

    #@9
    .line 118
    .local v0, "cooky":Lorg/apache/http/cookie/Cookie;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 117
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0

    #@f
    .end local v0    # "cooky":Lorg/apache/http/cookie/Cookie;
    :cond_0
    monitor-exit p0

    #@10
    .line 115
    return-void

    #@11
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1
.end method

.method public declared-synchronized clear()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 164
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 163
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized clearExpired(Ljava/util/Date;)Z
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 142
    if-nez p1, :cond_0

    #@3
    .line 143
    const/4 v2, 0x0

    #@4
    monitor-exit p0

    #@5
    return v2

    #@6
    .line 145
    :cond_0
    const/4 v1, 0x0

    #@7
    .line 146
    .local v1, "removed":Z
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v0

    #@d
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lorg/apache/http/cookie/Cookie;

    #@19
    invoke-interface {v2, p1}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 149
    const/4 v1, 0x1

    #@23
    goto :goto_0

    #@24
    :cond_2
    monitor-exit p0

    #@25
    .line 152
    return v1

    #@26
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    :catchall_0
    move-exception v2

    #@27
    monitor-exit p0

    #@28
    throw v2
.end method

.method public declared-synchronized getCookies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    #@3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
