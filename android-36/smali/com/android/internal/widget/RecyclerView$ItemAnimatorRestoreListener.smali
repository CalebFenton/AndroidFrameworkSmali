.class Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 11567
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11568
    return-void
.end method


# virtual methods
.method public blacklist onAnimationFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 11572
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 11573
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_f

    .line 11574
    iput-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 11578
    :cond_f
    iput-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 11579
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$mshouldBeKeptAsChild(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 11580
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 11581
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 11584
    :cond_2f
    return-void
.end method
