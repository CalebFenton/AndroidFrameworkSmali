.class public Landroid/view/LetterboxScrollProcessor;
.super Ljava/lang/Object;
.source "LetterboxScrollProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;,
        Landroid/view/LetterboxScrollProcessor$ScrollListener;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mGeneratedEventIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProcessedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScrollDetector:Landroid/view/GestureDetector;

.field private blacklist mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGeneratedEventIds(Landroid/view/LetterboxScrollProcessor;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/view/LetterboxScrollProcessor;->mGeneratedEventIds:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProcessedEvents(Landroid/view/LetterboxScrollProcessor;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/view/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Landroid/view/LetterboxScrollProcessor;Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;)V
    .registers 2

    iput-object p1, p0, Landroid/view/LetterboxScrollProcessor;->mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyOffset(Landroid/view/LetterboxScrollProcessor;Landroid/view/MotionEvent;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/LetterboxScrollProcessor;->applyOffset(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAppBounds(Landroid/view/LetterboxScrollProcessor;)Landroid/graphics/Rect;
    .registers 1

    invoke-direct {p0}, Landroid/view/LetterboxScrollProcessor;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->AWAITING_GESTURE_START:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    iput-object v0, p0, Landroid/view/LetterboxScrollProcessor;->mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/LetterboxScrollProcessor;->mGeneratedEventIds:Ljava/util/Set;

    .line 63
    iput-object p1, p0, Landroid/view/LetterboxScrollProcessor;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Landroid/view/LetterboxScrollProcessor$ScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/LetterboxScrollProcessor$ScrollListener;-><init>(Landroid/view/LetterboxScrollProcessor;Landroid/view/LetterboxScrollProcessor-IA;)V

    invoke-direct {v0, p1, v1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/LetterboxScrollProcessor;->mScrollDetector:Landroid/view/GestureDetector;

    .line 65
    return-void
.end method

.method private blacklist applyOffset(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "appBounds"    # Landroid/graphics/Rect;

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/view/LetterboxScrollProcessor;->calculateOffset(FI)F

    move-result v0

    .line 178
    .local v0, "horizontalOffset":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/view/LetterboxScrollProcessor;->calculateOffset(FI)F

    move-result v1

    .line 180
    .local v1, "verticalOffset":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 181
    return-void
.end method

.method private blacklist calculateOffset(FI)F
    .registers 5
    .param p1, "eventCoord"    # F
    .param p2, "appBoundary"    # I

    .line 184
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_7

    .line 185
    neg-float v0, p1

    return v0

    .line 186
    :cond_7
    int-to-float v1, p2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_14

    .line 187
    int-to-float v0, p2

    sub-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    neg-float v0, v0

    return v0

    .line 189
    :cond_14
    return v0
.end method

.method private blacklist getAppBounds()Landroid/graphics/Rect;
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/view/LetterboxScrollProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private blacklist isOutsideAppBounds(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "appBounds"    # Landroid/graphics/Rect;

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2f

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_2f

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2f

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v0, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    .line 170
    :goto_30
    return v0
.end method


# virtual methods
.method public blacklist processMotionEvent(Landroid/view/MotionEvent;)Ljava/util/List;
    .registers 7
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .line 81
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 84
    return-object v1

    .line 86
    :cond_9
    iget-object v0, p0, Landroid/view/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    invoke-direct {p0}, Landroid/view/LetterboxScrollProcessor;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 90
    .local v0, "appBounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_27

    .line 91
    invoke-direct {p0, p1, v0}, Landroid/view/LetterboxScrollProcessor;->isOutsideAppBounds(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 92
    sget-object v2, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->GESTURE_STARTED_OUTSIDE_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    iput-object v2, p0, Landroid/view/LetterboxScrollProcessor;->mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    goto :goto_27

    .line 94
    :cond_23
    sget-object v2, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->GESTURE_STARTED_IN_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    iput-object v2, p0, Landroid/view/LetterboxScrollProcessor;->mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    .line 98
    :cond_27
    :goto_27
    const/4 v2, 0x0

    .line 100
    .local v2, "makeNoAdjustments":Z
    iget-object v3, p0, Landroid/view/LetterboxScrollProcessor;->mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    invoke-virtual {v3}, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_74

    goto :goto_5c

    .line 123
    :pswitch_32
    invoke-direct {p0, p1, v0}, Landroid/view/LetterboxScrollProcessor;->isOutsideAppBounds(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 125
    invoke-direct {p0, p1, v0}, Landroid/view/LetterboxScrollProcessor;->applyOffset(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V

    goto :goto_40

    .line 128
    :cond_3c
    sget-object v3, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->GESTURE_STARTED_IN_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    iput-object v3, p0, Landroid/view/LetterboxScrollProcessor;->mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    .line 130
    :goto_40
    iget-object v3, p0, Landroid/view/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 110
    :pswitch_46
    invoke-direct {p0, p1, v0}, Landroid/view/LetterboxScrollProcessor;->applyOffset(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V

    .line 111
    iget-object v3, p0, Landroid/view/LetterboxScrollProcessor;->mScrollDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 115
    iget-object v3, p0, Landroid/view/LetterboxScrollProcessor;->mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    sget-object v4, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->SCROLLING_STARTED_OUTSIDE_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    if-ne v3, v4, :cond_5c

    .line 117
    iget-object v3, p0, Landroid/view/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 104
    :pswitch_5a
    const/4 v2, 0x1

    .line 105
    nop

    .line 135
    :cond_5c
    :goto_5c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6a

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6e

    .line 137
    :cond_6a
    sget-object v3, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->AWAITING_GESTURE_START:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    iput-object v3, p0, Landroid/view/LetterboxScrollProcessor;->mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    .line 140
    :cond_6e
    if-eqz v2, :cond_71

    goto :goto_73

    :cond_71
    iget-object v1, p0, Landroid/view/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    :goto_73
    return-object v1

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_5a
        :pswitch_46
        :pswitch_32
    .end packed-switch
.end method

.method public blacklist processMotionEventBeforeFinish(Landroid/view/MotionEvent;)Landroid/view/InputEvent;
    .registers 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 153
    iget-object v0, p0, Landroid/view/LetterboxScrollProcessor;->mGeneratedEventIds:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    move-object v0, p1

    :goto_13
    return-object v0
.end method
