.class public Landroid/widget/ZoomButtonsController;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ZoomButtonsController$Container;,
        Landroid/widget/ZoomButtonsController$OnZoomListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o MSG_DISMISS_ZOOM_CONTROLS:I = 0x3

.field private static final greylist-max-o MSG_POST_CONFIGURATION_CHANGED:I = 0x2

.field private static final greylist-max-o MSG_POST_SET_VISIBLE:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ZoomButtonsController"

.field private static final greylist-max-o ZOOM_CONTROLS_TIMEOUT:I

.field private static final greylist-max-o ZOOM_CONTROLS_TOUCH_PADDING:I = 0x14


# instance fields
.field private greylist-max-o mAutoDismissControls:Z

.field private greylist-max-o mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

.field private final greylist-max-o mConfigurationChangedFilter:Landroid/content/IntentFilter;

.field private final greylist-max-o mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final greylist-max-o mContainer:Landroid/widget/FrameLayout;

.field private greylist-max-o mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final greylist-max-o mContainerRawLocation:[I

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mControls:Landroid/widget/ZoomControls;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mIsVisible:Z

.field private final greylist-max-o mOwnerView:Landroid/view/View;

.field private final greylist-max-o mOwnerViewRawLocation:[I

.field private greylist-max-o mPostedVisibleInitializer:Ljava/lang/Runnable;

.field private greylist-max-o mReleaseTouchListenerOnUp:Z

.field private final greylist-max-o mTempIntArray:[I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTouchPaddingScaledSq:I

.field private greylist-max-o mTouchTargetView:Landroid/view/View;

.field private final greylist-max-o mTouchTargetWindowLocation:[I

.field private final greylist-max-o mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/widget/ZoomButtonsController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVisible(Landroid/widget/ZoomButtonsController;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOwnerView(Landroid/widget/ZoomButtonsController;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdismissControlsDelayed(Landroid/widget/ZoomButtonsController;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monContainerKey(Landroid/widget/ZoomButtonsController;Landroid/view/KeyEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ZoomButtonsController;->onContainerKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monPostConfigurationChanged(Landroid/widget/ZoomButtonsController;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->onPostConfigurationChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrefreshPositioningVariables(Landroid/widget/ZoomButtonsController;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->refreshPositioningVariables()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetZOOM_CONTROLS_TIMEOUT()I
    .registers 1

    sget v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 81
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    .line 80
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "ownerView"    # Landroid/view/View;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    .line 99
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    .line 106
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    .line 118
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    .line 133
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ZoomButtonsController;->mTempRect:Landroid/graphics/Rect;

    .line 134
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mTempIntArray:[I

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    .line 152
    new-instance v0, Landroid/widget/ZoomButtonsController$1;

    invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController$1;-><init>(Landroid/widget/ZoomButtonsController;)V

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    new-instance v0, Landroid/widget/ZoomButtonsController$2;

    invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController$2;-><init>(Landroid/widget/ZoomButtonsController;)V

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    .line 207
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    .line 208
    iput-object p1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    .line 210
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    .line 212
    iget v0, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    iget v1, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    .line 214
    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->createContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    .line 215
    return-void
.end method

.method private greylist-max-o createContainer()Landroid/widget/FrameLayout;
    .registers 6

    .line 245
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 247
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x800033

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 248
    const v2, 0x20218

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 252
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 253
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 254
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 255
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 256
    const v1, 0x103031f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 257
    iput-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 259
    new-instance v1, Landroid/widget/ZoomButtonsController$Container;

    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Landroid/widget/ZoomButtonsController$Container;-><init>(Landroid/widget/ZoomButtonsController;Landroid/content/Context;)V

    .line 260
    .local v1, "container":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    .line 263
    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    .line 264
    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 265
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x1090185

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 267
    const v3, 0x102060c

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ZoomControls;

    iput-object v3, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    .line 268
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    new-instance v4, Landroid/widget/ZoomButtonsController$3;

    invoke-direct {v4, p0}, Landroid/widget/ZoomButtonsController$3;-><init>(Landroid/widget/ZoomButtonsController;)V

    invoke-virtual {v3, v4}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    new-instance v4, Landroid/widget/ZoomButtonsController$4;

    invoke-direct {v4, p0}, Landroid/widget/ZoomButtonsController$4;-><init>(Landroid/widget/ZoomButtonsController;)V

    invoke-virtual {v3, v4}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    return-object v1
.end method

.method private greylist-max-o dismissControlsDelayed(I)V
    .registers 6
    .param p1, "delay"    # I

    .line 442
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    if-eqz v0, :cond_10

    .line 443
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 446
    :cond_10
    return-void
.end method

.method private greylist-max-o findViewForTouch(II)Landroid/view/View;
    .registers 14
    .param p1, "rawX"    # I
    .param p2, "rawY"    # I

    .line 617
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int v0, p1, v0

    .line 618
    .local v0, "containerCoordsX":I
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int v1, p2, v1

    .line 619
    .local v1, "containerCoordsY":I
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mTempRect:Landroid/graphics/Rect;

    .line 621
    .local v3, "frame":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 622
    .local v4, "closestChild":Landroid/view/View;
    const v5, 0x7fffffff

    .line 624
    .local v5, "closestChildDistanceSq":I
    iget-object v6, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v2

    .local v6, "i":I
    :goto_1b
    if-ltz v6, :cond_7e

    .line 625
    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 626
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_2a

    .line 627
    goto :goto_7b

    .line 630
    :cond_2a
    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 631
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 632
    return-object v2

    .line 636
    :cond_34
    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-lt v0, v7, :cond_3e

    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-gt v0, v7, :cond_3e

    .line 637
    const/4 v7, 0x0

    .local v7, "distanceX":I
    goto :goto_51

    .line 639
    .end local v7    # "distanceX":I
    :cond_3e
    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int v8, v0, v8

    .line 640
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 639
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 643
    .restart local v7    # "distanceX":I
    :goto_51
    iget v8, v3, Landroid/graphics/Rect;->top:I

    if-lt v1, v8, :cond_5b

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v8, :cond_5b

    .line 644
    const/4 v8, 0x0

    .local v8, "distanceY":I
    goto :goto_6e

    .line 646
    .end local v8    # "distanceY":I
    :cond_5b
    iget v8, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v1, v9

    .line 647
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 646
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 649
    .restart local v8    # "distanceY":I
    :goto_6e
    mul-int v9, v7, v7

    mul-int v10, v8, v8

    add-int/2addr v9, v10

    .line 651
    .local v9, "distanceSq":I
    iget v10, p0, Landroid/widget/ZoomButtonsController;->mTouchPaddingScaledSq:I

    if-ge v9, v10, :cond_7b

    if-ge v9, v5, :cond_7b

    .line 653
    move-object v4, v2

    .line 654
    move v5, v9

    .line 624
    .end local v2    # "child":Landroid/view/View;
    .end local v7    # "distanceX":I
    .end local v8    # "distanceY":I
    .end local v9    # "distanceSq":I
    :cond_7b
    :goto_7b
    add-int/lit8 v6, v6, -0x1

    goto :goto_1b

    .line 658
    .end local v6    # "i":I
    :cond_7e
    return-object v4
.end method

.method private greylist-max-o isInterestingKey(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .line 517
    sparse-switch p1, :sswitch_data_8

    .line 527
    const/4 v0, 0x0

    return v0

    .line 525
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x4 -> :sswitch_5
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x15 -> :sswitch_5
        0x16 -> :sswitch_5
        0x17 -> :sswitch_5
        0x42 -> :sswitch_5
    .end sparse-switch
.end method

.method private greylist-max-o onContainerKey(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 478
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 479
    .local v0, "keyCode":I
    invoke-direct {p0, v0}, Landroid/widget/ZoomButtonsController;->isInterestingKey(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_47

    .line 481
    const/4 v1, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_41

    .line 482
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2b

    .line 483
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2b

    .line 484
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    if-eqz v1, :cond_2a

    .line 485
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 486
    .local v1, "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2a

    .line 487
    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 490
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    :cond_2a
    return v2

    .line 491
    :cond_2b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_46

    .line 492
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_46

    .line 493
    invoke-virtual {p0, v3}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 494
    return v2

    .line 498
    :cond_41
    sget v1, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    invoke-direct {p0, v1}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    .line 502
    :cond_46
    return v3

    .line 506
    :cond_47
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 507
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_52

    .line 508
    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 512
    :cond_52
    return v2
.end method

.method private greylist-max-o onPostConfigurationChanged()V
    .registers 2

    .line 662
    sget v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    invoke-direct {p0, v0}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    .line 663
    invoke-direct {p0}, Landroid/widget/ZoomButtonsController;->refreshPositioningVariables()V

    .line 664
    return-void
.end method

.method private greylist-max-o refreshPositioningVariables()V
    .registers 8

    .line 450
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 453
    :cond_9
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 454
    .local v0, "ownerHeight":I
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 456
    .local v1, "ownerWidth":I
    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    .line 459
    .local v2, "containerOwnerYOffset":I
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 460
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v3, v5

    .line 461
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    add-int/2addr v4, v2

    aput v4, v3, v6

    .line 463
    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mTempIntArray:[I

    .line 464
    .local v3, "ownerViewWindowLoc":[I
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 467
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    aget v5, v3, v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 468
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 469
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    aget v5, v3, v6

    add-int/2addr v5, v2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 470
    iget-boolean v4, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    if-eqz v4, :cond_5c

    .line 471
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    :cond_5c
    return-void
.end method

.method private greylist-max-o setTouchTargetView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 602
    iput-object p1, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;

    .line 603
    if-eqz p1, :cond_9

    .line 604
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 606
    :cond_9
    return-void
.end method


# virtual methods
.method public whitelist getContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 429
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public whitelist getZoomControls()Landroid/view/View;
    .registers 2

    .line 438
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method public whitelist isAutoDismissed()Z
    .registers 2

    .line 319
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    return v0
.end method

.method public whitelist isVisible()Z
    .registers 2

    .line 337
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    return v0
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 536
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 538
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_d

    .line 540
    return v2

    .line 543
    :cond_d
    iget-boolean v1, p0, Landroid/widget/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_22

    .line 545
    if-eq v0, v3, :cond_17

    const/4 v1, 0x3

    if-ne v0, v1, :cond_21

    .line 546
    :cond_17
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 547
    invoke-direct {p0, v4}, Landroid/widget/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V

    .line 548
    iput-boolean v2, p0, Landroid/widget/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    .line 552
    :cond_21
    return v3

    .line 555
    :cond_22
    sget v1, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    invoke-direct {p0, v1}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    .line 557
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;

    .line 559
    .local v1, "targetView":Landroid/view/View;
    packed-switch v0, :pswitch_data_96

    :pswitch_2c
    goto :goto_43

    .line 567
    :pswitch_2d
    invoke-direct {p0, v4}, Landroid/widget/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V

    goto :goto_43

    .line 561
    :pswitch_31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Landroid/widget/ZoomButtonsController;->findViewForTouch(II)Landroid/view/View;

    move-result-object v1

    .line 562
    invoke-direct {p0, v1}, Landroid/widget/ZoomButtonsController;->setTouchTargetView(Landroid/view/View;)V

    .line 563
    nop

    .line 571
    :goto_43
    if-eqz v1, :cond_95

    .line 573
    iget-object v4, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    aget v4, v4, v2

    iget-object v5, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    aget v5, v5, v2

    add-int/2addr v4, v5

    .line 574
    .local v4, "targetViewRawX":I
    iget-object v5, p0, Landroid/widget/ZoomButtonsController;->mContainerRawLocation:[I

    aget v5, v5, v3

    iget-object v6, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetWindowLocation:[I

    aget v6, v6, v3

    add-int/2addr v5, v6

    .line 576
    .local v5, "targetViewRawY":I
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 579
    .local v6, "containerEvent":Landroid/view/MotionEvent;
    iget-object v7, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    aget v2, v7, v2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v7, p0, Landroid/widget/ZoomButtonsController;->mOwnerViewRawLocation:[I

    aget v3, v7, v3

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v6, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 584
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 585
    .local v2, "containerX":F
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 586
    .local v3, "containerY":F
    const/4 v7, 0x0

    cmpg-float v8, v2, v7

    const/high16 v9, -0x3e600000    # -20.0f

    if-gez v8, :cond_81

    cmpl-float v8, v2, v9

    if-lez v8, :cond_81

    .line 587
    neg-float v8, v2

    invoke-virtual {v6, v8, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 589
    :cond_81
    cmpg-float v8, v3, v7

    if-gez v8, :cond_8d

    cmpl-float v8, v3, v9

    if-lez v8, :cond_8d

    .line 590
    neg-float v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 592
    :cond_8d
    invoke-virtual {v1, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 593
    .local v7, "retValue":Z
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 594
    return v7

    .line 597
    .end local v2    # "containerX":F
    .end local v3    # "containerY":F
    .end local v4    # "targetViewRawX":I
    .end local v5    # "targetViewRawY":I
    .end local v6    # "containerEvent":Landroid/view/MotionEvent;
    .end local v7    # "retValue":Z
    :cond_95
    return v2

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2d
        :pswitch_2c
        :pswitch_2d
    .end packed-switch
.end method

.method public whitelist setAutoDismissed(Z)V
    .registers 3
    .param p1, "autoDismiss"    # Z

    .line 327
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 328
    :cond_5
    iput-boolean p1, p0, Landroid/widget/ZoomButtonsController;->mAutoDismissControls:Z

    .line 329
    return-void
.end method

.method public whitelist setFocusable(Z)V
    .registers 6
    .param p1, "focusable"    # Z

    .line 301
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 302
    .local v0, "oldFlags":I
    if-eqz p1, :cond_f

    .line 303
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_17

    .line 305
    :cond_f
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 308
    :goto_17
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v0, :cond_2a

    iget-boolean v1, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    if-eqz v1, :cond_2a

    .line 309
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    :cond_2a
    return-void
.end method

.method public whitelist setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/ZoomButtonsController$OnZoomListener;

    .line 290
    iput-object p1, p0, Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

    .line 291
    return-void
.end method

.method public whitelist setVisible(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .line 347
    if-eqz p1, :cond_1e

    .line 348
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_19

    .line 354
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 355
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 357
    :cond_18
    return-void

    .line 360
    :cond_19
    sget v0, Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I

    invoke-direct {p0, v0}, Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V

    .line 363
    :cond_1e
    iget-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    if-ne v0, p1, :cond_23

    .line 364
    return-void

    .line 366
    :cond_23
    iput-boolean p1, p0, Landroid/widget/ZoomButtonsController;->mIsVisible:Z

    .line 368
    const/4 v0, 0x0

    if-eqz p1, :cond_64

    .line 369
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_38

    .line 370
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 373
    :cond_38
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mContainerLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    if-nez v1, :cond_4c

    .line 376
    new-instance v1, Landroid/widget/ZoomButtonsController$5;

    invoke-direct {v1, p0}, Landroid/widget/ZoomButtonsController$5;-><init>(Landroid/widget/ZoomButtonsController;)V

    iput-object v1, p0, Landroid/widget/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    .line 387
    :cond_4c
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 393
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 394
    iput-boolean v0, p0, Landroid/widget/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    goto :goto_90

    .line 398
    :cond_64
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mTouchTargetView:Landroid/view/View;

    if-eqz v1, :cond_6c

    .line 401
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ZoomButtonsController;->mReleaseTouchListenerOnUp:Z

    goto :goto_72

    .line 403
    :cond_6c
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mOwnerView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 407
    :goto_72
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 409
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mContainer:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 410
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/widget/ZoomButtonsController;->mPostedVisibleInitializer:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 412
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

    if-eqz v1, :cond_90

    .line 413
    iget-object v1, p0, Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;

    invoke-interface {v1, v0}, Landroid/widget/ZoomButtonsController$OnZoomListener;->onVisibilityChanged(Z)V

    .line 417
    :cond_90
    :goto_90
    return-void
.end method

.method public whitelist setZoomInEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 223
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    .line 224
    return-void
.end method

.method public whitelist setZoomOutEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 232
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    .line 233
    return-void
.end method

.method public whitelist setZoomSpeed(J)V
    .registers 4
    .param p1, "speed"    # J

    .line 241
    iget-object v0, p0, Landroid/widget/ZoomButtonsController;->mControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ZoomControls;->setZoomSpeed(J)V

    .line 242
    return-void
.end method
