.class Landroid/view/View$SendViewScrolledAccessibilityEvent;
.super Landroid/view/View$SendAccessibilityEventThrottle;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendViewScrolledAccessibilityEvent"
.end annotation


# instance fields
.field public greylist-max-o mDeltaX:I

.field public greylist-max-o mDeltaY:I


# direct methods
.method private constructor blacklist <init>(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 32764
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/View$SendAccessibilityEventThrottle;-><init>(Landroid/view/View;Landroid/view/View-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View;Landroid/view/View-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View$SendViewScrolledAccessibilityEvent;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o reset()V
    .registers 2

    .line 32779
    invoke-super {p0}, Landroid/view/View$SendAccessibilityEventThrottle;->reset()V

    .line 32780
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    .line 32781
    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    .line 32782
    return-void
.end method

.method public blacklist updateWithAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "accessibilityEvent"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 32770
    invoke-super {p0, p1}, Landroid/view/View$SendAccessibilityEventThrottle;->updateWithAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 32771
    iget v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollDeltaX()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    .line 32772
    iget v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollDeltaY()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    .line 32773
    iget v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollDeltaX(I)V

    .line 32774
    iget v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollDeltaY(I)V

    .line 32775
    return-void
.end method
