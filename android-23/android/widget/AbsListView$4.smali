.class Landroid/widget/AbsListView$4;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    .line 4823
    iput-object p1, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4826
    iget-object v0, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #@3
    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 4827
    iget-object v0, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #@9
    iget-object v1, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #@b
    iput-boolean v2, v1, Landroid/widget/AbsListView;->mCachingActive:Z

    #@d
    iput-boolean v2, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    #@f
    .line 4828
    iget-object v0, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #@11
    invoke-static {v0, v2}, Landroid/widget/AbsListView;->-wrap7(Landroid/widget/AbsListView;Z)V

    #@14
    .line 4829
    iget-object v0, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #@16
    invoke-static {v0}, Landroid/widget/AbsListView;->-get13(Landroid/widget/AbsListView;)I

    #@19
    move-result v0

    #@1a
    and-int/lit8 v0, v0, 0x2

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 4830
    iget-object v0, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #@20
    invoke-static {v0, v2}, Landroid/widget/AbsListView;->-wrap6(Landroid/widget/AbsListView;Z)V

    #@23
    .line 4832
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #@25
    invoke-virtual {v0}, Landroid/widget/AbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_1

    #@2b
    .line 4833
    iget-object v0, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #@2d
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    #@30
    .line 4825
    :cond_1
    return-void
.end method
