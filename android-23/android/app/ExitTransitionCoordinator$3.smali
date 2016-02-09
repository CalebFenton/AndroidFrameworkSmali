.class Landroid/app/ExitTransitionCoordinator$3;
.super Ljava/lang/Object;
.source "ExitTransitionCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->startSharedElementExit(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;

.field final synthetic val$decorView:Landroid/view/ViewGroup;

.field final synthetic val$sharedElementSnapshots:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;
    .param p2, "val$decorView"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 175
    .local p3, "val$sharedElementSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$3;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@2
    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator$3;->val$decorView:Landroid/view/ViewGroup;

    #@4
    iput-object p3, p0, Landroid/app/ExitTransitionCoordinator$3;->val$sharedElementSnapshots:Ljava/util/ArrayList;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$3;->val$decorView:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@9
    .line 179
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$3;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@b
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator$3;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@d
    invoke-static {v1}, Landroid/app/ExitTransitionCoordinator;->-get0(Landroid/app/ExitTransitionCoordinator;)Landroid/os/Bundle;

    #@10
    move-result-object v1

    #@11
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator$3;->val$sharedElementSnapshots:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    #@16
    .line 180
    const/4 v0, 0x1

    #@17
    return v0
.end method
