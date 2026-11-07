.class public final Landroid/view/InputEventConsistencyVerifier;
.super Ljava/lang/Object;
.source "InputEventConsistencyVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputEventConsistencyVerifier$KeyState;
    }
.end annotation


# static fields
.field private static final greylist-max-o EVENT_TYPE_GENERIC_MOTION:Ljava/lang/String; = "GenericMotionEvent"

.field private static final greylist-max-o EVENT_TYPE_KEY:Ljava/lang/String; = "KeyEvent"

.field private static final greylist-max-o EVENT_TYPE_TOUCH:Ljava/lang/String; = "TouchEvent"

.field private static final greylist-max-o EVENT_TYPE_TRACKBALL:Ljava/lang/String; = "TrackballEvent"

.field public static final greylist-max-o FLAG_RAW_DEVICE_INPUT:I = 0x1

.field private static final greylist-max-o IS_ENG_BUILD:Z

.field private static final greylist-max-o RECENT_EVENTS_TO_LOG:I = 0x5


# instance fields
.field private greylist-max-o mButtonsPressed:I

.field private final greylist-max-o mCaller:Ljava/lang/Object;

.field private greylist-max-o mCurrentEvent:Landroid/view/InputEvent;

.field private greylist-max-o mCurrentEventType:Ljava/lang/String;

.field private final greylist-max-o mFlags:I

.field private greylist-max-o mHoverEntered:Z

.field private greylist-max-o mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field private greylist-max-o mLastEventSeq:I

.field private greylist-max-o mLastEventType:Ljava/lang/String;

.field private greylist-max-o mLastNestingLevel:I

.field private final greylist-max-o mLogTag:Ljava/lang/String;

.field private greylist-max-o mMostRecentEventIndex:I

