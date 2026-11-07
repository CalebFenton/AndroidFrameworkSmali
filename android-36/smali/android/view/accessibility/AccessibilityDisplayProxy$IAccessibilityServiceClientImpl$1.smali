.class Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;
.super Ljava/lang/Object;
.source "AccessibilityDisplayProxy.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl;-><init>(Landroid/view/accessibility/AccessibilityDisplayProxy;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$this$0:Landroid/view/accessibility/AccessibilityDisplayProxy;


# direct methods
.method constructor blacklist <init>(Landroid/view/accessibility/AccessibilityDisplayProxy;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/view/accessibility/AccessibilityDisplayProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    .line 347
    return-void
.end method

.method public blacklist init(ILandroid/os/IBinder;)V
    .registers 4
    .param p1, "connectionId"    # I
    .param p2, "windowToken"    # Landroid/os/IBinder;

    .line 291
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/view/accessibility/AccessibilityDisplayProxy;

    invoke-static {v0, p1}, Landroid/view/accessibility/AccessibilityDisplayProxy;->-$$Nest$fputmConnectionId(Landroid/view/accessibility/AccessibilityDisplayProxy;I)V

    .line 292
    return-void
.end method

.method public blacklist onAccessibilityButtonAvailabilityChanged(Z)V
    .registers 2
    .param p1, "available"    # Z

    .line 339
    return-void
.end method

.method public blacklist onAccessibilityButtonClicked(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 335
    return-void
.end method

.method public blacklist onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 275
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/view/accessibility/AccessibilityDisplayProxy;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityDisplayProxy;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 276
    return-void
.end method

.method public blacklist onFingerprintCapturingGesturesChanged(Z)V
    .registers 2
    .param p1, "active"    # Z

    .line 327
    return-void
.end method

.method public blacklist onFingerprintGesture(I)V
    .registers 2
    .param p1, "gesture"    # I

    .line 331
    return-void
.end method

.method public blacklist onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
    .registers 3
    .param p1, "gestureInfo"    # Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onInterrupt()V
    .registers 2

    .line 280
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/view/accessibility/AccessibilityDisplayProxy;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityDisplayProxy;->interrupt()V

    .line 281
    return-void
.end method

.method public blacklist onKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 307
    return-void
.end method

.method public blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 311
    return-void
.end method

.method public blacklist onPerformGestureResult(IZ)V
    .registers 3
    .param p1, "sequence"    # I
    .param p2, "completedSuccessfully"    # Z

    .line 323
    return-void
.end method

.method public blacklist onServiceConnected()V
    .registers 2

    .line 285
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/view/accessibility/AccessibilityDisplayProxy;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityDisplayProxy;->-$$Nest$msendServiceInfos(Landroid/view/accessibility/AccessibilityDisplayProxy;)V

    .line 286
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/view/accessibility/AccessibilityDisplayProxy;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityDisplayProxy;->onProxyConnected()V

    .line 287
    return-void
.end method

.method public blacklist onSoftKeyboardShowModeChanged(I)V
    .registers 2
    .param p1, "showMode"    # I

    .line 319
    return-void
.end method

.method public blacklist onSystemActionsChanged()V
    .registers 1

    .line 343
    return-void
.end method

.method public blacklist onTouchStateChanged(II)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "state"    # I

    .line 315
    return-void
.end method

.method public blacklist startInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4
    .param p1, "inputConnection"    # Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .line 352
    return-void
.end method
