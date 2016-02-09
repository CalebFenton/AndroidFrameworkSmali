.class Landroid/app/EnterTransitionCoordinator$5;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic val$sharedElementState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/EnterTransitionCoordinator;
    .param p2, "val$sharedElementState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 386
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$5;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@2
    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$5;->val$sharedElementState:Landroid/os/Bundle;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .locals 4

    #@0
    .prologue
    .line 389
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$5;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@2
    invoke-virtual {v1}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@5
    move-result-object v0

    #@6
    .line 390
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@8
    .line 391
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@b
    move-result-object v1

    #@c
    .line 392
    new-instance v2, Landroid/app/EnterTransitionCoordinator$5$1;

    #@e
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator$5;->val$sharedElementState:Landroid/os/Bundle;

    #@10
    invoke-direct {v2, p0, v0, v3}, Landroid/app/EnterTransitionCoordinator$5$1;-><init>(Landroid/app/EnterTransitionCoordinator$5;Landroid/view/View;Landroid/os/Bundle;)V

    #@13
    .line 391
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@16
    .line 405
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@19
    .line 388
    :cond_0
    return-void
.end method
