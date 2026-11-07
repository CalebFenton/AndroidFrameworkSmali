.class public Landroid/view/NotificationHeaderView$HeaderTouchListener;
.super Ljava/lang/Object;
.source "NotificationHeaderView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NotificationHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderTouchListener"
.end annotation


# instance fields
.field private blacklist mAltExpandTargetRect:Landroid/graphics/Rect;

.field private greylist-max-o mDownX:F

.field private greylist-max-o mDownY:F

.field private greylist-max-o mExpandButtonRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTouchRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTouchSlop:I

.field private greylist-max-o mTrackGesture:Z

.field final synthetic blacklist this$0:Landroid/view/NotificationHeaderView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$misInside(Landroid/view/NotificationHeaderView$HeaderTouchListener;FF)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->isInside(FF)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/view/NotificationHeaderView;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/NotificationHeaderView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 298
    iput-object p1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    .line 299
    return-void
.end method

.method private greylist-max-o addRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 320
    invoke-direct {p0, p1}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->getRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 321
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    return-object v0
.end method

.method private greylist-max-o addWidthRect()V
    .registers 4

    .line 311
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 312
    .local v0, "r":Landroid/graphics/Rect;
    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 313
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v2}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTouchableHeight(Landroid/view/NotificationHeaderView;)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 314
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 315
    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 316
    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method private greylist-max-o getRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .line 326
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    .line 327
    .local v0, "size":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 328
    .local v1, "width":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 329
    .local v2, "height":F
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 330
    .local v3, "r":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_42

    .line 331
    iget-object v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v4}, Landroid/view/NotificationHeaderView;->-$$Nest$mgetFirstChildNotGone(Landroid/view/NotificationHeaderView;)Landroid/view/View;

    move-result-object p1

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    div-float v5, v1, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_53

    .line 334
    :cond_42
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    div-float v5, v1, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 336
    :goto_53
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    div-float v5, v2, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 337
    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 338
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 339
    return-object v3
.end method

.method private greylist-max-o isInside(FF)Z
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 380
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmAcceptAllTouches(Landroid/view/NotificationHeaderView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 381
    return v1

    .line 383
    :cond_a
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmExpandOnlyOnButton(Landroid/view/NotificationHeaderView;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 384
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mExpandButtonRect:Landroid/graphics/Rect;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mAltExpandTargetRect:Landroid/graphics/Rect;

    float-to-int v2, p1

    float-to-int v3, p2

    .line 385
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v1, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    nop

    .line 384
    :goto_2a
    return v1

    .line 387
    :cond_2b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_48

    .line 388
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 389
    .local v2, "r":Landroid/graphics/Rect;
    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 390
    return v1

    .line 387
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 393
    .end local v0    # "i":I
    :cond_48
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTopLineView(Landroid/view/NotificationHeaderView;)Landroid/view/NotificationTopLineView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getX()F

    move-result v0

    sub-float v0, p1, v0

    .line 394
    .local v0, "topLineX":F
    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v1}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTopLineView(Landroid/view/NotificationHeaderView;)Landroid/view/NotificationTopLineView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/NotificationTopLineView;->getY()F

    move-result v1

    sub-float v1, p2, v1

    .line 395
    .local v1, "topLineY":F
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v2}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTopLineView(Landroid/view/NotificationHeaderView;)Landroid/view/NotificationTopLineView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/NotificationTopLineView;->isInTouchRect(FF)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public greylist-max-o bindTouchRects()V
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 303
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmIcon(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/CachingIconView;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;

    .line 304
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmExpandButton(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/NotificationExpandButton;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mExpandButtonRect:Landroid/graphics/Rect;

    .line 305
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmAltExpandTarget(Landroid/view/NotificationHeaderView;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mAltExpandTargetRect:Landroid/graphics/Rect;

    .line 306
    invoke-direct {p0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addWidthRect()V

    .line 307
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchSlop:I

    .line 308
    return-void
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 344
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 345
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 346
    .local v1, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_82

    goto :goto_7f

    .line 357
    :pswitch_13
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    if-eqz v2, :cond_7f

    .line 358
    iget v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownX:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_33

    iget v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownY:F

    sub-float/2addr v2, v1

    .line 359
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_7f

    .line 360
    :cond_33
    iput-boolean v3, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    goto :goto_7f

    .line 365
    :pswitch_36
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    if-eqz v2, :cond_7f

    .line 366
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v2}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTopLineView(Landroid/view/NotificationHeaderView;)Landroid/view/NotificationTopLineView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/NotificationTopLineView;->getX()F

    move-result v2

    .line 367
    .local v2, "topLineX":F
    iget-object v3, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v3}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTopLineView(Landroid/view/NotificationHeaderView;)Landroid/view/NotificationTopLineView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/NotificationTopLineView;->getY()F

    move-result v3

    .line 368
    .local v3, "topLineY":F
    iget-object v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v4}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTopLineView(Landroid/view/NotificationHeaderView;)Landroid/view/NotificationTopLineView;

    move-result-object v4

    sub-float v5, v0, v2

    sub-float v6, v1, v3

    iget v7, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownX:F

    sub-float/2addr v7, v2

    iget v8, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownY:F

    sub-float/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/NotificationTopLineView;->onTouchUp(FFFF)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 370
    goto :goto_7f

    .line 372
    :cond_65
    iget-object v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v4}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmExpandButton(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/NotificationExpandButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/NotificationExpandButton;->performClick()Z

    goto :goto_7f

    .line 348
    .end local v2    # "topLineX":F
    .end local v3    # "topLineY":F
    :pswitch_6f
    iput-boolean v3, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    .line 349
    invoke-direct {p0, v0, v1}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->isInside(FF)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 350
    iput v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownX:F

    .line 351
    iput v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownY:F

    .line 352
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    .line 353
    return v2

    .line 376
    :cond_7f
    :goto_7f
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    return v2

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_36
        :pswitch_13
    .end packed-switch
.end method
