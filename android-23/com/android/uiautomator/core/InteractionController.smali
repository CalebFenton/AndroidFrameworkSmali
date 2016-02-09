.class Lcom/android/uiautomator/core/InteractionController;
.super Ljava/lang/Object;
.source "InteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;,
        Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;,
        Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MOTION_EVENT_INJECTION_DELAY_MILLIS:I = 0x5

.field private static final REGULAR_CLICK_LENGTH:J = 0x64L


# instance fields
.field private mDownTime:J

.field private final mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;


# direct methods
.method static synthetic -wrap0(Lcom/android/uiautomator/core/InteractionController;Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/uiautomator/core/InteractionController;II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/uiautomator/core/InteractionController;II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 51
    const-class v0, Lcom/android/uiautomator/core/InteractionController;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 53
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@a
    const/4 v1, 0x3

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@e
    move-result v0

    #@f
    sput-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    #@11
    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V
    .locals 1
    .param p1, "bridge"    # Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    const/4 v0, -0x1

    #@4
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    #@7
    move-result-object v0

    #@8
    .line 55
    iput-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    #@a
    .line 68
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@c
    .line 67
    return-void
.end method

.method private clickRunnable(II)Ljava/lang/Runnable;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 272
    new-instance v0, Lcom/android/uiautomator/core/InteractionController$2;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController$2;-><init>(Lcom/android/uiautomator/core/InteractionController;II)V

    #@5
    return-object v0
.end method

.method private getLastMatchingEvent(Ljava/util/List;I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;I)",
            "Landroid/view/accessibility/AccessibilityEvent;"
        }
    .end annotation

    #@0
    .prologue
    .line 401
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v1

    #@4
    .local v1, "x":I
    :goto_0
    if-lez v1, :cond_1

    #@6
    .line 402
    add-int/lit8 v2, v1, -0x1

    #@8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    #@e
    .line 403
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@11
    move-result v2

    #@12
    if-ne v2, p2, :cond_0

    #@14
    .line 404
    return-object v0

    #@15
    .line 401
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 406
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1
    const/4 v2, 0x0

    #@19
    return-object v2
.end method

.method private getPointerAction(II)I
    .locals 1
    .param p1, "motionEnvent"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 659
    shl-int/lit8 v0, p2, 0x8

    #@2
    add-int/2addr v0, p1

    #@3
    return v0
.end method

