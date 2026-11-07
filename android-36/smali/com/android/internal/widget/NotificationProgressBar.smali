.class public final Lcom/android/internal/widget/NotificationProgressBar;
.super Landroid/widget/ProgressBar;
.source "NotificationProgressBar.java"

# interfaces
.implements Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;,
        Lcom/android/internal/widget/NotificationProgressBar$Point;,
        Lcom/android/internal/widget/NotificationProgressBar$Segment;,
        Lcom/android/internal/widget/NotificationProgressBar$Part;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist FADED_OPACITY:F = 0.5f

.field private static final blacklist TAG:Ljava/lang/String; = "NotificationProgressBar"


# instance fields
.field private blacklist mAdjustedProgressFraction:F

.field private blacklist mHasTrackerIcon:Z

.field private blacklist mIndeterminateAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private final blacklist mMatrix:Landroid/graphics/Matrix;

.field private blacklist mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

.field private blacklist mParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressBar$Part;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProgressDrawableBounds:Landroid/graphics/Rect;

.field private blacklist mProgressDrawableParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProgressFraction:F

.field private blacklist mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

.field private final blacklist mSegMinWidth:F

.field private final blacklist mSegPointGap:F

.field private final blacklist mSegSegGap:F

.field private blacklist mTracker:Landroid/graphics/drawable/Drawable;

.field private blacklist mTrackerDrawMatrix:Landroid/graphics/Matrix;

.field private blacklist mTrackerDrawWidth:I

.field private final blacklist mTrackerHeight:I

.field private blacklist mTrackerPos:I

