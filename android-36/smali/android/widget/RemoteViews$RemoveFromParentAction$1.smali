.class Landroid/widget/RemoteViews$RemoveFromParentAction$1;
.super Landroid/widget/RemoteViews$RuntimeAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$RemoveFromParentAction;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$parentVg:Landroid/view/ViewManager;

.field final synthetic blacklist val$target:Landroid/widget/RemoteViews$ViewTree;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$RemoveFromParentAction;Landroid/view/ViewManager;Landroid/widget/RemoteViews$ViewTree;)V
    .registers 4
    .param p1, "this$0"    # Landroid/widget/RemoteViews$RemoveFromParentAction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 4542
    iput-object p2, p0, Landroid/widget/RemoteViews$RemoveFromParentAction$1;->val$parentVg:Landroid/view/ViewManager;

    iput-object p3, p0, Landroid/widget/RemoteViews$RemoveFromParentAction$1;->val$target:Landroid/widget/RemoteViews$ViewTree;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 4545
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoveFromParentAction$1;->val$parentVg:Landroid/view/ViewManager;

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoveFromParentAction$1;->val$target:Landroid/widget/RemoteViews$ViewTree;

    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 4546
    return-void
.end method
