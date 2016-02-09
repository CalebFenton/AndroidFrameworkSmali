.class Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Landroid/view/InputFilter;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final FLAG_FEATURE_FILTER_KEY_EVENTS:I = 0x4

.field static final FLAG_FEATURE_SCREEN_MAGNIFIER:I = 0x1

.field static final FLAG_FEATURE_TOUCH_EXPLORATION:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTouchDeviceId:I

.field private mEnabledFeatures:I

.field private mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

.field private mFilterKeyEvents:Z

.field private mHoverEventSequenceStarted:Z

.field private mInstalled:Z

.field private mKeyEventSequenceStarted:Z

.field private mMotionEventSequenceStarted:Z

.field private final mPm:Landroid/os/PowerManager;

.field private final mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

.field private mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

.field private mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/AccessibilityInputFilter;)Landroid/view/Choreographer;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/AccessibilityInputFilter;)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/AccessibilityInputFilter;J)V
    .locals 1
    .param p1, "frameNanos"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processBatchedEvents(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->scheduleProcessBatchedEvents()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    const-class v0, Lcom/android/server/accessibility/AccessibilityInputFilter;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    #@8
    .line 39
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    #@0
    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    #@7
    .line 66
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;

    #@9
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$1;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    #@c
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

    #@e
    .line 115
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    #@10
    .line 116
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@12
    .line 117
    const-string/jumbo v0, "power"

    #@15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/os/PowerManager;

    #@1b
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    #@1d
    .line 118
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    #@23
    .line 113
    return-void
.end method

.method private batchMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 240
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@a
    .line 241
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->scheduleProcessBatchedEvents()V

    #@d
    .line 242
    return-void

    #@e
    .line 244
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@10
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    #@12
    invoke-virtual {v1, p1}, Landroid/view/MotionEvent;->addBatch(Landroid/view/MotionEvent;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 245
    return-void

    #@19
    .line 247
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@1c
    move-result-object v0

    #@1d
    .line 248
    .local v0, "holder":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@1f
    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@21
    .line 249
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@23
    iput-object v0, v1, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@25
    .line 250
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@27
    .line 235
    return-void
.end method

.method private enableFeatures()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 332
    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    #@3
    .line 333
    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    #@5
    .line 334
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    #@7
    and-int/lit8 v0, v0, 0x1

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 335
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier;

    #@d
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    #@f
    .line 336
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@11
    .line 335
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accessibility/ScreenMagnifier;-><init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityManagerService;)V

    #@14
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    #@16
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@18
    .line 337
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@1a
    invoke-interface {v0, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    #@1d
    .line 339
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    #@1f
    and-int/lit8 v0, v0, 0x2

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 340
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer;

    #@25
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    #@27
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@29
    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    #@2c
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    #@2e
    .line 341
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    #@30
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/TouchExplorer;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    #@33
    .line 342
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@35
    if-eqz v0, :cond_3

    #@37
    .line 343
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@39
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    #@3b
    invoke-interface {v0, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    #@3e
    .line 348
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    #@40
    and-int/lit8 v0, v0, 0x4

    #@42
    if-eqz v0, :cond_2

    #@44
    .line 349
    const/4 v0, 0x1

    #@45
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mFilterKeyEvents:Z

    #@47
    .line 331
    :cond_2
    return-void

    #@48
    .line 345
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    #@4a
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@4c
    goto :goto_0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 282
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    #@6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@9
    move-result-wide v2

    #@a
    const/4 v4, 0x0

    #@b
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    #@e
    .line 283
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@11
    move-result-object v0

    #@12
    .line 284
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@14
    invoke-interface {v1, v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@17
    .line 285
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@1a
    .line 275
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 210
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mFilterKeyEvents:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 211
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    #@8
    .line 212
    return-void

    #@9
    .line 214
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    #@b
    and-int/2addr v0, p2

    #@c
    if-nez v0, :cond_1

    #@e
    .line 215
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyEventSequenceStarted:Z

    #@10
    .line 216
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    #@13
    .line 217
    return-void

    #@14
    .line 220
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyEventSequenceStarted:Z

    #@16
    if-nez v0, :cond_3

    #@18
    .line 221
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 222
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    #@21
    .line 223
    return-void

    #@22
    .line 225
    :cond_2
    const/4 v0, 0x1

    #@23
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyEventSequenceStarted:Z

    #@25
    .line 227
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@27
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    #@2a
    .line 209
    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 162
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 163
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    #@9
    .line 164
    return-void

    #@a
    .line 166
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    #@c
    and-int/2addr v1, p2

    #@d
    if-nez v1, :cond_1

    #@f
    .line 167
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    #@11
    .line 168
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    #@13
    .line 169
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@15
    invoke-interface {v1}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    #@18
    .line 170
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    #@1b
    .line 171
    return-void

    #@1c
    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    #@1f
    move-result v0

    #@20
    .line 174
    .local v0, "deviceId":I
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCurrentTouchDeviceId:I

    #@22
    if-eq v1, v0, :cond_2

    #@24
    .line 175
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCurrentTouchDeviceId:I

    #@26
    .line 176
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    #@28
    .line 177
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    #@2a
    .line 178
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2c
    invoke-interface {v1}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    #@2f
    .line 180
    :cond_2
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCurrentTouchDeviceId:I

    #@31
    if-gez v1, :cond_3

    #@33
    .line 181
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    #@36
    .line 182
    return-void

    #@37
    .line 185
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3a
    move-result v1

    #@3b
    const/16 v2, 0x8

    #@3d
    if-ne v1, v2, :cond_4

    #@3f
    .line 186
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    #@42
    .line 187
    return-void

    #@43
    .line 190
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_7

    #@49
    .line 191
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    #@4b
    if-nez v1, :cond_6

    #@4d
    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_5

    #@53
    .line 193
    return-void

    #@54
    .line 195
    :cond_5
    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    #@56
    .line 206
    :cond_6
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->batchMotionEvent(Landroid/view/MotionEvent;I)V

    #@59
    .line 161
    return-void

    #@5a
    .line 199
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    #@5c
    if-nez v1, :cond_6

    #@5e
    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@61
    move-result v1

    #@62
    const/16 v2, 0x9

    #@64
    if-eq v1, v2, :cond_8

    #@66
    .line 201
    return-void

    #@67
    .line 203
    :cond_8
    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    #@69
    goto :goto_0
.end method

.method private processBatchedEvents(J)V
    .locals 5
    .param p1, "frameNanos"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 254
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@3
    .line 255
    .local v0, "current":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    :goto_0
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 256
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@9
    goto :goto_0

    #@a
    .line 268
    :cond_0
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    #@c
    iget v3, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->policyFlags:I

    #@e
    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->handleMotionEvent(Landroid/view/MotionEvent;I)V

    #@11
    .line 269
    move-object v1, v0

    #@12
    .line 270
    .local v1, "prior":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@14
    .line 271
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->recycle()V

    #@17
    .line 259
    .end local v1    # "prior":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    :cond_1
    if-nez v0, :cond_2

    #@19
    .line 260
    iput-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@1b
    .line 253
    :goto_1
    return-void

    #@1c
    .line 263
    :cond_2
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    #@1e
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTimeNano()J

    #@21
    move-result-wide v2

    #@22
    cmp-long v2, v2, p1

    #@24
    if-ltz v2, :cond_0

    #@26
    .line 265
    iput-object v4, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    #@28
    goto :goto_1
.end method

.method private scheduleProcessBatchedEvents()V
    .locals 4

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    #@2
    .line 232
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

    #@4
    .line 231
    const/4 v2, 0x0

    #@5
    .line 232
    const/4 v3, 0x0

    #@6
    .line 231
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@9
    .line 230
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    #@0
    .prologue
    .line 308
    return-void
.end method

.method disableFeatures()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 354
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 355
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    #@8
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    #@b
    .line 356
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    #@d
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->onDestroy()V

    #@10
    .line 357
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    #@12
    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 360
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    #@18
    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->clear()V

    #@1b
    .line 361
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    #@1d
    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->onDestroy()V

    #@20
    .line 362
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    #@22
    .line 364
    :cond_1
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@24
    .line 365
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyEventSequenceStarted:Z

    #@26
    .line 366
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    #@28
    .line 367
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    #@2a
    .line 368
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mFilterKeyEvents:Z

    #@2c
    .line 353
    return-void
.end method

.method notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 327
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    #@6
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@9
    .line 325
    :cond_0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 296
    return-void
.end method

.method public onDestroy()V
    .locals 0

    #@0
    .prologue
    .line 372
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 148
    instance-of v2, p1, Landroid/view/MotionEvent;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 149
    const/16 v2, 0x1002

    #@6
    invoke-virtual {p1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    #@9
    move-result v2

    #@a
    .line 148
    if-eqz v2, :cond_0

    #@c
    move-object v1, p1

    #@d
    .line 150
    check-cast v1, Landroid/view/MotionEvent;

    #@f
    .line 151
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onMotionEvent(Landroid/view/MotionEvent;I)V

    #@12
    .line 143
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :goto_0
    return-void

    #@13
    .line 152
    :cond_0
    instance-of v2, p1, Landroid/view/KeyEvent;

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 153
    const/16 v2, 0x101

    #@19
    invoke-virtual {p1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    #@1c
    move-result v2

    #@1d
    .line 152
    if-eqz v2, :cond_1

    #@1f
    move-object v0, p1

    #@20
    .line 154
    check-cast v0, Landroid/view/KeyEvent;

    #@22
    .line 155
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onKeyEvent(Landroid/view/KeyEvent;I)V

    #@25
    goto :goto_0

    #@26
    .line 157
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    #@29
    goto :goto_0
.end method

.method public onInstalled()V
    .locals 1

    #@0
    .prologue
    .line 126
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    #@3
    .line 127
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    #@6
    .line 128
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    #@9
    .line 129
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    #@c
    .line 122
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "transformedEvent"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 292
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    #@3
    .line 291
    return-void
.end method

.method public onUninstalled()V
    .locals 1

    #@0
    .prologue
    .line 137
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    #@3
    .line 138
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    #@6
    .line 139
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    #@9
    .line 133
    return-void
.end method

.method setEnabledFeatures(I)V
    .locals 1
    .param p1, "enabledFeatures"    # I

    #@0
    .prologue
    .line 313
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 314
    return-void

    #@5
    .line 316
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 317
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    #@c
    .line 319
    :cond_1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    #@e
    .line 320
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 321
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    #@15
    .line 312
    :cond_2
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "sink"    # Lcom/android/server/accessibility/EventStreamTransformation;

    #@0
    .prologue
    .line 303
    return-void
.end method
