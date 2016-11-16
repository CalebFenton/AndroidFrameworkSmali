.class Landroid/widget/AbsListView$3;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Landroid/widget/AbsListView$PerformClick;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;
    .param p2, "val$child"    # Landroid/view/View;
    .param p3, "val$performClick"    # Landroid/widget/AbsListView$PerformClick;

    #@0
    .prologue
    .line 4028
    iput-object p1, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    #@2
    iput-object p2, p0, Landroid/widget/AbsListView$3;->val$child:Landroid/view/View;

    #@4
    iput-object p3, p0, Landroid/widget/AbsListView$3;->val$performClick:Landroid/widget/AbsListView$PerformClick;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4031
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->-set3(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    #@7
    .line 4032
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    #@9
    const/4 v1, -0x1

    #@a
    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    #@c
    .line 4033
    iget-object v0, p0, Landroid/widget/AbsListView$3;->val$child:Landroid/view/View;

    #@e
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    #@11
    .line 4034
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    #@13
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    #@16
    .line 4035
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    #@18
    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    #@1a
    if-nez v0, :cond_0

    #@1c
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    #@1e
    invoke-static {v0}, Landroid/widget/AbsListView;->-get7(Landroid/widget/AbsListView;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 4030
    :cond_0
    :goto_0
    return-void

    #@25
    .line 4035
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    #@27
    invoke-virtual {v0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 4036
    iget-object v0, p0, Landroid/widget/AbsListView$3;->val$performClick:Landroid/widget/AbsListView$PerformClick;

    #@2f
    invoke-virtual {v0}, Landroid/widget/AbsListView$PerformClick;->run()V

    #@32
    goto :goto_0
.end method
