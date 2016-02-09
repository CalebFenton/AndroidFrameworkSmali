.class public final Lcom/android/server/accessibility/ScreenMagnifier;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"

# interfaces
.implements Landroid/view/WindowManagerInternal$MagnificationCallbacks;
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;,
        Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;,
        Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;,
        Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;,
        Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;,
        Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;,
        Lcom/android/server/accessibility/ScreenMagnifier$1;
    }
.end annotation


# static fields
.field private static final DEBUG_DETECTING:Z = false

.field private static final DEBUG_MAGNIFICATION_CONTROLLER:Z = false

.field private static final DEBUG_PANNING:Z = false

.field private static final DEBUG_SCALING:Z = false

.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final DEBUG_STATE_TRANSITIONS:Z = false

.field private static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field private static final DEFAULT_SCREEN_MAGNIFICATION_AUTO_UPDATE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MESSAGE_ON_MAGNIFIED_BOUNDS_CHANGED:I = 0x1

.field private static final MESSAGE_ON_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x2

.field private static final MESSAGE_ON_ROTATION_CHANGED:I = 0x4

.field private static final MESSAGE_ON_USER_CONTEXT_CHANGED:I = 0x3

.field private static final MY_PID:I

.field private static final STATE_DELEGATING:I = 0x1

.field private static final STATE_DETECTING:I = 0x2

.field private static final STATE_MAGNIFIED_INTERACTION:I = 0x4

.field private static final STATE_VIEWPORT_DRAGGING:I = 0x3


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDelegatingStateDownTime:J

.field private final mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

.field private final mHandler:Landroid/os/Handler;

.field private final mLongAnimationDuration:J

.field private final mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

.field private final mMagnifiedBounds:Landroid/graphics/Region;

.field private final mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

.field private final mMultiTapDistanceSlop:I

.field private final mMultiTapTimeSlop:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPreviousState:I

.field private final mScreenStateObserver:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

.field private final mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

.field private final mTapDistanceSlop:I

.field private final mTapTimeSlop:I

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private mTranslationEnabledBeforePan:Z

.field private mUpdateMagnificationSpecOnNextBoundsChange:Z

.field private final mWindowManager:Landroid/view/WindowManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/accessibility/ScreenMagnifier;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTranslationEnabledBeforePan:Z

    #@2
    return v0
.end method

.method static synthetic -get11(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/view/WindowManagerInternal;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/WindowManagerInternal;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapDistanceSlop:I

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mPreviousState:I

    #@2
    return v0
.end method

.method static synthetic -get8(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapDistanceSlop:I

    #@2
    return v0
.end method

.method static synthetic -get9(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapTimeSlop:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/accessibility/ScreenMagnifier;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTranslationEnabledBeforePan:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/accessibility/ScreenMagnifier;)F
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->getPersistedScale()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/graphics/Region;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Region;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->handleOnMagnifiedBoundsChanged(Landroid/graphics/Region;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/accessibility/ScreenMagnifier;IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/ScreenMagnifier;->handleOnRectangleOnScreenRequested(IIII)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/accessibility/ScreenMagnifier;I)V
    .locals 0
    .param p1, "rotation"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->handleOnRotationChanged(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->handleOnUserContextChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/accessibility/ScreenMagnifier;F)V
    .locals 0
    .param p1, "scale"    # F

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->persistScale(F)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/accessibility/ScreenMagnifier;I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 99
    const-class v0, Lcom/android/server/accessibility/ScreenMagnifier;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 122
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@b
    move-result v0

    #@c
    sput v0, Lcom/android/server/accessibility/ScreenMagnifier;->MY_PID:I

    #@e
    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # I
    .param p3, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 124
    new-instance v0, Landroid/graphics/Rect;

    #@6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempRect:Landroid/graphics/Rect;

    #@b
    .line 125
    new-instance v0, Landroid/graphics/Rect;

    #@d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempRect1:Landroid/graphics/Rect;

    #@12
    .line 138
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapTimeSlop:I

    #@18
    .line 145
    new-instance v0, Landroid/graphics/Region;

    #@1a
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    #@1f
    .line 160
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$1;

    #@21
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/ScreenMagnifier$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;)V

    #@24
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    #@26
    .line 190
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    #@28
    .line 191
    const-class v0, Landroid/view/WindowManagerInternal;

    #@2a
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/view/WindowManagerInternal;

    #@30
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/WindowManagerInternal;

    #@32
    .line 192
    iput-object p3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@34
    .line 194
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@37
    move-result v0

    #@38
    .line 195
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    #@3a
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3d
    move-result-object v1

    #@3e
    .line 196
    const v2, 0x10e0091

    #@41
    .line 195
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@44
    move-result v1

    #@45
    .line 194
    add-int/2addr v0, v1

    #@46
    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I

    #@48
    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4b
    move-result-object v0

    #@4c
    .line 198
    const v1, 0x10e0002

    #@4f
    .line 197
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@52
    move-result v0

    #@53
    int-to-long v0, v0

    #@54
    iput-wide v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mLongAnimationDuration:J

    #@56
    .line 199
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@5d
    move-result v0

    #@5e
    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapDistanceSlop:I

    #@60
    .line 200
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    #@67
    move-result v0

    #@68
    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapDistanceSlop:I

    #@6a
    .line 202
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    #@6c
    invoke-direct {v0, p0, v3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V

    #@6f
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    #@71
    .line 203
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    #@73
    invoke-direct {v0, p0, v3}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;)V

    #@76
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    #@78
    .line 204
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    #@7a
    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;)V

    #@7d
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    #@7f
    .line 207
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@81
    iget-wide v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mLongAnimationDuration:J

    #@83
    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;J)V

    #@86
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@88
    .line 208
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    #@8a
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@8c
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;)V

    #@8f
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mScreenStateObserver:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    #@91
    .line 210
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/WindowManagerInternal;

    #@93
    invoke-virtual {v0, p0}, Landroid/view/WindowManagerInternal;->setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    #@96
    .line 212
    const/4 v0, 0x2

    #@97
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V

    #@9a
    .line 189
    return-void
