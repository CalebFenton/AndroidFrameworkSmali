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
.field final synthetic this$0:Landroid/widget/AdapterView;


# direct methods
.method private constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0

    #@0
    .prologue
    .line 868
    .local p0, "this":Landroid/widget/AdapterView$SelectionNotifier;, "Landroid/widget/AdapterView<TT;>.SelectionNotifier;"
    .local p1, "this$0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AdapterView;

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView$SelectionNotifier;, "Landroid/widget/AdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/widget/AdapterView$SelectionNotifier;, "Landroid/widget/AdapterView<TT;>.SelectionNotifier;"
    const/4 v1, 0x0

    #@1
    .line 870
    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    #@3
    invoke-static {v0, v1}, Landroid/widget/AdapterView;->-set0(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)Landroid/widget/AdapterView$SelectionNotifier;

    #@6
    .line 872
    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    #@8
    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    #@e
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 873
    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    #@16
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isLayoutRequested()Z

    #@1d
    move-result v0

    #@1e
    .line 872
    if-eqz v0, :cond_1

    #@20
    .line 877
    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    #@22
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@25
    move-result-object v0

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 878
    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    #@2a
    invoke-static {v0, p0}, Landroid/widget/AdapterView;->-set0(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)Landroid/widget/AdapterView$SelectionNotifier;

    #@2d
    .line 869
    :cond_0
    :goto_0
    return-void

    #@2e
    .line 881
    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    #@30
    invoke-static {v0}, Landroid/widget/AdapterView;->-wrap1(Landroid/widget/AdapterView;)V

    #@33
    goto :goto_0
.end method
