.class public final Landroid/media/internal/guava_common/collect/Multimaps;
.super Ljava/lang/Object;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/Multimaps$Entries;
    }
.end annotation


# direct methods
.method static blacklist equalsImpl(Landroid/media/internal/guava_common/collect/Multimap;Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/Multimap<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 2233
    :cond_4
    instance-of v0, p1, Landroid/media/internal/guava_common/collect/Multimap;

    if-eqz v0, :cond_17

    .line 2234
    check-cast p1, Landroid/media/internal/guava_common/collect/Multimap;

    .line 2235
    invoke-interface {p0}, Landroid/media/internal/guava_common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Landroid/media/internal/guava_common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method
