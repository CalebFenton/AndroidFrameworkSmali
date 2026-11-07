.class public interface abstract Landroid/bluetooth/Attributable;
.super Ljava/lang/Object;
.source "Attributable.java"


# direct methods
.method public static blacklist setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;
    .registers 2
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/bluetooth/Attributable;",
            ">(TT;",
            "Landroid/content/AttributionSource;",
            ")TT;"
        }
    .end annotation

    .line 41
    .local p0, "attributable":Landroid/bluetooth/Attributable;, "TT;"
    if-eqz p0, :cond_5

    .line 42
    invoke-interface {p0, p1}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/content/AttributionSource;)V

    .line 44
    :cond_5
    return-object p0
.end method

.method public static blacklist setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;
    .registers 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/bluetooth/Attributable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/content/AttributionSource;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 50
    .local p0, "attributableList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p0, :cond_15

    .line 51
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 52
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 53
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/Attributable;

    invoke-static {v2, p1}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 56
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_15
    return-object p0
.end method


# virtual methods
.method public abstract blacklist setAttributionSource(Landroid/content/AttributionSource;)V
.end method
