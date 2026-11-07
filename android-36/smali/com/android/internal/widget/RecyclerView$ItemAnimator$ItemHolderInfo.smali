.class public Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView$ItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public blacklist bottom:I

.field public blacklist changeFlags:I

.field public blacklist left:I

.field public blacklist right:I

.field public blacklist top:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12306
    return-void
.end method


# virtual methods
.method public blacklist setFrom(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 12316
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setFrom(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 5
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 12331
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12332
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 12333
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 12334
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->right:I

    .line 12335
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->bottom:I

    .line 12336
    return-object p0
.end method
