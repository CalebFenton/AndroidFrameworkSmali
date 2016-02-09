.class Landroid/app/ActivityTransitionState$1;
.super Ljava/lang/Object;
.source "ActivityTransitionState.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityTransitionState;->startExitBackTransition(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityTransitionState;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$finalDecor:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/app/ActivityTransitionState;Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityTransitionState;
    .param p2, "val$finalDecor"    # Landroid/view/ViewGroup;
    .param p3, "val$activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 282
    iput-object p1, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    #@2
    iput-object p2, p0, Landroid/app/ActivityTransitionState$1;->val$finalDecor:Landroid/view/ViewGroup;

    #@4
    iput-object p3, p0, Landroid/app/ActivityTransitionState$1;->val$activity:Landroid/app/Activity;

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
    .line 285
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->val$finalDecor:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@9
    .line 286
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    #@b
    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-get0(Landroid/app/ActivityTransitionState;)Landroid/app/ExitTransitionCoordinator;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 287
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    #@13
    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-get0(Landroid/app/ActivityTransitionState;)Landroid/app/ExitTransitionCoordinator;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Landroid/app/ActivityTransitionState$1;->val$activity:Landroid/app/Activity;

    #@19
    iget v1, v1, Landroid/app/Activity;->mResultCode:I

    #@1b
    .line 288
    iget-object v2, p0, Landroid/app/ActivityTransitionState$1;->val$activity:Landroid/app/Activity;

    #@1d
    iget-object v2, v2, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    #@1f
    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->startExit(ILandroid/content/Intent;)V

    #@22
    .line 290
    :cond_0
    const/4 v0, 0x1

    #@23
    return v0
.end method
