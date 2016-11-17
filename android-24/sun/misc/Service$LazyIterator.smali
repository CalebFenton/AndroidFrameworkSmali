.class Lsun/misc/Service$LazyIterator;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyIterator"
.end annotation


# instance fields
.field configs:Ljava/util/Enumeration;

.field loader:Ljava/lang/ClassLoader;

.field nextName:Ljava/lang/String;

.field pending:Ljava/util/Iterator;

.field returned:Ljava/util/Set;

.field service:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "service"    # Ljava/lang/Class;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 246
    iput-object v1, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    #@6
    .line 247
    iput-object v1, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    #@8
    .line 248
    new-instance v0, Ljava/util/TreeSet;

    #@a
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #@d
    iput-object v0, p0, Lsun/misc/Service$LazyIterator;->returned:Ljava/util/Set;

    #@f
    .line 249
    iput-object v1, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    #@11
    .line 252
    iput-object p1, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    #@13
    .line 253
    iput-object p2, p0, Lsun/misc/Service$LazyIterator;->loader:Ljava/lang/ClassLoader;

    #@15
    .line 251
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;Lsun/misc/Service$LazyIterator;)V
    .locals 0
    .param p1, "service"    # Ljava/lang/Class;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lsun/misc/Service$LazyIterator;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    #@3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 257
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 258
    return v5

    #@6
    .line 260
    :cond_0
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 262
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "META-INF/services/"

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    #@18
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 263
    .local v0, "fullName":Ljava/lang/String;
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->loader:Ljava/lang/ClassLoader;

    #@26
    if-nez v2, :cond_2

    #@28
    .line 264
    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 271
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    #@30
    if-eqz v2, :cond_3

    #@32
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    #@34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_3

    #@3a
    .line 277
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    #@3c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Ljava/lang/String;

    #@42
    iput-object v2, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    #@44
    .line 278
    return v5

    #@45
    .line 266
    .restart local v0    # "fullName":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->loader:Ljava/lang/ClassLoader;

    #@47
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@4a
    move-result-object v2

    #@4b
    iput-object v2, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@4d
    goto :goto_0

    #@4e
    .line 267
    .end local v0    # "fullName":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@4f
    .line 268
    .local v1, "x":Ljava/io/IOException;
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    #@51
    new-instance v3, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v4, ": "

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    invoke-static {v2, v3}, Lsun/misc/Service;->-wrap1(Ljava/lang/Class;Ljava/lang/String;)V

    #@68
    goto :goto_0

    #@69
    .line 272
    .end local v1    # "x":Ljava/io/IOException;
    :cond_3
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    #@6b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@6e
    move-result v2

    #@6f
    if-nez v2, :cond_4

    #@71
    .line 273
    const/4 v2, 0x0

    #@72
    return v2

    #@73
    .line 275
    :cond_4
    iget-object v3, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    #@75
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    #@77
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@7a
    move-result-object v2

    #@7b
    check-cast v2, Ljava/net/URL;

    #@7d
    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->returned:Ljava/util/Set;

    #@7f
    invoke-static {v3, v2, v4}, Lsun/misc/Service;->-wrap0(Ljava/lang/Class;Ljava/net/URL;Ljava/util/Set;)Ljava/util/Iterator;

    #@82
    move-result-object v2

    #@83
    iput-object v2, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    #@85
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 282
    invoke-virtual {p0}, Lsun/misc/Service$LazyIterator;->hasNext()Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 283
    new-instance v4, Ljava/util/NoSuchElementException;

    #@9
    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    #@c
    throw v4

    #@d
    .line 285
    :cond_0
    iget-object v1, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    #@f
    .line 286
    .local v1, "cn":Ljava/lang/String;
    iput-object v7, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    #@11
    .line 287
    const/4 v0, 0x0

    #@12
    .line 289
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->loader:Ljava/lang/ClassLoader;

    #@14
    const/4 v5, 0x0

    #@15
    invoke-static {v1, v5, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-object v0

    #@19
    .line 294
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    #@1b
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1e
    move-result v4

    #@1f
    if-nez v4, :cond_1

    #@21
    .line 295
    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    #@23
    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v6, "Provider "

    #@2b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    const-string/jumbo v6, " not a subtype"

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    .line 295
    invoke-static {v4, v5}, Lsun/misc/Service;->-wrap1(Ljava/lang/Class;Ljava/lang/String;)V

    #@41
    .line 299
    :cond_1
    :try_start_1
    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    #@43
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    #@4a
    move-result-object v4

    #@4b
    return-object v4

    #@4c
    .line 290
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    #@4d
    .line 291
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    #@4f
    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v6, "Provider "

    #@57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    const-string/jumbo v6, " not found"

    #@62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v5

    #@6a
    .line 291
    invoke-static {v4, v5}, Lsun/misc/Service;->-wrap1(Ljava/lang/Class;Ljava/lang/String;)V

    #@6d
    goto :goto_0

    #@6e
    .line 300
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "x":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    #@6f
    .line 301
    .local v3, "x":Ljava/lang/Throwable;
    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    #@71
    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v6, "Provider "

    #@79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    const-string/jumbo v6, " could not be instantiated: "

    #@84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v5

    #@8c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v5

    #@90
    .line 301
    invoke-static {v4, v5, v3}, Lsun/misc/Service;->-wrap2(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@93
    .line 305
    return-object v7
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 309
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
