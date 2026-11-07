.class public Landroid/inputmethodservice/navigationbar/NavigationHandle;
.super Landroid/view/View;
.source "NavigationHandle.java"

# interfaces
.implements Landroid/inputmethodservice/navigationbar/ButtonInterface;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/navigationbar/NavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationHandle;->setFocusable(Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDarkIntensity(F)V
    .registers 2
    .param p1, "intensity"    # F

    .line 52
    return-void
.end method

.method public blacklist setDelayTouchFeedback(Z)V
    .registers 2
    .param p1, "shouldDelay"    # Z

    .line 56
    return-void
.end method

.method public blacklist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 48
    return-void
.end method
