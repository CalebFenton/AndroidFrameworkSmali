.class public Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;
.super Landroid/widget/FrameLayout;
.source "RemoteComposeCanvas.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;
    }
.end annotation


# static fields
.field static final blacklist DEFAULT_FRAME_RATE:F = 60.0f

.field static final blacklist POST_TO_NEXT_FRAME_THRESHOLD:F = 60.0f

.field static final blacklist USE_VIEW_AREA_CLICK:Z = true

.field private static final blacklist sScaleOutput:[F


# instance fields
.field blacklist mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

.field blacklist mActionDownPoint:Landroid/graphics/Point;

.field private blacklist mChoreographer:Landroid/view/Choreographer;

.field private blacklist mCount:I

.field blacklist mDebug:I

.field blacklist mDensity:F

.field private blacklist mDisable:Z

.field blacklist mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

.field private blacklist mDuration:J

.field private blacklist mEvalTime:Z

.field private blacklist mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field blacklist mHasClickAreas:Z

.field blacklist mInActionDown:Z

.field private blacklist mLastAnimationTime:F

.field blacklist mLastFrameCall:J

.field blacklist mLastFrameDelay:J

.field blacklist mMaxFrameDelay:J

.field blacklist mMaxFrameRate:F

.field blacklist mStart:J

.field blacklist mTheme:I

.field private blacklist mTime:J

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$Z3dA_R8piEJh61-5GhhQyrDo68U(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->lambda$updateClickAreas$0(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;Landroid/view/View;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 493
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->sScaleOutput:[F

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 50
    const/4 v1, -0x3

    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    .line 52
    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    .line 54
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    .line 55
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 56
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mStart:J

    .line 59
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    .line 60
    const/high16 v2, 0x42700000    # 60.0f

    iput v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    .line 61
    const/high16 v2, 0x447a0000    # 1000.0f

    iget v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    div-float/2addr v2, v3

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameCall:J

    .line 66
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 385
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 520
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    .line 522
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    .line 523
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastAnimationTime:F

    .line 524
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    .line 78
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 50
    const/4 v1, -0x3

    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    .line 52
    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    .line 54
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    .line 55
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 56
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mStart:J

    .line 59
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    .line 60
    const/high16 v2, 0x42700000    # 60.0f

    iput v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    .line 61
    const/high16 v2, 0x447a0000    # 1000.0f

    iget v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    div-float/2addr v2, v3

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameCall:J

    .line 66
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 385
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 520
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    .line 522
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    .line 523
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastAnimationTime:F

    .line 524
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    .line 83
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 84
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 50
    const/4 v1, -0x3

    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    .line 52
    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    .line 54
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    .line 55
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 56
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mStart:J

    .line 59
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    .line 60
    const/high16 v2, 0x42700000    # 60.0f

    iput v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    .line 61
    const/high16 v2, 0x447a0000    # 1000.0f

    iget v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    div-float/2addr v2, v3

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameCall:J

    .line 66
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 385
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 520
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    .line 522
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    .line 523
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastAnimationTime:F

    .line 524
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    .line 88
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setBackgroundColor(I)V

    .line 89
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 90
    return-void
.end method

.method private blacklist drawDisable(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 634
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 635
    .local v0, "rect":Landroid/graphics/Rect;
    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 636
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 637
    .local v1, "paint":Landroid/graphics/Paint;
    const/high16 v2, 0x43000000    # 128.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 638
    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 639
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getWidth()I

    move-result v2

    .line 640
    .local v2, "w":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getHeight()I

    move-result v3

    .line 642
    .local v3, "h":I
    const-string/jumbo v4, "\u26a0"

    .line 643
    .local v4, "str":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 645
    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    .line 646
    .local v5, "x":F
    int-to-float v7, v3

    div-float/2addr v7, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v7, v6

    .line 648
    .local v7, "y":F
    invoke-virtual {p1, v4, v5, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 649
    return-void
.end method

.method private blacklist getDefaultTextSize()F
    .registers 3

    .line 652
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$addIdActionListener$1(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;ILjava/lang/String;)V
    .registers 3
    .param p0, "callback"    # Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;
    .param p1, "id"    # I
    .param p2, "metadata"    # Ljava/lang/String;

    .line 374
    invoke-interface {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;->click(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateClickAreas$0(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;Landroid/view/View;)V
    .registers 7
    .param p1, "area"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    .param p2, "view1"    # Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 169
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 171
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getMetadata()Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->performClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/lang/String;)V

    .line 168
    return-void
.end method

.method private blacklist updateClickAreas()V
    .registers 12

    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_76

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    .line 148
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 149
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getClickAreas()Ljava/util/Set;

    move-result-object v1

    .line 150
    .local v1, "clickAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->removeAllViews()V

    .line 151
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    .line 152
    .local v3, "area":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    new-instance v5, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    if-ne v7, v4, :cond_31

    move v7, v4

    goto :goto_32

    :cond_31
    move v7, v0

    .line 156
    :goto_32
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getId()I

    move-result v8

    .line 157
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getContentDescription()Ljava/lang/String;

    move-result-object v9

    .line 158
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getMetadata()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;-><init>(Landroid/content/Context;ZILjava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v5, "viewArea":Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->width()F

    move-result v4

    float-to-int v4, v4

    .line 160
    .local v4, "w":I
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->height()F

    move-result v6

    float-to-int v6, v6

    .line 161
    .local v6, "h":I
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 162
    .local v7, "param":Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 163
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 164
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getLeft()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 165
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getTop()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 166
    new-instance v8, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual {p0, v5, v7}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    .end local v3    # "area":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    .end local v4    # "w":I
    .end local v5    # "viewArea":Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;
    .end local v6    # "h":I
    .end local v7    # "param":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_18

    .line 174
    :cond_6e
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 175
    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    .line 178
    .end local v1    # "clickAreas":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;>;"
    :cond_76
    return-void
.end method


# virtual methods
.method public blacklist addIdActionListener(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;

    .line 371
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_5

    .line 372
    return-void

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addIdActionListener(Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;)V

    .line 375
    return-void
.end method

.method public blacklist checkShaders(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V
    .registers 4
    .param p1, "shaderControl"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 350
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V

    .line 351
    return-void
.end method

.method public blacklist clearLocalBitmap(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedDataOverride(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_e

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 310
    :cond_e
    return-void
.end method

.method public blacklist clearLocalColor(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedDataOverride(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_e

    .line 280
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 282
    :cond_e
    return-void
.end method

.method public blacklist clearLocalFloat(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedFloatOverride(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_e

    .line 294
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 296
    :cond_e
    return-void
.end method

.method public blacklist clearLocalInt(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedIntegerOverride(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_e

    .line 255
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 257
    :cond_e
    return-void
.end method

.method public blacklist clearLocalString(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedStringOverride(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_e

    .line 241
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 243
    :cond_e
    return-void
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    return-object v0
.end method

.method public blacklist getEvalTime()F
    .registers 7

    .line 533
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    if-nez v0, :cond_9

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    .line 535
    const/4 v0, 0x0

    return v0

    .line 537
    :cond_9
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDuration:J

    long-to-double v0, v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 538
    .local v0, "avg":D
    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_23

    .line 539
    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDuration:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDuration:J

    .line 540
    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    .line 542
    :cond_23
    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v2, v0

    double-to-float v2, v2

    return v2
.end method

.method public blacklist getNamedColors()[Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getNamedColors()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedVariables(I)[Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .registers 2

    .line 363
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    return-object v0
.end method

.method public blacklist getTheme()I
    .registers 2

    .line 378
    iget v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    return v0
.end method

.method public blacklist hasSensorListeners([I)I
    .registers 5
    .param p1, "ids"    # [I

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "count":I
    const/16 v1, 0x11

    .local v1, "id":I
    :goto_3
    const/16 v2, 0x1a

    if-gt v1, v2, :cond_19

    .line 315
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->hasListener(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 316
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "count":I
    .local v2, "count":I
    aput v1, p1, v0

    move v0, v2

    .line 314
    .end local v2    # "count":I
    .restart local v0    # "count":I
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 319
    .end local v1    # "id":I
    :cond_19
    return v0
.end method

.method public blacklist isDraggable()Z
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_6

    .line 339
    const/4 v0, 0x0

    return v0

    .line 341
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->hasTouchListener()Z

    move-result v0

    return v0
.end method

.method public blacklist measureDimension(II)I
    .registers 6
    .param p1, "measureSpec"    # I
    .param p2, "intrinsicSize"    # I

    .line 477
    move v0, p2

    .line 478
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 479
    .local v1, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 480
    .local v2, "size":I
    sparse-switch v1, :sswitch_data_18

    goto :goto_16

    .line 482
    :sswitch_d
    move v0, v2

    .line 483
    goto :goto_16

    .line 488
    :sswitch_f
    move v0, p2

    goto :goto_16

    .line 485
    :sswitch_11
    invoke-static {v2, p2}, Ljava/lang/Integer;->min(II)I

    move-result v0

    .line 486
    nop

    .line 490
    :goto_16
    return v0

    nop

    :sswitch_data_18
    .sparse-switch
        -0x80000000 -> :sswitch_11
        0x0 -> :sswitch_f
        0x40000000 -> :sswitch_d
    .end sparse-switch
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 547
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_8

    .line 549
    return-void

    .line 551
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    if-eqz v0, :cond_10

    .line 552
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->drawDisable(Landroid/graphics/Canvas;)V

    .line 553
    return-void

    .line 557
    :cond_10
    const/4 v0, 0x1

    :try_start_11
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    if-eqz v1, :cond_1a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    goto :goto_1c

    :cond_1a
    const-wide/16 v1, 0x0

    .line 559
    .local v1, "start":J
    :goto_1c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mStart:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const v4, 0x3089705f    # 1.0E-9f

    mul-float/2addr v3, v4

    .line 560
    .local v3, "animationTime":F
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAnimationTime(F)V

    .line 561
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 562
    iget v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastAnimationTime:F

    sub-float v4, v3, v4

    .line 563
    .local v4, "loopTime":F
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/16 v6, 0x1f

    invoke-virtual {v5, v6, v4}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 564
    iput v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastAnimationTime:F

    .line 565
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAnimationEnabled(Z)V

    .line 566
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->currentTime:J

    .line 567
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDebug(I)V

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 569
    .local v5, "density":F
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->useCanvas(Landroid/graphics/Canvas;)V

    .line 570
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mWidth:F

    .line 571
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mHeight:F

    .line 572
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V

    .line 573
    iget v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    if-ne v6, v0, :cond_c3

    .line 574
    iget v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    .line 575
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x3b9aca00

    cmp-long v6, v6, v8

    if-lez v6, :cond_c3

    .line 576
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " fps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 577
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    .line 578
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    .line 581
    :cond_c3
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->needsRepaint()I

    move-result v6

    .line 582
    .local v6, "nextFrame":I
    if-lez v6, :cond_13f

    .line 583
    iget v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    const/high16 v8, 0x42700000    # 60.0f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_d7

    .line 584
    int-to-long v7, v6

    iput-wide v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    goto :goto_e0

    .line 586
    :cond_d7
    iget-wide v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    int-to-long v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    .line 588
    :goto_e0
    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v7, :cond_133

    .line 589
    iget v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    if-ne v7, v0, :cond_12a

    .line 590
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RC : POST CHOREOGRAPHER WITH "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (nextFrame was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", max delay "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",  max framerate is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 602
    :cond_12a
    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    iget-wide v9, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 604
    :cond_133
    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v7}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->useChoreographer()Z

    move-result v7

    if-nez v7, :cond_14a

    .line 605
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    goto :goto_14a

    .line 608
    :cond_13f
    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v7, :cond_14a

    .line 609
    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v7, v8}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 612
    :cond_14a
    :goto_14a
    iget-boolean v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    if-eqz v7, :cond_15d

    .line 613
    iget-wide v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDuration:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDuration:J

    .line 614
    iget v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15d} :catch_15e

    .line 620
    .end local v1    # "start":J
    .end local v3    # "animationTime":F
    .end local v4    # "loopTime":F
    .end local v5    # "density":F
    .end local v6    # "nextFrame":I
    :cond_15d
    goto :goto_169

    .line 616
    :catch_15e
    move-exception v1

    .line 617
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getLastOpCount()I

    .line 618
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    .line 619
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 621
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_169
    iget v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    if-ne v1, v0, :cond_1a6

    .line 622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameCall:J

    sub-long/2addr v0, v2

    .line 623
    .local v0, "frameDelay":J
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RC : Delay since last frame "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/high16 v4, 0x447a0000    # 1000.0f

    long-to-float v5, v0

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fps)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameCall:J

    .line 631
    .end local v0    # "frameDelay":J
    :cond_1a6
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 497
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 498
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_8

    .line 499
    return-void

    .line 501
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getWidth()I

    move-result v0

    .line 502
    .local v0, "preWidth":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getHeight()I

    move-result v1

    .line 503
    .local v1, "preHeight":I
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getWidth()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->measureDimension(II)I

    move-result v2

    .line 504
    .local v2, "w":I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getHeight()I

    move-result v3

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->measureDimension(II)I

    move-result v3

    .line 513
    .local v3, "h":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setMeasuredDimension(II)V

    .line 514
    if-ne v0, v2, :cond_2b

    if-eq v1, v3, :cond_34

    .line 515
    :cond_2b
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->invalidateMeasure()V

    .line 517
    :cond_34
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 389
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 390
    .local v1, "action":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 391
    .local v2, "pointerId":I
    iget-boolean v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    if-eqz v3, :cond_15

    .line 392
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 394
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/16 v4, 0x3e8

    const/16 v5, 0x1d

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_118

    .line 460
    return v7

    .line 416
    :pswitch_23
    iput-boolean v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    .line 417
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v8

    .line 418
    .local v8, "doc":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->hasTouchListener()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 419
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 420
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v12

    .line 421
    .local v12, "dx":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v13

    .line 422
    .local v13, "dy":F
    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->touchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 424
    return v6

    .line 426
    .end local v12    # "dx":F
    .end local v13    # "dy":F
    :cond_53
    return v7

    .line 445
    .end local v8    # "doc":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :pswitch_54
    iget-boolean v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    if-eqz v3, :cond_86

    .line 446
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_85

    .line 447
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 448
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getAnimationTime()F

    move-result v4

    .line 447
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 449
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 450
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v3

    .line 451
    .local v3, "doc":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)Z

    move-result v4

    .line 452
    .local v4, "repaint":Z
    if-eqz v4, :cond_85

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 456
    .end local v3    # "doc":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .end local v4    # "repaint":Z
    :cond_85
    return v6

    .line 458
    :cond_86
    return v7

    .line 429
    :pswitch_87
    iput-boolean v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->performClick()Z

    .line 431
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v8

    .line 432
    .restart local v8    # "doc":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->hasTouchListener()Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 433
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 434
    invoke-virtual {v7}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getAnimationTime()F

    move-result v7

    .line 433
    invoke-virtual {v3, v5, v7}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 435
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 436
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v12

    .line 437
    .restart local v12    # "dx":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v13

    .line 438
    .restart local v13    # "dy":F
    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 440
    return v6

    .line 442
    .end local v12    # "dx":F
    .end local v13    # "dy":F
    :cond_c5
    return v7

    .line 396
    .end local v8    # "doc":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :pswitch_c6
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 397
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 398
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v3

    .line 399
    .restart local v3    # "doc":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->hasTouchListener()Z

    move-result v4

    if-eqz v4, :cond_117

    .line 400
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 401
    invoke-virtual {v7}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getAnimationTime()F

    move-result v7

    .line 400
    invoke-virtual {v4, v5, v7}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 402
    iput-boolean v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    .line 403
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_fc

    .line 404
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_101

    .line 406
    :cond_fc
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 408
    :goto_101
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 409
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 410
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 411
    return v6

    .line 413
    :cond_117
    return v7

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_c6
        :pswitch_87
        :pswitch_54
        :pswitch_23
    .end packed-switch
.end method

.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_11

    .line 134
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    .line 135
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 137
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    .line 138
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDensity(F)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_2d

    .line 140
    return-void

    .line 142
    :cond_2d
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->updateClickAreas()V

    .line 143
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_e

    .line 187
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    .line 190
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->removeAllViews()V

    .line 191
    return-void
.end method

.method public whitelist performClick()Z
    .registers 5

    .line 465
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    if-eqz v0, :cond_9

    .line 466
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0

    .line 468
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 469
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    .line 470
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 471
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 472
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 473
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setColor(Ljava/lang/String;I)V
    .registers 4
    .param p1, "colorName"    # Ljava/lang/String;
    .param p2, "colorValue"    # I

    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedColorOverride(Ljava/lang/String;I)V

    .line 215
    return-void
.end method

.method public blacklist setDebug(I)V
    .registers 7
    .param p1, "value"    # I

    .line 93
    iget v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    if-eq v0, p1, :cond_28

    .line 94
    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;

    if-eqz v2, :cond_22

    .line 99
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;

    iget v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->setDebug(Z)V

    .line 96
    .end local v1    # "child":Landroid/view/View;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 103
    .end local v0    # "i":I
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 105
    :cond_28
    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V
    .registers 5
    .param p1, "value"    # Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 108
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 109
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    .line 110
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDocLoadTime()V

    .line 113
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAnimationEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDensity(F)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setUseChoreographer(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->updateClickAreas()V

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->requestLayout()V

    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/16 v1, 0x1d

    const v2, -0x800001

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/16 v1, 0x21

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getDefaultTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getProperty(S)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 125
    .local v0, "fps":Ljava/lang/Integer;
    if-eqz v0, :cond_77

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_77

    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    .line 127
    const/high16 v1, 0x447a0000    # 1000.0f

    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    div-float/2addr v1, v2

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    .line 129
    :cond_77
    return-void
.end method

.method public blacklist setExternalFloat(IF)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # F

    .line 329
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    .line 330
    return-void
.end method

.method public blacklist setHapticEngine(Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;)V
    .registers 3
    .param p1, "engine"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

    .line 181
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setHapticEngine(Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;)V

    .line 182
    return-void
.end method

.method public blacklist setLocalBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Landroid/graphics/Bitmap;

    .line 299
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedDataOverride(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_e

    .line 301
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 303
    :cond_e
    return-void
.end method

.method public blacklist setLocalColor(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # I

    .line 266
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedColorOverride(Ljava/lang/String;I)V

    .line 267
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_e

    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 270
    :cond_e
    return-void
.end method

.method public blacklist setLocalFloat(Ljava/lang/String;Ljava/lang/Float;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/Float;

    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedFloatOverride(Ljava/lang/String;F)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_12

    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 289
    :cond_12
    return-void
.end method

.method public blacklist setLocalInt(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # I

    .line 246
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedIntegerOverride(Ljava/lang/String;I)V

    .line 247
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_e

    .line 248
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 250
    :cond_e
    return-void
.end method

.method public blacklist setLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedStringOverride(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_e

    .line 234
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    .line 236
    :cond_e
    return-void
.end method

.method public blacklist setLong(Ljava/lang/String;J)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 224
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedLong(Ljava/lang/String;J)V

    .line 225
    return-void
.end method

.method public blacklist setTheme(I)V
    .registers 2
    .param p1, "theme"    # I

    .line 382
    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    .line 383
    return-void
.end method

.method public blacklist setUseChoreographer(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 359
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setUseChoreographer(Z)V

    .line 360
    return-void
.end method
