.class Landroid/view/autofill/AutofillPopupWindow$2;
.super Landroid/view/View;
.source "AutofillPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/autofill/AutofillPopupWindow;->update(Landroid/view/View;IIIILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$anchor:Landroid/view/View;

.field final synthetic blacklist val$mLocationOnScreen:[I


# direct methods
.method constructor blacklist <init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/content/Context;[ILandroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Landroid/view/autofill/AutofillPopupWindow;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 141
    iput-object p3, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$mLocationOnScreen:[I

    iput-object p4, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public whitelist addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnAttachStateChangeListener;

    .line 181
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 182
    return-void
.end method

.method public blacklist getAccessibilityViewId()I
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    return v0
.end method

.method public whitelist getApplicationWindowToken()Landroid/os/IBinder;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLayoutDirection()I
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public whitelist getLocationOnScreen([I)V
    .registers 4
    .param p1, "location"    # [I

    .line 144
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$mLocationOnScreen:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, p1, v1

    .line 145
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$mLocationOnScreen:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    aput v0, p1, v1

    .line 146
    return-void
.end method

.method public whitelist getRootView()Landroid/view/View;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWindowDisplayFrame(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 175
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    .line 176
    return-void
.end method

.method public whitelist getWindowToken()Landroid/os/IBinder;
    .registers 2

    .line 202
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isAttachedToWindow()Z
    .registers 2

    .line 192
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public whitelist removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnAttachStateChangeListener;

    .line 187
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 188
    return-void
.end method

.method public whitelist requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .registers 4
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .line 197
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method
