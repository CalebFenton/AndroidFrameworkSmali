.class public final Landroid/media/internal/guava_common/collect/Collections2;
.super Ljava/lang/Object;
.source "Collections2.java"


# direct methods
.method static blacklist newStringBuilderForCollection(I)Ljava/lang/StringBuilder;
    .registers 6

    .line 332
    const-string v0, "size"

    invoke-static {p0, v0}, Landroid/media/internal/guava_common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    int-to-long v1, p0

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x40000000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p0, v1

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0
.end method

.method static blacklist safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :try_start_3
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    const/4 p0, 0x0

    return p0
.end method
