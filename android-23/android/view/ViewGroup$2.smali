.class Landroid/view/ViewGroup$2;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 6176
    iput-object p1, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    #@0
    .prologue
    .line 6190
    iget-object v0, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    #@2
    invoke-static {v0}, Landroid/view/ViewGroup;->-get2(Landroid/view/ViewGroup;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 6194
    :cond_0
    :goto_0
    const/4 v0, 0x3

    #@f
    if-ne p4, v0, :cond_1

    #@11
    iget-object v0, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    #@13
    invoke-static {v0}, Landroid/view/ViewGroup;->-get3(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    #@16
    move-result-object v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 6195
    iget-object v0, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    #@1b
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    #@1e
    .line 6189
    :cond_1
    return-void

    #@1f
    .line 6191
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    #@21
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    #@24
    .line 6192
    iget-object v0, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    #@26
    const/4 v1, 0x0

    #@27
    invoke-static {v0, v1}, Landroid/view/ViewGroup;->-set0(Landroid/view/ViewGroup;Z)Z

    #@2a
    goto :goto_0
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    #@0
    .prologue
    .line 6182
    const/4 v0, 0x3

    #@1
    if-ne p4, v0, :cond_0

    #@3
    .line 6183
    iget-object v0, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    #@5
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    #@8
    .line 6179
    :cond_0
    return-void
.end method
