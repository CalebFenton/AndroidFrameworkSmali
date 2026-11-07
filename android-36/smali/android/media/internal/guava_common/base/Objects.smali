.class public final Landroid/media/internal/guava_common/base/Objects;
.super Landroid/media/internal/guava_common/base/ExtraObjectsMethodsForWeb;
.source "Objects.java"


# direct methods
.method public static blacklist equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs blacklist hashCode([Ljava/lang/Object;)I
    .registers 1
    .param p0    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 79
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
