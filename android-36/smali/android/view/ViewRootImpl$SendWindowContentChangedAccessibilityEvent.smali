.class Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendWindowContentChangedAccessibilityEvent"
.end annotation


# instance fields
.field public blacklist mAction:Ljava/util/OptionalInt;

.field private greylist-max-o mChangeTypes:I

.field public greylist-max-o mLastEventTimeMillis:J

.field public greylist-max-o mOrigin:[Ljava/lang/StackTraceElement;

.field public greylist-max-o mSource:Landroid/view/View;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 12420
    iput-object p1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12421
    const/4 p1, 0x0

    iput p1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    .line 12430
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p1

    iput-object p1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mAction:Ljava/util/OptionalInt;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;)V

    return-void
.end method

.method private blacklist canContinueThrottle(Landroid/view/View;I)Z
    .registers 5
    .param p1, "source"    # Landroid/view/View;
    .param p2, "changeType"    # I

    .line 12545
    invoke-static {}, Landroid/view/accessibility/Flags;->reduceWindowContentChangedEventThrottle()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 12547
    return v1

    .line 12549
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    if-nez v0, :cond_d

    .line 12551
    return v1

    .line 12553
    :cond_d
    iget-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    if-ne v0, p1, :cond_12

    .line 12555
    return v1

    .line 12558
    :cond_12
    if-ne p2, v1, :cond_19

    iget v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    if-ne v0, v1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method


# virtual methods
.method public greylist-max-o removeCallbacksAndRun()V
    .registers 2

    .line 12540
    iget-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12541
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->run()V

    .line 12542
    return-void
.end method

.method public whitelist test-api run()V
    .registers 4

    .line 12442
    iget-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 12443
    .local v0, "source":Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 12444
    if-nez v0, :cond_f

    .line 12445
    const-string v1, "ViewRootImpl"

    const-string v2, "Accessibility content change has no source"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12446
    return-void

    .line 12449
    :cond_f
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 12450
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mLastEventTimeMillis:J

    .line 12451
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 12452
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 12453
    iget v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 12454
    iget-object v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mAction:Ljava/util/OptionalInt;

    invoke-virtual {v2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mAction:Ljava/util/OptionalInt;

    invoke-virtual {v2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 12456
    :cond_3e
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 12457
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_46

    .line 12458
    :cond_42
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mLastEventTimeMillis:J

    .line 12461
    :goto_46
    invoke-virtual {v0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 12462
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    .line 12463
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mAction:Ljava/util/OptionalInt;

    .line 12465
    return-void
.end method

.method public greylist-max-o runOrPost(Landroid/view/View;I)V
    .registers 10
    .param p1, "source"    # Landroid/view/View;
    .param p2, "changeType"    # I

    .line 12468
    iget-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2a

    .line 12469
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    .line 12472
    .local v0, "e":Landroid/view/ViewRootImpl$CalledFromWrongThreadException;
    const-string v1, "ViewRootImpl"

    const-string v2, "Accessibility content change on non-UI thread. Future Android versions will throw an exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12476
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12477
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    if-eqz v1, :cond_2a

    .line 12481
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->run()V

    .line 12485
    .end local v0    # "e":Landroid/view/ViewRootImpl$CalledFromWrongThreadException;
    :cond_2a
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->canContinueThrottle(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 12486
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->removeCallbacksAndRun()V

    .line 12489
    :cond_33
    iget-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    if-eqz v0, :cond_82

    .line 12490
    iget-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mgetCommonPredecessor(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 12491
    .local v0, "newSource":Landroid/view/View;
    if-eqz v0, :cond_45

    .line 12492
    invoke-virtual {v0}, Landroid/view/View;->getSelfOrParentImportantForA11y()Landroid/view/View;

    move-result-object v0

    .line 12494
    :cond_45
    if-nez v0, :cond_48

    .line 12497
    move-object v0, p1

    .line 12500
    :cond_48
    iget v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    or-int/2addr v1, p2

    iput v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    .line 12501
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    if-eq v1, v0, :cond_59

    .line 12502
    iget v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    .line 12503
    iput-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 12506
    :cond_59
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getPerformingAction()I

    move-result v1

    .line 12507
    .local v1, "performingAction":I
    if-eqz v1, :cond_81

    .line 12508
    iget-object v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mAction:Ljava/util/OptionalInt;

    invoke-virtual {v2}, Ljava/util/OptionalInt;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 12509
    invoke-static {v1}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v2

    iput-object v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mAction:Ljava/util/OptionalInt;

    goto :goto_81

    .line 12510
    :cond_72
    iget-object v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mAction:Ljava/util/OptionalInt;

    invoke-virtual {v2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v2

    if-eq v2, v1, :cond_81

    .line 12515
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v2

    iput-object v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mAction:Ljava/util/OptionalInt;

    .line 12519
    :cond_81
    :goto_81
    return-void

    .line 12521
    .end local v0    # "newSource":Landroid/view/View;
    .end local v1    # "performingAction":I
    :cond_82
    iput-object p1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 12522
    iput p2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    .line 12523
    iget-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getPerformingAction()I

    move-result v0

    if-eqz v0, :cond_9e

    .line 12524
    iget-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getPerformingAction()I

    move-result v0

    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mAction:Ljava/util/OptionalInt;

    .line 12529
    :cond_9e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mLastEventTimeMillis:J

    sub-long/2addr v0, v2

    .line 12531
    .local v0, "timeSinceLastMillis":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v2

    .line 12532
    .local v2, "minEventIntervalMillis":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_b1

    .line 12533
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->removeCallbacksAndRun()V

    goto :goto_ba

    .line 12535
    :cond_b1
    iget-object v4, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sub-long v5, v2, v0

    invoke-virtual {v4, p0, v5, v6}, Landroid/view/ViewRootImpl$ViewRootHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12537
    :goto_ba
    return-void
.end method
