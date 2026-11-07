.class Landroid/widget/AdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AdapterView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 897
    .local p0, "this":Landroid/widget/AdapterView$SelectionNotifier;, "Landroid/widget/AdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 899
    .local p0, "this":Landroid/widget/AdapterView$SelectionNotifier;, "Landroid/widget/AdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/AdapterView;->-$$Nest$fputmPendingSelectionNotifier(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)V

    .line 901
    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    .line 902
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 906
    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 907
    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    invoke-static {v0, p0}, Landroid/widget/AdapterView;->-$$Nest$fputmPendingSelectionNotifier(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)V

    goto :goto_33

    .line 910
    :cond_2e
    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    invoke-static {v0}, Landroid/widget/AdapterView;->-$$Nest$mdispatchOnItemSelected(Landroid/widget/AdapterView;)V

    .line 912
    :cond_33
    :goto_33
    return-void
.end method
