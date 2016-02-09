.class abstract Landroid/test/SimpleCache;
.super Ljava/lang/Object;
.source "SimpleCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 22
    .local p0, "this":Landroid/test/SimpleCache;, "Landroid/test/SimpleCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 23
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/test/SimpleCache;->map:Ljava/util/Map;

    #@a
    .line 22
    return-void
.end method


# virtual methods
.method final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 28
    .local p0, "this":Landroid/test/SimpleCache;, "Landroid/test/SimpleCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Landroid/test/SimpleCache;->map:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 29
    iget-object v1, p0, Landroid/test/SimpleCache;->map:Ljava/util/Map;

    #@a
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 31
    :cond_0
    invoke-virtual {p0, p1}, Landroid/test/SimpleCache;->load(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 32
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Landroid/test/SimpleCache;->map:Ljava/util/Map;

    #@15
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 33
    return-object v0
.end method

.method protected abstract load(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method
