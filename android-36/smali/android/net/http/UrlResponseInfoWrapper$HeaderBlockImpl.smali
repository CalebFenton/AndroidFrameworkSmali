.class Landroid/net/http/UrlResponseInfoWrapper$HeaderBlockImpl;
.super Landroid/net/http/HeaderBlock;
.source "UrlResponseInfoWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/UrlResponseInfoWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderBlockImpl"
.end annotation


# instance fields
.field private final blacklist mAllHeadersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mHeadersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 77
    .local p1, "allHeadersList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/net/http/HeaderBlock;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/UrlResponseInfoWrapper$HeaderBlockImpl;->mAllHeadersList:Ljava/util/List;

    .line 79
    return-void
.end method

.method static synthetic blacklist lambda$getAsMap$0(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic blacklist lambda$getAsMap$1(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "values"    # Ljava/util/List;

    .line 97
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist getAsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/net/http/UrlResponseInfoWrapper$HeaderBlockImpl;->mAllHeadersList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAsMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/net/http/UrlResponseInfoWrapper$HeaderBlockImpl;->mHeadersMap:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 90
    iget-object v0, p0, Landroid/net/http/UrlResponseInfoWrapper$HeaderBlockImpl;->mHeadersMap:Ljava/util/Map;

    return-object v0

    .line 92
    :cond_7
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 93
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Landroid/net/http/UrlResponseInfoWrapper$HeaderBlockImpl;->mAllHeadersList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 94
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Landroid/net/http/UrlResponseInfoWrapper$HeaderBlockImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/net/http/UrlResponseInfoWrapper$HeaderBlockImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 95
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_14

    .line 97
    :cond_3b
    new-instance v1, Landroid/net/http/UrlResponseInfoWrapper$HeaderBlockImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/net/http/UrlResponseInfoWrapper$HeaderBlockImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 98
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/net/http/UrlResponseInfoWrapper$HeaderBlockImpl;->mHeadersMap:Ljava/util/Map;

    .line 99
    iget-object v1, p0, Landroid/net/http/UrlResponseInfoWrapper$HeaderBlockImpl;->mHeadersMap:Ljava/util/Map;

    return-object v1
.end method