.end method

.method private getMagnifiedFrameInContentCoords(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@2
    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    #@5
    move-result-object v0

    #@6
    .line 313
    .local v0, "spec":Landroid/view/MagnificationSpec;
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    #@8
    invoke-virtual {v1, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@b
    .line 314
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    #@d
    neg-float v1, v1

    #@e
    float-to-int v1, v1

    #@f
    iget v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    #@11
    neg-float v2, v2

    #@12
    float-to-int v2, v2

    #@13
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    #@16
    .line 315
    iget v1, v0, Landroid/view/MagnificationSpec;->scale:F

    #@18
    const/high16 v2, 0x3f800000    # 1.0f

    #@1a
    div-float v1, v2, v1

    #@1c
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->scale(F)V

    #@1f
    .line 311
    return-void
.end method

.method private getPersistedScale()F
    .locals 3

    #@0
    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 871
    const-string/jumbo v1, "accessibility_display_magnification_scale"

    #@9
    .line 872
    const/high16 v2, 0x40000000    # 2.0f

    #@b
    .line 870
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    #@e
    move-result v0

    #@f
    return v0
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 5
    .param p1, "size"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 428
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@3
    if-eqz v3, :cond_1

    #@5
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@7
    array-length v1, v3

    #@8
    .line 429
    .local v1, "oldSize":I
    :goto_0
    if-ge v1, p1, :cond_0

    #@a
    .line 430
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@c
    .line 431
    .local v2, "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerCoords;

    #@e
    iput-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@10
    .line 432
    if-eqz v2, :cond_0

    #@12
    .line 433
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@14
    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17
    .line 436
    .end local v2    # "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_0
    move v0, v1

    #@18
    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    #@1a
    .line 437
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@1c
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    #@1e
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    #@21
    aput-object v4, v3, v0

    #@23
    .line 436
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_1

    #@26
    .line 428
    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_1
    const/4 v1, 0x0

    #@27
    .restart local v1    # "oldSize":I
    goto :goto_0

    #@28
    .line 439
    .restart local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@2a
    return-object v3
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 5
    .param p1, "size"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 443
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@3
    if-eqz v3, :cond_1

    #@5
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@7
    array-length v1, v3

    #@8
    .line 444
    .local v1, "oldSize":I
    :goto_0
    if-ge v1, p1, :cond_0

    #@a
    .line 445
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@c
    .line 446
    .local v2, "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerProperties;

    #@e
    iput-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@10
    .line 447
    if-eqz v2, :cond_0

    #@12
    .line 448
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@14
    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17
    .line 451
    .end local v2    # "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    :cond_0
    move v0, v1

    #@18
    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    #@1a
    .line 452
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@1c
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    #@1e
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    #@21
    aput-object v4, v3, v0

    #@23
    .line 451
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_1

    #@26
    .line 443
    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_1
    const/4 v1, 0x0

    #@27
    .restart local v1    # "oldSize":I
    goto :goto_0

    #@28
    .line 454
    .restart local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@2a
    return-object v3
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 381
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v4

    #@4
    packed-switch v4, :pswitch_data_0

    #@7
    .line 391
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@9
    iget-object v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@b
    if-eqz v4, :cond_3

    #@d
    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@10
    move-result v20

    #@11
    .line 396
    .local v20, "eventX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@14
    move-result v21

    #@15
    .line 397
    .local v21, "eventY":F
    move-object/from16 v0, p0

    #@17
    iget-object v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@19
    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_2

    #@1f
    .line 398
    move-object/from16 v0, p0

    #@21
    iget-object v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    #@23
    move/from16 v0, v20

    #@25
    float-to-int v5, v0

    #@26
    move/from16 v0, v21

    #@28
    float-to-int v6, v0

    #@29
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    #@2c
    move-result v4

    #@2d
    .line 397
    if-eqz v4, :cond_2

    #@2f
    .line 399
    move-object/from16 v0, p0

    #@31
    iget-object v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@33
    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    #@36
    move-result v23

    #@37
    .line 400
    .local v23, "scale":F
    move-object/from16 v0, p0

    #@39
    iget-object v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@3b
    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getOffsetX()F

    #@3e
    move-result v24

    #@3f
    .line 401
    .local v24, "scaledOffsetX":F
    move-object/from16 v0, p0

    #@41
    iget-object v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@43
    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getOffsetY()F

    #@46
    move-result v25

    #@47
    .line 402
    .local v25, "scaledOffsetY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@4a
    move-result v9

    #@4b
    .line 403
    .local v9, "pointerCount":I
    move-object/from16 v0, p0

    #@4d
    invoke-direct {v0, v9}, Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    #@50
    move-result-object v11

    #@51
    .line 404
    .local v11, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    #@53
    invoke-direct {v0, v9}, Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    #@56
    move-result-object v10

    #@57
    .line 405
    .local v10, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v22, 0x0

    #@59
    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    #@5b
    if-ge v0, v9, :cond_1

    #@5d
    .line 406
    aget-object v4, v11, v22

    #@5f
    move-object/from16 v0, p1

    #@61
    move/from16 v1, v22

    #@63
    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    #@66
    .line 407
    aget-object v4, v11, v22

    #@68
    aget-object v5, v11, v22

    #@6a
    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@6c
    sub-float v5, v5, v24

    #@6e
    div-float v5, v5, v23

    #@70
    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@72
    .line 408
    aget-object v4, v11, v22

    #@74
    aget-object v5, v11, v22

    #@76
    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@78
    sub-float v5, v5, v25

    #@7a
    div-float v5, v5, v23

    #@7c
    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@7e
    .line 409
    aget-object v4, v10, v22

    #@80
    move-object/from16 v0, p1

    #@82
    move/from16 v1, v22

    #@84
    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    #@87
    .line 405
    add-int/lit8 v22, v22, 0x1

    #@89
    goto :goto_1

    #@8a
    .line 383
    .end local v9    # "pointerCount":I
    .end local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v20    # "eventX":F
    .end local v21    # "eventY":F
    .end local v22    # "i":I
    .end local v23    # "scale":F
    .end local v24    # "scaledOffsetX":F
    .end local v25    # "scaledOffsetY":F
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    #@8d
    move-result-wide v4

    #@8e
    move-object/from16 v0, p0

    #@90
    iput-wide v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mDelegatingStateDownTime:J

    #@92
    goto/16 :goto_0

    #@94
    .line 386
    :pswitch_1
    move-object/from16 v0, p0

    #@96
    iget-object v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    #@98
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->-get0(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@9b
    move-result-object v4

    #@9c
    if-nez v4, :cond_0

    #@9e
    .line 387
    const/4 v4, 0x2

    #@9f
    move-object/from16 v0, p0

    #@a1
    invoke-direct {v0, v4}, Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V

    #@a4
    goto/16 :goto_0

    #@a6
    .line 411
    .restart local v9    # "pointerCount":I
    .restart local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v20    # "eventX":F
    .restart local v21    # "eventY":F
    .restart local v22    # "i":I
    .restart local v23    # "scale":F
    .restart local v24    # "scaledOffsetX":F
    .restart local v25    # "scaledOffsetY":F
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    #@a9
    move-result-wide v4

    #@aa
    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@ad
    move-result-wide v6

    #@ae
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@b1
    move-result v8

    #@b2
    .line 413
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    #@b5
    move-result v16

    #@b6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    #@b9
    move-result v18

    #@ba
    .line 414
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    #@bd
    move-result v19

    #@be
    .line 413
    const/4 v12, 0x0

    #@bf
    const/4 v13, 0x0

    #@c0
    const/high16 v14, 0x3f800000    # 1.0f

    #@c2
    const/high16 v15, 0x3f800000    # 1.0f

    #@c4
    const/16 v17, 0x0

    #@c6
    .line 411
    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    #@c9
    move-result-object p1

    #@ca
    .line 422
    .end local v9    # "pointerCount":I
    .end local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v22    # "i":I
    .end local v23    # "scale":F
    .end local v24    # "scaledOffsetX":F
    .end local v25    # "scaledOffsetY":F
    :cond_2
    move-object/from16 v0, p0

    #@cc
    iget-wide v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mDelegatingStateDownTime:J

    #@ce
    move-object/from16 v0, p1

    #@d0
    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->setDownTime(J)V

    #@d3
    .line 423
    move-object/from16 v0, p0

    #@d5
    iget-object v4, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@d7
    move-object/from16 v0, p1

    #@d9
    move-object/from16 v1, p2

    #@db
    move/from16 v2, p3

    #@dd
    invoke-interface {v4, v0, v1, v2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@e0
    .line 380
    .end local v20    # "eventX":F
    .end local v21    # "eventY":F
    :cond_3
    return-void

    #@e1
    .line 381
    nop

    #@e2
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleOnMagnifiedBoundsChanged(Landroid/graphics/Region;)V
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Region;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 228
    iget-boolean v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mUpdateMagnificationSpecOnNextBoundsChange:Z

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 229
    iput-boolean v7, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mUpdateMagnificationSpecOnNextBoundsChange:Z

    #@7
    .line 230
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@9
    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    #@c
    move-result-object v4

    #@d
    .line 231
    .local v4, "spec":Landroid/view/MagnificationSpec;
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempRect:Landroid/graphics/Rect;

    #@f
    .line 232
    .local v2, "magnifiedFrame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    #@11
    invoke-virtual {v5, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@14
    .line 233
    iget v3, v4, Landroid/view/MagnificationSpec;->scale:F

    #@16
    .line 234
    .local v3, "scale":F
    iget v5, v4, Landroid/view/MagnificationSpec;->offsetX:F

    #@18
    neg-float v5, v5

    #@19
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@1c
    move-result v6

    #@1d
    div-int/lit8 v6, v6, 0x2

    #@1f
    int-to-float v6, v6

    #@20
    add-float/2addr v5, v6

    #@21
    div-float v0, v5, v3

    #@23
    .line 235
    .local v0, "centerX":F
    iget v5, v4, Landroid/view/MagnificationSpec;->offsetY:F

    #@25
    neg-float v5, v5

    #@26
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@29
    move-result v6

    #@2a
    div-int/lit8 v6, v6, 0x2

    #@2c
    int-to-float v6, v6

    #@2d
    add-float/2addr v5, v6

    #@2e
    div-float v1, v5, v3

    #@30
    .line 236
    .local v1, "centerY":F
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@32
    invoke-virtual {v5, v3, v0, v1, v7}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    #@35
    .line 239
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    .end local v2    # "magnifiedFrame":Landroid/graphics/Rect;
    .end local v3    # "scale":F
    .end local v4    # "spec":Landroid/view/MagnificationSpec;
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    #@37
    invoke-virtual {v5, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@3a
    .line 240
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3c
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->onMagnificationStateChanged()V

    #@3f
    .line 224
    return-void
.end method

.method private handleOnRectangleOnScreenRequested(IIII)V
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 254
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempRect:Landroid/graphics/Rect;

    #@2
    .line 255
    .local v2, "magnifiedFrame":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    #@4
    invoke-virtual {v6, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    #@7
    .line 256
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z

    #@a
    move-result v6

    #@b
    if-nez v6, :cond_0

    #@d
    .line 257
    return-void

    #@e
    .line 259
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempRect1:Landroid/graphics/Rect;

    #@10
    .line 260
    .local v1, "magnifFrameInScreenCoords":Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->getMagnifiedFrameInContentCoords(Landroid/graphics/Rect;)V

    #@13
    .line 263
    sub-int v6, p3, p1

    #@15
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@18
    move-result v7

    #@19
    if-le v6, v7, :cond_2

    #@1b
    .line 264
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1e
    move-result-object v6

    #@1f
    invoke-static {v6}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    #@22
    move-result v0

    #@23
    .line 265
    .local v0, "direction":I
    if-nez v0, :cond_1

    #@25
    .line 266
    iget v6, v1, Landroid/graphics/Rect;->left:I

    #@27
    sub-int v6, p1, v6

    #@29
    int-to-float v4, v6

    #@2a
    .line 277
    .end local v0    # "direction":I
    .local v4, "scrollX":F
    :goto_0
    sub-int v6, p4, p2

    #@2c
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@2f
    move-result v7

    #@30
    if-le v6, v7, :cond_5

    #@32
    .line 278
    iget v6, v1, Landroid/graphics/Rect;->top:I

    #@34
    sub-int v6, p2, v6

    #@36
    int-to-float v5, v6

    #@37
    .line 286
    .local v5, "scrollY":F
    :goto_1
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@39
    invoke-virtual {v6}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    #@3c
    move-result v3

    #@3d
    .line 287
    .local v3, "scale":F
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@3f
    mul-float v7, v4, v3

    #@41
    mul-float v8, v5, v3

    #@43
    invoke-virtual {v6, v7, v8}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->offsetMagnifiedRegionCenter(FF)V

    #@46
    .line 253
    return-void

    #@47
    .line 268
    .end local v3    # "scale":F
    .end local v4    # "scrollX":F
    .end local v5    # "scrollY":F
    .restart local v0    # "direction":I
    :cond_1
    iget v6, v1, Landroid/graphics/Rect;->right:I

    #@49
    sub-int v6, p3, v6

    #@4b
    int-to-float v4, v6

    #@4c
    .restart local v4    # "scrollX":F
    goto :goto_0

    #@4d
    .line 270
    .end local v0    # "direction":I
    .end local v4    # "scrollX":F
    :cond_2
    iget v6, v1, Landroid/graphics/Rect;->left:I

    #@4f
    if-ge p1, v6, :cond_3

    #@51
    .line 271
    iget v6, v1, Landroid/graphics/Rect;->left:I

    #@53
    sub-int v6, p1, v6

    #@55
    int-to-float v4, v6

    #@56
    .restart local v4    # "scrollX":F
    goto :goto_0

    #@57
    .line 272
    .end local v4    # "scrollX":F
    :cond_3
    iget v6, v1, Landroid/graphics/Rect;->right:I

    #@59
    if-le p3, v6, :cond_4

    #@5b
    .line 273
    iget v6, v1, Landroid/graphics/Rect;->right:I

    #@5d
    sub-int v6, p3, v6

    #@5f
    int-to-float v4, v6

    #@60
    .restart local v4    # "scrollX":F
    goto :goto_0

    #@61
    .line 275
    .end local v4    # "scrollX":F
    :cond_4
    const/4 v4, 0x0

    #@62
    .restart local v4    # "scrollX":F
    goto :goto_0

    #@63
    .line 279
    :cond_5
    iget v6, v1, Landroid/graphics/Rect;->top:I

    #@65
    if-ge p2, v6, :cond_6

    #@67
    .line 280
    iget v6, v1, Landroid/graphics/Rect;->top:I

    #@69
    sub-int v6, p2, v6

    #@6b
    int-to-float v5, v6

    #@6c
    .restart local v5    # "scrollY":F
    goto :goto_1

    #@6d
    .line 281
    .end local v5    # "scrollY":F
    :cond_6
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    #@6f
    if-le p4, v6, :cond_7

    #@71
    .line 282
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    #@73
    sub-int v6, p4, v6

    #@75
    int-to-float v5, v6

    #@76
    .restart local v5    # "scrollY":F
    goto :goto_1

    #@77
    .line 284
    .end local v5    # "scrollY":F
    :cond_7
    const/4 v5, 0x0

    #@78
    .restart local v5    # "scrollY":F
    goto :goto_1
.end method

.method private handleOnRotationChanged(I)V
    .locals 1
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->resetMagnificationIfNeeded()V

    #@3
    .line 297
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@5
    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 298
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mUpdateMagnificationSpecOnNextBoundsChange:Z

    #@e
    .line 295
    :cond_0
    return-void
.end method

.method private handleOnUserContextChanged()V
    .locals 0

    #@0
    .prologue
    .line 308
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->resetMagnificationIfNeeded()V

    #@3
    .line 307
    return-void
.end method

.method private static isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 876
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v1

    #@5
    .line 877
    const-string/jumbo v2, "accessibility_display_magnification_auto_update"

    #@8
    .line 876
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@b
    move-result v1

    #@c
    if-ne v1, v0, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method private persistScale(F)V
    .locals 2
    .param p1, "scale"    # F

    #@0
    .prologue
    .line 859
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$2;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$2;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;F)V

    #@5
    const/4 v1, 0x0

    #@6
    new-array v1, v1, [Ljava/lang/Void;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@b
    .line 858
    return-void
.end method

.method private resetMagnificationIfNeeded()V
    .locals 2

    #@0
    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 320
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    #@a
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z

    #@d
    move-result v0

    #@e
    .line 319
    if-eqz v0, :cond_0

    #@10
    .line 321
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@12
    const/4 v1, 0x1

    #@13
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    #@16
    .line 318
    :cond_0
    return-void
.end method

.method private transitionToState(I)V
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 477
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    #@2
    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mPreviousState:I

    #@4
    .line 478
    iput p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    #@6
    .line 457
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 364
    const/4 v0, 0x2

    #@1
    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    #@3
    .line 365
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    #@5
    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    #@8
    .line 366
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    #@a
    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->clear()V

    #@d
    .line 367
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    #@f
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->-wrap0(Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;)V

    #@12
    .line 368
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 369
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@18
    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    #@1b
    .line 363
    :cond_0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 353
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@6
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@9
    .line 351
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mScreenStateObserver:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    #@2
    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->destroy()V

    #@5
    .line 376
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/WindowManagerInternal;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Landroid/view/WindowManagerInternal;->setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    #@b
    .line 374
    return-void
.end method

.method public onMagnifedBoundsChanged(Landroid/graphics/Region;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 217
    invoke-static {p1}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    #@3
    move-result-object v0

    #@4
    .line 218
    .local v0, "newBounds":Landroid/graphics/Region;
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    #@6
    const/4 v2, 0x1

    #@7
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 219
    sget v1, Lcom/android/server/accessibility/ScreenMagnifier;->MY_PID:I

    #@10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@13
    move-result v2

    #@14
    if-eq v1, v2, :cond_0

    #@16
    .line 220
    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    #@19
    .line 216
    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    #@5
    .line 329
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Unknown state: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 331
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@29
    .line 327
    :goto_0
    :pswitch_1
    return-void

    #@2a
    .line 334
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    #@2c
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@2f
    goto :goto_0

    #@30
    .line 337
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    #@32
    invoke-static {v0, p1, p3}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->-wrap0(Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;Landroid/view/MotionEvent;I)V

    #@35
    goto :goto_0

    #@36
    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onRectangleOnScreenRequested(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 245
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 246
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@6
    .line 247
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@8
    .line 248
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@a
    .line 249
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    #@c
    .line 250
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    #@e
    const/4 v2, 0x2

    #@f
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 244
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x4

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 291
    return-void
.end method

.method public onUserContextChanged()V
    .locals 2

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@6
    .line 303
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    #@0
    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    .line 358
    return-void
.end method
