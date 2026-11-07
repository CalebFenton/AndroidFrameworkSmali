.class public interface abstract Landroid/view/Window$Callback;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.end method

.method public abstract whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract whitelist onActionModeFinished(Landroid/view/ActionMode;)V
.end method

.method public abstract whitelist onActionModeStarted(Landroid/view/ActionMode;)V
.end method

.method public abstract whitelist onAttachedToWindow()V
.end method

.method public abstract whitelist onContentChanged()V
.end method

.method public abstract whitelist onCreatePanelMenu(ILandroid/view/Menu;)Z
.end method

.method public abstract whitelist onCreatePanelView(I)Landroid/view/View;
.end method

.method public abstract whitelist onDetachedFromWindow()V
.end method

.method public abstract whitelist onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end method

.method public abstract whitelist onMenuOpened(ILandroid/view/Menu;)Z
.end method

.method public abstract whitelist onPanelClosed(ILandroid/view/Menu;)V
.end method

.method public whitelist onPointerCaptureChanged(Z)V
    .registers 2
    .param p1, "hasCapture"    # Z

    .line 621
    return-void
.end method

.method public abstract whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
.end method

.method public whitelist onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 4
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 614
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    return-void
.end method

.method public abstract whitelist onSearchRequested()Z
.end method

.method public abstract whitelist onSearchRequested(Landroid/view/SearchEvent;)Z
.end method

.method public abstract whitelist onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract whitelist onWindowFocusChanged(Z)V
.end method

.method public abstract whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end method

.method public abstract whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
.end method
