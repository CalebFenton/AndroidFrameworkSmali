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
.field private static final EVENT_TYPE_GENERIC_MOTION:Ljava/lang/String; = "GenericMotionEvent"

.field private static final EVENT_TYPE_KEY:Ljava/lang/String; = "KeyEvent"

.field private static final EVENT_TYPE_TOUCH:Ljava/lang/String; = "TouchEvent"

.field private static final EVENT_TYPE_TRACKBALL:Ljava/lang/String; = "TrackballEvent"

.field public static final FLAG_RAW_DEVICE_INPUT:I = 0x1

.field private static final IS_ENG_BUILD:Z

.field private static final RECENT_EVENTS_TO_LOG:I = 0x5


# instance fields
.field private mButtonsPressed:I

.field private final mCaller:Ljava/lang/Object;

.field private mCurrentEvent:Landroid/view/InputEvent;

.field private mCurrentEventType:Ljava/lang/String;

.field private final mFlags:I

.field private mHoverEntered:Z

.field private mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field private mLastEventSeq:I

.field private mLastEventType:Ljava/lang/String;

.field private mLastNestingLevel:I

.field private final mLogTag:Ljava/lang/String;

.field private mMostRecentEventIndex:I

.field private mRecentEvents:[Landroid/view/InputEvent;

.field private mRecentEventsUnhandled:[Z

.field private mTouchEventStreamDeviceId:I

.field private mTouchEventStreamIsTainted:Z

.field private mTouchEventStreamPointers:I

.field private mTouchEventStreamSource:I

.field private mTouchEventStreamUnhandled:Z

.field private mTrackballDown:Z

.field private mTrackballUnhandled:Z

.field private mViolationMessage:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 33
    const-string/jumbo v0, "eng"

    #@3
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    sput-boolean v0, Landroid/view/InputEventConsistencyVerifier;->IS_ENG_BUILD:Z

    #@b
    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 119
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    #@4
    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 1
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "flags"    # I
    .param p3, "logTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    #@6
    .line 129
    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mCaller:Ljava/lang/Object;

    #@8
    .line 130
    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mFlags:I

    #@a
    .line 131
    if-eqz p3, :cond_0

    #@c
    .end local p3    # "logTag":Ljava/lang/String;
    :goto_0
    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mLogTag:Ljava/lang/String;

    #@e
    .line 128
    return-void

    #@f
    .line 131
    .restart local p3    # "logTag":Ljava/lang/String;
    :cond_0
    const-string/jumbo p3, "InputEventConsistencyVerifier"

    #@12
    goto :goto_0
.end method

.method private addKeyState(III)V
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "source"    # I
    .param p3, "keyCode"    # I

    #@0
    .prologue
    .line 762
    invoke-static {p1, p2, p3}, Landroid/view/InputEventConsistencyVerifier$KeyState;->obtain(III)Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@3
    move-result-object v0

    #@4
    .line 763
    .local v0, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@6
    iput-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@8
    .line 764
    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@a
    .line 761
    return-void
.end method

.method private static appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V
    .locals 4
    .param p0, "message"    # Ljava/lang/StringBuilder;
    .param p1, "index"    # I
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "unhandled"    # Z

    #@0
    .prologue
    .line 719
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, ": sent at "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p2}, Landroid/view/InputEvent;->getEventTimeNano()J

    #@e
    move-result-wide v2

    #@f
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@12
    .line 720
    const-string/jumbo v0, ", "

    #@15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 721
    if-eqz p3, :cond_0

    #@1a
    .line 722
    const-string/jumbo v0, "(unhandled) "

    #@1d
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 724
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    .line 718
    return-void
.end method

.method private ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    #@3
    move-result v0

    #@4
    .line 630
    .local v0, "actionButton":I
    if-nez v0, :cond_0

    #@6
    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "No action button set. Action button should always be non-zero for "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 632
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@15
    move-result v2

    #@16
    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@25
    .line 628
    :cond_0
    return-void
.end method

.method private ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 638
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    #@3
    move-result v0

    #@4
    .line 639
    .local v0, "historySize":I
    if-eqz v0, :cond_0

    #@6
    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "History size is "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, " but it should always be 0 for "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@20
    move-result v2

    #@21
    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 640
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@30
    .line 637
    :cond_0
    return-void
.end method

.method private ensureMetaStateIsNormalized(I)V
    .locals 5
    .param p1, "metaState"    # I

    #@0
    .prologue
    .line 613
    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@3
    move-result v0

    #@4
    .line 614
    .local v0, "normalizedMetaState":I
    if-eq v0, p1, :cond_0

    #@6
    .line 615
    const-string/jumbo v1, "Metastate not normalized.  Was 0x%08x but expected 0x%08x."

    #@9
    const/4 v2, 0x2

    #@a
    new-array v2, v2, [Ljava/lang/Object;

    #@c
    .line 616
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v3

    #@10
    const/4 v4, 0x0

    #@11
    aput-object v3, v2, v4

    #@13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v3

    #@17
    const/4 v4, 0x1

    #@18
    aput-object v3, v2, v4

    #@1a
    .line 615
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@21
    .line 612
    :cond_0
    return-void
.end method

.method private ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@3
    move-result v0

    #@4
    .line 622
    .local v0, "pointerCount":I
    const/4 v1, 0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Pointer count is "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, " but it should always be 1 for "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@21
    move-result v2

    #@22
    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 623
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {p0, v1}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@31
    .line 620
    :cond_0
    return-void
.end method

.method private findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;
    .locals 4
    .param p1, "deviceId"    # I
    .param p2, "source"    # I
    .param p3, "keyCode"    # I
    .param p4, "remove"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 740
    const/4 v0, 0x0

    #@2
    .line 741
    .local v0, "last":Landroid/view/InputEventConsistencyVerifier$KeyState;
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@4
    .line 742
    .end local v0    # "last":Landroid/view/InputEventConsistencyVerifier$KeyState;
    .local v1, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :goto_0
    if-eqz v1, :cond_3

    #@6
    .line 743
    iget v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->deviceId:I

    #@8
    if-ne v2, p1, :cond_2

    #@a
    iget v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->source:I

    #@c
    if-ne v2, p2, :cond_2

    #@e
    .line 744
    iget v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->keyCode:I

    #@10
    if-ne v2, p3, :cond_2

    #@12
    .line 745
    if-eqz p4, :cond_0

    #@14
    .line 746
    if-eqz v0, :cond_1

    #@16
    .line 747
    iget-object v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@18
    iput-object v2, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@1a
    .line 751
    :goto_1
    iput-object v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@1c
    .line 753
    :cond_0
    return-object v1

    #@1d
    .line 749
    :cond_1
    iget-object v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@1f
    iput-object v2, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@21
    goto :goto_1

    #@22
    .line 755
    :cond_2
    move-object v0, v1

    #@23
    .line 756
    .local v0, "last":Landroid/view/InputEventConsistencyVerifier$KeyState;
    iget-object v1, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@25
    goto :goto_0

    #@26
    .line 758
    .end local v0    # "last":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :cond_3
    return-object v3
.end method

.method private finishEvent()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x5

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 669
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    #@5
    if-eqz v3, :cond_2

    #@7
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    #@9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_2

    #@f
    .line 670
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    #@11
    invoke-virtual {v3}, Landroid/view/InputEvent;->isTainted()Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_1

    #@17
    .line 672
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    #@19
    const-string/jumbo v4, "\n  in "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mCaller:Ljava/lang/Object;

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    .line 673
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    #@27
    const-string/jumbo v4, "\n  "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 674
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    #@2f
    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    #@31
    invoke-static {v3, v7, v4, v7}, Landroid/view/InputEventConsistencyVerifier;->appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V

    #@34
    .line 676
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    #@36
    if-eqz v3, :cond_0

    #@38
    .line 677
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    #@3a
    const-string/jumbo v4, "\n  -- recent events --"

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 678
    const/4 v1, 0x0

    #@41
    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    #@43
    .line 679
    iget v3, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    #@45
    add-int/lit8 v3, v3, 0x5

    #@47
    sub-int/2addr v3, v1

    #@48
    rem-int/lit8 v2, v3, 0x5

    #@4a
    .line 681
    .local v2, "index":I
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    #@4c
    aget-object v0, v3, v2

    #@4e
    .line 682
    .local v0, "event":Landroid/view/InputEvent;
    if-nez v0, :cond_5

    #@50
    .line 690
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_0
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mLogTag:Ljava/lang/String;

    #@52
    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    #@54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 694
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    #@5d
    const/4 v4, 0x1

    #@5e
    invoke-virtual {v3, v4}, Landroid/view/InputEvent;->setTainted(Z)V

    #@61
    .line 696
    :cond_1
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    #@63
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@66
    .line 700
    :cond_2
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    #@68
    if-nez v3, :cond_3

    #@6a
    .line 701
    new-array v3, v8, [Landroid/view/InputEvent;

    #@6c
    iput-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    #@6e
    .line 702
    new-array v3, v8, [Z

    #@70
    iput-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    #@72
    .line 704
    :cond_3
    iget v3, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    #@74
    add-int/lit8 v3, v3, 0x1

    #@76
    rem-int/lit8 v2, v3, 0x5

    #@78
    .line 705
    .restart local v2    # "index":I
    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    #@7a
    .line 706
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    #@7c
    aget-object v3, v3, v2

    #@7e
    if-eqz v3, :cond_4

    #@80
    .line 707
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    #@82
    aget-object v3, v3, v2

    #@84
    invoke-virtual {v3}, Landroid/view/InputEvent;->recycle()V

    #@87
    .line 709
    :cond_4
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEvents:[Landroid/view/InputEvent;

    #@89
    iget-object v4, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    #@8b
    invoke-virtual {v4}, Landroid/view/InputEvent;->copy()Landroid/view/InputEvent;

    #@8e
    move-result-object v4

    #@8f
    aput-object v4, v3, v2

    #@91
    .line 710
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    #@93
    aput-boolean v7, v3, v2

    #@95
    .line 713
    iput-object v6, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    #@97
    .line 714
    iput-object v6, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    #@99
    .line 668
    return-void

    #@9a
    .line 685
    .restart local v0    # "event":Landroid/view/InputEvent;
    .restart local v1    # "i":I
    :cond_5
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    #@9c
    const-string/jumbo v4, "\n  "

    #@9f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    .line 686
    iget-object v3, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    #@a4
    add-int/lit8 v4, v1, 0x1

    #@a6
    iget-object v5, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    #@a8
    aget-boolean v5, v5, v2

    #@aa
    invoke-static {v3, v4, v0, v5}, Landroid/view/InputEventConsistencyVerifier;->appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V

    #@ad
    .line 678
    add-int/lit8 v1, v1, 0x1

    #@af
    goto :goto_0
.end method

.method public static isInstrumentationEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 139
    sget-boolean v0, Landroid/view/InputEventConsistencyVerifier;->IS_ENG_BUILD:Z

    #@2
    return v0
.end method

.method private problem(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 728
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    #@b
    .line 731
    :cond_0
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    #@d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 732
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    #@15
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v1, ": "

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 736
    :goto_0
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    #@23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 727
    return-void

    #@27
    .line 734
    :cond_1
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mViolationMessage:Ljava/lang/StringBuilder;

    #@29
    const-string/jumbo v1, "\n  "

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    goto :goto_0
.end method

.method private startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "nestingLevel"    # I
    .param p3, "eventType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 647
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    #@4
    move-result v0

    #@5
    .line 648
    .local v0, "seq":I
    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    #@7
    if-ne v0, v1, :cond_0

    #@9
    iget v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    #@b
    if-ge p2, v1, :cond_0

    #@d
    .line 649
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    #@f
    if-ne p3, v1, :cond_0

    #@11
    .line 650
    return v2

    #@12
    .line 653
    :cond_0
    if-lez p2, :cond_1

    #@14
    .line 654
    iput v0, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    #@16
    .line 655
    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    #@18
    .line 656
    iput p2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    #@1a
    .line 663
    :goto_0
    iput-object p1, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEvent:Landroid/view/InputEvent;

    #@1c
    .line 664
    iput-object p3, p0, Landroid/view/InputEventConsistencyVerifier;->mCurrentEventType:Ljava/lang/String;

    #@1e
    .line 665
    const/4 v1, 0x1

    #@1f
    return v1

    #@20
    .line 658
    :cond_1
    const/4 v1, -0x1

    #@21
    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    #@23
    .line 659
    const/4 v1, 0x0

    #@24
    iput-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventType:Ljava/lang/String;

    #@26
    .line 660
    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    #@28
    goto :goto_0
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "nestingLevel"    # I

    #@0
    .prologue
    const/16 v7, 0x40

    #@2
    const/16 v6, 0x20

    #@4
    .line 464
    const-string/jumbo v4, "GenericMotionEvent"

    #@7
    invoke-direct {p0, p1, p2, v4}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_0

    #@d
    .line 465
    return-void

    #@e
    .line 469
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    #@11
    move-result v4

    #@12
    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    #@15
    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@18
    move-result v0

    #@19
    .line 472
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    #@1c
    move-result v3

    #@1d
    .line 473
    .local v3, "source":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    #@20
    move-result v2

    #@21
    .line 474
    .local v2, "buttonState":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    #@24
    move-result v1

    #@25
    .line 475
    .local v1, "actionButton":I
    and-int/lit8 v4, v3, 0x2

    #@27
    if-eqz v4, :cond_9

    #@29
    .line 476
    packed-switch v0, :pswitch_data_0

    #@2c
    .line 552
    const-string/jumbo v4, "Invalid action for generic pointer event."

    #@2f
    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 566
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    #@35
    .line 463
    return-void

    #@36
    .line 478
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    #@39
    .line 479
    const/4 v4, 0x1

    #@3a
    iput-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 565
    .end local v0    # "action":I
    .end local v1    # "actionButton":I
    .end local v2    # "buttonState":I
    .end local v3    # "source":I
    :catchall_0
    move-exception v4

    #@3e
    .line 566
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    #@41
    .line 565
    throw v4

    #@42
    .line 482
    .restart local v0    # "action":I
    .restart local v1    # "actionButton":I
    .restart local v2    # "buttonState":I
    .restart local v3    # "source":I
    :pswitch_1
    :try_start_2
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    #@45
    goto :goto_0

    #@46
    .line 485
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    #@49
    .line 486
    iget-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    #@4b
    if-nez v4, :cond_2

    #@4d
    .line 487
    const-string/jumbo v4, "ACTION_HOVER_EXIT without prior ACTION_HOVER_ENTER"

    #@50
    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@53
    .line 489
    :cond_2
    const/4 v4, 0x0

    #@54
    iput-boolean v4, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    #@56
    goto :goto_0

    #@57
    .line 492
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    #@5a
    .line 493
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    #@5d
    goto :goto_0

    #@5e
    .line 496
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V

    #@61
    .line 497
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@63
    and-int/2addr v4, v1

    #@64
    if-eqz v4, :cond_3

    #@66
    .line 498
    new-instance v4, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v5, "Action button for ACTION_BUTTON_PRESS event is "

    #@6e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    .line 499
    const-string/jumbo v5, ", but it has already been pressed and "

    #@79
    .line 498
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    .line 500
    const-string/jumbo v5, "has yet to be released."

    #@80
    .line 498
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v4

    #@88
    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@8b
    .line 503
    :cond_3
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@8d
    or-int/2addr v4, v1

    #@8e
    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@90
    .line 508
    if-ne v1, v6, :cond_5

    #@92
    .line 509
    and-int/lit8 v4, v2, 0x2

    #@94
    if-eqz v4, :cond_5

    #@96
    .line 510
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@98
    or-int/lit8 v4, v4, 0x2

    #@9a
    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@9c
    .line 516
    :cond_4
    :goto_1
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@9e
    if-eq v4, v2, :cond_1

    #@a0
    .line 517
    const-string/jumbo v4, "Reported button state differs from expected button state based on press and release events. Is 0x%08x but expected 0x%08x."

    #@a3
    const/4 v5, 0x2

    #@a4
    new-array v5, v5, [Ljava/lang/Object;

    #@a6
    .line 520
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a9
    move-result-object v6

    #@aa
    const/4 v7, 0x0

    #@ab
    aput-object v6, v5, v7

    #@ad
    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@af
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b2
    move-result-object v6

    #@b3
    const/4 v7, 0x1

    #@b4
    aput-object v6, v5, v7

    #@b6
    .line 517
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b9
    move-result-object v4

    #@ba
    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@bd
    goto/16 :goto_0

    #@bf
    .line 511
    :cond_5
    if-ne v1, v7, :cond_4

    #@c1
    .line 512
    and-int/lit8 v4, v2, 0x4

    #@c3
    if-eqz v4, :cond_4

    #@c5
    .line 513
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@c7
    or-int/lit8 v4, v4, 0x4

    #@c9
    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@cb
    goto :goto_1

    #@cc
    .line 524
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V

    #@cf
    .line 525
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@d1
    and-int/2addr v4, v1

    #@d2
    if-eq v4, v1, :cond_6

    #@d4
    .line 526
    new-instance v4, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v5, "Action button for ACTION_BUTTON_RELEASE event is "

    #@dc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v4

    #@e0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v4

    #@e4
    .line 527
    const-string/jumbo v5, ", but it was either never pressed or has "

    #@e7
    .line 526
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v4

    #@eb
    .line 528
    const-string/jumbo v5, "already been released."

    #@ee
    .line 526
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v4

    #@f2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v4

    #@f6
    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@f9
    .line 531
    :cond_6
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@fb
    not-int v5, v1

    #@fc
    and-int/2addr v4, v5

    #@fd
    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@ff
    .line 536
    if-ne v1, v6, :cond_8

    #@101
    .line 537
    and-int/lit8 v4, v2, 0x2

    #@103
    if-nez v4, :cond_8

    #@105
    .line 538
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@107
    and-int/lit8 v4, v4, -0x3

    #@109
    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@10b
    .line 544
    :cond_7
    :goto_2
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@10d
    if-eq v4, v2, :cond_1

    #@10f
    .line 545
    const-string/jumbo v4, "Reported button state differs from expected button state based on press and release events. Is 0x%08x but expected 0x%08x."

    #@112
    const/4 v5, 0x2

    #@113
    new-array v5, v5, [Ljava/lang/Object;

    #@115
    .line 548
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@118
    move-result-object v6

    #@119
    const/4 v7, 0x0

    #@11a
    aput-object v6, v5, v7

    #@11c
    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@11e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@121
    move-result-object v6

    #@122
    const/4 v7, 0x1

    #@123
    aput-object v6, v5, v7

    #@125
    .line 545
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@128
    move-result-object v4

    #@129
    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@12c
    goto/16 :goto_0

    #@12e
    .line 539
    :cond_8
    if-ne v1, v7, :cond_7

    #@130
    .line 540
    and-int/lit8 v4, v2, 0x4

    #@132
    if-nez v4, :cond_7

    #@134
    .line 541
    iget v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@136
    and-int/lit8 v4, v4, -0x5

    #@138
    iput v4, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@13a
    goto :goto_2

    #@13b
    .line 555
    :cond_9
    and-int/lit8 v4, v3, 0x10

    #@13d
    if-eqz v4, :cond_1

    #@13f
    .line 556
    packed-switch v0, :pswitch_data_1

    #@142
    .line 561
    const-string/jumbo v4, "Invalid action for generic joystick event."

    #@145
    invoke-direct {p0, v4}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@148
    goto/16 :goto_0

    #@14a
    .line 558
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@14d
    goto/16 :goto_0

    #@14f
    .line 476
    nop

    #@150
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch

    #@160
    .line 556
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "nestingLevel"    # I

    #@0
    .prologue
    .line 173
    instance-of v2, p1, Landroid/view/KeyEvent;

    #@2
    if-eqz v2, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 174
    check-cast v0, Landroid/view/KeyEvent;

    #@7
    .line 175
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0, p2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    #@a
    .line 172
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :goto_0
    return-void

    #@b
    :cond_0
    move-object v1, p1

    #@c
    .line 177
    check-cast v1, Landroid/view/MotionEvent;

    #@e
    .line 178
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 179
    invoke-virtual {p0, v1, p2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    #@17
    goto :goto_0

    #@18
    .line 180
    :cond_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    #@1b
    move-result v2

    #@1c
    and-int/lit8 v2, v2, 0x4

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 181
    invoke-virtual {p0, v1, p2}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    #@23
    goto :goto_0

    #@24
    .line 183
    :cond_2
    invoke-virtual {p0, v1, p2}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    #@27
    goto :goto_0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "nestingLevel"    # I

    #@0
    .prologue
    .line 198
    const-string/jumbo v5, "KeyEvent"

    #@3
    invoke-direct {p0, p1, p2, v5}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    #@6
    move-result v5

    #@7
    if-nez v5, :cond_0

    #@9
    .line 199
    return-void

    #@a
    .line 203
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    #@d
    move-result v5

    #@e
    invoke-direct {p0, v5}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    #@11
    .line 205
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@14
    move-result v0

    #@15
    .line 206
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    #@18
    move-result v1

    #@19
    .line 207
    .local v1, "deviceId":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    #@1c
    move-result v3

    #@1d
    .line 208
    .local v3, "source":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@20
    move-result v2

    #@21
    .line 209
    .local v2, "keyCode":I
    packed-switch v0, :pswitch_data_0

    #@24
    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v6, "Invalid action "

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-static {v0}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    .line 242
    const-string/jumbo v6, " for key event."

    #@3b
    .line 241
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-direct {p0, v5}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 246
    :cond_1
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    #@49
    .line 197
    return-void

    #@4a
    .line 211
    :pswitch_1
    const/4 v5, 0x0

    #@4b
    :try_start_1
    invoke-direct {p0, v1, v3, v2, v5}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@4e
    move-result-object v4

    #@4f
    .line 212
    .local v4, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-eqz v4, :cond_3

    #@51
    .line 217
    iget-boolean v5, v4, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    #@53
    if-eqz v5, :cond_2

    #@55
    .line 218
    const/4 v5, 0x0

    #@56
    iput-boolean v5, v4, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    goto :goto_0

    #@59
    .line 245
    .end local v0    # "action":I
    .end local v1    # "deviceId":I
    .end local v2    # "keyCode":I
    .end local v3    # "source":I
    .end local v4    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :catchall_0
    move-exception v5

    #@5a
    .line 246
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    #@5d
    .line 245
    throw v5

    #@5e
    .line 219
    .restart local v0    # "action":I
    .restart local v1    # "deviceId":I
    .restart local v2    # "keyCode":I
    .restart local v3    # "source":I
    .restart local v4    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :cond_2
    :try_start_2
    iget v5, p0, Landroid/view/InputEventConsistencyVerifier;->mFlags:I

    #@60
    and-int/lit8 v5, v5, 0x1

    #@62
    if-nez v5, :cond_1

    #@64
    .line 220
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@67
    move-result v5

    #@68
    if-nez v5, :cond_1

    #@6a
    .line 221
    const-string/jumbo v5, "ACTION_DOWN but key is already down and this event is not a key repeat."

    #@6d
    invoke-direct {p0, v5}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@70
    goto :goto_0

    #@71
    .line 225
    :cond_3
    invoke-direct {p0, v1, v3, v2}, Landroid/view/InputEventConsistencyVerifier;->addKeyState(III)V

    #@74
    goto :goto_0

    #@75
    .line 230
    .end local v4    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :pswitch_2
    const/4 v5, 0x1

    #@76
    invoke-direct {p0, v1, v3, v2, v5}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@79
    move-result-object v4

    #@7a
    .line 231
    .restart local v4    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-nez v4, :cond_4

    #@7c
    .line 232
    const-string/jumbo v5, "ACTION_UP but key was not down."

    #@7f
    invoke-direct {p0, v5}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@82
    goto :goto_0

    #@83
    .line 234
    :cond_4
    invoke-virtual {v4}, Landroid/view/InputEventConsistencyVerifier$KeyState;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@86
    goto :goto_0

    #@87
    .line 209
    nop

    #@88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "nestingLevel"    # I

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 323
    const-string/jumbo v10, "TouchEvent"

    #@5
    invoke-direct {p0, p1, p2, v10}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    #@8
    move-result v10

    #@9
    if-nez v10, :cond_0

    #@b
    .line 324
    return-void

    #@c
    .line 327
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@f
    move-result v0

    #@10
    .line 328
    .local v0, "action":I
    if-eqz v0, :cond_1

    #@12
    .line 329
    const/4 v10, 0x3

    #@13
    if-ne v0, v10, :cond_a

    #@15
    .line 328
    :cond_1
    const/4 v7, 0x1

    #@16
    .line 330
    .local v7, "newStream":Z
    :goto_0
    if-eqz v7, :cond_3

    #@18
    iget-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    #@1a
    if-nez v10, :cond_2

    #@1c
    iget-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    #@1e
    if-eqz v10, :cond_3

    #@20
    .line 331
    :cond_2
    iput-boolean v11, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    #@22
    .line 332
    iput-boolean v11, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    #@24
    .line 333
    iput v11, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    #@26
    .line 335
    :cond_3
    iget-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    #@28
    if-eqz v10, :cond_4

    #@2a
    .line 336
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->setTainted(Z)V

    #@2d
    .line 340
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    #@30
    move-result v10

    #@31
    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    #@34
    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    #@37
    move-result v3

    #@38
    .line 343
    .local v3, "deviceId":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    #@3b
    move-result v9

    #@3c
    .line 345
    .local v9, "source":I
    if-nez v7, :cond_6

    #@3e
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    #@40
    const/4 v11, -0x1

    #@41
    if-eq v10, v11, :cond_6

    #@43
    .line 346
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    #@45
    if-ne v10, v3, :cond_5

    #@47
    .line 347
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    #@49
    if-eq v10, v9, :cond_6

    #@4b
    .line 348
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v11, "Touch event stream contains events from multiple sources: previous device id "

    #@53
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v10

    #@57
    .line 349
    iget v11, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    #@59
    .line 348
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v10

    #@5d
    .line 350
    const-string/jumbo v11, ", previous source "

    #@60
    .line 348
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v10

    #@64
    .line 350
    iget v11, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    #@66
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@69
    move-result-object v11

    #@6a
    .line 348
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v10

    #@6e
    .line 351
    const-string/jumbo v11, ", new device id "

    #@71
    .line 348
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v10

    #@75
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v10

    #@79
    .line 352
    const-string/jumbo v11, ", new source "

    #@7c
    .line 348
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v10

    #@80
    .line 352
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@83
    move-result-object v11

    #@84
    .line 348
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v10

    #@88
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v10

    #@8c
    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@8f
    .line 354
    :cond_6
    iput v3, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamDeviceId:I

    #@91
    .line 355
    iput v9, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamSource:I

    #@93
    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@96
    move-result v8

    #@97
    .line 358
    .local v8, "pointerCount":I
    and-int/lit8 v10, v9, 0x2

    #@99
    if-eqz v10, :cond_15

    #@9b
    .line 359
    packed-switch v0, :pswitch_data_0

    #@9e
    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@a1
    move-result v2

    #@a2
    .line 400
    .local v2, "actionMasked":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@a5
    move-result v1

    #@a6
    .line 401
    .local v1, "actionIndex":I
    const/4 v10, 0x5

    #@a7
    if-ne v2, v10, :cond_10

    #@a9
    .line 402
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    #@ab
    if-nez v10, :cond_7

    #@ad
    .line 403
    const-string/jumbo v10, "ACTION_POINTER_DOWN but no other pointers were down."

    #@b0
    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@b3
    .line 404
    const/4 v10, 0x1

    #@b4
    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    #@b6
    .line 406
    :cond_7
    if-ltz v1, :cond_8

    #@b8
    if-lt v1, v8, :cond_e

    #@ba
    .line 407
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v11, "ACTION_POINTER_DOWN index is "

    #@c2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v10

    #@c6
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v10

    #@ca
    .line 408
    const-string/jumbo v11, " but the pointer count is "

    #@cd
    .line 407
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v10

    #@d1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v10

    #@d5
    .line 408
    const-string/jumbo v11, "."

    #@d8
    .line 407
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v10

    #@dc
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v10

    #@e0
    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@e3
    .line 409
    const/4 v10, 0x1

    #@e4
    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    #@e6
    .line 421
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e9
    .line 450
    .end local v1    # "actionIndex":I
    .end local v2    # "actionMasked":I
    :cond_9
    :goto_2
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    #@ec
    .line 322
    return-void

    #@ed
    .line 329
    .end local v3    # "deviceId":I
    .end local v7    # "newStream":Z
    .end local v8    # "pointerCount":I
    .end local v9    # "source":I
    :cond_a
    const/4 v10, 0x4

    #@ee
    if-ne v0, v10, :cond_b

    #@f0
    const/4 v7, 0x1

    #@f1
    .restart local v7    # "newStream":Z
    goto/16 :goto_0

    #@f3
    .end local v7    # "newStream":Z
    :cond_b
    const/4 v7, 0x0

    #@f4
    .restart local v7    # "newStream":Z
    goto/16 :goto_0

    #@f6
    .line 361
    .restart local v3    # "deviceId":I
    .restart local v8    # "pointerCount":I
    .restart local v9    # "source":I
    :pswitch_0
    :try_start_1
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    #@f8
    if-eqz v10, :cond_c

    #@fa
    .line 362
    const-string/jumbo v10, "ACTION_DOWN but pointers are already down.  Probably missing ACTION_UP from previous gesture."

    #@fd
    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@100
    .line 365
    :cond_c
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    #@103
    .line 366
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    #@106
    .line 367
    const/4 v10, 0x0

    #@107
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@10a
    move-result v10

    #@10b
    shl-int v10, v12, v10

    #@10d
    iput v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10f
    goto :goto_2

    #@110
    .line 449
    .end local v3    # "deviceId":I
    .end local v8    # "pointerCount":I
    .end local v9    # "source":I
    :catchall_0
    move-exception v10

    #@111
    .line 450
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    #@114
    .line 449
    throw v10

    #@115
    .line 370
    .restart local v3    # "deviceId":I
    .restart local v8    # "pointerCount":I
    .restart local v9    # "source":I
    :pswitch_1
    :try_start_2
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    #@118
    .line 371
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    #@11b
    .line 372
    const/4 v10, 0x0

    #@11c
    iput v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    #@11e
    .line 373
    const/4 v10, 0x0

    #@11f
    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    #@121
    goto :goto_2

    #@122
    .line 377
    :pswitch_2
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    #@124
    invoke-static {v10}, Ljava/lang/Integer;->bitCount(I)I

    #@127
    move-result v4

    #@128
    .line 378
    .local v4, "expectedPointerCount":I
    if-eq v8, v4, :cond_9

    #@12a
    .line 379
    new-instance v10, Ljava/lang/StringBuilder;

    #@12c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@12f
    const-string/jumbo v11, "ACTION_MOVE contained "

    #@132
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v10

    #@136
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@139
    move-result-object v10

    #@13a
    .line 380
    const-string/jumbo v11, " pointers but there are currently "

    #@13d
    .line 379
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v10

    #@141
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@144
    move-result-object v10

    #@145
    .line 381
    const-string/jumbo v11, " pointers down."

    #@148
    .line 379
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v10

    #@14c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object v10

    #@150
    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@153
    .line 382
    const/4 v10, 0x1

    #@154
    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    #@156
    goto :goto_2

    #@157
    .line 387
    .end local v4    # "expectedPointerCount":I
    :pswitch_3
    const/4 v10, 0x0

    #@158
    iput v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    #@15a
    .line 388
    const/4 v10, 0x0

    #@15b
    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    #@15d
    goto :goto_2

    #@15e
    .line 391
    :pswitch_4
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    #@160
    if-eqz v10, :cond_d

    #@162
    .line 392
    const-string/jumbo v10, "ACTION_OUTSIDE but pointers are still down."

    #@165
    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@168
    .line 394
    :cond_d
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    #@16b
    .line 395
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    #@16e
    .line 396
    const/4 v10, 0x0

    #@16f
    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    #@171
    goto/16 :goto_2

    #@173
    .line 411
    .restart local v1    # "actionIndex":I
    .restart local v2    # "actionMasked":I
    :cond_e
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@176
    move-result v5

    #@177
    .line 412
    .local v5, "id":I
    shl-int v6, v12, v5

    #@179
    .line 413
    .local v6, "idBit":I
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    #@17b
    and-int/2addr v10, v6

    #@17c
    if-eqz v10, :cond_f

    #@17e
    .line 414
    new-instance v10, Ljava/lang/StringBuilder;

    #@180
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@183
    const-string/jumbo v11, "ACTION_POINTER_DOWN specified pointer id "

    #@186
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v10

    #@18a
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v10

    #@18e
    .line 415
    const-string/jumbo v11, " which is already down."

    #@191
    .line 414
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v10

    #@195
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@198
    move-result-object v10

    #@199
    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@19c
    .line 416
    const/4 v10, 0x1

    #@19d
    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    #@19f
    goto/16 :goto_1

    #@1a1
    .line 418
    :cond_f
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    #@1a3
    or-int/2addr v10, v6

    #@1a4
    iput v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    #@1a6
    goto/16 :goto_1

    #@1a8
    .line 422
    .end local v5    # "id":I
    .end local v6    # "idBit":I
    :cond_10
    const/4 v10, 0x6

    #@1a9
    if-ne v2, v10, :cond_14

    #@1ab
    .line 423
    if-ltz v1, :cond_11

    #@1ad
    if-lt v1, v8, :cond_12

    #@1af
    .line 424
    :cond_11
    new-instance v10, Ljava/lang/StringBuilder;

    #@1b1
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1b4
    const-string/jumbo v11, "ACTION_POINTER_UP index is "

    #@1b7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v10

    #@1bb
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v10

    #@1bf
    .line 425
    const-string/jumbo v11, " but the pointer count is "

    #@1c2
    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v10

    #@1c6
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v10

    #@1ca
    .line 425
    const-string/jumbo v11, "."

    #@1cd
    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v10

    #@1d1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d4
    move-result-object v10

    #@1d5
    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@1d8
    .line 426
    const/4 v10, 0x1

    #@1d9
    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    #@1db
    .line 438
    :goto_3
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    #@1de
    goto/16 :goto_2

    #@1e0
    .line 428
    :cond_12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@1e3
    move-result v5

    #@1e4
    .line 429
    .restart local v5    # "id":I
    shl-int v6, v12, v5

    #@1e6
    .line 430
    .restart local v6    # "idBit":I
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    #@1e8
    and-int/2addr v10, v6

    #@1e9
    if-nez v10, :cond_13

    #@1eb
    .line 431
    new-instance v10, Ljava/lang/StringBuilder;

    #@1ed
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1f0
    const-string/jumbo v11, "ACTION_POINTER_UP specified pointer id "

    #@1f3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v10

    #@1f7
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v10

    #@1fb
    .line 432
    const-string/jumbo v11, " which is not currently down."

    #@1fe
    .line 431
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v10

    #@202
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@205
    move-result-object v10

    #@206
    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@209
    .line 433
    const/4 v10, 0x1

    #@20a
    iput-boolean v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    #@20c
    goto :goto_3

    #@20d
    .line 435
    :cond_13
    iget v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    #@20f
    not-int v11, v6

    #@210
    and-int/2addr v10, v11

    #@211
    iput v10, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    #@213
    goto :goto_3

    #@214
    .line 440
    .end local v5    # "id":I
    .end local v6    # "idBit":I
    :cond_14
    new-instance v10, Ljava/lang/StringBuilder;

    #@216
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@219
    const-string/jumbo v11, "Invalid action "

    #@21c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v10

    #@220
    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    #@223
    move-result-object v11

    #@224
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@227
    move-result-object v10

    #@228
    .line 441
    const-string/jumbo v11, " for touch event."

    #@22b
    .line 440
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    move-result-object v10

    #@22f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@232
    move-result-object v10

    #@233
    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@236
    goto/16 :goto_2

    #@238
    .line 447
    .end local v1    # "actionIndex":I
    .end local v2    # "actionMasked":I
    :cond_15
    const-string/jumbo v10, "Source was not SOURCE_CLASS_POINTER."

    #@23b
    invoke-direct {p0, v10}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23e
    goto/16 :goto_2

    #@240
    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "nestingLevel"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 260
    const-string/jumbo v2, "TrackballEvent"

    #@4
    invoke-direct {p0, p1, p2, v2}, Landroid/view/InputEventConsistencyVerifier;->startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 261
    return-void

    #@b
    .line 265
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    #@e
    move-result v2

    #@f
    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->ensureMetaStateIsNormalized(I)V

    #@12
    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@15
    move-result v0

    #@16
    .line 268
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    #@19
    move-result v1

    #@1a
    .line 269
    .local v1, "source":I
    and-int/lit8 v2, v1, 0x4

    #@1c
    if-eqz v2, :cond_6

    #@1e
    .line 270
    packed-switch v0, :pswitch_data_0

    #@21
    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "Invalid action "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 296
    const-string/jumbo v3, " for trackball event."

    #@38
    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@43
    .line 300
    :goto_0
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    #@45
    if-eqz v2, :cond_5

    #@47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    #@4a
    move-result v2

    #@4b
    cmpg-float v2, v2, v4

    #@4d
    if-gtz v2, :cond_5

    #@4f
    .line 301
    const-string/jumbo v2, "Trackball is down but pressure is not greater than 0."

    #@52
    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    .line 309
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    #@58
    .line 259
    return-void

    #@59
    .line 272
    :pswitch_0
    :try_start_1
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    #@5b
    if-eqz v2, :cond_2

    #@5d
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    #@5f
    if-eqz v2, :cond_3

    #@61
    .line 275
    :cond_2
    const/4 v2, 0x1

    #@62
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    #@64
    .line 276
    const/4 v2, 0x0

    #@65
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    #@67
    .line 278
    :goto_2
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    #@6a
    .line 279
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6d
    goto :goto_0

    #@6e
    .line 308
    .end local v0    # "action":I
    .end local v1    # "source":I
    :catchall_0
    move-exception v2

    #@6f
    .line 309
    invoke-direct {p0}, Landroid/view/InputEventConsistencyVerifier;->finishEvent()V

    #@72
    .line 308
    throw v2

    #@73
    .line 273
    .restart local v0    # "action":I
    .restart local v1    # "source":I
    :cond_3
    :try_start_2
    const-string/jumbo v2, "ACTION_DOWN but trackball is already down."

    #@76
    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@79
    goto :goto_2

    #@7a
    .line 282
    :pswitch_1
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    #@7c
    if-nez v2, :cond_4

    #@7e
    .line 283
    const-string/jumbo v2, "ACTION_UP but trackball is not down."

    #@81
    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@84
    .line 288
    :goto_3
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    #@87
    .line 289
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    #@8a
    goto :goto_0

    #@8b
    .line 285
    :cond_4
    const/4 v2, 0x0

    #@8c
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    #@8e
    .line 286
    const/4 v2, 0x0

    #@8f
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    #@91
    goto :goto_3

    #@92
    .line 292
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/view/InputEventConsistencyVerifier;->ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    #@95
    goto :goto_0

    #@96
    .line 302
    :cond_5
    iget-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    #@98
    if-nez v2, :cond_1

    #@9a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    #@9d
    move-result v2

    #@9e
    cmpl-float v2, v2, v4

    #@a0
    if-eqz v2, :cond_1

    #@a2
    .line 303
    const-string/jumbo v2, "Trackball is up but pressure is not equal to 0."

    #@a5
    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V

    #@a8
    goto :goto_1

    #@a9
    .line 306
    :cond_6
    const-string/jumbo v2, "Source was not SOURCE_CLASS_TRACKBALL."

    #@ac
    invoke-direct {p0, v2}, Landroid/view/InputEventConsistencyVerifier;->problem(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@af
    goto :goto_1

    #@b0
    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onUnhandledEvent(Landroid/view/InputEvent;I)V
    .locals 10
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "nestingLevel"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 583
    iget v6, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    #@4
    if-eq p2, v6, :cond_0

    #@6
    .line 584
    return-void

    #@7
    .line 587
    :cond_0
    iget-object v6, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    #@9
    if-eqz v6, :cond_1

    #@b
    .line 588
    iget-object v6, p0, Landroid/view/InputEventConsistencyVerifier;->mRecentEventsUnhandled:[Z

    #@d
    iget v7, p0, Landroid/view/InputEventConsistencyVerifier;->mMostRecentEventIndex:I

    #@f
    aput-boolean v8, v6, v7

    #@11
    .line 591
    :cond_1
    instance-of v6, p1, Landroid/view/KeyEvent;

    #@13
    if-eqz v6, :cond_3

    #@15
    move-object v2, p1

    #@16
    .line 592
    check-cast v2, Landroid/view/KeyEvent;

    #@18
    .line 593
    .local v2, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@1b
    move-result v0

    #@1c
    .line 594
    .local v0, "deviceId":I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSource()I

    #@1f
    move-result v4

    #@20
    .line 595
    .local v4, "source":I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@23
    move-result v1

    #@24
    .line 596
    .local v1, "keyCode":I
    invoke-direct {p0, v0, v4, v1, v9}, Landroid/view/InputEventConsistencyVerifier;->findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@27
    move-result-object v5

    #@28
    .line 597
    .local v5, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-eqz v5, :cond_2

    #@2a
    .line 598
    iput-boolean v8, v5, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    #@2c
    .line 582
    .end local v0    # "deviceId":I
    .end local v1    # "keyCode":I
    .end local v2    # "keyEvent":Landroid/view/KeyEvent;
    .end local v4    # "source":I
    .end local v5    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :cond_2
    :goto_0
    return-void

    #@2d
    :cond_3
    move-object v3, p1

    #@2e
    .line 601
    check-cast v3, Landroid/view/MotionEvent;

    #@30
    .line 602
    .local v3, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v3}, Landroid/view/MotionEvent;->isTouchEvent()Z

    #@33
    move-result v6

    #@34
    if-eqz v6, :cond_4

    #@36
    .line 603
    iput-boolean v8, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    #@38
    goto :goto_0

    #@39
    .line 604
    :cond_4
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getSource()I

    #@3c
    move-result v6

    #@3d
    and-int/lit8 v6, v6, 0x4

    #@3f
    if-eqz v6, :cond_2

    #@41
    .line 605
    iget-boolean v6, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    #@43
    if-eqz v6, :cond_2

    #@45
    .line 606
    iput-boolean v8, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    #@47
    goto :goto_0
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 146
    const/4 v1, -0x1

    #@2
    iput v1, p0, Landroid/view/InputEventConsistencyVerifier;->mLastEventSeq:I

    #@4
    .line 147
    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mLastNestingLevel:I

    #@6
    .line 148
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballDown:Z

    #@8
    .line 149
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTrackballUnhandled:Z

    #@a
    .line 150
    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamPointers:I

    #@c
    .line 151
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamIsTainted:Z

    #@e
    .line 152
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mTouchEventStreamUnhandled:Z

    #@10
    .line 153
    iput-boolean v2, p0, Landroid/view/InputEventConsistencyVerifier;->mHoverEntered:Z

    #@12
    .line 154
    iput v2, p0, Landroid/view/InputEventConsistencyVerifier;->mButtonsPressed:I

    #@14
    .line 156
    :goto_0
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 157
    iget-object v0, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@1a
    .line 158
    .local v0, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    iget-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@1c
    iput-object v1, p0, Landroid/view/InputEventConsistencyVerifier;->mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    #@1e
    .line 159
    invoke-virtual {v0}, Landroid/view/InputEventConsistencyVerifier$KeyState;->recycle()V

    #@21
    goto :goto_0

    #@22
    .line 145
    .end local v0    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :cond_0
    return-void
.end method
