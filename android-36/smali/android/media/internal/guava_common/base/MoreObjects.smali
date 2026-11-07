.class public final Landroid/media/internal/guava_common/base/MoreObjects;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;
    }
.end annotation


# direct methods
.method public static blacklist firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    if-eqz p1, :cond_6

    return-object p1

    .line 68
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Both parameters are null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist toStringHelper(Ljava/lang/Object;)Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;
    .registers 3

    .line 112
    new-instance v0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;Landroid/media/internal/guava_common/base/MoreObjects$1;)V

    return-object v0
.end method
