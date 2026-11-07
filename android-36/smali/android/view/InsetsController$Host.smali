.class public interface abstract Landroid/view/InsetsController$Host;
.super Ljava/lang/Object;
.source "InsetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Host"
.end annotation


# virtual methods
.method public abstract blacklist addOnPreDrawRunnable(Ljava/lang/Runnable;)V
.end method

.method public varargs abstract blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
.end method

.method public abstract blacklist dipToPx(I)I
.end method

.method public abstract blacklist dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
.end method

.method public abstract blacklist dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
.end method

.method public abstract blacklist dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation
.end method

.method public abstract blacklist dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
.end method

.method public abstract blacklist getHandler()Landroid/os/Handler;
.end method

.method public abstract blacklist getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
.end method

.method public blacklist getRootViewContext()Landroid/content/Context;
    .registers 2

    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist getRootViewTitle()Ljava/lang/String;
.end method

.method public abstract blacklist getSystemBarsAppearance()I
.end method

.method public abstract blacklist getSystemBarsBehavior()I
.end method

.method public blacklist getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .registers 2

    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist getWindowToken()Landroid/os/IBinder;
.end method

.method public abstract blacklist hasAnimationCallbacks()Z
.end method

.method public blacklist isHandlingPointerEvent()Z
    .registers 2

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist notifyInsetsChanged()V
.end method

.method public abstract blacklist postInsetsAnimationCallback(Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
.end method

.method public abstract blacklist setSystemBarsAppearance(II)V
.end method

.method public abstract blacklist setSystemBarsBehavior(I)V
.end method

.method public blacklist updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3
    .param p1, "animatingTypes"    # I
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 222
    return-void
.end method

.method public blacklist updateCompatSysUiVisibility(III)V
    .registers 4
    .param p1, "visibleTypes"    # I
    .param p2, "requestedVisibleTypes"    # I
    .param p3, "controllableTypes"    # I

    .line 117
    return-void
.end method

.method public abstract blacklist updateRequestedVisibleTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
.end method
