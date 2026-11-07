.class Lcom/android/internal/widget/GapWorker$1;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/widget/GapWorker$Task;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/internal/widget/GapWorker$Task;Lcom/android/internal/widget/GapWorker$Task;)I
    .registers 8
    .param p1, "lhs"    # Lcom/android/internal/widget/GapWorker$Task;
    .param p2, "rhs"    # Lcom/android/internal/widget/GapWorker$Task;

    .line 187
    iget-object v0, p1, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    iget-object v3, p2, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    if-nez v3, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    :goto_10
    const/4 v4, -0x1

    if-eq v0, v3, :cond_1a

    .line 188
    iget-object v0, p1, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    if-nez v0, :cond_18

    goto :goto_19

    :cond_18
    move v2, v4

    :goto_19
    return v2

    .line 192
    :cond_1a
    iget-boolean v0, p1, Lcom/android/internal/widget/GapWorker$Task;->immediate:Z

    iget-boolean v3, p2, Lcom/android/internal/widget/GapWorker$Task;->immediate:Z

    if-eq v0, v3, :cond_26

    .line 193
    iget-boolean v0, p1, Lcom/android/internal/widget/GapWorker$Task;->immediate:Z

    if-eqz v0, :cond_25

    move v2, v4

    :cond_25
    return v2

    .line 197
    :cond_26
    iget v0, p2, Lcom/android/internal/widget/GapWorker$Task;->viewVelocity:I

    iget v2, p1, Lcom/android/internal/widget/GapWorker$Task;->viewVelocity:I

    sub-int/2addr v0, v2

    .line 198
    .local v0, "deltaViewVelocity":I
    if-eqz v0, :cond_2e

    return v0

    .line 201
    :cond_2e
    iget v2, p1, Lcom/android/internal/widget/GapWorker$Task;->distanceToItem:I

    iget v3, p2, Lcom/android/internal/widget/GapWorker$Task;->distanceToItem:I

    sub-int/2addr v2, v3

    .line 202
    .local v2, "deltaDistanceToItem":I
    if-eqz v2, :cond_36

    return v2

    .line 204
    :cond_36
    return v1
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 183
    check-cast p1, Lcom/android/internal/widget/GapWorker$Task;

    check-cast p2, Lcom/android/internal/widget/GapWorker$Task;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/GapWorker$1;->compare(Lcom/android/internal/widget/GapWorker$Task;Lcom/android/internal/widget/GapWorker$Task;)I

    move-result p1

    return p1
.end method
