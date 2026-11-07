.class public interface abstract Landroid/accessibilityservice/AccessibilityService$Callbacks;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract blacklist createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
.end method

.method public abstract greylist-max-o init(ILandroid/os/IBinder;)V
.end method

.method public abstract greylist-max-o onAccessibilityButtonAvailabilityChanged(Z)V
.end method

.method public abstract blacklist onAccessibilityButtonClicked(I)V
.end method

.method public abstract greylist-max-o onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract greylist-max-o onFingerprintCapturingGesturesChanged(Z)V
.end method

.method public abstract greylist-max-o onFingerprintGesture(I)V
.end method

.method public abstract blacklist onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
.end method

.method public abstract greylist-max-o onInterrupt()V
.end method

.method public abstract greylist-max-o onKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract blacklist onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
.end method

.method public abstract blacklist onMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract greylist-max-o onPerformGestureResult(IZ)V
.end method

.method public abstract greylist-max-o onServiceConnected()V
.end method

.method public abstract greylist-max-o onSoftKeyboardShowModeChanged(I)V
.end method

.method public abstract blacklist onSystemActionsChanged()V
.end method

.method public abstract blacklist onTouchStateChanged(II)V
.end method

.method public abstract blacklist startInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
.end method
