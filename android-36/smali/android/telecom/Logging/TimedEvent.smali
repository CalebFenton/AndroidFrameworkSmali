.class public abstract Landroid/telecom/Logging/TimedEvent;
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
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    .local p0, "this":Landroid/telecom/Logging/TimedEvent;, "Landroid/telecom/Logging/TimedEvent<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist averageTimings(Ljava/util/Collection;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Landroid/telecom/Logging/TimedEvent<",
            "TT;>;>;)",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 31
    .local p0, "events":Ljava/util/Collection;, "Ljava/util/Collection<+Landroid/telecom/Logging/TimedEvent<TT;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v0, "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Ljava/lang/Double;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/TimedEvent;

    .line 35
    .local v3, "entry":Landroid/telecom/Logging/TimedEvent;, "Landroid/telecom/Logging/TimedEvent<TT;>;"
    invoke-virtual {v3}, Landroid/telecom/Logging/TimedEvent;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5f

    .line 36
    invoke-virtual {v3}, Landroid/telecom/Logging/TimedEvent;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telecom/Logging/TimedEvent;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v3}, Landroid/telecom/Logging/TimedEvent;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telecom/Logging/TimedEvent;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v3}, Landroid/telecom/Logging/TimedEvent;->getTime()J

    move-result-wide v7

    long-to-double v7, v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    .line 39
    :cond_5f
    invoke-virtual {v3}, Landroid/telecom/Logging/TimedEvent;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v3}, Landroid/telecom/Logging/TimedEvent;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telecom/Logging/TimedEvent;->getTime()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .end local v3    # "entry":Landroid/telecom/Logging/TimedEvent;, "Landroid/telecom/Logging/TimedEvent<TT;>;"
    :goto_7a
    goto :goto_e

    .line 44
    :cond_7b
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_83
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 45
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Double;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Double;>;"
    goto :goto_83

    .line 48
    :cond_b5
    return-object v1
.end method


# virtual methods
.method public abstract blacklist getKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract blacklist getTime()J
.end method
