.class Landroid/widget/AbsListView$AdapterDataSetObserver;
.super Landroid/widget/AdapterView$AdapterDataSetObserver;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">.AdapterDataSetObserver;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    .line 6354
    iput-object p1, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    #@2
    invoke-direct {p0, p1}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    #@0
    .prologue
    .line 6357
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    #@3
    .line 6358
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    #@5
    invoke-static {v0}, Landroid/widget/AbsListView;->-get5(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 6359
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    #@d
    invoke-static {v0}, Landroid/widget/AbsListView;->-get5(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/widget/FastScroller;->onSectionsChanged()V

    #@14
    .line 6356
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    #@0
    .prologue
    .line 6365
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onInvalidated()V

    #@3
    .line 6366
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    #@5
    invoke-static {v0}, Landroid/widget/AbsListView;->-get5(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 6367
    iget-object v0, p0, Landroid/widget/AbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsListView;

    #@d
    invoke-static {v0}, Landroid/widget/AbsListView;->-get5(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/widget/FastScroller;->onSectionsChanged()V

    #@14
    .line 6364
    :cond_0
    return-void
.end method
