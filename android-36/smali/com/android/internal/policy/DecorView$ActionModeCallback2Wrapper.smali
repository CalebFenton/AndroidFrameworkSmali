.class Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;
.super Landroid/view/ActionMode$Callback2;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback2Wrapper"
.end annotation


# instance fields
.field private final blacklist mWrapped:Landroid/view/ActionMode$Callback;

.field final synthetic blacklist this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode$Callback;)V
    .registers 3
    .param p2, "wrapped"    # Landroid/view/ActionMode$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2448
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 2449
    iput-object p2, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    .line 2450
    return-void
.end method


# virtual methods
.method public whitelist onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 2462
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public whitelist onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 2453
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public whitelist onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 11
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 2466
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 2467
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    # getter for: Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->access$000(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_19

    move v0, v3

    goto :goto_1a

    :cond_19
    move v0, v2

    .line 2471
    .local v0, "isMncApp":Z
    :goto_1a
    if-eqz v0, :cond_91

    .line 2472
    iget-object v1, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-ne p1, v1, :cond_24

    move v1, v3

    goto :goto_25

    :cond_24
    move v1, v2

    .line 2473
    .local v1, "isPrimary":Z
    :goto_25
    iget-object v4, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmFloatingActionMode(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;

    move-result-object v4

    if-ne p1, v4, :cond_2e

    move v2, v3

    .line 2474
    .local v2, "isFloating":Z
    :cond_2e
    if-nez v1, :cond_5e

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v4

    if-nez v4, :cond_5e

    .line 2475
    iget-object v4, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v4, v4, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Destroying unexpected ActionMode instance of TYPE_PRIMARY; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was not the current primary action mode! Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v6, v6, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    :cond_5e
    if-nez v2, :cond_a1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v4

    if-ne v4, v3, :cond_a1

    .line 2480
    iget-object v3, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v3, v3, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destroying unexpected ActionMode instance of TYPE_FLOATING; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was not the current floating action mode! Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmFloatingActionMode(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 2485
    .end local v1    # "isPrimary":Z
    .end local v2    # "isFloating":Z
    :cond_91
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v1

    if-nez v1, :cond_99

    move v1, v3

    goto :goto_9a

    :cond_99
    move v1, v2

    .line 2486
    .restart local v1    # "isPrimary":Z
    :goto_9a
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v4

    if-ne v4, v3, :cond_a1

    move v2, v3

    .line 2488
    .restart local v2    # "isFloating":Z
    :cond_a1
    :goto_a1
    const/4 v3, 0x0

    if-eqz v1, :cond_fd

    .line 2489
    iget-object v4, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPrimaryActionModePopup(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;

    move-result-object v4

    if-eqz v4, :cond_b7

    .line 2490
    iget-object v4, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmShowPrimaryActionModePopup(Lcom/android/internal/policy/DecorView;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2492
    :cond_b7
    iget-object v4, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v4

    if-eqz v4, :cond_f8

    .line 2493
    iget-object v4, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$mendOnGoingFadeAnimation(Lcom/android/internal/policy/DecorView;)V

    .line 2497
    iget-object v4, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v4

    .line 2498
    .local v4, "lastActionModeView":Lcom/android/internal/widget/ActionBarContextView;
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v6, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v6}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v6

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_136

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmFadeAnim(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)V

    .line 2500
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmFadeAnim(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;

    invoke-direct {v6, p0, v4}, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;-><init>(Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;Lcom/android/internal/widget/ActionBarContextView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2533
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmFadeAnim(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 2536
    .end local v4    # "lastActionModeView":Lcom/android/internal/widget/ActionBarContextView;
    :cond_f8
    iget-object v4, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    iput-object v3, v4, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    goto :goto_109

    .line 2537
    :cond_fd
    if-eqz v2, :cond_109

    .line 2538
    iget-object v4, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$mcleanupFloatingActionModeViews(Lcom/android/internal/policy/DecorView;)V

    .line 2539
    iget-object v4, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4, v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmFloatingActionMode(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode;)V

    .line 2541
    :cond_109
    :goto_109
    iget-object v3, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmWindow(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    if-eqz v3, :cond_130

    iget-object v3, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmWindow(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_130

    .line 2543
    :try_start_121
    iget-object v3, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmWindow(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V
    :try_end_12e
    .catch Ljava/lang/AbstractMethodError; {:try_start_121 .. :try_end_12e} :catch_12f

    .line 2546
    goto :goto_130

    .line 2544
    :catch_12f
    move-exception v3

    .line 2548
    :cond_130
    :goto_130
    iget-object v3, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->requestFitSystemWindows()V

    .line 2549
    return-void

    :array_136
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public whitelist onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .line 2553
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    instance-of v0, v0, Landroid/view/ActionMode$Callback2;

    if-eqz v0, :cond_e

    .line 2554
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    check-cast v0, Landroid/view/ActionMode$Callback2;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_11

    .line 2556
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2558
    :goto_11
    return-void
.end method

.method public whitelist onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 2457
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->requestFitSystemWindows()V

    .line 2458
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
