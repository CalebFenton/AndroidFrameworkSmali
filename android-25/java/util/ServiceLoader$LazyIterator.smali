.class Ljava/util/ServiceLoader$LazyIterator;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ServiceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TS;>;"
    }
.end annotation


# instance fields
.field configs:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field loader:Ljava/lang/ClassLoader;

.field nextName:Ljava/lang/String;

.field pending:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TS;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/ServiceLoader;


# direct methods
.method private constructor <init>(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    .local p1, "this$0":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    .local p2, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    const/4 v0, 0x0

    #@1
    .line 326
    iput-object p1, p0, Ljava/util/ServiceLoader$LazyIterator;->this$0:Ljava/util/ServiceLoader;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 322
    iput-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    #@8
    .line 323
    iput-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    #@a
    .line 324
    iput-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    #@c
    .line 327
    iput-object p2, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    #@e
    .line 328
    iput-object p3, p0, Ljava/util/ServiceLoader$LazyIterator;->loader:Ljava/lang/ClassLoader;

    #@10
    .line 326
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/util/ServiceLoader$LazyIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/ServiceLoader;
    .param p2, "service"    # Ljava/lang/Class;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/ServiceLoader$LazyIterator;-><init>(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    #@3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 6

    #@0
    .prologue
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    const/4 v5, 0x1

    #@1
    .line 332
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 333
    return v5

    #@6
    .line 335
    :cond_0
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 337
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
    iget-object v3, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

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
    .line 338
    .local v0, "fullName":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->loader:Ljava/lang/ClassLoader;

    #@26
    if-nez v2, :cond_2

    #@28
    .line 339
    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 346
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    #@30
    if-eqz v2, :cond_3

    #@32
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    #@34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_3

    #@3a
    .line 352
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    #@3c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Ljava/lang/String;

    #@42
    iput-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    #@44
    .line 353
    return v5

    #@45
    .line 341
    .restart local v0    # "fullName":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->loader:Ljava/lang/ClassLoader;

    #@47
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@4a
    move-result-object v2

    #@4b
    iput-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@4d
    goto :goto_0

    #@4e
    .line 342
    .end local v0    # "fullName":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@4f
    .line 343
    .local v1, "x":Ljava/io/IOException;
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    #@51
    const-string/jumbo v3, "Error locating configuration files"

    #@54
    invoke-static {v2, v3, v1}, Ljava/util/ServiceLoader;->-wrap1(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@57
    goto :goto_0

    #@58
    .line 347
    .end local v1    # "x":Ljava/io/IOException;
    :cond_3
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    #@5a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@5d
    move-result v2

    #@5e
    if-nez v2, :cond_4

    #@60
    .line 348
    const/4 v2, 0x0

    #@61
    return v2

    #@62
    .line 350
    :cond_4
    iget-object v3, p0, Ljava/util/ServiceLoader$LazyIterator;->this$0:Ljava/util/ServiceLoader;

    #@64
    iget-object v4, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    #@66
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    #@68
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@6b
    move-result-object v2

    #@6c
    check-cast v2, Ljava/net/URL;

    #@6e
    invoke-static {v3, v4, v2}, Ljava/util/ServiceLoader;->-wrap0(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;

    #@71
    move-result-object v2

    #@72
    iput-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    #@74
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    #@0
    .prologue
    .line 357
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    invoke-virtual {p0}, Ljava/util/ServiceLoader$LazyIterator;->hasNext()Z

    #@3
    move-result v6

    #@4
    if-nez v6, :cond_0

    #@6
    .line 358
    new-instance v6, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v6}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v6

    #@c
    .line 360
    :cond_0
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    #@e
    .line 361
    .local v2, "cn":Ljava/lang/String;
    const/4 v6, 0x0

    #@f
    iput-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    #@11
    .line 362
    const/4 v0, 0x0

    #@12
    .line 364
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->loader:Ljava/lang/ClassLoader;

    #@14
    const/4 v7, 0x0

    #@15
    invoke-static {v2, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-object v0

    #@19
    .line 369
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    #@1b
    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1e
    move-result v6

    #@1f
    if-nez v6, :cond_1

    #@21
    .line 370
    new-instance v1, Ljava/lang/ClassCastException;

    #@23
    .line 371
    new-instance v6, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    iget-object v7, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    #@2a
    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@2d
    move-result-object v7

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    const-string/jumbo v7, " is not assignable from "

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    .line 370
    invoke-direct {v1, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@48
    .line 372
    .local v1, "cce":Ljava/lang/ClassCastException;
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    #@4a
    .line 373
    new-instance v7, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v8, "Provider "

    #@52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v7

    #@5a
    const-string/jumbo v8, " not a subtype"

    #@5d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v7

    #@65
    .line 372
    invoke-static {v6, v7, v1}, Ljava/util/ServiceLoader;->-wrap1(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@68
    .line 376
    .end local v1    # "cce":Ljava/lang/ClassCastException;
    :cond_1
    :try_start_1
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    #@6a
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@6d
    move-result-object v7

    #@6e
    invoke-virtual {v6, v7}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    move-result-object v3

    #@72
    .line 377
    .local v3, "p":Ljava/lang/Object;, "TS;"
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->this$0:Ljava/util/ServiceLoader;

    #@74
    invoke-static {v6}, Ljava/util/ServiceLoader;->-get1(Ljava/util/ServiceLoader;)Ljava/util/LinkedHashMap;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v6, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    #@7b
    .line 378
    return-object v3

    #@7c
    .line 365
    .end local v3    # "p":Ljava/lang/Object;, "TS;"
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    #@7d
    .line 366
    .local v4, "x":Ljava/lang/ClassNotFoundException;
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    #@7f
    .line 367
    new-instance v7, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v8, "Provider "

    #@87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v7

    #@8b
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v7

    #@8f
    const-string/jumbo v8, " not found"

    #@92
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v7

    #@96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v7

    #@9a
    .line 366
    invoke-static {v6, v7, v4}, Ljava/util/ServiceLoader;->-wrap1(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9d
    goto/16 :goto_0

    #@9f
    .line 379
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "x":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    #@a0
    .line 380
    .local v5, "x":Ljava/lang/Throwable;
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    #@a2
    .line 381
    new-instance v7, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v8, "Provider "

    #@aa
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v7

    #@ae
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v7

    #@b2
    const-string/jumbo v8, " could not be instantiated: "

    #@b5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v7

    #@b9
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v7

    #@bd
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v7

    #@c1
    .line 380
    invoke-static {v6, v7, v5}, Ljava/util/ServiceLoader;->-wrap1(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c4
    .line 384
    new-instance v6, Ljava/lang/Error;

    #@c6
    invoke-direct {v6}, Ljava/lang/Error;-><init>()V

    #@c9
    throw v6
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 388
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
