.class public abstract Lcom/android/internal/infra/PerUser;
.super Landroid/util/SparseArray;
.source "PerUser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/SparseArray<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    .local p0, "this":Lcom/android/internal/infra/PerUser;, "Lcom/android/internal/infra/PerUser<TT;>;"
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract blacklist create(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public blacklist forUser(I)Ljava/lang/Object;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/android/internal/infra/PerUser;, "Lcom/android/internal/infra/PerUser<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/PerUser;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/android/internal/infra/PerUser;, "Lcom/android/internal/infra/PerUser<TT;>;"
    invoke-super {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "userState":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_7

    .line 52
    return-object v0

    .line 54
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/PerUser;->create(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/PerUser;->put(ILjava/lang/Object;)V

    .line 56
    return-object v0
.end method