.method private injectEventSync(Landroid/view/InputEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, p1, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->injectInputEvent(Landroid/view/InputEvent;Z)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method private recycleAccessibilityEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 410
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "event$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    #@10
    .line 411
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    #@13
    goto :goto_0

    #@14
    .line 412
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@17
    .line 409
    return-void
.end method

.method private runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .locals 5
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "filter"    # Landroid/app/UiAutomation$AccessibilityEventFilter;
    .param p3, "timeout"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@3
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/uiautomator/core/UiAutomatorBridge;->executeCommandAndWaitForAccessibilityEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v2

    #@7
    return-object v2

    #@8
    .line 166
    :catch_0
    move-exception v0

    #@9
    .line 167
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v3, "exception from executeCommandAndWaitForAccessibilityEvent"

    #@e
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 168
    return-object v4

    #@12
    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@13
    .line 164
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v2, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@15
    const-string/jumbo v3, "runAndwaitForEvent timedout waiting for events"

    #@18
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 165
    return-object v4
.end method

.method private touchDown(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 305
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 306
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "touchDown ("

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ", "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string/jumbo v2, ")"

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 308
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@32
    move-result-wide v0

    #@33
    iput-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    #@35
    .line 310
    iget-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    #@37
    iget-wide v2, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    #@39
    int-to-float v5, p1

    #@3a
    int-to-float v6, p2

    #@3b
    const/4 v4, 0x0

    #@3c
    const/4 v7, 0x1

    #@3d
    .line 309
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@40
    move-result-object v8

    #@41
    .line 311
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v0, 0x1002

    #@43
    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    #@46
    .line 312
    invoke-direct {p0, v8}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    #@49
    move-result v0

    #@4a
    return v0
.end method

.method private touchMove(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 328
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 329
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "touchMove ("

    #@e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v4, ", "

    #@19
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string/jumbo v4, ")"

    #@24
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 331
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@32
    move-result-wide v2

    #@33
    .line 333
    .local v2, "eventTime":J
    iget-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    #@35
    int-to-float v5, p1

    #@36
    int-to-float v6, p2

    #@37
    const/4 v4, 0x2

    #@38
    const/4 v7, 0x1

    #@39
    .line 332
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@3c
    move-result-object v8

    #@3d
    .line 334
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v0, 0x1002

    #@3f
    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    #@42
    .line 335
    invoke-direct {p0, v8}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    #@45
    move-result v0

    #@46
    return v0
.end method

.method private touchUp(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 316
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 317
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, "touchUp ("

    #@f
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v5, ", "

    #@1a
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v5, ")"

    #@25
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 319
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@33
    move-result-wide v2

    #@34
    .line 321
    .local v2, "eventTime":J
    iget-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    #@36
    int-to-float v5, p1

    #@37
    int-to-float v6, p2

    #@38
    move v7, v4

    #@39
    .line 320
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@3c
    move-result-object v8

    #@3d
    .line 322
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v0, 0x1002

    #@3f
    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    #@42
    .line 323
    const-wide/16 v0, 0x0

    #@44
    iput-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    #@46
    .line 324
    invoke-direct {p0, v8}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    #@49
    move-result v0

    #@4a
    return v0
.end method


# virtual methods
.method public clickAndSync(IIJ)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "timeout"    # J

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 237
    const-string/jumbo v3, "clickAndSync(%d, %d)"

    #@5
    const/4 v4, 0x2

    #@6
    new-array v4, v4, [Ljava/lang/Object;

    #@8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v5

    #@c
    aput-object v5, v4, v2

    #@e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v5

    #@12
    aput-object v5, v4, v1

    #@14
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 238
    .local v0, "logString":Ljava/lang/String;
    sget-object v3, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@1a
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 240
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->clickRunnable(II)Ljava/lang/Runnable;

    #@20
    move-result-object v3

    #@21
    new-instance v4, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;

    #@23
    .line 241
    const/16 v5, 0x804

    #@25
    .line 240
    invoke-direct {v4, p0, v5}, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;I)V

    #@28
    invoke-direct {p0, v3, v4, p3, p4}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    #@2b
    move-result-object v3

    #@2c
    if-eqz v3, :cond_0

    #@2e
    :goto_0
    return v1

    #@2f
    :cond_0
    move v1, v2

    #@30
    goto :goto_0
.end method

.method public clickAndWaitForNewWindow(IIJ)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "timeout"    # J

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 255
    const-string/jumbo v3, "clickAndWaitForNewWindow(%d, %d)"

    #@5
    const/4 v4, 0x2

    #@6
    new-array v4, v4, [Ljava/lang/Object;

    #@8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v5

    #@c
    aput-object v5, v4, v2

    #@e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v5

    #@12
    aput-object v5, v4, v1

    #@14
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 256
    .local v0, "logString":Ljava/lang/String;
    sget-object v3, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@1a
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->clickRunnable(II)Ljava/lang/Runnable;

    #@20
    move-result-object v3

    #@21
    new-instance v4, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;

    #@23
    .line 259
    const/16 v5, 0x820

    #@25
    .line 258
    invoke-direct {v4, p0, v5}, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;I)V

    #@28
    invoke-direct {p0, v3, v4, p3, p4}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    #@2b
    move-result-object v3

    #@2c
    if-eqz v3, :cond_0

    #@2e
    :goto_0
    return v1

    #@2f
    :cond_0
    move v1, v2

    #@30
    goto :goto_0
.end method

.method public clickNoSync(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 216
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "clickNoSync ("

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, ", "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, ")"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 218
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_0

    #@31
    .line 219
    const-wide/16 v0, 0x64

    #@33
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    #@36
    .line 220
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_0

    #@3c
    .line 221
    const/4 v0, 0x1

    #@3d
    return v0

    #@3e
    .line 223
    :cond_0
    const/4 v0, 0x0

    #@3f
    return v0
.end method

.method public freezeRotation()V
    .locals 2

    #@0
    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    const/4 v1, -0x1

    #@3
    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    #@6
    .line 604
    return-void
.end method

.method public isScreenOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->isScreenOn()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public longTapNoSync(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 291
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 292
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "longTapNoSync ("

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ", "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string/jumbo v2, ")"

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 295
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 296
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@37
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getSystemLongPressTime()J

    #@3a
    move-result-wide v0

    #@3b
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    #@3e
    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_1

    #@44
    .line 298
    const/4 v0, 0x1

    #@45
    return v0

    #@46
    .line 301
    :cond_1
    const/4 v0, 0x0

    #@47
    return v0
.end method

.method public openNotification()Z
    .locals 2

    #@0
    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    .line 782
    const/4 v1, 0x4

    #@3
    .line 781
    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->performGlobalAction(I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public openQuickSettings()Z
    .locals 2

    #@0
    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    .line 793
    const/4 v1, 0x5

    #@3
    .line 792
    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->performGlobalAction(I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public varargs performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z
    .locals 24
    .param p1, "touches"    # [[Landroid/view/MotionEvent$PointerCoords;

    #@0
    .prologue
    .line 688
    move-object/from16 v0, p1

    #@2
    array-length v4, v0

    #@3
    const/4 v5, 0x2

    #@4
    if-ge v4, v5, :cond_0

    #@6
    .line 689
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v5, "Must provide coordinates for at least 2 pointers"

    #@b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 693
    :cond_0
    const/16 v20, 0x0

    #@11
    .line 694
    .local v20, "maxSteps":I
    const/16 v23, 0x0

    #@13
    .local v23, "x":I
    :goto_0
    move-object/from16 v0, p1

    #@15
    array-length v4, v0

    #@16
    move/from16 v0, v23

    #@18
    if-ge v0, v4, :cond_2

    #@1a
    .line 695
    aget-object v4, p1, v23

    #@1c
    array-length v4, v4

    #@1d
    move/from16 v0, v20

    #@1f
    if-ge v0, v4, :cond_1

    #@21
    aget-object v4, p1, v23

    #@23
    array-length v0, v4

    #@24
    move/from16 v20, v0

    #@26
    .line 694
    :cond_1
    add-int/lit8 v23, v23, 0x1

    #@28
    goto :goto_0

    #@29
    .line 698
    :cond_2
    move-object/from16 v0, p1

    #@2b
    array-length v4, v0

    #@2c
    new-array v8, v4, [Landroid/view/MotionEvent$PointerProperties;

    #@2e
    .line 699
    .local v8, "properties":[Landroid/view/MotionEvent$PointerProperties;
    move-object/from16 v0, p1

    #@30
    array-length v4, v0

    #@31
    new-array v9, v4, [Landroid/view/MotionEvent$PointerCoords;

    #@33
    .line 700
    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v23, 0x0

    #@35
    :goto_1
    move-object/from16 v0, p1

    #@37
    array-length v4, v0

    #@38
    move/from16 v0, v23

    #@3a
    if-ge v0, v4, :cond_3

    #@3c
    .line 701
    new-instance v21, Landroid/view/MotionEvent$PointerProperties;

    #@3e
    invoke-direct/range {v21 .. v21}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    #@41
    .line 702
    .local v21, "prop":Landroid/view/MotionEvent$PointerProperties;
    move/from16 v0, v23

    #@43
    move-object/from16 v1, v21

    #@45
    iput v0, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    #@47
    .line 703
    const/4 v4, 0x1

    #@48
    move-object/from16 v0, v21

    #@4a
    iput v4, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    #@4c
    .line 704
    aput-object v21, v8, v23

    #@4e
    .line 707
    aget-object v4, p1, v23

    #@50
    const/4 v5, 0x0

    #@51
    aget-object v4, v4, v5

    #@53
    aput-object v4, v9, v23

    #@55
    .line 700
    add-int/lit8 v23, v23, 0x1

    #@57
    goto :goto_1

    #@58
    .line 711
    .end local v21    # "prop":Landroid/view/MotionEvent$PointerProperties;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5b
    move-result-wide v2

    #@5c
    .line 713
    .local v2, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5f
    move-result-wide v4

    #@60
    .line 714
    const/high16 v12, 0x3f800000    # 1.0f

    #@62
    const/high16 v13, 0x3f800000    # 1.0f

    #@64
    .line 713
    const/4 v6, 0x0

    #@65
    const/4 v7, 0x1

    #@66
    .line 714
    const/4 v10, 0x0

    #@67
    const/4 v11, 0x0

    #@68
    const/4 v14, 0x0

    #@69
    const/4 v15, 0x0

    #@6a
    const/16 v16, 0x1002

    #@6c
    const/16 v17, 0x0

    #@6e
    .line 713
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    #@71
    move-result-object v18

    #@72
    .line 715
    .local v18, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    #@74
    move-object/from16 v1, v18

    #@76
    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    #@79
    move-result v22

    #@7a
    .line 717
    .local v22, "ret":Z
    const/16 v23, 0x1

    #@7c
    :goto_2
    move-object/from16 v0, p1

    #@7e
    array-length v4, v0

    #@7f
    move/from16 v0, v23

    #@81
    if-ge v0, v4, :cond_4

    #@83
    .line 718
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@86
    move-result-wide v4

    #@87
    .line 719
    const/4 v6, 0x5

    #@88
    move-object/from16 v0, p0

    #@8a
    move/from16 v1, v23

    #@8c
    invoke-direct {v0, v6, v1}, Lcom/android/uiautomator/core/InteractionController;->getPointerAction(II)I

    #@8f
    move-result v6

    #@90
    add-int/lit8 v7, v23, 0x1

    #@92
    .line 720
    const/high16 v12, 0x3f800000    # 1.0f

    #@94
    const/high16 v13, 0x3f800000    # 1.0f

    #@96
    const/4 v10, 0x0

    #@97
    const/4 v11, 0x0

    #@98
    const/4 v14, 0x0

    #@99
    const/4 v15, 0x0

    #@9a
    const/16 v16, 0x1002

    #@9c
    const/16 v17, 0x0

    #@9e
    .line 718
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    #@a1
    move-result-object v18

    #@a2
    .line 721
    move-object/from16 v0, p0

    #@a4
    move-object/from16 v1, v18

    #@a6
    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    #@a9
    move-result v4

    #@aa
    and-int v22, v22, v4

    #@ac
    .line 717
    add-int/lit8 v23, v23, 0x1

    #@ae
    goto :goto_2

    #@af
    .line 725
    :cond_4
    const/16 v19, 0x1

    #@b1
    .local v19, "i":I
    :goto_3
    add-int/lit8 v4, v20, -0x1

    #@b3
    move/from16 v0, v19

    #@b5
    if-ge v0, v4, :cond_7

    #@b7
    .line 727
    const/16 v23, 0x0

    #@b9
    :goto_4
    move-object/from16 v0, p1

    #@bb
    array-length v4, v0

    #@bc
    move/from16 v0, v23

    #@be
    if-ge v0, v4, :cond_6

    #@c0
    .line 729
    aget-object v4, p1, v23

    #@c2
    array-length v4, v4

    #@c3
    move/from16 v0, v19

    #@c5
    if-le v4, v0, :cond_5

    #@c7
    .line 730
    aget-object v4, p1, v23

    #@c9
    aget-object v4, v4, v19

    #@cb
    aput-object v4, v9, v23

    #@cd
    .line 727
    :goto_5
    add-int/lit8 v23, v23, 0x1

    #@cf
    goto :goto_4

    #@d0
    .line 732
    :cond_5
    aget-object v4, p1, v23

    #@d2
    aget-object v5, p1, v23

    #@d4
    array-length v5, v5

    #@d5
    add-int/lit8 v5, v5, -0x1

    #@d7
    aget-object v4, v4, v5

    #@d9
    aput-object v4, v9, v23

    #@db
    goto :goto_5

    #@dc
    .line 735
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@df
    move-result-wide v4

    #@e0
    .line 736
    move-object/from16 v0, p1

    #@e2
    array-length v7, v0

    #@e3
    const/high16 v12, 0x3f800000    # 1.0f

    #@e5
    const/high16 v13, 0x3f800000    # 1.0f

    #@e7
    const/4 v6, 0x2

    #@e8
    const/4 v10, 0x0

    #@e9
    const/4 v11, 0x0

    #@ea
    .line 737
    const/4 v14, 0x0

    #@eb
    const/4 v15, 0x0

    #@ec
    const/16 v16, 0x1002

    #@ee
    const/16 v17, 0x0

    #@f0
    .line 735
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    #@f3
    move-result-object v18

    #@f4
    .line 739
    move-object/from16 v0, p0

    #@f6
    move-object/from16 v1, v18

    #@f8
    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    #@fb
    move-result v4

    #@fc
    and-int v22, v22, v4

    #@fe
    .line 740
    const-wide/16 v4, 0x5

    #@100
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    #@103
    .line 725
    add-int/lit8 v19, v19, 0x1

    #@105
    goto :goto_3

    #@106
    .line 744
    :cond_7
    const/16 v23, 0x0

    #@108
    :goto_6
    move-object/from16 v0, p1

    #@10a
    array-length v4, v0

    #@10b
    move/from16 v0, v23

    #@10d
    if-ge v0, v4, :cond_8

    #@10f
    .line 745
    aget-object v4, p1, v23

    #@111
    aget-object v5, p1, v23

    #@113
    array-length v5, v5

    #@114
    add-int/lit8 v5, v5, -0x1

    #@116
    aget-object v4, v4, v5

    #@118
    aput-object v4, v9, v23

    #@11a
    .line 744
    add-int/lit8 v23, v23, 0x1

    #@11c
    goto :goto_6

    #@11d
    .line 748
    :cond_8
    const/16 v23, 0x1

    #@11f
    :goto_7
    move-object/from16 v0, p1

    #@121
    array-length v4, v0

    #@122
    move/from16 v0, v23

    #@124
    if-ge v0, v4, :cond_9

    #@126
    .line 749
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@129
    move-result-wide v4

    #@12a
    .line 750
    const/4 v6, 0x6

    #@12b
    move-object/from16 v0, p0

    #@12d
    move/from16 v1, v23

    #@12f
    invoke-direct {v0, v6, v1}, Lcom/android/uiautomator/core/InteractionController;->getPointerAction(II)I

    #@132
    move-result v6

    #@133
    add-int/lit8 v7, v23, 0x1

    #@135
    .line 751
    const/high16 v12, 0x3f800000    # 1.0f

    #@137
    const/high16 v13, 0x3f800000    # 1.0f

    #@139
    const/4 v10, 0x0

    #@13a
    const/4 v11, 0x0

    #@13b
    const/4 v14, 0x0

    #@13c
    const/4 v15, 0x0

    #@13d
    const/16 v16, 0x1002

    #@13f
    const/16 v17, 0x0

    #@141
    .line 749
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    #@144
    move-result-object v18

    #@145
    .line 752
    move-object/from16 v0, p0

    #@147
    move-object/from16 v1, v18

    #@149
    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    #@14c
    move-result v4

    #@14d
    and-int v22, v22, v4

    #@14f
    .line 748
    add-int/lit8 v23, v23, 0x1

    #@151
    goto :goto_7

    #@152
    .line 755
    :cond_9
    sget-object v4, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@154
    new-instance v5, Ljava/lang/StringBuilder;

    #@156
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@159
    const-string/jumbo v6, "x "

    #@15c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v5

    #@160
    const/4 v6, 0x0

    #@161
    aget-object v6, v9, v6

    #@163
    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@165
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@168
    move-result-object v5

    #@169
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16c
    move-result-object v5

    #@16d
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@170
    .line 757
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@173
    move-result-wide v4

    #@174
    .line 758
    const/high16 v12, 0x3f800000    # 1.0f

    #@176
    const/high16 v13, 0x3f800000    # 1.0f

    #@178
    .line 757
    const/4 v6, 0x1

    #@179
    const/4 v7, 0x1

    #@17a
    .line 758
    const/4 v10, 0x0

    #@17b
    const/4 v11, 0x0

    #@17c
    const/4 v14, 0x0

    #@17d
    const/4 v15, 0x0

    #@17e
    const/16 v16, 0x1002

    #@180
    const/16 v17, 0x0

    #@182
    .line 757
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    #@185
    move-result-object v18

    #@186
    .line 759
    move-object/from16 v0, p0

    #@188
    move-object/from16 v1, v18

    #@18a
    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    #@18d
    move-result v4

    #@18e
    and-int v22, v22, v4

    #@190
    .line 760
    return v22
.end method

.method public scrollSwipe(IIIII)Z
    .locals 10
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I

    #@0
    .prologue
    .line 350
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "scrollSwipe ("

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, ", "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, ", "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    const-string/jumbo v3, ", "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    .line 351
    const-string/jumbo v3, ", "

    #@36
    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    .line 351
    const-string/jumbo v3, ")"

    #@41
    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 353
    new-instance v0, Lcom/android/uiautomator/core/InteractionController$3;

    #@4e
    move-object v1, p0

    #@4f
    move v2, p1

    #@50
    move v3, p2

    #@51
    move v4, p3

    #@52
    move v5, p4

    #@53
    move v6, p5

    #@54
    invoke-direct/range {v0 .. v6}, Lcom/android/uiautomator/core/InteractionController$3;-><init>(Lcom/android/uiautomator/core/InteractionController;IIIII)V

    #@57
    .line 362
    .local v0, "command":Ljava/lang/Runnable;
    new-instance v8, Ljava/util/ArrayList;

    #@59
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@5c
    .line 364
    .local v8, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityEvent;>;"
    new-instance v1, Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;

    #@5e
    const/16 v2, 0x1000

    #@60
    invoke-direct {v1, p0, v2, v8}, Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;ILjava/util/List;)V

    #@63
    .line 365
    invoke-static {}, Lcom/android/uiautomator/core/Configurator;->getInstance()Lcom/android/uiautomator/core/Configurator;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2}, Lcom/android/uiautomator/core/Configurator;->getScrollAcknowledgmentTimeout()J

    #@6a
    move-result-wide v2

    #@6b
    .line 363
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    #@6e
    .line 368
    const/16 v1, 0x1000

    #@70
    .line 367
    invoke-direct {p0, v8, v1}, Lcom/android/uiautomator/core/InteractionController;->getLastMatchingEvent(Ljava/util/List;I)Landroid/view/accessibility/AccessibilityEvent;

    #@73
    move-result-object v7

    #@74
    .line 370
    .local v7, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-nez v7, :cond_0

    #@76
    .line 372
    invoke-direct {p0, v8}, Lcom/android/uiautomator/core/InteractionController;->recycleAccessibilityEvents(Ljava/util/List;)V

    #@79
    .line 373
    const/4 v1, 0x0

    #@7a
    return v1

    #@7b
    .line 377
    :cond_0
    const/4 v9, 0x0

    #@7c
    .line 378
    .local v9, "foundEnd":Z
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    #@7f
    move-result v1

    #@80
    const/4 v2, -0x1

    #@81
    if-eq v1, v2, :cond_4

    #@83
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    #@86
    move-result v1

    #@87
    const/4 v2, -0x1

    #@88
    if-eq v1, v2, :cond_4

    #@8a
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    #@8d
    move-result v1

    #@8e
    const/4 v2, -0x1

    #@8f
    if-eq v1, v2, :cond_4

    #@91
    .line 379
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    #@94
    move-result v1

    #@95
    if-eqz v1, :cond_2

    #@97
    .line 380
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    #@9a
    move-result v1

    #@9b
    add-int/lit8 v1, v1, -0x1

    #@9d
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    #@a0
    move-result v2

    #@a1
    if-ne v1, v2, :cond_3

    #@a3
    const/4 v9, 0x1

    #@a4
    .line 381
    :goto_0
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@a6
    new-instance v2, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v3, "scrollSwipe reached scroll end: "

    #@ae
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v2

    #@b2
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v2

    #@b6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v2

    #@ba
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@bd
    .line 396
    :cond_1
    :goto_1
    invoke-direct {p0, v8}, Lcom/android/uiautomator/core/InteractionController;->recycleAccessibilityEvents(Ljava/util/List;)V

    #@c0
    .line 397
    if-eqz v9, :cond_a

    #@c2
    const/4 v1, 0x0

    #@c3
    :goto_2
    return v1

    #@c4
    .line 379
    :cond_2
    const/4 v9, 0x1

    #@c5
    goto :goto_0

    #@c6
    .line 380
    :cond_3
    const/4 v9, 0x0

    #@c7
    goto :goto_0

    #@c8
    .line 382
    :cond_4
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    #@cb
    move-result v1

    #@cc
    const/4 v2, -0x1

    #@cd
    if-eq v1, v2, :cond_1

    #@cf
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    #@d2
    move-result v1

    #@d3
    const/4 v2, -0x1

    #@d4
    if-eq v1, v2, :cond_1

    #@d6
    .line 384
    if-ne p1, p3, :cond_7

    #@d8
    .line 386
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    #@db
    move-result v1

    #@dc
    if-eqz v1, :cond_5

    #@de
    .line 387
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    #@e1
    move-result v1

    #@e2
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getMaxScrollY()I

    #@e5
    move-result v2

    #@e6
    if-ne v1, v2, :cond_6

    #@e8
    const/4 v9, 0x1

    #@e9
    .line 388
    :goto_3
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@eb
    new-instance v2, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v3, "Vertical scrollSwipe reached scroll end: "

    #@f3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v2

    #@f7
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v2

    #@fb
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v2

    #@ff
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@102
    goto :goto_1

    #@103
    .line 386
    :cond_5
    const/4 v9, 0x1

    #@104
    goto :goto_3

    #@105
    .line 387
    :cond_6
    const/4 v9, 0x0

    #@106
    goto :goto_3

    #@107
    .line 389
    :cond_7
    if-ne p2, p4, :cond_1

    #@109
    .line 391
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    #@10c
    move-result v1

    #@10d
    if-eqz v1, :cond_8

    #@10f
    .line 392
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    #@112
    move-result v1

    #@113
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->getMaxScrollX()I

    #@116
    move-result v2

    #@117
    if-ne v1, v2, :cond_9

    #@119
    const/4 v9, 0x1

    #@11a
    .line 393
    :goto_4
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@11c
    new-instance v2, Ljava/lang/StringBuilder;

    #@11e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@121
    const-string/jumbo v3, "Horizontal scrollSwipe reached scroll end: "

    #@124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v2

    #@128
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v2

    #@12c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12f
    move-result-object v2

    #@130
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@133
    goto :goto_1

    #@134
    .line 391
    :cond_8
    const/4 v9, 0x1

    #@135
    goto :goto_4

    #@136
    .line 392
    :cond_9
    const/4 v9, 0x0

    #@137
    goto :goto_4

    #@138
    .line 397
    :cond_a
    const/4 v1, 0x1

    #@139
    goto :goto_2
.end method

.method public sendKey(II)Z
    .locals 20
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    #@0
    .prologue
    .line 544
    sget-boolean v2, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 545
    sget-object v2, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@6
    new-instance v6, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v8, "sendKey ("

    #@e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v6

    #@12
    move/from16 v0, p1

    #@14
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v6

    #@18
    const-string/jumbo v8, ", "

    #@1b
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    move/from16 v0, p2

    #@21
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    const-string/jumbo v8, ")"

    #@28
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 548
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@36
    move-result-wide v4

    #@37
    .line 549
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    #@39
    const/4 v8, 0x0

    #@3a
    .line 550
    const/4 v10, 0x0

    #@3b
    const/4 v12, -0x1

    #@3c
    const/4 v13, 0x0

    #@3d
    const/4 v14, 0x0

    #@3e
    .line 551
    const/16 v15, 0x101

    #@40
    move-wide v6, v4

    #@41
    move/from16 v9, p1

    #@43
    move/from16 v11, p2

    #@45
    .line 549
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@48
    .line 552
    .local v3, "downEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    #@4a
    invoke-direct {v0, v3}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    #@4d
    move-result v2

    #@4e
    if-eqz v2, :cond_1

    #@50
    .line 553
    new-instance v7, Landroid/view/KeyEvent;

    #@52
    const/4 v12, 0x1

    #@53
    .line 554
    const/4 v14, 0x0

    #@54
    const/16 v16, -0x1

    #@56
    const/16 v17, 0x0

    #@58
    const/16 v18, 0x0

    #@5a
    .line 555
    const/16 v19, 0x101

    #@5c
    move-wide v8, v4

    #@5d
    move-wide v10, v4

    #@5e
    move/from16 v13, p1

    #@60
    move/from16 v15, p2

    #@62
    .line 553
    invoke-direct/range {v7 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@65
    .line 556
    .local v7, "upEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    #@67
    invoke-direct {v0, v7}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    #@6a
    move-result v2

    #@6b
    if-eqz v2, :cond_1

    #@6d
    .line 557
    const/4 v2, 0x1

    #@6e
    return v2

    #@6f
    .line 560
    .end local v7    # "upEvent":Landroid/view/KeyEvent;
    :cond_1
    const/4 v2, 0x0

    #@70
    return v2
.end method

.method public sendKeyAndWaitForEvent(IIIJ)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I
    .param p3, "eventType"    # I
    .param p4, "timeout"    # J

    #@0
    .prologue
    .line 188
    new-instance v0, Lcom/android/uiautomator/core/InteractionController$1;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController$1;-><init>(Lcom/android/uiautomator/core/InteractionController;II)V

    #@5
    .line 204
    .local v0, "command":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;

    #@7
    invoke-direct {v1, p0, p3}, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;I)V

    #@a
    invoke-direct {p0, v0, v1, p4, p5}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    #@d
    move-result-object v1

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v1, 0x1

    #@11
    :goto_0
    return v1

    #@12
    :cond_0
    const/4 v1, 0x0

    #@13
    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;)Z
    .locals 10
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 518
    sget-boolean v3, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 519
    sget-object v3, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    #@7
    new-instance v7, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v8, "sendText ("

    #@f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v7

    #@13
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v7

    #@17
    const-string/jumbo v8, ")"

    #@1a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v7

    #@22
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 522
    :cond_0
    iget-object v3, p0, Lcom/android/uiautomator/core/InteractionController;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    #@27
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v3, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    #@2e
    move-result-object v2

    #@2f
    .line 524
    .local v2, "events":[Landroid/view/KeyEvent;
    if-eqz v2, :cond_2

    #@31
    .line 525
    invoke-static {}, Lcom/android/uiautomator/core/Configurator;->getInstance()Lcom/android/uiautomator/core/Configurator;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Lcom/android/uiautomator/core/Configurator;->getKeyInjectionDelay()J

    #@38
    move-result-wide v4

    #@39
    .line 526
    .local v4, "keyDelay":J
    array-length v7, v2

    #@3a
    move v3, v6

    #@3b
    :goto_0
    if-ge v3, v7, :cond_2

    #@3d
    aget-object v1, v2, v3

    #@3f
    .line 533
    .local v1, "event2":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@42
    move-result-wide v8

    #@43
    .line 532
    invoke-static {v1, v8, v9, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    #@46
    move-result-object v0

    #@47
    .line 534
    .local v0, "event":Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    #@4a
    move-result v8

    #@4b
    if-nez v8, :cond_1

    #@4d
    .line 535
    return v6

    #@4e
    .line 537
    :cond_1
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    #@51
    .line 526
    add-int/lit8 v3, v3, 0x1

    #@53
    goto :goto_0

    #@54
    .line 540
    .end local v0    # "event":Landroid/view/KeyEvent;
    .end local v1    # "event2":Landroid/view/KeyEvent;
    .end local v4    # "keyDelay":J
    :cond_2
    const/4 v3, 0x1

    #@55
    return v3
.end method

.method public setRotationLeft()V
    .locals 2

    #@0
    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    #@6
    .line 583
    return-void
.end method

.method public setRotationNatural()V
    .locals 2

    #@0
    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    #@6
    .line 595
    return-void
.end method

.method public setRotationRight()V
    .locals 2

    #@0
    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    #@6
    .line 571
    return-void
.end method

.method public sleepDevice()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 638
    invoke-virtual {p0}, Lcom/android/uiautomator/core/InteractionController;->isScreenOn()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 639
    const/16 v0, 0x1a

    #@9
    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    #@c
    .line 640
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 642
    :cond_0
    return v1
.end method

.method public swipe(IIIII)Z
    .locals 7
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I

    #@0
    .prologue
    .line 425
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-virtual/range {v0 .. v6}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIIIZ)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public swipe(IIIIIZ)Z
    .locals 14
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I
    .param p6, "drag"    # Z

    #@0
    .prologue
    .line 439
    const/4 v3, 0x0

    #@1
    .line 440
    .local v3, "ret":Z
    move/from16 v4, p5

    #@3
    .line 441
    .local v4, "swipeSteps":I
    const-wide/16 v6, 0x0

    #@5
    .line 442
    .local v6, "xStep":D
    const-wide/16 v8, 0x0

    #@7
    .line 445
    .local v8, "yStep":D
    if-nez v4, :cond_0

    #@9
    .line 446
    const/4 v4, 0x1

    #@a
    .line 448
    :cond_0
    sub-int v5, p3, p1

    #@c
    int-to-double v10, v5

    #@d
    int-to-double v12, v4

    #@e
    div-double v6, v10, v12

    #@10
    .line 449
    sub-int v5, p4, p2

    #@12
    int-to-double v10, v5

    #@13
    int-to-double v12, v4

    #@14
    div-double v8, v10, v12

    #@16
    .line 452
    invoke-direct/range {p0 .. p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    #@19
    move-result v3

    #@1a
    .line 453
    .local v3, "ret":Z
    if-eqz p6, :cond_1

    #@1c
    .line 454
    iget-object v5, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@1e
    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getSystemLongPressTime()J

    #@21
    move-result-wide v10

    #@22
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    #@25
    .line 455
    :cond_1
    const/4 v2, 0x1

    #@26
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    #@28
    .line 456
    int-to-double v10, v2

    #@29
    mul-double/2addr v10, v6

    #@2a
    double-to-int v5, v10

    #@2b
    add-int/2addr v5, p1

    #@2c
    int-to-double v10, v2

    #@2d
    mul-double/2addr v10, v8

    #@2e
    double-to-int v10, v10

    #@2f
    add-int v10, v10, p2

    #@31
    invoke-direct {p0, v5, v10}, Lcom/android/uiautomator/core/InteractionController;->touchMove(II)Z

    #@34
    move-result v5

    #@35
    and-int/2addr v3, v5

    #@36
    .line 457
    if-nez v3, :cond_4

    #@38
    .line 465
    :cond_2
    if-eqz p6, :cond_3

    #@3a
    .line 466
    const-wide/16 v10, 0x64

    #@3c
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    #@3f
    .line 467
    :cond_3
    move/from16 v0, p3

    #@41
    move/from16 v1, p4

    #@43
    invoke-direct {p0, v0, v1}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    #@46
    move-result v5

    #@47
    and-int/2addr v3, v5

    #@48
    .line 468
    return v3

    #@49
    .line 463
    :cond_4
    const-wide/16 v10, 0x5

    #@4b
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    #@4e
    .line 455
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_0
.end method

.method public swipe([Landroid/graphics/Point;I)Z
    .locals 12
    .param p1, "segments"    # [Landroid/graphics/Point;
    .param p2, "segmentSteps"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 478
    const/4 v1, 0x0

    #@2
    .line 479
    .local v1, "ret":Z
    move v3, p2

    #@3
    .line 480
    .local v3, "swipeSteps":I
    const-wide/16 v4, 0x0

    #@5
    .line 481
    .local v4, "xStep":D
    const-wide/16 v6, 0x0

    #@7
    .line 484
    .local v6, "yStep":D
    if-nez p2, :cond_0

    #@9
    .line 485
    const/4 p2, 0x1

    #@a
    .line 488
    :cond_0
    array-length v8, p1

    #@b
    if-nez v8, :cond_1

    #@d
    .line 489
    return v9

    #@e
    .line 492
    :cond_1
    aget-object v8, p1, v9

    #@10
    iget v8, v8, Landroid/graphics/Point;->x:I

    #@12
    aget-object v9, p1, v9

    #@14
    iget v9, v9, Landroid/graphics/Point;->y:I

    #@16
    invoke-direct {p0, v8, v9}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    #@19
    move-result v1

    #@1a
    .line 493
    .local v1, "ret":Z
    const/4 v2, 0x0

    #@1b
    .local v2, "seg":I
    :goto_0
    array-length v8, p1

    #@1c
    if-ge v2, v8, :cond_4

    #@1e
    .line 494
    add-int/lit8 v8, v2, 0x1

    #@20
    array-length v9, p1

    #@21
    if-ge v8, v9, :cond_2

    #@23
    .line 496
    add-int/lit8 v8, v2, 0x1

    #@25
    aget-object v8, p1, v8

    #@27
    iget v8, v8, Landroid/graphics/Point;->x:I

    #@29
    aget-object v9, p1, v2

    #@2b
    iget v9, v9, Landroid/graphics/Point;->x:I

    #@2d
    sub-int/2addr v8, v9

    #@2e
    int-to-double v8, v8

    #@2f
    int-to-double v10, p2

    #@30
    div-double v4, v8, v10

    #@32
    .line 497
    add-int/lit8 v8, v2, 0x1

    #@34
    aget-object v8, p1, v8

    #@36
    iget v8, v8, Landroid/graphics/Point;->y:I

    #@38
    aget-object v9, p1, v2

    #@3a
    iget v9, v9, Landroid/graphics/Point;->y:I

    #@3c
    sub-int/2addr v8, v9

    #@3d
    int-to-double v8, v8

    #@3e
    int-to-double v10, p2

    #@3f
    div-double v6, v8, v10

    #@41
    .line 499
    const/4 v0, 0x1

    #@42
    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    #@44
    .line 500
    aget-object v8, p1, v2

    #@46
    iget v8, v8, Landroid/graphics/Point;->x:I

    #@48
    int-to-double v10, v0

    #@49
    mul-double/2addr v10, v4

    #@4a
    double-to-int v9, v10

    #@4b
    add-int/2addr v8, v9

    #@4c
    .line 501
    aget-object v9, p1, v2

    #@4e
    iget v9, v9, Landroid/graphics/Point;->y:I

    #@50
    int-to-double v10, v0

    #@51
    mul-double/2addr v10, v6

    #@52
    double-to-int v10, v10

    #@53
    add-int/2addr v9, v10

    #@54
    .line 500
    invoke-direct {p0, v8, v9}, Lcom/android/uiautomator/core/InteractionController;->touchMove(II)Z

    #@57
    move-result v8

    #@58
    and-int/2addr v1, v8

    #@59
    .line 502
    if-nez v1, :cond_3

    #@5b
    .line 493
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 508
    .restart local v0    # "i":I
    :cond_3
    const-wide/16 v8, 0x5

    #@60
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    #@63
    .line 499
    add-int/lit8 v0, v0, 0x1

    #@65
    goto :goto_1

    #@66
    .line 512
    .end local v0    # "i":I
    :cond_4
    array-length v8, p1

    #@67
    add-int/lit8 v8, v8, -0x1

    #@69
    aget-object v8, p1, v8

    #@6b
    iget v8, v8, Landroid/graphics/Point;->x:I

    #@6d
    array-length v9, p1

    #@6e
    add-int/lit8 v9, v9, -0x1

    #@70
    aget-object v9, p1, v9

    #@72
    iget v9, v9, Landroid/graphics/Point;->y:I

    #@74
    invoke-direct {p0, v8, v9}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    #@77
    move-result v8

    #@78
    and-int/2addr v1, v8

    #@79
    .line 513
    return v1
.end method

.method public toggleRecentApps()Z
    .locals 2

    #@0
    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    .line 771
    const/4 v1, 0x3

    #@3
    .line 770
    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->performGlobalAction(I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public unfreezeRotation()V
    .locals 2

    #@0
    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    const/4 v1, -0x2

    #@3
    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    #@6
    .line 613
    return-void
.end method

.method public wakeDevice()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 624
    invoke-virtual {p0}, Lcom/android/uiautomator/core/InteractionController;->isScreenOn()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 625
    const/16 v0, 0x1a

    #@9
    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    #@c
    .line 626
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 628
    :cond_0
    return v1
.end method
