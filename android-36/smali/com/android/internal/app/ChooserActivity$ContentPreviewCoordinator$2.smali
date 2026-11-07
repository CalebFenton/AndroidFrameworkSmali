.class Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$2;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->setupPreDrawForSharedElementTransition(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

.field final synthetic blacklist val$v:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Landroid/view/View;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 418
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$2;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .registers 3

    .line 421
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$2;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 423
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$2;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmRemoveSharedElements(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$2;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->isActivityTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 426
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$2;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 428
    :cond_29
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$2;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnterTransitionAnimationDelegate(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->markImagePreviewReady()V

    .line 429
    const/4 v0, 0x1

    return v0
.end method
