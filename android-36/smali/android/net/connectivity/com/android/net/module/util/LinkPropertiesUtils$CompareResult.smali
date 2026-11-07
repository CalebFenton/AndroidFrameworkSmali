.class public Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils$CompareResult;
.super Ljava/lang/Object;
.source "LinkPropertiesUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompareResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils$CompareResult;, "Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils$CompareResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils$CompareResult;->removed:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils$CompareResult;->added:Ljava/util/List;

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils$CompareResult;, "Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils$CompareResult<TT;>;"
    .local p1, "oldItems":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p2, "newItems":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils$CompareResult;->removed:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils$CompareResult;->added:Ljava/util/List;

    .line 50
    if-eqz p1, :cond_18

    .line 51
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_18
    if-eqz p2, :cond_36

    .line 54
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 55
    .local v1, "newItem":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 56
    iget-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils$CompareResult;->added:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v1    # "newItem":Ljava/lang/Object;, "TT;"
    :cond_35
    goto :goto_1e

    .line 60
    :cond_36
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 64
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils$CompareResult;, "Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils$CompareResult<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removed=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils$CompareResult;->removed:Ljava/util/List;

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] added=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/LinkPropertiesUtils$CompareResult;->added:Ljava/util/List;

    .line 65
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    return-object v0
.end method
