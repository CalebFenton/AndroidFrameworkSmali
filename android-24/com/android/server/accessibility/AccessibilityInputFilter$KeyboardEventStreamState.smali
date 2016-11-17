.class Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;
.super Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyboardEventStreamState"
.end annotation


# instance fields
.field private mEventSequenceStartedMap:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 646
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    #@3
    .line 644
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->mEventSequenceStartedMap:Landroid/util/SparseBooleanArray;

    #@a
    .line 647
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->reset()V

    #@d
    .line 646
    return-void
.end method


# virtual methods
.method public deviceIdValid()Z
    .locals 1

    #@0
    .prologue
    .line 668
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public final reset()V
    .locals 1

    #@0
    .prologue
    .line 652
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    #@3
    .line 653
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->mEventSequenceStartedMap:Landroid/util/SparseBooleanArray;

    #@5
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    #@8
    .line 651
    return-void
.end method

.method public final shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 675
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    #@4
    move-result v0

    #@5
    .line 676
    .local v0, "deviceId":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->mEventSequenceStartedMap:Landroid/util/SparseBooleanArray;

    #@7
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 677
    const/4 v2, 0x1

    #@e
    return v2

    #@f
    .line 679
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_1

    #@15
    const/4 v1, 0x1

    #@16
    .line 680
    .local v1, "shouldProcess":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->mEventSequenceStartedMap:Landroid/util/SparseBooleanArray;

    #@18
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@1b
    .line 681
    return v1

    #@1c
    .line 679
    .end local v1    # "shouldProcess":Z
    :cond_1
    const/4 v1, 0x0

    #@1d
    .restart local v1    # "shouldProcess":Z
    goto :goto_0
.end method

.method public updateDeviceId(I)Z
    .locals 1
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 662
    const/4 v0, 0x0

    #@1
    return v0
.end method
