.class Lcom/android/internal/widget/ScrollingTabContainerView$1;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

.field final synthetic blacklist val$tabView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/widget/ScrollingTabContainerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iput-object p2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 261
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 262
    .local v0, "scrollPos":I
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->smoothScrollTo(II)V

    .line 263
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 264
    return-void
.end method
