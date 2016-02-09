.class Landroid/app/EnterTransitionCoordinator$3;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->sendSharedElementDestination()V
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
    .line 198
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@2
    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$3;->val$decorView:Landroid/view/View;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    #@0
    .prologue
    .line 201
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$3;->val$decorView:Landroid/view/View;

    #@2
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@9
    .line 202
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@b
    iget-object v1, v1, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 203
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@11
    invoke-virtual {v1}, Landroid/app/EnterTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    #@14
    move-result-object v0

    #@15
    .line 204
    .local v0, "state":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@17
    invoke-virtual {v1}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsToOverlay()V

    #@1a
    .line 205
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@1c
    iget-object v1, v1, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@1e
    const/16 v2, 0x6b

    #@20
    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@23
    .line 207
    .end local v0    # "state":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x1

    #@24
    return v1
.end method