.field private blacklist mTrackerPosIsDirty:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$ufFZa-VVsngUmGNJsvVsDhj0jXI(Lcom/android/internal/widget/NotificationProgressBar;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationProgressBar;->lambda$setProgressTrackerIconAsync$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldLoopIndeterminateAnimation(Lcom/android/internal/widget/NotificationProgressBar;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->shouldLoopIndeterminateAnimation()Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/NotificationProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 118
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/NotificationProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 123
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mIndeterminateAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 74
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableBounds:Landroid/graphics/Rect;

    .line 78
    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mParts:Ljava/util/List;

    .line 82
    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableParts:Ljava/util/List;

    .line 92
    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mHasTrackerIcon:Z

    .line 98
    iput v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    .line 100
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mMatrix:Landroid/graphics/Matrix;

    .line 101
    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawMatrix:Landroid/graphics/Matrix;

    .line 103
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressFraction:F

    .line 109
    iput v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mAdjustedProgressFraction:F

    .line 111
    iput-boolean v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerPosIsDirty:Z

    .line 129
    sget-object v0, Lcom/android/internal/R$styleable;->NotificationProgressBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 131
    .local v7, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->NotificationProgressBar:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    move v9, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v4, "context":Landroid/content/Context;
    .local v6, "attrs":Landroid/util/AttributeSet;
    .local v8, "defStyleAttr":I
    .local v9, "defStyleRes":I
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/widget/NotificationProgressBar;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 136
    :try_start_38
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getNotificationProgressDrawable()Lcom/android/internal/widget/NotificationProgressDrawable;

    move-result-object p1

    iput-object p1, v3, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    .line 137
    iget-object p1, v3, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->setBoundsChangeListener(Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;)V
    :try_end_43
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_43} :catch_44

    .line 140
    goto :goto_4d

    .line 138
    :catch_44
    move-exception v0

    move-object p1, v0

    .line 139
    .local p1, "ex":Ljava/lang/IllegalStateException;
    const-string p2, "NotificationProgressBar"

    const-string p3, "Can\'t get NotificationProgressDrawable"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local p1    # "ex":Ljava/lang/IllegalStateException;
    :goto_4d
    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, v3, Lcom/android/internal/widget/NotificationProgressBar;->mSegMinWidth:F

    .line 143
    const/4 p1, 0x2

    invoke-virtual {v7, p1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, v3, Lcom/android/internal/widget/NotificationProgressBar;->mSegSegGap:F

    .line 144
    const/4 p1, 0x1

    invoke-virtual {v7, p1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, v3, Lcom/android/internal/widget/NotificationProgressBar;->mSegPointGap:F

    .line 148
    const/4 p1, 0x3

    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 149
    .local p1, "tracker":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationProgressBar;->setTracker(Landroid/graphics/drawable/Drawable;)V

    .line 153
    const/4 p2, 0x4

    invoke-virtual {v7, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, v3, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    .line 155
    return-void
.end method

.method private blacklist configureTrackerBounds()V
    .registers 11

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawMatrix:Landroid/graphics/Matrix;

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    .line 339
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_b

    return-void

    .line 340
    :cond_b
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    if-gtz v0, :cond_18

    .line 341
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    .line 342
    return-void

    .line 345
    :cond_18
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 346
    .local v0, "dWidth":I
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 347
    .local v1, "dHeight":I
    if-lez v0, :cond_7f

    if-gtz v1, :cond_29

    goto :goto_7f

    .line 350
    :cond_29
    mul-int/lit8 v2, v1, 0x2

    .line 351
    .local v2, "maxDWidth":I
    mul-int/lit8 v3, v0, 0x2

    .line 353
    .local v3, "maxDHeight":I
    iget-object v4, p0, Lcom/android/internal/widget/NotificationProgressBar;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawMatrix:Landroid/graphics/Matrix;

    .line 355
    const/4 v4, 0x0

    .local v4, "dx":F
    const/4 v5, 0x0

    .line 357
    .local v5, "dy":F
    const/high16 v6, 0x3f000000    # 0.5f

    if-le v0, v2, :cond_49

    .line 358
    iget v7, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    int-to-float v7, v7

    int-to-float v8, v1

    div-float/2addr v7, v8

    .line 359
    .local v7, "scale":F
    int-to-float v8, v2

    mul-float/2addr v8, v7

    int-to-float v9, v0

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    mul-float v4, v8, v6

    .line 360
    int-to-float v6, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    goto :goto_6a

    .line 361
    .end local v7    # "scale":F
    :cond_49
    if-le v1, v3, :cond_5f

    .line 362
    iget v7, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    int-to-float v8, v0

    div-float/2addr v7, v8

    .line 363
    .restart local v7    # "scale":F
    int-to-float v8, v3

    mul-float/2addr v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    mul-float v5, v8, v6

    .line 364
    iget v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    goto :goto_6a

    .line 366
    .end local v7    # "scale":F
    :cond_5f
    iget v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    int-to-float v6, v6

    int-to-float v7, v1

    div-float v7, v6, v7

    .line 367
    .restart local v7    # "scale":F
    int-to-float v6, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    .line 370
    :goto_6a
    iget-object v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 371
    iget-object v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawMatrix:Landroid/graphics/Matrix;

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 372
    return-void

    .line 348
    .end local v2    # "maxDWidth":I
    .end local v3    # "maxDHeight":I
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v7    # "scale":F
    :cond_7f
    :goto_7f
    return-void
.end method

.method private static blacklist convertToViewParts(Ljava/util/Map;Ljava/util/Map;Ljava/util/SortedSet;I)Ljava/util/List;
    .registers 11
    .param p3, "progressMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressBar$Part;",
            ">;"
        }
    .end annotation

    .line 887
    .local p0, "startToSegmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Segment;>;"
    .local p1, "positionToPointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Point;>;"
    .local p2, "sortedPos":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 888
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressBar$Part;>;"
    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 889
    .local v2, "pos":Ljava/lang/Integer;
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 890
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$ProgressStyle$Point;

    .line 891
    .local v3, "point":Landroid/app/Notification$ProgressStyle$Point;
    new-instance v4, Lcom/android/internal/widget/NotificationProgressBar$Point;

    invoke-virtual {v3}, Landroid/app/Notification$ProgressStyle$Point;->getColor()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/NotificationProgressBar$Point;-><init>(I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    .end local v3    # "point":Landroid/app/Notification$ProgressStyle$Point;
    :cond_2d
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 894
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$ProgressStyle$Segment;

    .line 895
    .local v3, "seg":Landroid/app/Notification$ProgressStyle$Segment;
    new-instance v4, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    invoke-virtual {v3}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p3

    div-float/2addr v5, v6

    invoke-virtual {v3}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/internal/widget/NotificationProgressBar$Segment;-><init>(FI)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    .end local v2    # "pos":Ljava/lang/Integer;
    .end local v3    # "seg":Landroid/app/Notification$ProgressStyle$Segment;
    :cond_4c
    goto :goto_9

    .line 899
    :cond_4d
    return-object v0
.end method

.method private blacklist drawTracker(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 726
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    return-void

    .line 728
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerPosIsDirty:Z

    if-eqz v0, :cond_16

    .line 729
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mAdjustedProgressFraction:F

    const/high16 v3, -0x80000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/NotificationProgressBar;->setTrackerPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 732
    :cond_16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 735
    .local v0, "saveCount":I
    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingLeft:I

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerPos:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 737
    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    if-lez v1, :cond_32

    .line 738
    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 741
    :cond_32
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_3b

    .line 742
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 744
    :cond_3b
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 745
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 746
    return-void
.end method

.method private static blacklist generatePositionToPointMap(Ljava/util/List;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation

    .line 942
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Point;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 944
    .local v0, "positionToPointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Point;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Point;

    .line 945
    .local v2, "point":Landroid/app/Notification$ProgressStyle$Point;
    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    .end local v2    # "point":Landroid/app/Notification$ProgressStyle$Point;
    goto :goto_9

    .line 948
    :cond_21
    return-object v0
.end method

.method private static blacklist generateSortedPositionSet(Ljava/util/Map;Ljava/util/Map;)Ljava/util/SortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;)",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 955
    .local p0, "startToSegmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Segment;>;"
    .local p1, "positionToPointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Point;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 956
    .local v0, "sortedPos":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 958
    return-object v0
.end method

.method private static blacklist generateStartToSegmentMap(Ljava/util/List;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation

    .line 924
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 926
    .local v0, "startToSegmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Segment;>;"
    const/4 v1, 0x0

    .line 928
    .local v1, "currentStart":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$ProgressStyle$Segment;

    .line 930
    .local v3, "segment":Landroid/app/Notification$ProgressStyle$Segment;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    invoke-virtual {v3}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v4

    add-int/2addr v1, v4

    .line 934
    .end local v3    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    goto :goto_a

    .line 936
    :cond_23
    return-object v0
.end method

.method private blacklist getEndDotColor(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;)I"
        }
    .end annotation

    .line 606
    .local p1, "fallbackSegments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->isStyledByProgress()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 607
    :cond_a
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->getProgress()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v2}, Lcom/android/internal/widget/NotificationProgressModel;->getProgressMax()I

    move-result v2

    if-ne v0, v2, :cond_19

    .line 608
    return v1

    .line 611
    :cond_19
    if-nez p1, :cond_2c

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v0}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v0

    goto :goto_36

    .line 612
    :cond_2c
    invoke-interface {p1}, Ljava/util/List;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v0}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v0

    .line 611
    :goto_36
    return v0
.end method

.method static blacklist getFadedColor(I)I
    .registers 5
    .param p0, "color"    # I

    .line 914
    nop

    .line 915
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 916
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 917
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 918
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 914
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private blacklist getNotificationProgressDrawable()Lcom/android/internal/widget/NotificationProgressDrawable;
    .registers 6

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 231
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_44

    .line 234
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_3c

    .line 238
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const/high16 v2, 0x1020000

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 239
    .local v1, "layer":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/android/internal/widget/NotificationProgressDrawable;

    if-nez v2, :cond_38

    .line 240
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t get NotificationProgressDrawable, retrieved drawable is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 242
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    :goto_2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :cond_38
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/NotificationProgressDrawable;

    return-object v2

    .line 235
    .end local v1    # "layer":Landroid/graphics/drawable/Drawable;
    :cond_3c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getProgressDrawable() doesn\'t return a LayerDrawable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_44
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getProgressDrawable() returns null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getProgressFraction()F
    .registers 5

    .line 650
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getMin()I

    move-result v0

    .line 651
    .local v0, "min":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getMax()I

    move-result v1

    .line 652
    .local v1, "max":I
    sub-int v2, v1, v0

    .line 653
    .local v2, "range":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getProgress()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/android/internal/widget/NotificationProgressBar;->getProgressFraction(II)F

    move-result v3

    return v3
.end method

.method private static blacklist getProgressFraction(II)F
    .registers 4
    .param p0, "progressMax"    # I
    .param p1, "progress"    # I

    .line 657
    if-lez p0, :cond_6

    int-to-float v0, p1

    int-to-float v1, p0

    div-float/2addr v0, v1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static blacklist getSegEndOffset(Lcom/android/internal/widget/NotificationProgressBar$Segment;Lcom/android/internal/widget/NotificationProgressBar$Part;FFFZ)F
    .registers 9
    .param p0, "seg"    # Lcom/android/internal/widget/NotificationProgressBar$Segment;
    .param p1, "nextPart"    # Lcom/android/internal/widget/NotificationProgressBar$Part;
    .param p2, "pointRadius"    # F
    .param p3, "segPointGap"    # F
    .param p4, "segSegGap"    # F
    .param p5, "hasTrackerIcon"    # Z

    .line 1023
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1024
    :cond_4
    instance-of v1, p1, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    if-eqz v1, :cond_1d

    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    .line 1025
    .local v1, "nextSeg":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    invoke-static {p0}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmFaded(Lcom/android/internal/widget/NotificationProgressBar$Segment;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {v1}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmFaded(Lcom/android/internal/widget/NotificationProgressBar$Segment;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1027
    if-eqz p5, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, p4

    :goto_1b
    return v0

    .line 1029
    :cond_1c
    return p4

    .line 1032
    .end local v1    # "nextSeg":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    :cond_1d
    add-float v0, p3, p2

    return v0
.end method

.method private static blacklist getSegStartOffset(Lcom/android/internal/widget/NotificationProgressBar$Part;FF)F
    .registers 4
    .param p0, "prevPart"    # Lcom/android/internal/widget/NotificationProgressBar$Part;
    .param p1, "pointRadius"    # F
    .param p2, "segPointGap"    # F

    .line 1017
    instance-of v0, p0, Lcom/android/internal/widget/NotificationProgressBar$Point;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 1018
    :cond_6
    add-float v0, p1, p2

    return v0
.end method

.method static synthetic blacklist lambda$processModelAndConvertToViewParts$1(ILandroid/app/Notification$ProgressStyle$Point;)Z
    .registers 6
    .param p0, "progressMax"    # I
    .param p1, "point"    # Landroid/app/Notification$ProgressStyle$Point;

    .line 827
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v0

    .line 828
    .local v0, "pos":I
    const/4 v1, 0x1

    const-string v2, "NotificationProgressBar"

    if-nez v0, :cond_f

    .line 829
    const-string v3, "Dropping point at start"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return v1

    .line 831
    :cond_f
    if-ne v0, p0, :cond_17

    .line 832
    const-string v3, "Dropping point at end"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return v1

    .line 835
    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.method private synthetic blacklist lambda$setProgressTrackerIconAsync$0(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "progressTrackerDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 274
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationProgressBar;->setTracker(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static blacklist maybeGetFadedColor(IZ)I
    .registers 3
    .param p0, "color"    # I
    .param p1, "fade"    # Z

    .line 904
    if-nez p1, :cond_3

    return p0

    .line 906
    :cond_3
    invoke-static {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getFadedColor(I)I

    move-result v0

    return v0
.end method

.method private static blacklist maybeSplitDrawableSegmentsByProgress(Ljava/util/List;Ljava/util/List;FZF)Landroid/util/Pair;
    .registers 21
    .param p2, "progressFraction"    # F
    .param p3, "isStyledByProgress"    # Z
    .param p4, "progressGap"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressBar$Part;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;FZF)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1138
    .local p0, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressBar$Part;>;"
    .local p1, "drawableParts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;"
    move-object/from16 v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1c

    .line 1139
    new-instance v1, Landroid/util/Pair;

    invoke-interface {v0}, Ljava/util/List;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    invoke-virtual {v2}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->getEnd()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 1142
    :cond_1c
    const/4 v1, -0x1

    .line 1143
    .local v1, "iPartFirstSegmentToStyle":I
    const/4 v2, -0x1

    .line 1144
    .local v2, "iPartSegmentToSplit":I
    const/4 v3, 0x0

    .line 1145
    .local v3, "rescaledProgressX":F
    const/4 v4, 0x0

    .line 1146
    .local v4, "startFraction":F
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1147
    .local v5, "nParts":I
    const/4 v6, 0x0

    .local v6, "iPart":I
    :goto_25
    if-ge v6, v5, :cond_69

    .line 1148
    move-object/from16 v7, p0

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/NotificationProgressBar$Part;

    .line 1149
    .local v8, "part":Lcom/android/internal/widget/NotificationProgressBar$Part;
    instance-of v9, v8, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    if-eqz v9, :cond_66

    move-object v9, v8

    check-cast v9, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    .line 1150
    .local v9, "segment":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    cmpl-float v10, v4, p2

    if-nez v10, :cond_40

    .line 1151
    move v1, v6

    .line 1152
    invoke-static {v9}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmStart(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F

    move-result v3

    .line 1153
    goto :goto_6b

    .line 1154
    :cond_40
    cmpg-float v10, v4, p2

    if-gez v10, :cond_61

    invoke-static {v9}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmFraction(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F

    move-result v10

    add-float/2addr v10, v4

    cmpg-float v10, p2, v10

    if-gez v10, :cond_61

    .line 1156
    move v2, v6

    .line 1157
    invoke-static {v9}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmStart(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F

    move-result v10

    sub-float v11, p2, v4

    invoke-static {v9}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmFraction(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F

    move-result v12

    div-float/2addr v11, v12

    .line 1159
    invoke-virtual {v9}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->getWidth()F

    move-result v12

    mul-float/2addr v11, v12

    add-float v3, v10, v11

    .line 1160
    goto :goto_6b

    .line 1162
    :cond_61
    invoke-static {v9}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmFraction(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F

    move-result v10

    add-float/2addr v4, v10

    .line 1147
    .end local v8    # "part":Lcom/android/internal/widget/NotificationProgressBar$Part;
    .end local v9    # "segment":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    :cond_66
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_69
    move-object/from16 v7, p0

    .line 1165
    .end local v6    # "iPart":I
    :goto_6b
    if-nez p3, :cond_77

    new-instance v6, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v6, v0, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 1167
    :cond_77
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    .local v6, "splitDrawableParts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;"
    const/4 v8, 0x0

    .line 1169
    .local v8, "styleRemainingParts":Z
    const/4 v9, 0x0

    .local v9, "iPart":I
    :goto_7e
    if-ge v9, v5, :cond_142

    .line 1170
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    .line 1171
    .local v10, "drawablePart":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
    instance-of v11, v10, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    if-eqz v11, :cond_a5

    move-object v11, v10

    check-cast v11, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    .line 1172
    .local v11, "drawablePoint":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->getColor()I

    move-result v12

    invoke-static {v12, v8}, Lcom/android/internal/widget/NotificationProgressBar;->maybeGetFadedColor(IZ)I

    move-result v12

    .line 1173
    .local v12, "color":I
    new-instance v13, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    .line 1174
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->getStart()F

    move-result v14

    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->getEnd()F

    move-result v15

    invoke-direct {v13, v14, v15, v12}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;-><init>(FFI)V

    .line 1173
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1176
    .end local v11    # "drawablePoint":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;
    .end local v12    # "color":I
    :cond_a5
    if-ne v9, v1, :cond_a8

    const/4 v8, 0x1

    .line 1177
    :cond_a8
    instance-of v11, v10, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    if-eqz v11, :cond_13c

    move-object v11, v10

    check-cast v11, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    .line 1178
    .local v11, "drawableSegment":Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
    if-ne v9, v2, :cond_124

    .line 1179
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getStart()F

    move-result v12

    cmpg-float v12, v3, v12

    const/4 v13, 0x1

    if-gtz v12, :cond_d4

    .line 1180
    const/4 v8, 0x1

    .line 1181
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getColor()I

    move-result v12

    invoke-static {v12, v13}, Lcom/android/internal/widget/NotificationProgressBar;->maybeGetFadedColor(IZ)I

    move-result v12

    .line 1182
    .restart local v12    # "color":I
    new-instance v14, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getStart()F

    move-result v15

    .line 1183
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getEnd()F

    move-result v0

    invoke-direct {v14, v15, v0, v12, v13}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;-><init>(FFIZ)V

    .line 1182
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1184
    .end local v12    # "color":I
    goto :goto_13c

    :cond_d4
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getStart()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_10d

    .line 1185
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getEnd()F

    move-result v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_10d

    .line 1186
    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getStart()F

    move-result v12

    sub-float v14, v3, p4

    .line 1187
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getColor()I

    move-result v15

    invoke-direct {v0, v12, v14, v15}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;-><init>(FFI)V

    .line 1186
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1188
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getColor()I

    move-result v0

    invoke-static {v0, v13}, Lcom/android/internal/widget/NotificationProgressBar;->maybeGetFadedColor(IZ)I

    move-result v0

    .line 1189
    .local v0, "color":I
    new-instance v12, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    .line 1190
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getEnd()F

    move-result v14

    invoke-direct {v12, v3, v14, v0, v13}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;-><init>(FFIZ)V

    .line 1189
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    const/4 v0, 0x1

    .line 1193
    .end local v8    # "styleRemainingParts":Z
    .local v0, "styleRemainingParts":Z
    move v8, v0

    goto :goto_13c

    .line 1194
    .end local v0    # "styleRemainingParts":Z
    .restart local v8    # "styleRemainingParts":Z
    :cond_10d
    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getStart()F

    move-result v12

    .line 1195
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getEnd()F

    move-result v13

    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getColor()I

    move-result v14

    invoke-direct {v0, v12, v13, v14}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;-><init>(FFI)V

    .line 1194
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    const/4 v0, 0x1

    move v8, v0

    .end local v8    # "styleRemainingParts":Z
    .restart local v0    # "styleRemainingParts":Z
    goto :goto_13c

    .line 1199
    .end local v0    # "styleRemainingParts":Z
    .restart local v8    # "styleRemainingParts":Z
    :cond_124
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getColor()I

    move-result v0

    invoke-static {v0, v8}, Lcom/android/internal/widget/NotificationProgressBar;->maybeGetFadedColor(IZ)I

    move-result v0

    .line 1201
    .local v0, "color":I
    new-instance v12, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getStart()F

    move-result v13

    .line 1202
    invoke-virtual {v11}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getEnd()F

    move-result v14

    invoke-direct {v12, v13, v14, v0, v8}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;-><init>(FFIZ)V

    .line 1201
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    .end local v0    # "color":I
    .end local v10    # "drawablePart":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
    .end local v11    # "drawableSegment":Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
    :cond_13c
    :goto_13c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_7e

    .line 1207
    .end local v9    # "iPart":I
    :cond_142
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v0, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist maybeStretchAndRescaleSegments(Ljava/util/List;Ljava/util/List;FFFZF)Landroid/util/Pair;
    .registers 27
    .param p2, "segmentMinWidth"    # F
    .param p3, "pointRadius"    # F
    .param p4, "progressFraction"    # F
    .param p5, "isStyledByProgress"    # Z
    .param p6, "progressGap"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressBar$Part;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;FFFZF)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;
        }
    .end annotation

    .line 1050
    .local p0, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressBar$Part;>;"
    .local p1, "drawableParts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    .line 1051
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    const-class v6, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    .line 1052
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda3;

    invoke-direct {v7, v6}, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Class;)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    const-class v6, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    .line 1053
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda4;

    invoke-direct {v7, v6}, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Class;)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 1054
    invoke-interface {v5}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v5

    .line 1055
    .local v5, "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    const/4 v6, 0x0

    .line 1056
    .local v6, "totalExcessWidth":F
    const/4 v7, 0x0

    .line 1057
    .local v7, "totalPositiveExcessWidth":F
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_34
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    .line 1058
    .local v9, "drawableSegment":Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
    invoke-virtual {v9}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getWidth()F

    move-result v11

    sub-float v11, v11, p2

    .line 1059
    .local v11, "excessWidth":F
    add-float/2addr v6, v11

    .line 1060
    cmpl-float v10, v11, v10

    if-lez v10, :cond_4d

    add-float/2addr v7, v11

    .line 1061
    .end local v9    # "drawableSegment":Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
    .end local v11    # "excessWidth":F
    :cond_4d
    goto :goto_34

    .line 1064
    :cond_4e
    cmpl-float v8, v6, v7

    if-nez v8, :cond_57

    .line 1065
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/NotificationProgressBar;->maybeSplitDrawableSegmentsByProgress(Ljava/util/List;Ljava/util/List;FZF)Landroid/util/Pair;

    move-result-object v8

    return-object v8

    .line 1073
    :cond_57
    cmpg-float v8, v6, v10

    if-ltz v8, :cond_e8

    .line 1078
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 1079
    .local v8, "nParts":I
    const/4 v9, 0x0

    .line 1080
    .local v9, "startOffset":F
    const/4 v10, 0x0

    .local v10, "iPart":I
    :goto_61
    if-ge v10, v8, :cond_e1

    .line 1081
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    .line 1082
    .local v11, "drawablePart":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
    instance-of v12, v11, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    if-eqz v12, :cond_bb

    move-object v12, v11

    check-cast v12, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    .line 1083
    .local v12, "drawableSegment":Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
    invoke-virtual {v12}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getWidth()F

    move-result v13

    .line 1085
    .local v13, "origDrawableSegmentWidth":F
    move/from16 v14, p2

    .line 1088
    .local v14, "drawableSegmentWidth":F
    cmpl-float v15, v13, p2

    if-lez v15, :cond_7f

    .line 1089
    sub-float v15, v13, p2

    mul-float/2addr v15, v6

    div-float/2addr v15, v7

    add-float/2addr v14, v15

    .line 1094
    :cond_7f
    invoke-virtual {v12}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getWidth()F

    move-result v15

    sub-float v15, v14, v15

    .line 1097
    .local v15, "widthDiff":F
    invoke-virtual {v12}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getStart()F

    move-result v16

    move-object/from16 v17, v5

    .end local v5    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .local v17, "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    add-float v5, v16, v9

    invoke-virtual {v12, v5}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->setStart(F)V

    .line 1098
    nop

    .line 1099
    invoke-virtual {v12}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->getStart()F

    move-result v5

    add-float/2addr v5, v13

    add-float/2addr v5, v15

    .line 1098
    invoke-virtual {v12, v5}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->setEnd(F)V

    .line 1104
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    .line 1105
    .local v5, "segment":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    invoke-virtual {v5}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->getWidth()F

    move-result v16

    .line 1106
    .local v16, "origSegmentWidth":F
    invoke-static {v5}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmStart(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F

    move-result v18

    move/from16 v19, v6

    .end local v6    # "totalExcessWidth":F
    .local v19, "totalExcessWidth":F
    add-float v6, v18, v9

    invoke-static {v5, v6}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fputmStart(Lcom/android/internal/widget/NotificationProgressBar$Segment;F)V

    .line 1107
    invoke-static {v5}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmStart(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F

    move-result v6

    add-float v6, v6, v16

    add-float/2addr v6, v15

    invoke-static {v5, v6}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fputmEnd(Lcom/android/internal/widget/NotificationProgressBar$Segment;F)V

    .line 1110
    add-float/2addr v9, v15

    .line 1111
    .end local v5    # "segment":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    .end local v13    # "origDrawableSegmentWidth":F
    .end local v14    # "drawableSegmentWidth":F
    .end local v15    # "widthDiff":F
    .end local v16    # "origSegmentWidth":F
    goto :goto_da

    .end local v12    # "drawableSegment":Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
    .end local v17    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .end local v19    # "totalExcessWidth":F
    .local v5, "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .restart local v6    # "totalExcessWidth":F
    :cond_bb
    move-object/from16 v17, v5

    move/from16 v19, v6

    .end local v5    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .end local v6    # "totalExcessWidth":F
    .restart local v17    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .restart local v19    # "totalExcessWidth":F
    instance-of v5, v11, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    if-eqz v5, :cond_da

    move-object v5, v11

    check-cast v5, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    .line 1112
    .local v5, "drawablePoint":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;
    invoke-virtual {v5}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->getStart()F

    move-result v6

    add-float/2addr v6, v9

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->setStart(F)V

    .line 1113
    invoke-virtual {v5}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->getStart()F

    move-result v6

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v12, v12, p3

    add-float/2addr v6, v12

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->setEnd(F)V

    .line 1080
    .end local v5    # "drawablePoint":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;
    .end local v11    # "drawablePart":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
    :cond_da
    :goto_da
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, v17

    move/from16 v6, v19

    goto :goto_61

    .end local v17    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .end local v19    # "totalExcessWidth":F
    .local v5, "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .restart local v6    # "totalExcessWidth":F
    :cond_e1
    move-object/from16 v17, v5

    .line 1117
    .end local v5    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .end local v10    # "iPart":I
    .restart local v17    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/NotificationProgressBar;->maybeSplitDrawableSegmentsByProgress(Ljava/util/List;Ljava/util/List;FZF)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 1074
    .end local v8    # "nParts":I
    .end local v9    # "startOffset":F
    .end local v17    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .restart local v5    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    :cond_e8
    move-object/from16 v17, v5

    move/from16 v19, v6

    .end local v5    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .end local v6    # "totalExcessWidth":F
    .restart local v17    # "drawableSegments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;>;"
    .restart local v19    # "totalExcessWidth":F
    new-instance v5, Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;

    const-string v6, "Not enough width to satisfy the minimum width for segments."

    invoke-direct {v5, v6}, Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private blacklist onMaybeVisualProgressChanged()V
    .registers 3

    .line 412
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getProgressFraction()F

    move-result v0

    .line 413
    .local v0, "progressFraction":F
    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressFraction:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_b

    return-void

    .line 415
    :cond_b
    iput v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressFraction:F

    .line 416
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerPosIsDirty:Z

    .line 417
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->invalidate()V

    .line 418
    return-void
.end method

.method public static blacklist processModelAndConvertToFinalDrawableParts(Ljava/util/List;Ljava/util/List;IIFFFFZFZI)Landroid/util/Pair;
    .registers 20
    .param p2, "progress"    # I
    .param p3, "progressMax"    # I
    .param p4, "totalWidth"    # F
    .param p5, "segSegGap"    # F
    .param p6, "segPointGap"    # F
    .param p7, "pointRadius"    # F
    .param p8, "hasTrackerIcon"    # Z
    .param p9, "segmentMinWidth"    # F
    .param p10, "isStyledByProgress"    # Z
    .param p11, "trackerDrawWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;IIFFFFZFZI)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;
        }
    .end annotation

    .line 1230
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Point;>;"
    invoke-static/range {p0 .. p3}, Lcom/android/internal/widget/NotificationProgressBar;->processModelAndConvertToViewParts(Ljava/util/List;Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 1232
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressBar$Part;>;"
    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move/from16 v5, p8

    move/from16 v6, p11

    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/NotificationProgressBar;->processPartsAndConvertToDrawableParts(Ljava/util/List;FFFFZI)Ljava/util/List;

    move-result-object v7

    .line 1234
    .local v7, "drawableParts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;"
    nop

    .line 1235
    invoke-static {p3, p2}, Lcom/android/internal/widget/NotificationProgressBar;->getProgressFraction(II)F

    move-result v4

    .line 1236
    if-eqz p8, :cond_1a

    const/4 v1, 0x0

    move v6, v1

    goto :goto_1b

    :cond_1a
    move v6, p5

    .line 1234
    :goto_1b
    move v3, p7

    move/from16 v2, p9

    move/from16 v5, p10

    move-object v1, v7

    .end local v7    # "drawableParts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;"
    .local v1, "drawableParts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;"
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/NotificationProgressBar;->maybeStretchAndRescaleSegments(Ljava/util/List;Ljava/util/List;FFFZF)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method public static blacklist processModelAndConvertToViewParts(Ljava/util/List;Ljava/util/List;II)Ljava/util/List;
    .registers 10
    .param p2, "progress"    # I
    .param p3, "progressMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressBar$Part;",
            ">;"
        }
    .end annotation

    .line 797
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Point;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 801
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    .line 802
    .local v0, "totalLength":I
    if-ne p3, v0, :cond_b5

    .line 806
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Segment;

    .line 807
    .local v2, "segment":Landroid/app/Notification$ProgressStyle$Segment;
    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v3

    .line 808
    .local v3, "length":I
    if-lez v3, :cond_30

    .line 811
    .end local v2    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    .end local v3    # "length":I
    goto :goto_1d

    .line 809
    .restart local v2    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    .restart local v3    # "length":I
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid segment length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 813
    .end local v2    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    .end local v3    # "length":I
    :cond_49
    if-ltz p2, :cond_9c

    if-gt p2, p3, :cond_9c

    .line 818
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Point;

    .line 819
    .local v2, "point":Landroid/app/Notification$ProgressStyle$Point;
    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v3

    .line 820
    .local v3, "pos":I
    if-ltz v3, :cond_66

    if-gt v3, p3, :cond_66

    .line 823
    .end local v2    # "point":Landroid/app/Notification$ProgressStyle$Point;
    .end local v3    # "pos":I
    goto :goto_51

    .line 821
    .restart local v2    # "point":Landroid/app/Notification$ProgressStyle$Point;
    .restart local v3    # "pos":I
    :cond_66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Point position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 826
    .end local v2    # "point":Landroid/app/Notification$ProgressStyle$Point;
    .end local v3    # "pos":I
    :cond_7f
    new-instance v1, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3}, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 838
    invoke-static {p0}, Lcom/android/internal/widget/NotificationProgressBar;->generateStartToSegmentMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 840
    .local v1, "startToSegmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Segment;>;"
    invoke-static {p1}, Lcom/android/internal/widget/NotificationProgressBar;->generatePositionToPointMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 842
    .local v2, "positionToPointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Point;>;"
    invoke-static {v1, v2}, Lcom/android/internal/widget/NotificationProgressBar;->generateSortedPositionSet(Ljava/util/Map;Ljava/util/Map;)Ljava/util/SortedSet;

    move-result-object v3

    .line 845
    .local v3, "sortedPos":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-static {v1, v3, p3}, Lcom/android/internal/widget/NotificationProgressBar;->splitSegmentsByPoints(Ljava/util/Map;Ljava/util/SortedSet;I)Ljava/util/Map;

    move-result-object v4

    .line 848
    .local v4, "startToSplitSegmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Segment;>;"
    invoke-static {v4, v2, v3, p3}, Lcom/android/internal/widget/NotificationProgressBar;->convertToViewParts(Ljava/util/Map;Ljava/util/Map;Ljava/util/SortedSet;I)Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 814
    .end local v1    # "startToSegmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Segment;>;"
    .end local v2    # "positionToPointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Point;>;"
    .end local v3    # "sortedPos":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    .end local v4    # "startToSplitSegmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Segment;>;"
    :cond_9c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid progress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 803
    :cond_b5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid progressMax : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 798
    .end local v0    # "totalLength":I
    :cond_ce
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of segments shouldn\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist processPartsAndConvertToDrawableParts(Ljava/util/List;FFFFZI)Ljava/util/List;
    .registers 27
    .param p1, "totalWidth"    # F
    .param p2, "segSegGap"    # F
    .param p3, "segPointGap"    # F
    .param p4, "pointRadius"    # F
    .param p5, "hasTrackerIcon"    # Z
    .param p6, "trackerDrawWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressBar$Part;",
            ">;FFFFZI)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;"
        }
    .end annotation

    .line 973
    .local p0, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressBar$Part;>;"
    move-object/from16 v0, p0

    move/from16 v3, p4

    move/from16 v7, p6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    .line 975
    .local v8, "drawableParts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;"
    int-to-float v1, v7

    sub-float v9, p1, v1

    .line 978
    .local v9, "available":F
    int-to-float v1, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v1, v10

    .line 980
    .local v1, "x":F
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 981
    .local v11, "nParts":I
    const/4 v2, 0x0

    move v12, v1

    move v13, v2

    .end local v1    # "x":F
    .local v12, "x":F
    .local v13, "iPart":I
    :goto_1a
    if-ge v13, v11, :cond_a1

    .line 982
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/internal/widget/NotificationProgressBar$Part;

    .line 983
    .local v14, "part":Lcom/android/internal/widget/NotificationProgressBar$Part;
    const/4 v1, 0x0

    if-nez v13, :cond_28

    move-object v2, v1

    goto :goto_30

    :cond_28
    add-int/lit8 v2, v13, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/NotificationProgressBar$Part;

    :goto_30
    move-object v15, v2

    .line 984
    .local v15, "prevPart":Lcom/android/internal/widget/NotificationProgressBar$Part;
    add-int/lit8 v2, v13, 0x1

    if-ne v2, v11, :cond_36

    goto :goto_3e

    :cond_36
    add-int/lit8 v1, v13, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/NotificationProgressBar$Part;

    :goto_3e
    move-object v2, v1

    .line 985
    .local v2, "nextPart":Lcom/android/internal/widget/NotificationProgressBar$Part;
    instance-of v1, v14, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    if-eqz v1, :cond_7e

    move-object v1, v14

    check-cast v1, Lcom/android/internal/widget/NotificationProgressBar$Segment;

    .line 986
    .local v1, "segment":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    invoke-static {v1}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmFraction(Lcom/android/internal/widget/NotificationProgressBar$Segment;)F

    move-result v4

    mul-float v16, v4, v9

    .line 988
    .local v16, "segWidth":F
    move/from16 v4, p3

    invoke-static {v15, v3, v4}, Lcom/android/internal/widget/NotificationProgressBar;->getSegStartOffset(Lcom/android/internal/widget/NotificationProgressBar$Part;FF)F

    move-result v17

    .line 989
    .local v17, "startOffset":F
    add-float v5, v12, v17

    .line 992
    .local v5, "start":F
    move/from16 v6, p5

    move/from16 v18, v10

    move v10, v5

    move/from16 v5, p2

    .end local v5    # "start":F
    .local v10, "start":F
    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/NotificationProgressBar;->getSegEndOffset(Lcom/android/internal/widget/NotificationProgressBar$Segment;Lcom/android/internal/widget/NotificationProgressBar$Part;FFFZ)F

    move-result v19

    .line 994
    .local v19, "endOffset":F
    add-float v3, v12, v16

    sub-float v3, v3, v19

    .line 996
    .local v3, "end":F
    new-instance v4, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    invoke-static {v1}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmColor(Lcom/android/internal/widget/NotificationProgressBar$Segment;)I

    move-result v5

    invoke-static {v1}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fgetmFaded(Lcom/android/internal/widget/NotificationProgressBar$Segment;)Z

    move-result v6

    invoke-direct {v4, v10, v3, v5, v6}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;-><init>(FFIZ)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    invoke-static {v1, v12}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fputmStart(Lcom/android/internal/widget/NotificationProgressBar$Segment;F)V

    .line 999
    add-float v4, v12, v16

    invoke-static {v1, v4}, Lcom/android/internal/widget/NotificationProgressBar$Segment;->-$$Nest$fputmEnd(Lcom/android/internal/widget/NotificationProgressBar$Segment;F)V

    .line 1003
    add-float v12, v12, v16

    .line 1004
    .end local v3    # "end":F
    .end local v10    # "start":F
    .end local v16    # "segWidth":F
    .end local v17    # "startOffset":F
    .end local v19    # "endOffset":F
    goto :goto_99

    .end local v1    # "segment":Lcom/android/internal/widget/NotificationProgressBar$Segment;
    :cond_7e
    move/from16 v18, v10

    instance-of v1, v14, Lcom/android/internal/widget/NotificationProgressBar$Point;

    if-eqz v1, :cond_99

    move-object v1, v14

    check-cast v1, Lcom/android/internal/widget/NotificationProgressBar$Point;

    .line 1005
    .local v1, "point":Lcom/android/internal/widget/NotificationProgressBar$Point;
    mul-float v3, p4, v18

    .line 1006
    .local v3, "pointWidth":F
    sub-float v4, v12, p4

    .line 1007
    .local v4, "start":F
    add-float v5, v12, p4

    .line 1009
    .local v5, "end":F
    new-instance v6, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    invoke-static {v1}, Lcom/android/internal/widget/NotificationProgressBar$Point;->-$$Nest$fgetmColor(Lcom/android/internal/widget/NotificationProgressBar$Point;)I

    move-result v10

    invoke-direct {v6, v4, v5, v10}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;-><init>(FFI)V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    .end local v1    # "point":Lcom/android/internal/widget/NotificationProgressBar$Point;
    .end local v2    # "nextPart":Lcom/android/internal/widget/NotificationProgressBar$Part;
    .end local v3    # "pointWidth":F
    .end local v4    # "start":F
    .end local v5    # "end":F
    .end local v14    # "part":Lcom/android/internal/widget/NotificationProgressBar$Part;
    .end local v15    # "prevPart":Lcom/android/internal/widget/NotificationProgressBar$Part;
    :cond_99
    :goto_99
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, p4

    move/from16 v10, v18

    goto/16 :goto_1a

    .line 1013
    .end local v13    # "iPart":I
    :cond_a1
    return-object v8
.end method

.method private blacklist setTracker(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "tracker"    # Landroid/graphics/drawable/Drawable;

    .line 278
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    return-void

    .line 280
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 281
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 284
    :cond_f
    const/4 v0, 0x1

    if-eqz p1, :cond_2b

    .line 285
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getMirrorForRtl()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 287
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 290
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 295
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1}, Lcom/android/internal/widget/NotificationProgressBar;->trackerSizeChanged(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 297
    .local v1, "trackerSizeChanged":Z
    iput-object p1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    .line 298
    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_38

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    .line 299
    .local v0, "hasTrackerIcon":Z
    :goto_39
    iget-boolean v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mHasTrackerIcon:Z

    if-eq v2, v0, :cond_5a

    .line 300
    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mHasTrackerIcon:Z

    .line 301
    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    .line 302
    invoke-virtual {v2}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    .line 303
    invoke-virtual {v2}, Lcom/android/internal/widget/NotificationProgressModel;->isStyledByProgress()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 304
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->updateDrawableParts()V

    .line 308
    :cond_5a
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->configureTrackerBounds()V

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/NotificationProgressBar;->updateTrackerAndBarPos(II)V

    .line 313
    if-eqz v1, :cond_6d

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->requestLayout()V

    .line 315
    :cond_6d
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->invalidate()V

    .line 317
    if-eqz p1, :cond_7f

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 322
    :cond_7f
    return-void
.end method

.method private blacklist setTrackerPos(ILandroid/graphics/drawable/Drawable;FI)V
    .registers 21
    .param p1, "w"    # I
    .param p2, "tracker"    # Landroid/graphics/drawable/Drawable;
    .param p3, "progressFraction"    # F
    .param p4, "offsetY"    # I

    .line 670
    move-object/from16 v0, p0

    move/from16 v1, p4

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, v0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingRight:I

    sub-int/2addr v2, v3

    .line 671
    .local v2, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 672
    .local v3, "trackerWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 673
    .local v4, "trackerHeight":I
    iget v5, v0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    sub-int/2addr v2, v5

    .line 675
    int-to-float v5, v2

    mul-float v5, v5, p3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 678
    .local v5, "trackerPos":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_2a

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 680
    .local v6, "oldBounds":Landroid/graphics/Rect;
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 681
    .local v7, "top":I
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 682
    .local v6, "bottom":I
    goto :goto_2e

    .line 683
    .end local v6    # "bottom":I
    .end local v7    # "top":I
    :cond_2a
    move/from16 v7, p4

    .line 684
    .restart local v7    # "top":I
    add-int v6, v1, v4

    .line 687
    .restart local v6    # "bottom":I
    :goto_2e
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressBar;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_3d

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressBar;->getMirrorForRtl()Z

    move-result v8

    if-eqz v8, :cond_3d

    sub-int v8, v2, v5

    goto :goto_3e

    :cond_3d
    move v8, v5

    :goto_3e
    iput v8, v0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerPos:I

    .line 688
    const/4 v8, 0x0

    .line 689
    .local v8, "left":I
    add-int/lit8 v9, v3, 0x0

    .line 691
    .local v9, "right":I
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 692
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_58

    .line 693
    iget v11, v0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingLeft:I

    .line 694
    .local v11, "bkgOffsetX":I
    iget v12, v0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingTop:I

    .line 695
    .local v12, "bkgOffsetY":I
    add-int/lit8 v13, v11, 0x0

    add-int v14, v7, v12

    add-int v15, v9, v11

    add-int v1, v6, v12

    invoke-virtual {v10, v13, v14, v15, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 700
    .end local v11    # "bkgOffsetX":I
    .end local v12    # "bkgOffsetY":I
    :cond_58
    const/4 v1, 0x0

    move-object/from16 v11, p2

    invoke-virtual {v11, v1, v7, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 702
    iput-boolean v1, v0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerPosIsDirty:Z

    .line 703
    return-void
.end method

.method private blacklist shouldLoopIndeterminateAnimation()Z
    .registers 2

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->isAggregatedVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private static blacklist splitSegmentsByPoints(Ljava/util/Map;Ljava/util/SortedSet;I)Ljava/util/Map;
    .registers 11
    .param p2, "progressMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation

    .line 858
    .local p0, "startToSegmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/Notification$ProgressStyle$Segment;>;"
    .local p1, "sortedPos":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 859
    .local v0, "prevSegStart":I
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 860
    .local v2, "pos":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_1e

    goto :goto_5

    .line 861
    :cond_1e
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 862
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 863
    goto :goto_5

    .line 866
    :cond_29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$ProgressStyle$Segment;

    .line 867
    .local v3, "prevSeg":Landroid/app/Notification$ProgressStyle$Segment;
    new-instance v4, Landroid/app/Notification$ProgressStyle$Segment;

    .line 868
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-direct {v4, v5}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    invoke-virtual {v3}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v4

    .line 869
    .local v4, "leftSeg":Landroid/app/Notification$ProgressStyle$Segment;
    new-instance v5, Landroid/app/Notification$ProgressStyle$Segment;

    .line 870
    invoke-virtual {v3}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-direct {v5, v6}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    invoke-virtual {v3}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v5

    .line 872
    .local v5, "rightSeg":Landroid/app/Notification$ProgressStyle$Segment;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    invoke-interface {p0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 876
    .end local v2    # "pos":Ljava/lang/Integer;
    .end local v3    # "prevSeg":Landroid/app/Notification$ProgressStyle$Segment;
    .end local v4    # "leftSeg":Landroid/app/Notification$ProgressStyle$Segment;
    .end local v5    # "rightSeg":Landroid/app/Notification$ProgressStyle$Segment;
    goto :goto_5

    .line 878
    :cond_6b
    return-object p0
.end method

.method private static blacklist trackerSizeChanged(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .registers 6
    .param p0, "newTracker"    # Landroid/graphics/drawable/Drawable;
    .param p1, "oldTracker"    # Landroid/graphics/drawable/Drawable;

    .line 326
    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    .line 327
    :cond_6
    const/4 v1, 0x1

    if-nez p0, :cond_c

    if-eqz p1, :cond_c

    return v1

    .line 328
    :cond_c
    if-eqz p0, :cond_11

    if-nez p1, :cond_11

    return v1

    .line 330
    :cond_11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_25

    .line 331
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_26

    :cond_25
    move v0, v1

    .line 330
    :cond_26
    return v0
.end method

.method private blacklist updateDrawableParts()V
    .registers 21

    .line 479
    move-object/from16 v1, p0

    const-string v2, "NotificationProgressBar"

    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    if-nez v0, :cond_9

    return-void

    .line 480
    :cond_9
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mParts:Ljava/util/List;

    if-nez v0, :cond_e

    return-void

    .line 482
    :cond_e
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v7, v0

    .line 483
    .local v7, "width":F
    const/4 v15, 0x0

    cmpl-float v0, v7, v15

    if-nez v0, :cond_2f

    .line 484
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableParts:Ljava/util/List;

    if-eqz v0, :cond_2e

    .line 488
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 489
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    iget-object v2, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableParts:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/NotificationProgressDrawable;->setParts(Ljava/util/List;)V

    .line 491
    :cond_2e
    return-void

    .line 494
    :cond_2f
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getPointRadius()F

    move-result v10

    .line 495
    .local v10, "pointRadius":F
    iget-object v3, v1, Lcom/android/internal/widget/NotificationProgressBar;->mParts:Ljava/util/List;

    iget v5, v1, Lcom/android/internal/widget/NotificationProgressBar;->mSegSegGap:F

    iget v6, v1, Lcom/android/internal/widget/NotificationProgressBar;->mSegPointGap:F

    iget-boolean v8, v1, Lcom/android/internal/widget/NotificationProgressBar;->mHasTrackerIcon:Z

    iget v9, v1, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    move v4, v7

    move v7, v10

    .end local v10    # "pointRadius":F
    .local v4, "width":F
    .local v7, "pointRadius":F
    invoke-static/range {v3 .. v9}, Lcom/android/internal/widget/NotificationProgressBar;->processPartsAndConvertToDrawableParts(Ljava/util/List;FFFFZI)Ljava/util/List;

    move-result-object v0

    move v7, v4

    .end local v4    # "width":F
    .local v7, "width":F
    .restart local v10    # "pointRadius":F
    iput-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableParts:Ljava/util/List;

    .line 505
    invoke-direct {v1}, Lcom/android/internal/widget/NotificationProgressBar;->getProgressFraction()F

    move-result v12

    .line 506
    .local v12, "progressFraction":F
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->isStyledByProgress()Z

    move-result v13

    .line 507
    .local v13, "isStyledByProgress":Z
    iget-boolean v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mHasTrackerIcon:Z

    if-eqz v0, :cond_58

    move v14, v15

    goto :goto_5b

    :cond_58
    iget v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mSegSegGap:F

    move v14, v0

    .line 508
    .local v14, "progressGap":F
    :goto_5b
    const/4 v3, 0x0

    .line 510
    .local v3, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;Ljava/lang/Float;>;"
    :try_start_5c
    iget-object v8, v1, Lcom/android/internal/widget/NotificationProgressBar;->mParts:Ljava/util/List;

    iget-object v9, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableParts:Ljava/util/List;
    :try_end_60
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_5c .. :try_end_60} :catch_6f

    move v11, v10

    .end local v10    # "pointRadius":F
    .local v11, "pointRadius":F
    :try_start_61
    iget v10, v1, Lcom/android/internal/widget/NotificationProgressBar;->mSegMinWidth:F

    invoke-static/range {v8 .. v14}, Lcom/android/internal/widget/NotificationProgressBar;->maybeStretchAndRescaleSegments(Ljava/util/List;Ljava/util/List;FFFZF)Landroid/util/Pair;

    move-result-object v0
    :try_end_67
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_61 .. :try_end_67} :catch_6c

    move v10, v11

    .end local v11    # "pointRadius":F
    .restart local v10    # "pointRadius":F
    move-object v3, v0

    .line 521
    move-object/from16 v16, v3

    goto :goto_77

    .line 519
    .end local v10    # "pointRadius":F
    .restart local v11    # "pointRadius":F
    :catch_6c
    move-exception v0

    move v10, v11

    .end local v11    # "pointRadius":F
    .restart local v10    # "pointRadius":F
    goto :goto_70

    :catch_6f
    move-exception v0

    .line 520
    .local v0, "ex":Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;
    :goto_70
    const-string v4, "Failed to stretch and rescale segments"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v16, v3

    .line 523
    .end local v0    # "ex":Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;
    .end local v3    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;Ljava/lang/Float;>;"
    .local v16, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;Ljava/lang/Float;>;"
    :goto_77
    const/4 v3, 0x0

    .line 524
    .local v3, "fallbackSegments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    if-nez v16, :cond_103

    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_103

    .line 525
    const-string v0, "Falling back to single segment"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :try_start_8c
    new-instance v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v1}, Lcom/android/internal/widget/NotificationProgressBar;->getMax()I

    move-result v4

    invoke-direct {v0, v4}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    .line 529
    iget-object v4, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    .line 528
    invoke-virtual {v4}, Lcom/android/internal/widget/NotificationProgressModel;->getSegmentsFallbackColor()I

    move-result v4
    :try_end_9b
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_8c .. :try_end_9b} :catch_f9

    if-nez v4, :cond_b3

    .line 530
    :try_start_9d
    iget-object v4, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v4}, Lcom/android/internal/widget/NotificationProgressModel;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v4}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v4
    :try_end_ad
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_9d .. :try_end_ad} :catch_ae

    goto :goto_b9

    .line 545
    :catch_ae
    move-exception v0

    move v15, v12

    move/from16 v19, v14

    goto :goto_fd

    .line 531
    :cond_b3
    :try_start_b3
    iget-object v4, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v4}, Lcom/android/internal/widget/NotificationProgressModel;->getSegmentsFallbackColor()I

    move-result v4

    .line 527
    :goto_b9
    invoke-virtual {v0, v4}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    .line 532
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    .line 534
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->getPoints()Ljava/util/List;

    move-result-object v4

    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    .line 535
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->getProgress()I

    move-result v5

    .line 536
    invoke-virtual {v1}, Lcom/android/internal/widget/NotificationProgressBar;->getMax()I

    move-result v6

    iget v8, v1, Lcom/android/internal/widget/NotificationProgressBar;->mSegSegGap:F

    iget v9, v1, Lcom/android/internal/widget/NotificationProgressBar;->mSegPointGap:F

    iget-boolean v11, v1, Lcom/android/internal/widget/NotificationProgressBar;->mHasTrackerIcon:Z
    :try_end_d8
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_b3 .. :try_end_d8} :catch_f9

    move/from16 v17, v12

    .end local v12    # "progressFraction":F
    .local v17, "progressFraction":F
    :try_start_da
    iget v12, v1, Lcom/android/internal/widget/NotificationProgressBar;->mSegMinWidth:F
    :try_end_dc
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_da .. :try_end_dc} :catch_f3

    move/from16 v18, v14

    .end local v14    # "progressGap":F
    .local v18, "progressGap":F
    :try_start_de
    iget v14, v1, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I
    :try_end_e0
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_de .. :try_end_e0} :catch_ed

    .line 532
    move/from16 v15, v17

    move/from16 v19, v18

    .end local v17    # "progressFraction":F
    .end local v18    # "progressGap":F
    .local v15, "progressFraction":F
    .local v19, "progressGap":F
    :try_start_e4
    invoke-static/range {v3 .. v14}, Lcom/android/internal/widget/NotificationProgressBar;->processModelAndConvertToFinalDrawableParts(Ljava/util/List;Ljava/util/List;IIFFFFZFZI)Landroid/util/Pair;

    move-result-object v0
    :try_end_e8
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_e4 .. :try_end_e8} :catch_eb

    move-object/from16 v16, v0

    .line 548
    goto :goto_106

    .line 545
    :catch_eb
    move-exception v0

    goto :goto_fd

    .end local v15    # "progressFraction":F
    .end local v19    # "progressGap":F
    .restart local v17    # "progressFraction":F
    .restart local v18    # "progressGap":F
    :catch_ed
    move-exception v0

    move/from16 v15, v17

    move/from16 v19, v18

    .end local v17    # "progressFraction":F
    .end local v18    # "progressGap":F
    .restart local v15    # "progressFraction":F
    .restart local v19    # "progressGap":F
    goto :goto_fd

    .end local v15    # "progressFraction":F
    .end local v19    # "progressGap":F
    .restart local v14    # "progressGap":F
    .restart local v17    # "progressFraction":F
    :catch_f3
    move-exception v0

    move/from16 v19, v14

    move/from16 v15, v17

    .end local v14    # "progressGap":F
    .end local v17    # "progressFraction":F
    .restart local v15    # "progressFraction":F
    .restart local v19    # "progressGap":F
    goto :goto_fd

    .end local v15    # "progressFraction":F
    .end local v19    # "progressGap":F
    .restart local v12    # "progressFraction":F
    .restart local v14    # "progressGap":F
    :catch_f9
    move-exception v0

    move v15, v12

    move/from16 v19, v14

    .line 546
    .end local v12    # "progressFraction":F
    .end local v14    # "progressGap":F
    .restart local v0    # "ex":Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;
    .restart local v15    # "progressFraction":F
    .restart local v19    # "progressGap":F
    :goto_fd
    const-string v4, "Failed to stretch and rescale segments with single segment fallback"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_106

    .line 524
    .end local v0    # "ex":Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;
    .end local v15    # "progressFraction":F
    .end local v19    # "progressGap":F
    .restart local v12    # "progressFraction":F
    .restart local v14    # "progressGap":F
    :cond_103
    move v15, v12

    move/from16 v19, v14

    .line 551
    .end local v12    # "progressFraction":F
    .end local v14    # "progressGap":F
    .restart local v15    # "progressFraction":F
    .restart local v19    # "progressGap":F
    :goto_106
    if-nez v16, :cond_171

    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_171

    .line 552
    const-string v0, "Falling back to single segment and no points"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    if-nez v3, :cond_14b

    .line 554
    new-instance v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v1}, Lcom/android/internal/widget/NotificationProgressBar;->getMax()I

    move-result v4

    invoke-direct {v0, v4}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    .line 556
    iget-object v4, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    .line 555
    invoke-virtual {v4}, Lcom/android/internal/widget/NotificationProgressModel;->getSegmentsFallbackColor()I

    move-result v4

    if-nez v4, :cond_13d

    .line 557
    iget-object v4, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v4}, Lcom/android/internal/widget/NotificationProgressModel;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v4}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v4

    goto :goto_143

    .line 558
    :cond_13d
    iget-object v4, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v4}, Lcom/android/internal/widget/NotificationProgressModel;->getSegmentsFallbackColor()I

    move-result v4

    .line 554
    :goto_143
    invoke-virtual {v0, v4}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 561
    :cond_14b
    nop

    .line 563
    :try_start_14c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    .line 564
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->getProgress()I

    move-result v5

    .line 565
    invoke-virtual {v1}, Lcom/android/internal/widget/NotificationProgressBar;->getMax()I

    move-result v6

    iget v8, v1, Lcom/android/internal/widget/NotificationProgressBar;->mSegSegGap:F

    iget v9, v1, Lcom/android/internal/widget/NotificationProgressBar;->mSegPointGap:F

    iget-boolean v11, v1, Lcom/android/internal/widget/NotificationProgressBar;->mHasTrackerIcon:Z

    iget v12, v1, Lcom/android/internal/widget/NotificationProgressBar;->mSegMinWidth:F

    iget v14, v1, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    .line 561
    invoke-static/range {v3 .. v14}, Lcom/android/internal/widget/NotificationProgressBar;->processModelAndConvertToFinalDrawableParts(Ljava/util/List;Ljava/util/List;IIFFFFZFZI)Landroid/util/Pair;

    move-result-object v0
    :try_end_168
    .catch Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException; {:try_start_14c .. :try_end_168} :catch_16b

    move-object/from16 v16, v0

    .line 578
    goto :goto_171

    .line 574
    :catch_16b
    move-exception v0

    .line 575
    .restart local v0    # "ex":Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;
    const-string v4, "Failed to stretch and rescale segments with single segments and no points"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    .end local v0    # "ex":Lcom/android/internal/widget/NotificationProgressBar$NotEnoughWidthToFitAllPartsException;
    :cond_171
    :goto_171
    if-nez v16, :cond_185

    .line 582
    const-string v0, "Falling back to no stretching and rescaling"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, v1, Lcom/android/internal/widget/NotificationProgressBar;->mParts:Ljava/util/List;

    iget-object v2, v1, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableParts:Ljava/util/List;

    move/from16 v14, v19

    .end local v19    # "progressGap":F
    .restart local v14    # "progressGap":F
    invoke-static {v0, v2, v15, v13, v14}, Lcom/android/internal/widget/NotificationProgressBar;->maybeSplitDrawableSegmentsByProgress(Ljava/util/List;Ljava/util/List;FZF)Landroid/util/Pair;

    move-result-object v16

    move-object/from16 v0, v16

    goto :goto_189

    .line 581
    .end local v14    # "progressGap":F
    .restart local v19    # "progressGap":F
    :cond_185
    move/from16 v14, v19

    .end local v19    # "progressGap":F
    .restart local v14    # "progressGap":F
    move-object/from16 v0, v16

    .line 592
    .end local v16    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;Ljava/lang/Float;>;"
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;Ljava/lang/Float;>;"
    :goto_189
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->setStart(F)V

    .line 593
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->setEnd(F)V

    .line 598
    iget-object v2, v1, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/NotificationProgressDrawable;->setParts(Ljava/util/List;)V

    .line 599
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    .line 600
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v4, v1, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    iget v4, v1, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerDrawWidth:I

    int-to-float v4, v4

    sub-float v4, v7, v4

    div-float/2addr v2, v4

    iput v2, v1, Lcom/android/internal/widget/NotificationProgressBar;->mAdjustedProgressFraction:F

    .line 602
    iget-object v2, v1, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    invoke-direct {v1, v3}, Lcom/android/internal/widget/NotificationProgressBar;->getEndDotColor(Ljava/util/List;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateEndDotColor(I)V

    .line 603
    return-void
.end method

.method private blacklist updateTrackerAndBarPos(II)V
    .registers 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 616
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingTop:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingBottom:I

    sub-int/2addr v0, v1

    .line 617
    .local v0, "paddedHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 618
    .local v1, "bar":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    .line 622
    .local v2, "tracker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getMaxHeight()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 623
    .local v3, "barHeight":I
    const/4 v4, 0x0

    if-nez v2, :cond_1a

    move v5, v4

    goto :goto_25

    .line 624
    :cond_1a
    iget v5, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    if-gtz v5, :cond_23

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    goto :goto_25

    :cond_23
    iget v5, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTrackerHeight:I

    :goto_25
    nop

    .line 629
    .local v5, "trackerHeight":I
    if-le v5, v3, :cond_33

    .line 630
    sub-int v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    .line 631
    .local v6, "offsetHeight":I
    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 632
    .local v7, "barOffsetY":I
    nop

    .line 633
    .local v6, "trackerOffsetY":I
    goto :goto_3e

    .line 634
    .end local v6    # "trackerOffsetY":I
    .end local v7    # "barOffsetY":I
    :cond_33
    sub-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    .line 635
    .local v6, "offsetHeight":I
    move v7, v6

    .line 636
    .restart local v7    # "barOffsetY":I
    sub-int v8, v3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    move v6, v8

    .line 639
    .local v6, "trackerOffsetY":I
    :goto_3e
    if-eqz v1, :cond_4c

    .line 640
    iget v8, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingRight:I

    sub-int v8, p1, v8

    iget v9, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingLeft:I

    sub-int/2addr v8, v9

    .line 641
    .local v8, "barWidth":I
    add-int v9, v7, v3

    invoke-virtual {v1, v4, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 644
    .end local v8    # "barWidth":I
    :cond_4c
    if-eqz v2, :cond_53

    .line 645
    iget v4, p0, Lcom/android/internal/widget/NotificationProgressBar;->mAdjustedProgressFraction:F

    invoke-direct {p0, p1, v2, v4, v6}, Lcom/android/internal/widget/NotificationProgressBar;->setTrackerPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 647
    :cond_53
    return-void
.end method


# virtual methods
.method public whitelist drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 446
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    .line 448
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 449
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 451
    :cond_c
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .registers 3

    .line 436
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 438
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    .line 439
    .local v0, "tracker":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 440
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 442
    :cond_1a
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 769
    const-class v0, Lcom/android/internal/widget/NotificationProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 427
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 429
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 430
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 432
    :cond_c
    return-void
.end method

.method protected declared-synchronized whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 716
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 718
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->isIndeterminate()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_11

    if-eqz v0, :cond_c

    monitor-exit p0

    return-void

    .line 719
    :cond_c
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationProgressBar;->drawTracker(Landroid/graphics/Canvas;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_11

    .line 720
    monitor-exit p0

    return-void

    .line 715
    .end local p0    # "this":Lcom/android/internal/widget/NotificationProgressBar;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public blacklist onDrawableBoundsChanged()V
    .registers 4

    .line 462
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 464
    .local v0, "progressDrawableBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    .line 466
    :cond_f
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v1, v2, :cond_1e

    .line 467
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->updateDrawableParts()V

    .line 470
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 471
    return-void
.end method

.method protected declared-synchronized whitelist onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    monitor-enter p0

    .line 750
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 752
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_12

    :cond_c
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 753
    .local v1, "trackerHeight":I
    :goto_12
    const/4 v3, 0x0

    .line 754
    .local v3, "dw":I
    const/4 v4, 0x0

    .line 755
    .local v4, "dh":I
    if-eqz v0, :cond_43

    .line 756
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getMinWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getMaxWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v3, v5

    .line 757
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getMinHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getMaxHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 758
    .end local v4    # "dh":I
    .local v5, "dh":I
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 760
    .end local v5    # "dh":I
    .end local p0    # "this":Lcom/android/internal/widget/NotificationProgressBar;
    .restart local v4    # "dh":I
    :cond_43
    iget v5, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingLeft:I

    iget v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 761
    iget v5, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingTop:I

    iget v6, p0, Lcom/android/internal/widget/NotificationProgressBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 763
    invoke-static {v3, p1, v2}, Lcom/android/internal/widget/NotificationProgressBar;->resolveSizeAndState(III)I

    move-result v5

    .line 764
    invoke-static {v4, p2, v2}, Lcom/android/internal/widget/NotificationProgressBar;->resolveSizeAndState(III)I

    move-result v2

    .line 763
    invoke-virtual {p0, v5, v2}, Lcom/android/internal/widget/NotificationProgressBar;->setMeasuredDimension(II)V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5c

    .line 765
    monitor-exit p0

    return-void

    .line 749
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "trackerHeight":I
    .end local v3    # "dw":I
    .end local v4    # "dh":I
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_5c
    move-exception p1

    :try_start_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p1
.end method

.method public blacklist onResolveDrawables(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 707
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    .line 709
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 710
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 712
    :cond_c
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 6
    .param p1, "layoutDirection"    # I

    .line 774
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    .line 776
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    .line 777
    .local v0, "tracker":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_15

    .line 778
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mAdjustedProgressFraction:F

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/internal/widget/NotificationProgressBar;->setTrackerPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 783
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->invalidate()V

    .line 785
    :cond_15
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 455
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 457
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/NotificationProgressBar;->updateTrackerAndBarPos(II)V

    .line 458
    return-void
.end method

.method public whitelist setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    .local v0, "oldDrawable":Landroid/graphics/drawable/Drawable;
    if-eq v0, p1, :cond_28

    .line 161
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mIndeterminateAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    if-eqz v1, :cond_15

    .line 162
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mIndeterminateAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mIndeterminateAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 166
    :cond_15
    instance-of v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_28

    .line 167
    new-instance v1, Lcom/android/internal/widget/NotificationProgressBar$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/NotificationProgressBar$1;-><init>(Lcom/android/internal/widget/NotificationProgressBar;)V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mIndeterminateAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 177
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mIndeterminateAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 182
    :cond_28
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    return-void
.end method

.method public declared-synchronized whitelist setMax(I)V
    .registers 2
    .param p1, "max"    # I

    monitor-enter p0

    .line 406
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 408
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->onMaybeVisualProgressChanged()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 409
    monitor-exit p0

    return-void

    .line 405
    .end local p0    # "this":Lcom/android/internal/widget/NotificationProgressBar;
    .end local p1    # "max":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist setMin(I)V
    .registers 2
    .param p1, "min"    # I

    monitor-enter p0

    .line 397
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 399
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->onMaybeVisualProgressChanged()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 400
    monitor-exit p0

    return-void

    .line 396
    .end local p0    # "this":Lcom/android/internal/widget/NotificationProgressBar;
    .end local p1    # "min":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist setProgress(I)V
    .registers 2
    .param p1, "progress"    # I

    monitor-enter p0

    .line 378
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 380
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->onMaybeVisualProgressChanged()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 381
    monitor-exit p0

    return-void

    .line 377
    .end local p0    # "this":Lcom/android/internal/widget/NotificationProgressBar;
    .end local p1    # "progress":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public whitelist setProgress(IZ)V
    .registers 4
    .param p1, "progress"    # I
    .param p2, "animate"    # Z

    .line 388
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 390
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->onMaybeVisualProgressChanged()V

    .line 391
    return-void
.end method

.method public blacklist setProgressModel(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 196
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Bundle shouldn\'t be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 198
    invoke-static {p1}, Lcom/android/internal/widget/NotificationProgressModel;->fromBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/NotificationProgressModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->isIndeterminate()Z

    move-result v0

    .line 200
    .local v0, "isIndeterminate":Z
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationProgressBar;->setIndeterminate(Z)V

    .line 202
    if-eqz v0, :cond_29

    .line 203
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v1}, Lcom/android/internal/widget/NotificationProgressModel;->getIndeterminateColor()I

    move-result v1

    .line 204
    .local v1, "indeterminateColor":I
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 205
    .end local v1    # "indeterminateColor":I
    goto :goto_60

    .line 210
    :cond_29
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v1}, Lcom/android/internal/widget/NotificationProgressModel;->getProgress()I

    move-result v1

    .line 211
    .local v1, "progress":I
    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v2}, Lcom/android/internal/widget/NotificationProgressModel;->getProgressMax()I

    move-result v2

    .line 213
    .local v2, "progressMax":I
    iget-object v3, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    invoke-virtual {v3}, Lcom/android/internal/widget/NotificationProgressModel;->getSegments()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/NotificationProgressBar;->mProgressModel:Lcom/android/internal/widget/NotificationProgressModel;

    .line 214
    invoke-virtual {v4}, Lcom/android/internal/widget/NotificationProgressModel;->getPoints()Ljava/util/List;

    move-result-object v4

    .line 213
    invoke-static {v3, v4, v1, v2}, Lcom/android/internal/widget/NotificationProgressBar;->processModelAndConvertToViewParts(Ljava/util/List;Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/NotificationProgressBar;->mParts:Ljava/util/List;

    .line 218
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationProgressBar;->setMax(I)V

    .line 219
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationProgressBar;->setProgress(I)V

    .line 221
    iget-object v3, p0, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    if-eqz v3, :cond_60

    iget-object v3, p0, Lcom/android/internal/widget/NotificationProgressBar;->mNotificationProgressDrawable:Lcom/android/internal/widget/NotificationProgressDrawable;

    .line 222
    invoke-virtual {v3}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_60

    .line 223
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressBar;->updateDrawableParts()V

    .line 226
    .end local v1    # "progress":I
    .end local v2    # "progressMax":I
    :cond_60
    :goto_60
    return-void
.end method

.method public blacklist setProgressTrackerIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setProgressTrackerIconAsync"
    .end annotation

    .line 256
    if-eqz p1, :cond_b

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "progressTrackerDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_c

    .line 259
    .end local v0    # "progressTrackerDrawable":Landroid/graphics/drawable/Drawable;
    :cond_b
    const/4 v0, 0x0

    .line 261
    .restart local v0    # "progressTrackerDrawable":Landroid/graphics/drawable/Drawable;
    :goto_c
    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationProgressBar;->setTracker(Landroid/graphics/drawable/Drawable;)V

    .line 262
    return-void
.end method

.method public blacklist setProgressTrackerIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 269
    if-eqz p1, :cond_b

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "progressTrackerDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_c

    .line 272
    .end local v0    # "progressTrackerDrawable":Landroid/graphics/drawable/Drawable;
    :cond_b
    const/4 v0, 0x0

    .line 274
    .restart local v0    # "progressTrackerDrawable":Landroid/graphics/drawable/Drawable;
    :goto_c
    new-instance v1, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/NotificationProgressBar;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 422
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressBar;->mTracker:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
