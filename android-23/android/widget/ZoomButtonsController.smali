.class public Landroid/widget/ZoomButtonsController;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ZoomButtonsController$OnZoomListener;,
        Landroid/widget/ZoomButtonsController$Container;,
        Landroid/widget/ZoomButtonsController$1;,
        Landroid/widget/ZoomButtonsController$2;
    }
.end annotation


# static fields
.field private static final MSG_DISMISS_ZOOM_CONTROLS:I = 0x3

.field private static final MSG_POST_CONFIGURATION_CHANGED:I = 0x2

.field private static final MSG_POST_SET_VISIBLE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ZoomButtonsController"

.field private static final ZOOM_CONTROLS_TIMEOUT:I

.field private static final ZOOM_CONTROLS_TOUCH_PADDING:I = 0x14


# instance fields
.field private mAutoDismissControls:Z

.field private mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

.field private final mConfigurationChangedFilter:Landroid/content/IntentFilter;

.field private final mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContainer:Landroid/widget/FrameLayout;

.field private mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mContainerRawLocation:[I

.field private final mContext:Landroid/content/Context;

.field private mControls:Landroid/widget/ZoomControls;

.field private final mHandler:Landroid/os/Handler;

.field private mIsVisible:Z

.field private final mOwnerView:Landroid/view/View;

.field private final mOwnerViewRawLocation:[I

.field private mPostedVisibleInitializer:Ljava/lang/Runnable;

.field private mReleaseTouchListenerOnUp:Z

.field private final mTempIntArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchPaddingScaledSq:I

.field private mTouchTargetView:Landroid/view/View;

.field private final mTouchTargetWindowLocation:[I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()I
    .locals 1

    #@0
    sget v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/ZoomButtonsController;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/ZoomButtonsController;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/widget/ZoomButtonsController;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/ZoomButtonsController;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ZoomButtonsController;->onContainerKey(Landroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/ZoomButtonsController;I)V
    .locals 0
    .param p1, "delay"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/ZoomButtonsController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->onPostConfigurationChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/ZoomButtonsController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->refreshPositioningVariables()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 78
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    #@3
    move-result-wide v0

    #@4
    long-to-int v0, v0

    #@5
    .line 77
    sput v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    #@7
    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "ownerView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 85
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    #@7
    .line 96
    new-array v0, v1, [I

    #@9
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    #@b
    .line 103
    new-array v0, v1, [I

    #@d
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    #@f
    .line 115
    new-array v0, v1, [I

    #@11
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    #@13
    .line 130
    new-instance v0, Landroid/graphics/Rect;

    #@15
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@18
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mTempRect:Landroid/graphics/Rect;

    #@1a
    .line 131
    new-array v0, v1, [I

    #@1c
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mTempIntArray:[I

    #@1e
    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    #@20
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    #@23
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@26
    .line 143
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    #@28
    .line 149
    new-instance v0, Landroid/widget/ZoomButtonsController$1;

    #@2a
    invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController$1;-><init>(Landroid/widget/ZoomButtonsController;)V

    #@2d
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    #@2f
    .line 169
    new-instance v0, Landroid/widget/ZoomButtonsController$2;

    #@31
    invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController$2;-><init>(Landroid/widget/ZoomButtonsController;)V

    #@34
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    #@36
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    #@3c
    .line 204
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    #@3e
    const-string/jumbo v1, "window"

    #@41
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/view/WindowManager;

    #@47
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    #@49
    .line 205
    iput-object p1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    #@4b
    .line 208
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    #@4d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@54
    move-result-object v0

    #@55
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@57
    const/high16 v1, 0x41a00000    # 20.0f

    #@59
    mul-float/2addr v0, v1

    #@5a
    .line 207
    float-to-int v0, v0

    #@5b
    iput v0, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    #@5d
    .line 209
    iget v0, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    #@5f
    iget v1, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    #@61
    mul-int/2addr v0, v1

    #@62
    iput v0, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    #@64
    .line 211
    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->createContainer()Landroid/widget/FrameLayout;

    #@67
    move-result-object v0

    #@68
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    #@6a
    .line 202
    return-void
.end method

.method private createContainer()Landroid/widget/FrameLayout;
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x2

    #@1
    .line 242
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    #@3
    invoke-direct {v2, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    #@6
    .line 244
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const v3, 0x800033

    #@9
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@b
    .line 245
    const v3, 0x20218

    #@e
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@10
    .line 249
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    #@12
    .line 250
    const/4 v3, -0x1

    #@13
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@15
    .line 251
    const/16 v3, 0x3e8

    #@17
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@19
    .line 252
    const/4 v3, -0x3

    #@1a
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    #@1c
    .line 253
    const v3, 0x10302e9

    #@1f
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@21
    .line 254
    iput-object v2, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@23
    .line 256
    new-instance v0, Landroid/widget/ZoomButtonsController$Container;

    #@25
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    #@27
    invoke-direct {v0, p0, v3}, Landroid/widget/ZoomButtonsController$Container;-><init>(Landroid/widget/ZoomButtonsController;Landroid/content/Context;)V

    #@2a
    .line 257
    .local v0, "container":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@2d
    .line 258
    const/4 v3, 0x1

    #@2e
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    #@31
    .line 260
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    #@33
    .line 261
    const-string/jumbo v4, "layout_inflater"

    #@36
    .line 260
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Landroid/view/LayoutInflater;

    #@3c
    .line 262
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x1090103

    #@3f
    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@42
    .line 264
    const v3, 0x102040d

    #@45
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    #@48
    move-result-object v3

    #@49
    check-cast v3, Landroid/widget/ZoomControls;

    #@4b
    iput-object v3, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    #@4d
    .line 265
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    #@4f
    new-instance v4, Landroid/widget/ZoomButtonsController$3;

    #@51
    invoke-direct {v4, p0}, Landroid/widget/ZoomButtonsController$3;-><init>(Landroid/widget/ZoomButtonsController;)V

    #@54
    invoke-virtual {v3, v4}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    #@57
    .line 271
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    #@59
    new-instance v4, Landroid/widget/ZoomButtonsController$4;

    #@5b
    invoke-direct {v4, p0}, Landroid/widget/ZoomButtonsController$4;-><init>(Landroid/widget/ZoomButtonsController;)V

    #@5e
    invoke-virtual {v3, v4}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    #@61
    .line 278
    return-object v0
.end method

.method private dismissControlsDelayed(I)V
    .locals 4
    .param p1, "delay"    # I

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 439
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 440
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@a
    .line 441
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    #@c
    int-to-long v2, p1

    #@d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@10
    .line 438
    :cond_0
    return-void
.end method

.method private findViewForTouch(II)Landroid/view/View;
    .locals 12
    .param p1, "rawX"    # I
    .param p2, "rawY"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 614
    iget-object v10, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    #@3
    aget v10, v10, v11

    #@5
    sub-int v3, p1, v10

    #@7
    .line 615
    .local v3, "containerCoordsX":I
    iget-object v10, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    #@9
    const/4 v11, 0x1

    #@a
    aget v10, v10, v11

    #@c
    sub-int v4, p2, v10

    #@e
    .line 616
    .local v4, "containerCoordsY":I
    iget-object v8, p0, Landroid/widget/ZoomButtonsController;->mTempRect:Landroid/graphics/Rect;

    #@10
    .line 618
    .local v8, "frame":Landroid/graphics/Rect;
    const/4 v1, 0x0

    #@11
    .line 619
    .local v1, "closestChild":Landroid/view/View;
    const v2, 0x7fffffff

    #@14
    .line 621
    .local v2, "closestChildDistanceSq":I
    iget-object v10, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    #@16
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getChildCount()I

    #@19
    move-result v10

    #@1a
    add-int/lit8 v9, v10, -0x1

    #@1c
    .end local v1    # "closestChild":Landroid/view/View;
    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_5

    #@1e
    .line 622
    iget-object v10, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    #@20
    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    #@23
    move-result-object v0

    #@24
    .line 623
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@27
    move-result v10

    #@28
    if-eqz v10, :cond_1

    #@2a
    .line 621
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 627
    :cond_1
    invoke-virtual {v0, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@30
    .line 628
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    #@33
    move-result v10

    #@34
    if-eqz v10, :cond_2

    #@36
    .line 629
    return-object v0

    #@37
    .line 633
    :cond_2
    iget v10, v8, Landroid/graphics/Rect;->left:I

    #@39
    if-lt v3, v10, :cond_3

    #@3b
    iget v10, v8, Landroid/graphics/Rect;->right:I

    #@3d
    if-gt v3, v10, :cond_3

    #@3f
    .line 634
    const/4 v6, 0x0

    #@40
    .line 640
    .local v6, "distanceX":I
    :goto_2
    iget v10, v8, Landroid/graphics/Rect;->top:I

    #@42
    if-lt v4, v10, :cond_4

    #@44
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    #@46
    if-gt v4, v10, :cond_4

    #@48
    .line 641
    const/4 v7, 0x0

    #@49
    .line 646
    .local v7, "distanceY":I
    :goto_3
    mul-int v10, v6, v6

    #@4b
    mul-int v11, v7, v7

    #@4d
    add-int v5, v10, v11

    #@4f
    .line 648
    .local v5, "distanceSq":I
    iget v10, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    #@51
    if-ge v5, v10, :cond_0

    #@53
    .line 649
    if-ge v5, v2, :cond_0

    #@55
    .line 650
    move-object v1, v0

    #@56
    .line 651
    .local v1, "closestChild":Landroid/view/View;
    move v2, v5

    #@57
    goto :goto_1

    #@58
    .line 636
    .end local v1    # "closestChild":Landroid/view/View;
    .end local v5    # "distanceSq":I
    .end local v6    # "distanceX":I
    .end local v7    # "distanceY":I
    :cond_3
    iget v10, v8, Landroid/graphics/Rect;->left:I

    #@5a
    sub-int/2addr v10, v3

    #@5b
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    #@5e
    move-result v10

    #@5f
    .line 637
    iget v11, v8, Landroid/graphics/Rect;->right:I

    #@61
    sub-int v11, v3, v11

    #@63
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    #@66
    move-result v11

    #@67
    .line 636
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@6a
    move-result v6

    #@6b
    .restart local v6    # "distanceX":I
    goto :goto_2

    #@6c
    .line 643
    :cond_4
    iget v10, v8, Landroid/graphics/Rect;->top:I

    #@6e
    sub-int/2addr v10, v4

    #@6f
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    #@72
    move-result v10

    #@73
    .line 644
    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    #@75
    sub-int v11, v4, v11

    #@77
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    #@7a
    move-result v11

    #@7b
    .line 643
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@7e
    move-result v7

    #@7f
    .restart local v7    # "distanceY":I
    goto :goto_3

    #@80
    .line 655
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "distanceX":I
    .end local v7    # "distanceY":I
    :cond_5
    return-object v1
.end method

.method private isInterestingKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    #@0
    .prologue
    .line 514
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 524
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 522
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 514
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private onContainerKey(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 475
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@5
    move-result v1

    #@6
    .line 476
    .local v1, "keyCode":I
    invoke-direct {p0, v1}, Landroid/widget/ZoomButtonsController;->isInterestingKey(I)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_5

    #@c
    .line 478
    const/4 v3, 0x4

    #@d
    if-ne v1, v3, :cond_4

    #@f
    .line 479
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_1

    #@15
    .line 480
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_1

    #@1b
    .line 481
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 482
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    #@21
    invoke-virtual {v3}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@24
    move-result-object v0

    #@25
    .line 483
    .local v0, "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    #@27
    .line 484
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@2a
    .line 487
    .end local v0    # "ds":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    return v5

    #@2b
    .line 488
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@2e
    move-result v3

    #@2f
    if-ne v3, v5, :cond_2

    #@31
    .line 489
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    #@34
    move-result v3

    #@35
    .line 488
    if-eqz v3, :cond_2

    #@37
    .line 489
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_3

    #@3d
    .line 499
    :cond_2
    :goto_0
    return v4

    #@3e
    .line 490
    :cond_3
    invoke-virtual {p0, v4}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    #@41
    .line 491
    return v5

    #@42
    .line 495
    :cond_4
    sget v3, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    #@44
    invoke-direct {p0, v3}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    #@47
    goto :goto_0

    #@48
    .line 503
    :cond_5
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    #@4a
    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@4d
    move-result-object v2

    #@4e
    .line 504
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_6

    #@50
    .line 505
    invoke-virtual {v2, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    #@53
    .line 509
    :cond_6
    return v5
.end method

.method private onPostConfigurationChanged()V
    .locals 1

    #@0
    .prologue
    .line 659
    sget v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    #@2
    invoke-direct {p0, v0}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    #@5
    .line 660
    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->refreshPositioningVariables()V

    #@8
    .line 658
    return-void
.end method

.method private refreshPositioningVariables()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 447
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    #@4
    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@7
    move-result-object v4

    #@8
    if-nez v4, :cond_0

    #@a
    return-void

    #@b
    .line 450
    :cond_0
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    #@d
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    #@10
    move-result v1

    #@11
    .line 451
    .local v1, "ownerHeight":I
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    #@13
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    #@16
    move-result v3

    #@17
    .line 453
    .local v3, "ownerWidth":I
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    #@19
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    #@1c
    move-result v4

    #@1d
    sub-int v0, v1, v4

    #@1f
    .line 456
    .local v0, "containerOwnerYOffset":I
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    #@21
    iget-object v5, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    #@23
    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    #@26
    .line 457
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    #@28
    iget-object v5, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    #@2a
    aget v5, v5, v6

    #@2c
    aput v5, v4, v6

    #@2e
    .line 458
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    #@30
    iget-object v5, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    #@32
    aget v5, v5, v7

    #@34
    add-int/2addr v5, v0

    #@35
    aput v5, v4, v7

    #@37
    .line 460
    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mTempIntArray:[I

    #@39
    .line 461
    .local v2, "ownerViewWindowLoc":[I
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    #@3b
    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationInWindow([I)V

    #@3e
    .line 464
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@40
    aget v5, v2, v6

    #@42
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    #@44
    .line 465
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@46
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    #@48
    .line 466
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@4a
    aget v5, v2, v7

    #@4c
    add-int/2addr v5, v0

    #@4d
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    #@4f
    .line 467
    iget-boolean v4, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    #@51
    if-eqz v4, :cond_1

    #@53
    .line 468
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    #@55
    iget-object v5, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    #@57
    iget-object v6, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@59
    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@5c
    .line 445
    :cond_1
    return-void
.end method

.method private setTouchTargetView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 599
    iput-object p1, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;

    #@2
    .line 600
    if-eqz p1, :cond_0

    #@4
    .line 601
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    #@6
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    #@9
    .line 598
    :cond_0
    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    #@0
    .prologue
    .line 426
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    #@2
    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 435
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    #@2
    return-object v0
.end method

.method public isAutoDismissed()Z
    .locals 1

    #@0
    .prologue
    .line 316
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    #@2
    return v0
.end method

.method public isVisible()Z
    .locals 1

    #@0
    .prologue
    .line 334
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    #@2
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 533
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    .line 535
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    #@7
    move-result v8

    #@8
    const/4 v9, 0x1

    #@9
    if-le v8, v9, :cond_0

    #@b
    .line 537
    const/4 v8, 0x0

    #@c
    return v8

    #@d
    .line 540
    :cond_0
    iget-boolean v8, p0, Landroid/widget/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    #@f
    if-eqz v8, :cond_3

    #@11
    .line 542
    const/4 v8, 0x1

    #@12
    if-eq v0, v8, :cond_1

    #@14
    const/4 v8, 0x3

    #@15
    if-ne v0, v8, :cond_2

    #@17
    .line 543
    :cond_1
    iget-object v8, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    #@19
    const/4 v9, 0x0

    #@1a
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@1d
    .line 544
    const/4 v8, 0x0

    #@1e
    invoke-direct {p0, v8}, Landroid/widget/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V

    #@21
    .line 545
    const/4 v8, 0x0

    #@22
    iput-boolean v8, p0, Landroid/widget/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    #@24
    .line 549
    :cond_2
    const/4 v8, 0x1

    #@25
    return v8

    #@26
    .line 552
    :cond_3
    sget v8, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    #@28
    invoke-direct {p0, v8}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    #@2b
    .line 554
    iget-object v5, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;

    #@2d
    .line 556
    .local v5, "targetView":Landroid/view/View;
    packed-switch v0, :pswitch_data_0

    #@30
    .line 568
    :goto_0
    :pswitch_0
    if-eqz v5, :cond_6

    #@32
    .line 570
    iget-object v8, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    #@34
    const/4 v9, 0x0

    #@35
    aget v8, v8, v9

    #@37
    iget-object v9, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    #@39
    const/4 v10, 0x0

    #@3a
    aget v9, v9, v10

    #@3c
    add-int v6, v8, v9

    #@3e
    .line 571
    .local v6, "targetViewRawX":I
    iget-object v8, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    #@40
    const/4 v9, 0x1

    #@41
    aget v8, v8, v9

    #@43
    iget-object v9, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    #@45
    const/4 v10, 0x1

    #@46
    aget v9, v9, v10

    #@48
    add-int v7, v8, v9

    #@4a
    .line 573
    .local v7, "targetViewRawY":I
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@4d
    move-result-object v1

    #@4e
    .line 576
    .local v1, "containerEvent":Landroid/view/MotionEvent;
    iget-object v8, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    #@50
    const/4 v9, 0x0

    #@51
    aget v8, v8, v9

    #@53
    sub-int/2addr v8, v6

    #@54
    int-to-float v8, v8

    #@55
    .line 577
    iget-object v9, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    #@57
    const/4 v10, 0x1

    #@58
    aget v9, v9, v10

    #@5a
    sub-int/2addr v9, v7

    #@5b
    int-to-float v9, v9

    #@5c
    .line 576
    invoke-virtual {v1, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@5f
    .line 581
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    #@62
    move-result v2

    #@63
    .line 582
    .local v2, "containerX":F
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    #@66
    move-result v3

    #@67
    .line 583
    .local v3, "containerY":F
    const/4 v8, 0x0

    #@68
    cmpg-float v8, v2, v8

    #@6a
    if-gez v8, :cond_4

    #@6c
    const/high16 v8, -0x3e600000    # -20.0f

    #@6e
    cmpl-float v8, v2, v8

    #@70
    if-lez v8, :cond_4

    #@72
    .line 584
    neg-float v8, v2

    #@73
    const/4 v9, 0x0

    #@74
    invoke-virtual {v1, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@77
    .line 586
    :cond_4
    const/4 v8, 0x0

    #@78
    cmpg-float v8, v3, v8

    #@7a
    if-gez v8, :cond_5

    #@7c
    const/high16 v8, -0x3e600000    # -20.0f

    #@7e
    cmpl-float v8, v3, v8

    #@80
    if-lez v8, :cond_5

    #@82
    .line 587
    const/4 v8, 0x0

    #@83
    neg-float v9, v3

    #@84
    invoke-virtual {v1, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@87
    .line 589
    :cond_5
    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@8a
    move-result v4

    #@8b
    .line 590
    .local v4, "retValue":Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    #@8e
    .line 591
    return v4

    #@8f
    .line 558
    .end local v1    # "containerEvent":Landroid/view/MotionEvent;
    .end local v2    # "containerX":F
    .end local v3    # "containerY":F
    .end local v4    # "retValue":Z
    .end local v6    # "targetViewRawX":I
    .end local v7    # "targetViewRawY":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    #@92
    move-result v8

    #@93
    float-to-int v8, v8

    #@94
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    #@97
    move-result v9

    #@98
    float-to-int v9, v9

    #@99
    invoke-direct {p0, v8, v9}, Landroid/widget/ZoomButtonsController;->findViewForTouch(II)Landroid/view/View;

    #@9c
    move-result-object v5

    #@9d
    .line 559
    invoke-direct {p0, v5}, Landroid/widget/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V

    #@a0
    goto :goto_0

    #@a1
    .line 564
    :pswitch_2
    const/4 v8, 0x0

    #@a2
    invoke-direct {p0, v8}, Landroid/widget/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V

    #@a5
    goto :goto_0

    #@a6
    .line 594
    :cond_6
    const/4 v8, 0x0

    #@a7
    return v8

    #@a8
    .line 556
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAutoDismissed(Z)V
    .locals 1
    .param p1, "autoDismiss"    # Z

    #@0
    .prologue
    .line 324
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    return-void

    #@5
    .line 325
    :cond_0
    iput-boolean p1, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    #@7
    .line 323
    return-void
.end method

.method public setFocusable(Z)V
    .locals 4
    .param p1, "focusable"    # Z

    #@0
    .prologue
    .line 298
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@2
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@4
    .line 299
    .local v0, "oldFlags":I
    if-eqz p1, :cond_1

    #@6
    .line 300
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@8
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@a
    and-int/lit8 v2, v2, -0x9

    #@c
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@e
    .line 305
    :goto_0
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@10
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@12
    if-eq v1, v0, :cond_0

    #@14
    iget-boolean v1, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 306
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    #@1a
    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    #@1c
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@1e
    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@21
    .line 297
    :cond_0
    return-void

    #@22
    .line 302
    :cond_1
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@24
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@26
    or-int/lit8 v2, v2, 0x8

    #@28
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2a
    goto :goto_0
.end method

.method public setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ZoomButtonsController$OnZoomListener;

    #@0
    .prologue
    .line 287
    iput-object p1, p0, Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

    #@2
    .line 286
    return-void
.end method

.method public setVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    #@0
    .prologue
    const/4 v2, 0x4

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 344
    if-eqz p1, :cond_2

    #@5
    .line 345
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    #@7
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 351
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    #@f
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_0

    #@15
    .line 352
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@1a
    .line 354
    :cond_0
    return-void

    #@1b
    .line 357
    :cond_1
    sget v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    #@1d
    invoke-direct {p0, v0}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    #@20
    .line 360
    :cond_2
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    #@22
    if-ne v0, p1, :cond_3

    #@24
    .line 361
    return-void

    #@25
    .line 363
    :cond_3
    iput-boolean p1, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    #@27
    .line 365
    if-eqz p1, :cond_7

    #@29
    .line 366
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@2b
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@2d
    if-nez v0, :cond_4

    #@2f
    .line 367
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@31
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    #@33
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@36
    move-result-object v1

    #@37
    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@39
    .line 370
    :cond_4
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    #@3b
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    #@3d
    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@3f
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@42
    .line 372
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    #@44
    if-nez v0, :cond_5

    #@46
    .line 373
    new-instance v0, Landroid/widget/ZoomButtonsController$5;

    #@48
    invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController$5;-><init>(Landroid/widget/ZoomButtonsController;)V

    #@4b
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    #@4d
    .line 384
    :cond_5
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    #@4f
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    #@51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@54
    .line 387
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    #@56
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    #@58
    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    #@5a
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@5d
    .line 390
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    #@5f
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@62
    .line 391
    iput-boolean v3, p0, Landroid/widget/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    #@64
    .line 342
    :cond_6
    :goto_0
    return-void

    #@65
    .line 395
    :cond_7
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;

    #@67
    if-eqz v0, :cond_8

    #@69
    .line 398
    const/4 v0, 0x1

    #@6a
    iput-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    #@6c
    .line 404
    :goto_1
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    #@6e
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    #@70
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@73
    .line 406
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    #@75
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    #@77
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@7a
    .line 407
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    #@7c
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    #@7e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@81
    .line 409
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

    #@83
    if-eqz v0, :cond_6

    #@85
    .line 410
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

    #@87
    invoke-interface {v0, v3}, Landroid/widget/ZoomButtonsController$OnZoomListener;->onVisibilityChanged(Z)V

    #@8a
    goto :goto_0

    #@8b
    .line 400
    :cond_8
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    #@8d
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@90
    goto :goto_1
.end method

.method public setZoomInEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    #@5
    .line 219
    return-void
.end method

.method public setZoomOutEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    #@5
    .line 228
    return-void
.end method

.method public setZoomSpeed(J)V
    .locals 1
    .param p1, "speed"    # J

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomControls;->setZoomSpeed(J)V

    #@5
    .line 237
    return-void
.end method
