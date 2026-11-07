.class public interface abstract Landroid/webkit/WebViewProvider$ViewDelegate;
.super Ljava/lang/Object;
.source "WebViewProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewDelegate"
.end annotation


# virtual methods
.method public whitelist autofill(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p1, "values":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/autofill/AutofillValue;>;"
    return-void
.end method

.method public whitelist dispatchCreateViewTranslationRequest(Ljava/util/Map;[ILandroid/view/translation/TranslationCapability;Ljava/util/List;)V
    .registers 5
    .param p2, "supportedFormats"    # [I
    .param p3, "capability"    # Landroid/view/translation/TranslationCapability;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "[J>;[I",
            "Landroid/view/translation/TranslationCapability;",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    .line 390
    .local p1, "viewIds":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/autofill/AutofillId;[J>;"
    .local p4, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/view/translation/ViewTranslationRequest;>;"
    return-void
.end method

.method public abstract whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract whitelist findFocus(Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract whitelist getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
.end method

.method public abstract whitelist getHandler(Landroid/os/Handler;)Landroid/os/Handler;
.end method

.method public whitelist isVisibleToUserForAutofill(I)Z
    .registers 3
    .param p1, "virtualId"    # I

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public abstract whitelist onActivityResult(IILandroid/content/Intent;)V
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 498
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onAttachedToWindow()V
.end method

.method public whitelist onCheckIsTextEditor()Z
    .registers 2

    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract whitelist onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end method

.method public whitelist onCreateVirtualViewTranslationRequests([J[ILjava/util/function/Consumer;)V
    .registers 4
    .param p1, "virtualIds"    # [J
    .param p2, "supportedFormats"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[I",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    .line 377
    .local p3, "requestsCollector":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/ViewTranslationRequest;>;"
    return-void
.end method

.method public abstract whitelist onDetachedFromWindow()V
.end method

.method public abstract whitelist onDragEvent(Landroid/view/DragEvent;)Z
.end method

.method public abstract whitelist onDraw(Landroid/graphics/Canvas;)V
.end method

.method public abstract whitelist onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
.end method

.method public abstract whitelist onFinishTemporaryDetach()V
.end method

.method public abstract whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
.end method

.method public abstract whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract whitelist onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.end method

.method public abstract whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
.end method

.method public abstract whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract whitelist onMeasure(II)V
.end method

.method public whitelist onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 433
    return-void
.end method

.method public abstract whitelist onOverScrolled(IIZZ)V
.end method

.method public whitelist onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .registers 3
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 357
    return-void
.end method

.method public whitelist onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V
    .registers 3
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 369
    return-void
.end method

.method public abstract whitelist onProvideVirtualStructure(Landroid/view/ViewStructure;)V
.end method

.method public blacklist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 507
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onScrollChanged(IIII)V
.end method

.method public abstract whitelist onSizeChanged(IIII)V
.end method

.method public abstract whitelist onStartTemporaryDetach()V
.end method

.method public abstract whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method public whitelist onVirtualViewTranslationResponses(Landroid/util/LongSparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;)V"
        }
    .end annotation

    .line 382
    .local p1, "response":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/translation/ViewTranslationResponse;>;"
    return-void
.end method

.method public abstract whitelist onVisibilityChanged(Landroid/view/View;I)V
.end method

.method public abstract whitelist onWindowFocusChanged(Z)V
.end method

.method public abstract whitelist onWindowVisibilityChanged(I)V
.end method

.method public abstract whitelist performAccessibilityAction(ILandroid/os/Bundle;)Z
.end method

.method public abstract whitelist performLongClick()Z
.end method

.method public abstract whitelist preDispatchDraw(Landroid/graphics/Canvas;)V
.end method

.method public abstract whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
.end method

.method public abstract whitelist requestFocus(ILandroid/graphics/Rect;)Z
.end method

.method public abstract whitelist setBackgroundColor(I)V
.end method

.method public abstract whitelist setFrame(IIII)Z
.end method

.method public abstract whitelist setLayerType(ILandroid/graphics/Paint;)V
.end method

.method public abstract whitelist setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract whitelist setOverScrollMode(I)V
.end method

.method public abstract whitelist setScrollBarStyle(I)V
.end method

.method public abstract whitelist shouldDelayChildPressedState()Z
.end method
