.class public Lcom/android/net/module/util/LinkPropertiesUtils$CompareOrUpdateResult;
.super Ljava/lang/Object;
.source "LinkPropertiesUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/LinkPropertiesUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompareOrUpdateResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final blacklist added:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final blacklist removed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final blacklist updated:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/function/Function;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;TK;>;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/android/net/module/util/LinkPropertiesUtils$CompareOrUpdateResult;, "Lcom/android/net/module/util/LinkPropertiesUtils$CompareOrUpdateResult<TK;TT;>;"
    .local p1, "oldItems":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p2, "newItems":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p3, "keyCalculator":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/net/module/util/LinkPropertiesUtils$CompareOrUpdateResult;->added:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/net/module/util/LinkPropertiesUtils$CompareOrUpdateResult;->removed:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/net/module/util/LinkPropertiesUtils$CompareOrUpdateResult;->updated:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v0, "updateTracker":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TT;>;"
    if-eqz p1, :cond_35

    .line 96
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 97
    .local v2, "oldItem":Ljava/lang/Object;, "TT;"
    invoke-interface {p3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v2    # "oldItem":Ljava/lang/Object;, "TT;"
    goto :goto_23

    .line 101
    :cond_35
    if-eqz p2, :cond_61

    .line 102
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 103
    .local v2, "newItem":Ljava/lang/Object;, "TT;"
    invoke-interface {p3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 104
    .local v3, "oldItem":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_5b

    .line 105
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 107
    iget-object v4, p0, Lcom/android/net/module/util/LinkPropertiesUtils$CompareOrUpdateResult;->updated:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 111
    :cond_5b
    iget-object v4, p0, Lcom/android/net/module/util/LinkPropertiesUtils$CompareOrUpdateResult;->added:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v2    # "newItem":Ljava/lang/Object;, "TT;"
    .end local v3    # "oldItem":Ljava/lang/Object;, "TT;"
    :cond_60
    :goto_60
    goto :goto_3b

    .line 116
    :cond_61
    iget-object v1, p0, Lcom/android/net/module/util/LinkPropertiesUtils$CompareOrUpdateResult;->removed:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 121
    .local p0, "this":Lcom/android/net/module/util/LinkPropertiesUtils$CompareOrUpdateResult;, "Lcom/android/net/module/util/LinkPropertiesUtils$CompareOrUpdateResult<TK;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removed=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/net/module/util/LinkPropertiesUtils$CompareOrUpdateResult;->removed:Ljava/util/List;

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] added=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/net/module/util/LinkPropertiesUtils$CompareOrUpdateResult;->added:Ljava/util/List;

    .line 122
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] updated=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/net/module/util/LinkPropertiesUtils$CompareOrUpdateResult;->updated:Ljava/util/List;

    .line 123
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    return-object v0
.end method
