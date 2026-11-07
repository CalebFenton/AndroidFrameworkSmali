.class public abstract Landroid/media/internal/guava_common/base/Equivalence;
.super Ljava/lang/Object;
.source "Equivalence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/base/Equivalence$Equals;,
        Landroid/media/internal/guava_common/base/Equivalence$Identity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist equals()Landroid/media/internal/guava_common/base/Equivalence;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 333
    sget-object v0, Landroid/media/internal/guava_common/base/Equivalence$Equals;->INSTANCE:Landroid/media/internal/guava_common/base/Equivalence$Equals;

    return-object v0
.end method

.method public static blacklist identity()Landroid/media/internal/guava_common/base/Equivalence;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 345
    sget-object v0, Landroid/media/internal/guava_common/base/Equivalence$Identity;->INSTANCE:Landroid/media/internal/guava_common/base/Equivalence$Identity;

    return-object v0
.end method


# virtual methods
.method protected abstract blacklist doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method protected abstract blacklist doHash(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public final blacklist equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    if-ne p1, p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_e

    if-nez p2, :cond_9

    goto :goto_e

    .line 76
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/base/Equivalence;->doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public final blacklist hash(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_4
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/base/Equivalence;->doHash(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
