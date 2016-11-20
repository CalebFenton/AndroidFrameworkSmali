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
.field private mDownX:F

.field private mDownY:F

.field private final mTouchRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchSlop:I

.field private mTrackGesture:Z

.field final synthetic this$0:Landroid/view/NotificationHeaderView;


# direct methods
.method static synthetic -wrap0(Landroid/view/NotificationHeaderView$HeaderTouchListener;FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->isInside(FF)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Landroid/view/NotificationHeaderView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/NotificationHeaderView;

    #@0
    .prologue
    .line 322
    iput-object p1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 316
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    #@c
    .line 322
    return-void
.end method

.method private addRectAroundViewView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 343
    invoke-direct {p0, p1}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->getRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    .line 344
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9
    .line 342
    return-void
.end method

.method private addWidthRect()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 334
    new-instance v0, Landroid/graphics/Rect;

    #@3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@6
    .line 335
    .local v0, "r":Landroid/graphics/Rect;
    iput v3, v0, Landroid/graphics/Rect;->top:I

    #@8
    .line 336
    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    #@a
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@11
    move-result-object v1

    #@12
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #@14
    const/high16 v2, 0x42000000    # 32.0f

    #@16
    mul-float/2addr v1, v2

    #@17
    float-to-int v1, v1

    #@18
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    #@1a
    .line 337
    iput v3, v0, Landroid/graphics/Rect;->left:I

    #@1c
    .line 338
    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    #@1e
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getWidth()I

    #@21
    move-result v1

    #@22
    iput v1, v0, Landroid/graphics/Rect;->right:I

    #@24
    .line 339
    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    .line 333
    return-void
.end method

.method private getRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    #@2
    .line 348
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    #@4
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@b
    move-result-object v2

    #@c
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    #@e
    const/high16 v3, 0x42400000    # 48.0f

    #@10
    mul-float v1, v3, v2

    #@12
    .line 349
    .local v1, "size":F
    new-instance v0, Landroid/graphics/Rect;

    #@14
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@17
    .line 350
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@1a
    move-result v2

    #@1b
    const/16 v3, 0x8

    #@1d
    if-ne v2, v3, :cond_0

    #@1f
    .line 351
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    #@21
    invoke-static {v2}, Landroid/view/NotificationHeaderView;->-wrap0(Landroid/view/NotificationHeaderView;)Landroid/view/View;

    #@24
    move-result-object p1

    #@25
    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@28
    move-result v2

    #@29
    int-to-float v2, v2

    #@2a
    div-float v3, v1, v4

    #@2c
    sub-float/2addr v2, v3

    #@2d
    float-to-int v2, v2

    #@2e
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@30
    .line 356
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@33
    move-result v2

    #@34
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@37
    move-result v3

    #@38
    add-int/2addr v2, v3

    #@39
    int-to-float v2, v2

    #@3a
    div-float/2addr v2, v4

    #@3b
    div-float v3, v1, v4

    #@3d
    sub-float/2addr v2, v3

    #@3e
    float-to-int v2, v2

    #@3f
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@41
    .line 357
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@43
    int-to-float v2, v2

    #@44
    add-float/2addr v2, v1

    #@45
    float-to-int v2, v2

    #@46
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    #@48
    .line 358
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@4a
    int-to-float v2, v2

    #@4b
    add-float/2addr v2, v1

    #@4c
    float-to-int v2, v2

    #@4d
    iput v2, v0, Landroid/graphics/Rect;->right:I

    #@4f
    .line 359
    return-object v0

    #@50
    .line 354
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@53
    move-result v2

    #@54
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    #@57
    move-result v3

    #@58
    add-int/2addr v2, v3

    #@59
    int-to-float v2, v2

    #@5a
    div-float/2addr v2, v4

    #@5b
    div-float v3, v1, v4

    #@5d
    sub-float/2addr v2, v3

    #@5e
    float-to-int v2, v2

    #@5f
    iput v2, v0, Landroid/graphics/Rect;->left:I

    #@61
    goto :goto_0
.end method

.method private isInside(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 392
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 393
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/graphics/Rect;

    #@11
    .line 394
    .local v1, "r":Landroid/graphics/Rect;
    float-to-int v2, p1

    #@12
    float-to-int v3, p2

    #@13
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 395
    iput p1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownX:F

    #@1b
    .line 396
    iput p2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownY:F

    #@1d
    .line 397
    const/4 v2, 0x1

    #@1e
    return v2

    #@1f
    .line 392
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 400
    .end local v1    # "r":Landroid/graphics/Rect;
    :cond_1
    const/4 v2, 0x0

    #@23
    return v2
.end method


# virtual methods
.method public bindTouchRects()V
    .locals 1

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 327
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    #@7
    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-get5(Landroid/view/NotificationHeaderView;)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    invoke-direct {p0, v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addRectAroundViewView(Landroid/view/View;)V

    #@e
    .line 328
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    #@10
    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-get1(Landroid/view/NotificationHeaderView;)Landroid/widget/ImageView;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addRectAroundViewView(Landroid/view/View;)V

    #@17
    .line 329
    invoke-direct {p0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addWidthRect()V

    #@1a
    .line 330
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    #@1c
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@27
    move-result v0

    #@28
    iput v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchSlop:I

    #@2a
    .line 325
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 364
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@5
    move-result v0

    #@6
    .line 365
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@9
    move-result v1

    #@a
    .line 366
    .local v1, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    #@d
    move-result v2

    #@e
    and-int/lit16 v2, v2, 0xff

    #@10
    packed-switch v2, :pswitch_data_0

    #@13
    .line 388
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    #@15
    return v2

    #@16
    .line 368
    :pswitch_0
    iput-boolean v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    #@18
    .line 369
    invoke-direct {p0, v0, v1}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->isInside(FF)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 370
    iput-boolean v3, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    #@20
    .line 371
    return v3

    #@21
    .line 375
    :pswitch_1
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    #@23
    if-eqz v2, :cond_0

    #@25
    .line 376
    iget v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownX:F

    #@27
    sub-float/2addr v2, v0

    #@28
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@2b
    move-result v2

    #@2c
    iget v3, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchSlop:I

    #@2e
    int-to-float v3, v3

    #@2f
    cmpl-float v2, v2, v3

    #@31
    if-gtz v2, :cond_1

    #@33
    .line 377
    iget v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownY:F

    #@35
    sub-float/2addr v2, v1

    #@36
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@39
    move-result v2

    #@3a
    iget v3, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchSlop:I

    #@3c
    int-to-float v3, v3

    #@3d
    cmpl-float v2, v2, v3

    #@3f
    if-lez v2, :cond_0

    #@41
    .line 378
    :cond_1
    iput-boolean v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    #@43
    goto :goto_0

    #@44
    .line 383
    :pswitch_2
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    #@46
    if-eqz v2, :cond_0

    #@48
    .line 384
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    #@4a
    invoke-static {v2}, Landroid/view/NotificationHeaderView;->-get2(Landroid/view/NotificationHeaderView;)Landroid/view/View$OnClickListener;

    #@4d
    move-result-object v2

    #@4e
    iget-object v3, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    #@50
    invoke-interface {v2, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    #@53
    goto :goto_0

    #@54
    .line 366
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
