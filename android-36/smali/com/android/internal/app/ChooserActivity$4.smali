.class Lcom/android/internal/app/ChooserActivity$4;
.super Lcom/android/internal/widget/RecyclerView$OnScrollListener;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->setupScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$chooserHeaderScrollElevation:F

.field final synthetic blacklist val$defaultElevation:F

.field final synthetic blacklist val$elevatedView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;FF)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2912
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$4;->val$elevatedView:Landroid/view/View;

    iput p3, p0, Lcom/android/internal/app/ChooserActivity$4;->val$chooserHeaderScrollElevation:F

    iput p4, p0, Lcom/android/internal/app/ChooserActivity$4;->val$defaultElevation:F

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V
    .registers 6
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "scrollState"    # I

    .line 2914
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_17

    .line 2915
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmScrollStatus(Lcom/android/internal/app/ChooserActivity;)I

    move-result v2

    if-ne v2, v1, :cond_2b

    .line 2916
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmScrollStatus(Lcom/android/internal/app/ChooserActivity;I)V

    .line 2917
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetHorizontalScrollingEnabled(Lcom/android/internal/app/ChooserActivity;Z)V

    goto :goto_2b

    .line 2919
    :cond_17
    if-ne p2, v1, :cond_2b

    .line 2920
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmScrollStatus(Lcom/android/internal/app/ChooserActivity;)I

    move-result v2

    if-nez v2, :cond_2b

    .line 2921
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmScrollStatus(Lcom/android/internal/app/ChooserActivity;I)V

    .line 2922
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetHorizontalScrollingEnabled(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 2925
    :cond_2b
    :goto_2b
    return-void
.end method

.method public blacklist onScrolled(Lcom/android/internal/widget/RecyclerView;II)V
    .registers 7
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 2928
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1f

    .line 2929
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 2930
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_1f

    .line 2931
    :cond_17
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$4;->val$elevatedView:Landroid/view/View;

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$4;->val$chooserHeaderScrollElevation:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    .line 2932
    return-void

    .line 2936
    .end local v0    # "child":Landroid/view/View;
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$4;->val$elevatedView:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$4;->val$defaultElevation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 2937
    return-void
.end method
