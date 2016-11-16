.class Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;
.super Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MouseEventStreamState"
.end annotation


# instance fields
.field private mMotionSequenceStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 582
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    #@3
    .line 583
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->reset()V

    #@6
    .line 582
    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    #@0
    .prologue
    .line 588
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    #@3
    .line 589
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    #@6
    .line 587
    return-void
.end method

.method public final shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 599
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 600
    return v1

    #@7
    .line 603
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@a
    move-result v0

    #@b
    .line 605
    .local v0, "action":I
    if-eqz v0, :cond_1

    #@d
    const/4 v3, 0x7

    #@e
    if-ne v0, v3, :cond_2

    #@10
    .line 604
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    #@12
    .line 606
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    #@14
    return v1

    #@15
    :cond_2
    move v1, v2

    #@16
    .line 605
    goto :goto_0
.end method

.method public final shouldProcessScroll()Z
    .locals 1

    #@0
    .prologue
    .line 594
    const/4 v0, 0x1

    #@1
    return v0
.end method
