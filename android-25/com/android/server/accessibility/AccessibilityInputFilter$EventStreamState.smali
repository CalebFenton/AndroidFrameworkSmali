.class Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.super Ljava/lang/Object;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventStreamState"
.end annotation


# instance fields
.field private mDeviceId:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 518
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    #@6
    .line 517
    return-void
.end method


# virtual methods
.method public deviceIdValid()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 542
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    #@3
    if-ltz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 549
    const/4 v0, -0x1

    #@1
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    #@3
    .line 548
    return-void
.end method

.method public shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 572
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 564
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public shouldProcessScroll()Z
    .locals 1

    #@0
    .prologue
    .line 556
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public updateDeviceId(I)Z
    .locals 1
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 529
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 530
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    #@9
    .line 534
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    #@b
    .line 535
    const/4 v0, 0x1

    #@c
    return v0
.end method
