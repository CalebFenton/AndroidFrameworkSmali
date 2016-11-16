.class public abstract Landroid/telecom/TimedEvent;
.super Ljava/lang/Object;
.source "TimedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    .local p0, "this":Landroid/telecom/TimedEvent;, "Landroid/telecom/TimedEvent<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static averageTimings(Ljava/util/Collection;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Landroid/telecom/TimedEvent",
            "<TT;>;>;)",
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 31
    .local p0, "events":Ljava/util/Collection;, "Ljava/util/Collection<+Landroid/telecom/TimedEvent<TT;>;>;"
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 32
    .local v0, "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/HashMap;

    #@7
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@a
    .line 34
    .local v4, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Ljava/lang/Double;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v3

    #@e
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_1

    #@14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/telecom/TimedEvent;

    #@1a
    .line 35
    .local v1, "entry":Landroid/telecom/TimedEvent;, "Landroid/telecom/TimedEvent<TT;>;"
    invoke-virtual {v1}, Landroid/telecom/TimedEvent;->getKey()Ljava/lang/Object;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_0

    #@24
    .line 36
    invoke-virtual {v1}, Landroid/telecom/TimedEvent;->getKey()Ljava/lang/Object;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v1}, Landroid/telecom/TimedEvent;->getKey()Ljava/lang/Object;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v5

    #@30
    check-cast v5, Ljava/lang/Integer;

    #@32
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@35
    move-result v5

    #@36
    add-int/lit8 v5, v5, 0x1

    #@38
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 37
    invoke-virtual {v1}, Landroid/telecom/TimedEvent;->getKey()Ljava/lang/Object;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v1}, Landroid/telecom/TimedEvent;->getKey()Ljava/lang/Object;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    move-result-object v5

    #@4b
    check-cast v5, Ljava/lang/Double;

    #@4d
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    #@50
    move-result-wide v8

    #@51
    invoke-virtual {v1}, Landroid/telecom/TimedEvent;->getTime()J

    #@54
    move-result-wide v10

    #@55
    long-to-double v10, v10

    #@56
    add-double/2addr v8, v10

    #@57
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    goto :goto_0

    #@5f
    .line 39
    :cond_0
    invoke-virtual {v1}, Landroid/telecom/TimedEvent;->getKey()Ljava/lang/Object;

    #@62
    move-result-object v5

    #@63
    const/4 v6, 0x1

    #@64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    .line 40
    invoke-virtual {v1}, Landroid/telecom/TimedEvent;->getKey()Ljava/lang/Object;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v1}, Landroid/telecom/TimedEvent;->getTime()J

    #@72
    move-result-wide v6

    #@73
    long-to-double v6, v6

    #@74
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7b
    goto :goto_0

    #@7c
    .line 44
    .end local v1    # "entry":Landroid/telecom/TimedEvent;, "Landroid/telecom/TimedEvent<TT;>;"
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@7f
    move-result-object v5

    #@80
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@83
    move-result-object v3

    #@84
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@87
    move-result v5

    #@88
    if-eqz v5, :cond_2

    #@8a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8d
    move-result-object v2

    #@8e
    check-cast v2, Ljava/util/Map$Entry;

    #@90
    .line 45
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Double;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@93
    move-result-object v6

    #@94
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@97
    move-result-object v5

    #@98
    check-cast v5, Ljava/lang/Double;

    #@9a
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    #@9d
    move-result-wide v8

    #@9e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@a1
    move-result-object v5

    #@a2
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a5
    move-result-object v5

    #@a6
    check-cast v5, Ljava/lang/Integer;

    #@a8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@ab
    move-result v5

    #@ac
    int-to-double v10, v5

    #@ad
    div-double/2addr v8, v10

    #@ae
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@b1
    move-result-object v5

    #@b2
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b5
    goto :goto_1

    #@b6
    .line 48
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Double;>;"
    :cond_2
    return-object v4
.end method


# virtual methods
.method public abstract getKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getTime()J
.end method