.field private greylist-max-o mRecentEvents:[Landroid/view/InputEvent;

.field private greylist-max-o mRecentEventsUnhandled:[Z

.field private greylist-max-o mTouchEventStreamDeviceId:I

.field private greylist-max-o mTouchEventStreamIsTainted:Z

.field private greylist-max-o mTouchEventStreamPointers:I

.field private greylist-max-o mTouchEventStreamSource:I

.field private greylist-max-o mTouchEventStreamUnhandled:Z

.field private greylist-max-o mTrackballDown:Z

.field private greylist-max-o mTrackballUnhandled:Z

.field private greylist-max-o mViolationMessage:Ljava/lang/StringBuilder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/view/InputEventConsistencyVerifier;->IS_ENG_BUILD:Z

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/Object;I)V
    .registers 4
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .registers 5
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "flags"    # I
    .param p3, "logTag"    # Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    .line 131
    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mCaller:Ljava/lang/Object;

    .line 132
    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mFlags:I

    .line 133
    if-eqz p3, :cond_e

    move-object v0, p3

    goto :goto_10

    :cond_e
    const-string v0, "InputEventConsistencyVerifier"

    :goto_10
    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLogTag:Ljava/lang/String;

    .line 134
    return-void
.end method

.method private greylist-max-o addKeyState(III)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "source"    # I
    .param p3, "keyCode"    # I

    .line 767
    invoke-static {p1, p2, p3}, Landroid/view/InputEventConsistencyVerifier$KeyState;->obtain(III)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v0

    .line 768
    .local v0, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 769
    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 770
    return-void
.end method

.method private static greylist-max-o appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V
    .registers 7
    .param p0, "message"    # Ljava/lang/StringBuilder;
    .param p1, "index"    # I
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "unhandled"    # Z

    .line 724
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": sent at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/InputEvent;->getEventTimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 725
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    if-eqz p3, :cond_1d

    .line 727
    const-string v0, "(unhandled) "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    :cond_1d
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 730
    return-void
.end method

.method private greylist-max-o ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 635
    .local v0, "actionButton":I
    if-nez v0, :cond_24

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No action button set. Action button should always be non-zero for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 637
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 640
    :cond_24
    return-void
.end method

.method private greylist-max-o ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 644
    .local v0, "historySize":I
    if-eqz v0, :cond_2e

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "History size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but it should always be 0 for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 648
    :cond_2e
    return-void
.end method

.method private greylist-max-o ensureMetaStateIsNormalized(I)V
    .registers 5
    .param p1, "metaState"    # I

    .line 618
    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    .line 619
    .local v0, "normalizedMetaState":I
    if-eq v0, p1, :cond_1c

    .line 620
    nop

    .line 621
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 620
    const-string v2, "Metastate not normalized.  Was 0x%08x but expected 0x%08x."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 623
    :cond_1c
    return-void
.end method

.method private greylist-max-o ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 627
    .local v0, "pointerCount":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pointer count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but it should always be 1 for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 628
    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 631
    :cond_2f
    return-void
.end method

.method private greylist-max-o findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;
    .registers 9
    .param p1, "deviceId"    # I
    .param p2, "source"    # I
    .param p3, "keyCode"    # I
    .param p4, "remove"    # Z

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "last":Landroid/view/InputEventConsistencyVerifier$KeyState;
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 747
    .local v1, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :goto_3
    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 748
    iget v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->deviceId:I

    if-ne v3, p1, :cond_22

    iget v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->source:I

    if-ne v3, p2, :cond_22

    iget v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->keyCode:I

    if-ne v3, p3, :cond_22

    .line 750
    if-eqz p4, :cond_21

    .line 751
    if-eqz v0, :cond_1b

    .line 752
    iget-object v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v3, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    goto :goto_1f

    .line 754
    :cond_1b
    iget-object v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 756
    :goto_1f
    iput-object v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 758
    :cond_21
    return-object v1

    .line 760
    :cond_22
    move-object v0, v1

    .line 761
    iget-object v1, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    goto :goto_3

    .line 763
    :cond_26
    return-object v2
.end method

.method private greylist-max-o finishEvent()V
    .registers 11

    .line 674
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eqz v0, :cond_74

    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_74

    .line 675
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->isTainted()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 677
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v4, "\n  in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mCaller:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 678
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v4, "\n  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-static {v0, v1, v5, v1}, Landroid/view/InputEventConsistencyVerifier;->appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V

    .line 681
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    if-eqz v0, :cond_5f

    .line 682
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v5, "\n  -- recent events --"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3e
    if-ge v0, v3, :cond_5f

    .line 684
    iget v5, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    add-int/2addr v5, v3

    sub-int/2addr v5, v0

    rem-int/2addr v5, v3

    .line 686
    .local v5, "index":I
    iget-object v6, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    aget-object v6, v6, v5

    .line 687
    .local v6, "event":Landroid/view/InputEvent;
    if-nez v6, :cond_4c

    .line 688
    goto :goto_5f

    .line 690
    :cond_4c
    iget-object v7, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    iget-object v7, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    aget-boolean v9, v9, v5

    invoke-static {v7, v8, v6, v9}, Landroid/view/InputEventConsistencyVerifier;->appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V

    .line 683
    .end local v5    # "index":I
    .end local v6    # "event":Landroid/view/InputEvent;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 695
    .end local v0    # "i":I
    :cond_5f
    :goto_5f
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLogTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, v2}, Landroid/view/InputEvent;->setTainted(Z)V

    .line 701
    :cond_6f
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 705
    :cond_74
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    if-nez v0, :cond_80

    .line 706
    new-array v0, v3, [Landroid/view/InputEvent;

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    .line 707
    new-array v0, v3, [Z

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    .line 709
    :cond_80
    iget v0, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    add-int/2addr v0, v2

    rem-int/2addr v0, v3

    .line 710
    .local v0, "index":I
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    .line 711
    iget-object v2, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    aget-object v2, v2, v0

    if-eqz v2, :cond_93

    .line 712
    iget-object v2, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/InputEvent;->recycle()V

    .line 714
    :cond_93
    iget-object v2, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    invoke-virtual {v3}, Landroid/view/InputEvent;->copy()Landroid/view/InputEvent;

    move-result-object v3

    aput-object v3, v2, v0

    .line 715
    iget-object v2, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    aput-boolean v1, v2, v0

    .line 718
    .end local v0    # "index":I
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    .line 719
    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    .line 720
    return-void
.end method

.method public static greylist isInstrumentationEnabled()Z
    .registers 1

    .line 142
    sget-boolean v0, Landroid/view/InputEventConsistencyVerifier;->IS_ENG_BUILD:Z

    return v0
.end method

.method private greylist-max-o problem(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 733
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    if-nez v0, :cond_b

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    .line 736
    :cond_b
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_21

    .line 737
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 739
    :cond_21
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    const-string v1, "\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    :goto_28
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    return-void
.end method

.method private greylist-max-o startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "nestingLevel"    # I
    .param p3, "eventType"    # Ljava/lang/String;

    .line 652
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v0

    .line 653
    .local v0, "seq":I
    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_12

    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    if-ge p2, v1, :cond_12

    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    if-ne p3, v1, :cond_12

    .line 655
    return v2

    .line 658
    :cond_12
    if-lez p2, :cond_1b

    .line 659
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    .line 660
    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    .line 661
    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    goto :goto_23

    .line 663
    :cond_1b
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    .line 664
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    .line 665
    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    .line 668
    :goto_23
    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    .line 669
    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    .line 670
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public greylist-max-o onGenericMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "nestingLevel"    # I

    .line 468
    const-string v0, "GenericMotionEvent"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 469
    return-void

    .line 473
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    .line 475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 476
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 477
    .local v1, "source":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    .line 478
    .local v2, "buttonState":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v3
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_129

    .line 479
    .local v3, "actionButton":I
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_113

    .line 480
    const-string v4, "Reported button state differs from expected button state based on press and release events. Is 0x%08x but expected 0x%08x."

    const/16 v5, 0x40

    const/16 v6, 0x20

    packed-switch v0, :pswitch_data_12e

    .line 556
    :try_start_2d
    const-string v4, "Invalid action for generic pointer event."

    goto/16 :goto_10f

    .line 528
    :pswitch_31
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 529
    iget v7, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/2addr v7, v3

    if-eq v7, v3, :cond_55

    .line 530
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Action button for ACTION_BUTTON_RELEASE event is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but it was either never pressed or has already been released."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 535
    :cond_55
    iget v7, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    not-int v8, v3

    and-int/2addr v7, v8

    iput v7, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 540
    if-ne v3, v6, :cond_68

    and-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_68

    .line 542
    iget v5, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/lit8 v5, v5, -0x3

    iput v5, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    goto :goto_74

    .line 543
    :cond_68
    if-ne v3, v5, :cond_74

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_74

    .line 545
    iget v5, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/lit8 v5, v5, -0x5

    iput v5, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 548
    :cond_74
    :goto_74
    iget v5, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    if-eq v5, v2, :cond_124

    .line 549
    nop

    .line 552
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 549
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto/16 :goto_124

    .line 500
    :pswitch_90
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 501
    iget v7, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_b4

    .line 502
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Action button for ACTION_BUTTON_PRESS event is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but it has already been pressed and has yet to be released."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 507
    :cond_b4
    iget v7, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    or-int/2addr v7, v3

    iput v7, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 512
    if-ne v3, v6, :cond_c6

    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_c6

    .line 514
    iget v5, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    goto :goto_d2

    .line 515
    :cond_c6
    if-ne v3, v5, :cond_d2

    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_d2

    .line 517
    iget v5, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 520
    :cond_d2
    :goto_d2
    iget v5, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    if-eq v5, v2, :cond_124

    .line 521
    nop

    .line 524
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 521
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_124

    .line 489
    :pswitch_ed
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 490
    iget-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    if-nez v4, :cond_f9

    .line 491
    const-string v4, "ACTION_HOVER_EXIT without prior ACTION_HOVER_ENTER"

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 493
    :cond_f9
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    .line 494
    goto :goto_124

    .line 482
    :pswitch_fd
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 483
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    .line 484
    goto :goto_124

    .line 496
    :pswitch_104
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 497
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 498
    goto :goto_124

    .line 486
    :pswitch_10b
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 487
    goto :goto_124

    .line 556
    :goto_10f
    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 557
    goto :goto_124

    .line 559
    :cond_113
    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_124

    .line 560
    packed-switch v0, :pswitch_data_13e

    .line 565
    const-string v4, "Invalid action for generic joystick event."

    goto :goto_121

    .line 562
    :pswitch_11d
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 563
    goto :goto_124

    .line 565
    :goto_121
    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_124
    .catchall {:try_start_2d .. :try_end_124} :catchall_129

    .line 570
    .end local v0    # "action":I
    .end local v1    # "source":I
    .end local v2    # "buttonState":I
    .end local v3    # "actionButton":I
    :cond_124
    :goto_124
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 571
    nop

    .line 572
    return-void

    .line 570
    :catchall_129
    move-exception v0

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 571
    throw v0

    :pswitch_data_12e
    .packed-switch 0x7
        :pswitch_10b
        :pswitch_104
        :pswitch_fd
        :pswitch_ed
        :pswitch_90
        :pswitch_31
    .end packed-switch

    :pswitch_data_13e
    .packed-switch 0x2
        :pswitch_11d
    .end packed-switch
.end method

.method public greylist-max-o onInputEvent(Landroid/view/InputEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "nestingLevel"    # I

    .line 176
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_b

    .line 177
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 178
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0, p2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 179
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    goto :goto_28

    .line 180
    :cond_b
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 181
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 182
    invoke-virtual {p0, v0, p2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    goto :goto_28

    .line 183
    :cond_18
    const v1, 0x10004

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 184
    invoke-virtual {p0, v0, p2}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    goto :goto_28

    .line 186
    :cond_25
    invoke-virtual {p0, v0, p2}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 189
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    :goto_28
    return-void
.end method

.method public greylist-max-o onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "nestingLevel"    # I

    .line 201
    const-string v0, "KeyEvent"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 202
    return-void

    .line 206
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    .line 208
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 209
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 210
    .local v1, "deviceId":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v2

    .line 211
    .local v2, "source":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 212
    .local v3, "keyCode":I
    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_84

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    goto :goto_5b

    .line 242
    :pswitch_27
    goto :goto_79

    .line 233
    :pswitch_28
    invoke-direct {p0, v1, v2, v3, v4}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v4

    .line 234
    .local v4, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-nez v4, :cond_34

    .line 235
    const-string v5, "ACTION_UP but key was not down."

    invoke-direct {p0, v5}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_79

    .line 237
    :cond_34
    invoke-virtual {v4}, Landroid/view/InputEventConsistencyVerifier$KeyState;->recycle()V

    .line 239
    goto :goto_79

    .line 214
    .end local v4    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :pswitch_38
    const/4 v5, 0x0

    invoke-direct {p0, v1, v2, v3, v5}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v6

    .line 215
    .local v6, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-eqz v6, :cond_57

    .line 220
    iget-boolean v7, v6, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    if-eqz v7, :cond_46

    .line 221
    iput-boolean v5, v6, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    goto :goto_79

    .line 222
    :cond_46
    iget v5, p0, Landroid/view/InputEventConsistencyVerifier;->mFlags:I

    and-int/2addr v4, v5

    if-nez v4, :cond_79

    .line 223
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_79

    .line 224
    const-string v4, "ACTION_DOWN but key is already down and this event is not a key repeat."

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_79

    .line 228
    :cond_57
    invoke-direct {p0, v1, v2, v3}, Landroid/view/InputEventConsistencyVerifier;->addKeyState(III)V

    .line 230
    goto :goto_79

    .line 244
    .end local v6    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :goto_5b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for key event."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_9 .. :try_end_79} :catchall_7e

    .line 249
    .end local v0    # "action":I
    .end local v1    # "deviceId":I
    .end local v2    # "source":I
    .end local v3    # "keyCode":I
    :cond_79
    :goto_79
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 250
    nop

    .line 251
    return-void

    .line 249
    :catchall_7e
    move-exception v0

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 250
    throw v0

    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_38
        :pswitch_28
        :pswitch_27
    .end packed-switch
.end method

.method public greylist onTouchEvent(Landroid/view/MotionEvent;I)V
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "nestingLevel"    # I

    .line 327
    const-string v0, "TouchEvent"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 328
    return-void

    .line 331
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 332
    .local v0, "action":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1a

    const/4 v3, 0x4

    if-ne v0, v3, :cond_18

    goto :goto_1a

    :cond_18
    move v3, v1

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v3, v2

    .line 334
    .local v3, "newStream":Z
    :goto_1b
    if-eqz v3, :cond_2b

    iget-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    if-nez v4, :cond_25

    iget-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    if-eqz v4, :cond_2b

    .line 335
    :cond_25
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 336
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    .line 337
    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 339
    :cond_2b
    iget-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    if-eqz v4, :cond_32

    .line 340
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setTainted(Z)V

    .line 344
    :cond_32
    :try_start_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    .line 347
    .local v4, "deviceId":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    .line 349
    .local v5, "source":I
    if-nez v3, :cond_90

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_90

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    if-ne v6, v4, :cond_50

    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    if-eq v6, v5, :cond_90

    .line 352
    :cond_50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Touch event stream contains events from multiple sources: previous device id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", previous source "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    .line 354
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new device id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new source "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 356
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 352
    invoke-direct {p0, v6}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 358
    :cond_90
    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    .line 359
    iput v5, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    .line 361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 362
    .local v6, "pointerCount":I
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_20a

    .line 363
    packed-switch v0, :pswitch_data_21a

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    goto :goto_114

    .line 395
    :pswitch_a4
    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    if-eqz v2, :cond_ad

    .line 396
    const-string v2, "ACTION_OUTSIDE but pointers are still down."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 398
    :cond_ad
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 399
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 400
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 401
    goto/16 :goto_20f

    .line 391
    :pswitch_b7
    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 392
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 393
    goto/16 :goto_20f

    .line 380
    :pswitch_bd
    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 381
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 382
    .local v1, "expectedPointerCount":I
    if-eq v6, v1, :cond_20f

    .line 383
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_MOVE contained "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pointers but there are currently "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pointers down."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 386
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto/16 :goto_20f

    .line 374
    .end local v1    # "expectedPointerCount":I
    :pswitch_ef
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 375
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 376
    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 377
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 378
    goto/16 :goto_20f

    .line 365
    :pswitch_fb
    iget v7, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    if-eqz v7, :cond_104

    .line 366
    const-string v7, "ACTION_DOWN but pointers are already down.  Probably missing ACTION_UP from previous gesture."

    invoke-direct {p0, v7}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 369
    :cond_104
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 370
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 371
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    shl-int v1, v2, v1

    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 372
    goto/16 :goto_20f

    .line 404
    .local v1, "actionMasked":I
    :goto_114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7
    :try_end_118
    .catchall {:try_start_32 .. :try_end_118} :catchall_214

    .line 405
    .local v7, "actionIndex":I
    const/4 v8, 0x5

    const-string v9, "."

    const-string v10, " but the pointer count is "

    if-ne v1, v8, :cond_188

    .line 406
    :try_start_11f
    iget v8, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    if-nez v8, :cond_12a

    .line 407
    const-string v8, "ACTION_POINTER_DOWN but no other pointers were down."

    invoke-direct {p0, v8}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 408
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 410
    :cond_12a
    if-ltz v7, :cond_15f

    if-lt v7, v6, :cond_12f

    goto :goto_15f

    .line 415
    :cond_12f
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 416
    .local v8, "id":I
    shl-int v9, v2, v8

    .line 417
    .local v9, "idBit":I
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    and-int/2addr v10, v9

    if-eqz v10, :cond_159

    .line 418
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_POINTER_DOWN specified pointer id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " which is already down."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 420
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto :goto_183

    .line 422
    :cond_159
    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    or-int/2addr v2, v9

    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    goto :goto_183

    .line 411
    .end local v8    # "id":I
    .end local v9    # "idBit":I
    :cond_15f
    :goto_15f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_POINTER_DOWN index is "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 413
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 425
    :goto_183
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    goto/16 :goto_20f

    .line 426
    :cond_188
    const/4 v8, 0x6

    if-ne v1, v8, :cond_1e9

    .line 427
    if-ltz v7, :cond_1c1

    if-lt v7, v6, :cond_190

    goto :goto_1c1

    .line 432
    :cond_190
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 433
    .restart local v8    # "id":I
    shl-int v9, v2, v8

    .line 434
    .restart local v9    # "idBit":I
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    and-int/2addr v10, v9

    if-nez v10, :cond_1ba

    .line 435
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_POINTER_UP specified pointer id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " which is not currently down."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 437
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    goto :goto_1e5

    .line 439
    :cond_1ba
    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    not-int v10, v9

    and-int/2addr v2, v10

    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    goto :goto_1e5

    .line 428
    .end local v8    # "id":I
    .end local v9    # "idBit":I
    :cond_1c1
    :goto_1c1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_POINTER_UP index is "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 430
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 442
    :goto_1e5
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_20f

    .line 444
    :cond_1e9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid action "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " for touch event."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 447
    goto :goto_20f

    .line 451
    .end local v1    # "actionMasked":I
    .end local v7    # "actionIndex":I
    :cond_20a
    const-string v1, "Source was not SOURCE_CLASS_POINTER."

    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_20f
    .catchall {:try_start_11f .. :try_end_20f} :catchall_214

    .line 454
    .end local v4    # "deviceId":I
    .end local v5    # "source":I
    .end local v6    # "pointerCount":I
    :cond_20f
    :goto_20f
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 455
    nop

    .line 456
    return-void

    .line 454
    :catchall_214
    move-exception v1

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 455
    throw v1

    nop

    :pswitch_data_21a
    .packed-switch 0x0
        :pswitch_fb
        :pswitch_ef
        :pswitch_bd
        :pswitch_b7
        :pswitch_a4
    .end packed-switch
.end method

.method public greylist-max-o onTrackballEvent(Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "nestingLevel"    # I

    .line 263
    const-string v0, "TrackballEvent"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 264
    return-void

    .line 268
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 271
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 272
    .local v1, "source":I
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_99

    .line 273
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_a8

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    goto :goto_56

    .line 295
    :pswitch_23
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 296
    goto :goto_74

    .line 285
    :pswitch_27
    iget-boolean v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-nez v3, :cond_31

    .line 286
    const-string v2, "ACTION_UP but trackball is not down."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_35

    .line 288
    :cond_31
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 289
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 291
    :goto_35
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 292
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 293
    goto :goto_74

    .line 275
    :pswitch_3c
    iget-boolean v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-eqz v3, :cond_4a

    iget-boolean v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    if-nez v3, :cond_4a

    .line 276
    const-string v2, "ACTION_DOWN but trackball is already down."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_4f

    .line 278
    :cond_4a
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 279
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 281
    :goto_4f
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 282
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 283
    goto :goto_74

    .line 298
    :goto_56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for trackball event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    .line 303
    :goto_74
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_87

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_87

    .line 304
    const-string v2, "Trackball is down but pressure is not greater than 0."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_9e

    .line 305
    :cond_87
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-nez v2, :cond_9e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_9e

    .line 306
    const-string v2, "Trackball is up but pressure is not equal to 0."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    goto :goto_9e

    .line 309
    :cond_99
    const-string v2, "Source was not SOURCE_CLASS_TRACKBALL."

    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_9e
    .catchall {:try_start_9 .. :try_end_9e} :catchall_a3

    .line 312
    .end local v0    # "action":I
    .end local v1    # "source":I
    :cond_9e
    :goto_9e
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 313
    nop

    .line 314
    return-void

    .line 312
    :catchall_a3
    move-exception v0

    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    .line 313
    throw v0

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_27
        :pswitch_23
    .end packed-switch
.end method

.method public greylist onUnhandledEvent(Landroid/view/InputEvent;I)V
    .registers 9
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "nestingLevel"    # I

    .line 588
    iget v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    if-eq p2, v0, :cond_5

    .line 589
    return-void

    .line 592
    :cond_5
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 593
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    iget v2, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    aput-boolean v1, v0, v2

    .line 596
    :cond_10
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_2d

    .line 597
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 598
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 599
    .local v2, "deviceId":I
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getSource()I

    move-result v3

    .line 600
    .local v3, "source":I
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 601
    .local v4, "keyCode":I
    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v5

    .line 602
    .local v5, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-eqz v5, :cond_2c

    .line 603
    iput-boolean v1, v5, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    .line 605
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    .end local v2    # "deviceId":I
    .end local v3    # "source":I
    .end local v4    # "keyCode":I
    .end local v5    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :cond_2c
    goto :goto_47

    .line 606
    :cond_2d
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 607
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 608
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    goto :goto_47

    .line 609
    :cond_39
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_47

    .line 610
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    if-eqz v2, :cond_47

    .line 611
    iput-boolean v1, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 615
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    :cond_47
    :goto_47
    return-void
.end method

.method public greylist-max-o reset()V
    .registers 3

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    .line 151
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    .line 152
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    .line 153
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    .line 154
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    .line 155
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    .line 156
    iput-boolean v0, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    .line 157
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    .line 159
    :goto_14
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    if-eqz v0, :cond_22

    .line 160
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 161
    .local v0, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    iget-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 162
    invoke-virtual {v0}, Landroid/view/InputEventConsistencyVerifier$KeyState;->recycle()V

    .line 163
    .end local v0    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    goto :goto_14

    .line 164
    :cond_22
    return-void
.end method
