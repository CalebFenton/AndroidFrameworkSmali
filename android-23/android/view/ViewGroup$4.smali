.class Landroid/view/ViewGroup$4;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewGroup;->notifyAnimationListener()V
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
    .line 3547
    iput-object p1, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 3549
    iget-object v0, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    #@2
    invoke-static {v0}, Landroid/view/ViewGroup;->-get0(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    #@8
    invoke-static {v1}, Landroid/view/ViewGroup;->-get1(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    #@13
    .line 3548
    return-void
.end method
