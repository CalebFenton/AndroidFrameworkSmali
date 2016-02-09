.class public Landroid/view/WindowCallbackWrapper;
.super Ljava/lang/Object;
.source "WindowCallbackWrapper.java"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field private mWrapped:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;)V
    .locals 2
    .param p1, "wrapped"    # Landroid/view/Window$Callback;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    if-nez p1, :cond_0

    #@5
    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Window callback may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 36
    :cond_0
    iput-object p1, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@10
    .line 32
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    #@5
    .line 150
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    #@5
    .line 145
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    #@5
    .line 110
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    #@5
    .line 100
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    #@5
    .line 115
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    #@5
    .line 120
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@5
    .line 95
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    #@5
    .line 105
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Landroid/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
