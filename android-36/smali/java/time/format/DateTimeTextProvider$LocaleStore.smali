.class final Ljava/time/format/DateTimeTextProvider$LocaleStore;
.super Ljava/lang/Object;
.source "DateTimeTextProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeTextProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LocaleStore"
.end annotation


# instance fields
.field private final greylist-max-o parsable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o valueTextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 580
    .local p1, "valueTextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput-object p1, p0, Ljava/time/format/DateTimeTextProvider$LocaleStore;->valueTextMap:Ljava/util/Map;

    .line 582
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 583
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v1, "allList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 585
    .local v3, "vtmEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 586
    .local v4, "reverse":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 587
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-static {v8, v9}, Ljava/time/format/DateTimeTextProvider;->-$$Nest$smcreateEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5f

    .line 589
    goto :goto_36

    .line 591
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_5f
    goto :goto_36

    .line 592
    :cond_60
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 593
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-static {}, Ljava/time/format/DateTimeTextProvider;->-$$Nest$sfgetCOMPARATOR()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 594
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/time/format/TextStyle;

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 596
    const/4 v6, 0x0

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .end local v3    # "vtmEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v4    # "reverse":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    goto :goto_17

    .line 598
    :cond_81
    invoke-static {}, Ljava/time/format/DateTimeTextProvider;->-$$Nest$sfgetCOMPARATOR()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 599
    iput-object v0, p0, Ljava/time/format/DateTimeTextProvider$LocaleStore;->parsable:Ljava/util/Map;

    .line 600
    return-void
.end method


# virtual methods
.method greylist-max-o getText(JLjava/time/format/TextStyle;)Ljava/lang/String;
    .registers 6
    .param p1, "value"    # J
    .param p3, "style"    # Ljava/time/format/TextStyle;

    .line 611
    iget-object v0, p0, Ljava/time/format/DateTimeTextProvider$LocaleStore;->valueTextMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 612
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v0, :cond_15

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return-object v1
.end method

.method greylist-max-o getTextIterator(Ljava/time/format/TextStyle;)Ljava/util/Iterator;
    .registers 4
    .param p1, "style"    # Ljava/time/format/TextStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/TextStyle;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Ljava/time/format/DateTimeTextProvider$LocaleStore;->parsable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 626
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method
