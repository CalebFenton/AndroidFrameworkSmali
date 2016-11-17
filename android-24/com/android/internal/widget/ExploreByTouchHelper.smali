.class public abstract Lcom/android/internal/widget/ExploreByTouchHelper;
.super Landroid/view/View$AccessibilityDelegate;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String;

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFocusedVirtualViewId:I

.field private mHoveredVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

.field private mTempArray:Landroid/util/IntArray;

.field private mTempGlobalRect:[I

.field private mTempParentRect:Landroid/graphics/Rect;

.field private mTempScreenRect:Landroid/graphics/Rect;

.field private mTempVisibleRect:Landroid/graphics/Rect;

.field private final mView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->createNode(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const v2, 0x7fffffff

    #@3
    const/high16 v1, -0x80000000

    #@5
    .line 56
    const-class v0, Landroid/view/View;

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Lcom/android/internal/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    #@d
    .line 59
    new-instance v0, Landroid/graphics/Rect;

    #@f
    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #@12
    sput-object v0, Lcom/android/internal/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    #@14
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "forView"    # Landroid/view/View;

    #@0
    .prologue
    const/high16 v0, -0x80000000

    #@2
    .line 96
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    #@5
    .line 86
    iput v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@7
    .line 89
    iput v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    #@9
    .line 97
    if-nez p1, :cond_0

    #@b
    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "View may not be null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 101
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@16
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    #@1c
    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    #@1e
    const-string/jumbo v1, "accessibility"

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    #@27
    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@29
    .line 96
    return-void
.end method

.method private clearAccessibilityFocus(I)Z
    .locals 1
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 643
    const/high16 v0, -0x80000000

    #@8
    iput v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@a
    .line 644
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@c
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@f
    .line 646
    const/high16 v0, 0x10000

    #@11
    .line 645
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@14
    .line 647
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 649
    :cond_0
    const/4 v0, 0x0

    #@17
    return v0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    #@0
    .prologue
    .line 292
    packed-switch p1, :pswitch_data_0

    #@3
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 294
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 292
    nop

    #@e
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    #@0
    .prologue
    .line 328
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@3
    move-result-object v0

    #@4
    .line 329
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    #@8
    .line 330
    sget-object v1, Lcom/android/internal/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    #@d
    .line 333
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    #@10
    .line 336
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    #@1d
    move-result-object v1

    #@1e
    if-nez v1, :cond_0

    #@20
    .line 337
    new-instance v1, Ljava/lang/RuntimeException;

    #@22
    const-string/jumbo v2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    #@25
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 342
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@2b
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    #@36
    .line 343
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@38
    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    #@3b
    .line 345
    return-object v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2
    .param p1, "eventType"    # I

    #@0
    .prologue
    .line 308
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@3
    move-result-object v0

    #@4
    .line 309
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@6
    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@9
    .line 312
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    #@c
    .line 314
    return-object v0
.end method

.method private createNode(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    .line 359
    packed-switch p1, :pswitch_data_0

    #@3
    .line 363
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 361
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/widget/ExploreByTouchHelper;->createNodeForHost()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 359
    nop

    #@e
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createNodeForChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 430
    invoke-direct {p0}, Lcom/android/internal/widget/ExploreByTouchHelper;->ensureTempRects()V

    #@5
    .line 431
    iget-object v5, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    #@7
    .line 432
    .local v5, "tempParentRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    #@9
    .line 433
    .local v4, "tempGlobalRect":[I
    iget-object v6, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    #@b
    .line 435
    .local v6, "tempScreenRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@e
    move-result-object v1

    #@f
    .line 438
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    #@12
    .line 439
    sget-object v7, Lcom/android/internal/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    #@14
    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    #@17
    .line 440
    sget-object v7, Lcom/android/internal/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    #@19
    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    #@1c
    .line 443
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    #@1f
    .line 446
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    #@22
    move-result-object v7

    #@23
    if-nez v7, :cond_0

    #@25
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    #@28
    move-result-object v7

    #@29
    if-nez v7, :cond_0

    #@2b
    .line 447
    new-instance v7, Ljava/lang/RuntimeException;

    #@2d
    const-string/jumbo v8, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    #@30
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@33
    throw v7

    #@34
    .line 451
    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    #@37
    .line 452
    sget-object v7, Lcom/android/internal/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    #@39
    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v7

    #@3d
    if-eqz v7, :cond_1

    #@3f
    .line 453
    new-instance v7, Ljava/lang/RuntimeException;

    #@41
    const-string/jumbo v8, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    #@44
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@47
    throw v7

    #@48
    .line 457
    :cond_1
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    #@4b
    move-result v0

    #@4c
    .line 458
    .local v0, "actions":I
    and-int/lit8 v7, v0, 0x40

    #@4e
    if-eqz v7, :cond_2

    #@50
    .line 459
    new-instance v7, Ljava/lang/RuntimeException;

    #@52
    const-string/jumbo v8, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    #@55
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@58
    throw v7

    #@59
    .line 462
    :cond_2
    and-int/lit16 v7, v0, 0x80

    #@5b
    if-eqz v7, :cond_3

    #@5d
    .line 463
    new-instance v7, Ljava/lang/RuntimeException;

    #@5f
    const-string/jumbo v8, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    #@62
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@65
    throw v7

    #@66
    .line 468
    :cond_3
    iget-object v7, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@68
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@6b
    move-result-object v7

    #@6c
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@6f
    move-result-object v7

    #@70
    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    #@73
    .line 469
    iget-object v7, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@75
    invoke-virtual {v1, v7, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    #@78
    .line 470
    iget-object v7, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@7a
    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    #@7d
    .line 473
    iget v7, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@7f
    if-ne v7, p1, :cond_5

    #@81
    .line 474
    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    #@84
    .line 475
    sget-object v7, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@86
    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@89
    .line 482
    :goto_0
    invoke-direct {p0, v5}, Lcom/android/internal/widget/ExploreByTouchHelper;->intersectVisibleToUser(Landroid/graphics/Rect;)Z

    #@8c
    move-result v7

    #@8d
    if-eqz v7, :cond_4

    #@8f
    .line 483
    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    #@92
    .line 484
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    #@95
    .line 488
    :cond_4
    iget-object v7, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@97
    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    #@9a
    .line 489
    aget v2, v4, v8

    #@9c
    .line 490
    .local v2, "offsetX":I
    aget v3, v4, v9

    #@9e
    .line 491
    .local v3, "offsetY":I
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@a1
    .line 492
    invoke-virtual {v6, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    #@a4
    .line 493
    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    #@a7
    .line 495
    return-object v1

    #@a8
    .line 477
    .end local v2    # "offsetX":I
    .end local v3    # "offsetY":I
    :cond_5
    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    #@ab
    .line 478
    sget-object v7, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@ad
    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@b0
    goto :goto_0
.end method

.method private createNodeForHost()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    #@0
    .prologue
    .line 374
    iget-object v5, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@2
    invoke-static {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v2

    #@6
    .line 375
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v5, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@8
    invoke-virtual {v5, v2}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@b
    .line 376
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    #@e
    move-result v3

    #@f
    .line 379
    .local v3, "realNodeCount":I
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@12
    .line 382
    iget-object v5, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempArray:Landroid/util/IntArray;

    #@14
    if-nez v5, :cond_0

    #@16
    .line 383
    new-instance v5, Landroid/util/IntArray;

    #@18
    invoke-direct {v5}, Landroid/util/IntArray;-><init>()V

    #@1b
    iput-object v5, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempArray:Landroid/util/IntArray;

    #@1d
    .line 387
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempArray:Landroid/util/IntArray;

    #@1f
    .line 388
    .local v4, "virtualViewIds":Landroid/util/IntArray;
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Landroid/util/IntArray;)V

    #@22
    .line 389
    if-lez v3, :cond_1

    #@24
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    #@27
    move-result v5

    #@28
    if-lez v5, :cond_1

    #@2a
    .line 390
    new-instance v5, Ljava/lang/RuntimeException;

    #@2c
    const-string/jumbo v6, "Views cannot have both real and virtual children"

    #@2f
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@32
    throw v5

    #@33
    .line 385
    .end local v4    # "virtualViewIds":Landroid/util/IntArray;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempArray:Landroid/util/IntArray;

    #@35
    invoke-virtual {v5}, Landroid/util/IntArray;->clear()V

    #@38
    goto :goto_0

    #@39
    .line 393
    .restart local v4    # "virtualViewIds":Landroid/util/IntArray;
    :cond_1
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    #@3c
    move-result v0

    #@3d
    .line 394
    .local v0, "N":I
    const/4 v1, 0x0

    #@3e
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@40
    .line 395
    iget-object v5, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@42
    invoke-virtual {v4, v1}, Landroid/util/IntArray;->get(I)I

    #@45
    move-result v6

    #@46
    invoke-virtual {v2, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    #@49
    .line 394
    add-int/lit8 v1, v1, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 398
    :cond_2
    return-object v2
.end method

.method private ensureTempRects()V
    .locals 1

    #@0
    .prologue
    .line 499
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [I

    #@3
    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    #@5
    .line 500
    new-instance v0, Landroid/graphics/Rect;

    #@7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    #@c
    .line 501
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    #@13
    .line 498
    return-void
.end method

.method private intersectVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "localRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 548
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 549
    :cond_0
    return v5

    #@a
    .line 553
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@c
    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_2

    #@12
    .line 554
    return v5

    #@13
    .line 558
    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@15
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@18
    move-result-object v2

    #@19
    .line 559
    .local v2, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v2, Landroid/view/View;

    #@1b
    if-eqz v3, :cond_5

    #@1d
    move-object v1, v2

    #@1e
    .line 560
    check-cast v1, Landroid/view/View;

    #@20
    .line 561
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    #@23
    move-result v3

    #@24
    const/4 v4, 0x0

    #@25
    cmpg-float v3, v3, v4

    #@27
    if-lez v3, :cond_3

    #@29
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_4

    #@2f
    .line 562
    :cond_3
    return v5

    #@30
    .line 564
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@33
    move-result-object v2

    #@34
    goto :goto_0

    #@35
    .line 568
    .end local v1    # "view":Landroid/view/View;
    :cond_5
    if-nez v2, :cond_6

    #@37
    .line 569
    return v5

    #@38
    .line 573
    :cond_6
    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    #@3a
    if-nez v3, :cond_7

    #@3c
    .line 574
    new-instance v3, Landroid/graphics/Rect;

    #@3e
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@41
    iput-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    #@43
    .line 576
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    #@45
    .line 577
    .local v0, "tempVisibleRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@47
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    #@4a
    move-result v3

    #@4b
    if-nez v3, :cond_8

    #@4d
    .line 578
    return v5

    #@4e
    .line 582
    :cond_8
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@51
    move-result v3

    #@52
    return v3
.end method

.method private isAccessibilityFocused(I)Z
    .locals 1
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    .line 591
    iget v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private manageFocusForChild(II)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I

    #@0
    .prologue
    .line 528
    sparse-switch p2, :sswitch_data_0

    #@3
    .line 534
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 530
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 532
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 528
    nop

    #@10
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method private performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 505
    packed-switch p1, :pswitch_data_0

    #@3
    .line 509
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 507
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 505
    nop

    #@e
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 518
    sparse-switch p2, :sswitch_data_0

    #@3
    .line 523
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 521
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->manageFocusForChild(II)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 518
    nop

    #@e
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .locals 4
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 608
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "accessibility"

    #@6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    #@c
    .line 610
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@e
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 611
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 615
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_2

    #@20
    .line 617
    iget v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@22
    const/high16 v2, -0x80000000

    #@24
    if-eq v1, v2, :cond_0

    #@26
    .line 618
    iget v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@28
    .line 619
    const/high16 v2, 0x10000

    #@2a
    .line 618
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@2d
    .line 623
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@2f
    .line 626
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@31
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    #@34
    .line 628
    const v1, 0x8000

    #@37
    .line 627
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@3a
    .line 629
    const/4 v1, 0x1

    #@3b
    return v1

    #@3c
    .line 612
    :cond_1
    return v3

    #@3d
    .line 631
    :cond_2
    return v3
.end method

.method private updateHoveredVirtualView(I)V
    .locals 2
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    .line 268
    iget v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    #@2
    if-ne v1, p1, :cond_0

    #@4
    .line 269
    return-void

    #@5
    .line 272
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    #@7
    .line 273
    .local v0, "previousVirtualViewId":I
    iput p1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    #@9
    .line 277
    const/16 v1, 0x80

    #@b
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@e
    .line 278
    const/16 v1, 0x100

    #@10
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@13
    .line 267
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/high16 v5, -0x80000000

    #@3
    const/4 v2, 0x0

    #@4
    .line 140
    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@6
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@e
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@17
    move-result v3

    #@18
    packed-switch v3, :pswitch_data_0

    #@1b
    .line 157
    :pswitch_0
    return v2

    #@1c
    .line 141
    :cond_0
    return v2

    #@1d
    .line 147
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@20
    move-result v3

    #@21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@24
    move-result v4

    #@25
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    #@28
    move-result v0

    #@29
    .line 148
    .local v0, "virtualViewId":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    #@2c
    .line 149
    if-eq v0, v5, :cond_1

    #@2e
    :goto_0
    return v1

    #@2f
    :cond_1
    move v1, v2

    #@30
    goto :goto_0

    #@31
    .line 151
    .end local v0    # "virtualViewId":I
    :pswitch_2
    iget v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@33
    if-eq v3, v5, :cond_2

    #@35
    .line 152
    invoke-direct {p0, v5}, Lcom/android/internal/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    #@38
    .line 153
    return v1

    #@39
    .line 155
    :cond_2
    return v2

    #@3a
    .line 144
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2
    .param p1, "host"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 114
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 115
    new-instance v0, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    #@7
    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/android/internal/widget/ExploreByTouchHelper;Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;)V

    #@a
    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    #@c
    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    #@e
    return-object v0
.end method

.method public getFocusedVirtualView()I
    .locals 1

    #@0
    .prologue
    .line 256
    iget v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@2
    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Landroid/util/IntArray;)V
.end method

.method public invalidateRoot()V
    .locals 2

    #@0
    .prologue
    .line 200
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x1

    #@2
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    #@5
    .line 199
    return-void
.end method

.method public invalidateVirtualView(I)V
    .locals 1
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    .line 216
    const/4 v0, 0x0

    #@1
    .line 215
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    #@4
    .line 214
    return-void
.end method

.method public invalidateVirtualView(II)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "changeTypes"    # I

    #@0
    .prologue
    .line 238
    const/high16 v2, -0x80000000

    #@2
    if-eq p1, v2, :cond_0

    #@4
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@6
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 239
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@e
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@11
    move-result-object v1

    #@12
    .line 240
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    #@14
    .line 242
    const/16 v2, 0x800

    #@16
    .line 241
    invoke-direct {p0, p1, v2}, Lcom/android/internal/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    #@19
    move-result-object v0

    #@1a
    .line 243
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    #@1d
    .line 244
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@1f
    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@22
    .line 237
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 713
    return-void
.end method

.method protected abstract onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
.end method

.method protected onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 783
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
.end method

.method public sendEventForVirtualView(II)Z
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 179
    const/high16 v2, -0x80000000

    #@3
    if-eq p1, v2, :cond_0

    #@5
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@7
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 183
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@f
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@12
    move-result-object v1

    #@13
    .line 184
    .local v1, "parent":Landroid/view/ViewParent;
    if-nez v1, :cond_1

    #@15
    .line 185
    return v3

    #@16
    .line 180
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return v3

    #@17
    .line 188
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    #@1a
    move-result-object v0

    #@1b
    .line 189
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@1d
    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@20
    move-result v2

    #@21
    return v2
.end method
