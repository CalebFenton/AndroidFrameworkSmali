.class Landroid/app/EnterTransitionCoordinator$1;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;-><init>(Landroid/app/Activity;Landroid/os/ResultReceiver;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic val$decorView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/EnterTransitionCoordinator;
    .param p2, "val$decorView"    # Landroid/view/View;

    #@0
    .prologue
    .line 73
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$1;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@2
    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$1;->val$decorView:Landroid/view/View;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$1;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@2
    invoke-static {v0}, Landroid/app/EnterTransitionCoordinator;->-get0(Landroid/app/EnterTransitionCoordinator;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 77
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$1;->val$decorView:Landroid/view/View;

    #@a
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@11
    .line 79
    :cond_0
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$1;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@13
    invoke-static {v0}, Landroid/app/EnterTransitionCoordinator;->-get0(Landroid/app/EnterTransitionCoordinator;)Z

    #@16
    move-result v0

    #@17
    return v0
.end method
