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
.field private static final greylist-max-o DEFAULT_CLASS_NAME:Ljava/lang/String;

.field public static final greylist-max-o HOST_ID:I = -0x1

.field public static final greylist-max-o INVALID_ID:I = -0x80000000

.field private static final greylist-max-o INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mFocusedVirtualViewId:I

.field private greylist-max-o mHoveredVirtualViewId:I

.field private final greylist-max-o mManager:Landroid/view/accessibility/AccessibilityManager;

.field private greylist-max-o mNodeProvider:Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

.field private greylist-max-o mTempArray:Landroid/util/IntArray;

.field private greylist-max-o mTempGlobalRect:[I

.field private greylist-max-o mTempParentRect:Landroid/graphics/Rect;

.field private greylist-max-o mTempScreenRect:Landroid/graphics/Rect;

.field private greylist-max-o mTempVisibleRect:Landroid/graphics/Rect;

.field private final greylist-max-o mView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcreateNode(Lcom/android/internal/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->createNode(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mperformAction(Lcom/android/internal/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 56
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/internal/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "forView"    # Landroid/view/View;

    .line 96
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 86
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    .line 89
    iput v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 97
    if-eqz p1, :cond_20

    .line 101
    iput-object p1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 104
    return-void

    .line 98
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o clearAccessibilityFocus(I)Z
    .registers 3
    .param p1, "virtualViewId"    # I

    .line 643
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 644
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    .line 645
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 646
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 648
    const/4 v0, 0x1

    return v0

    .line 650
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 293
    packed-switch p1, :pswitch_data_e

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0

    .line 295
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method private greylist-max-o createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 6
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 329
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 330
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 331
    sget-object v1, Lcom/android/internal/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 337
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_21

    goto :goto_29

    .line 338
    :cond_21
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 346
    return-object v0
.end method

.method private greylist-max-o createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4
    .param p1, "eventType"    # I

    .line 309
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 310
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 313
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 315
    return-object v0
.end method

.method private greylist-max-o createNode(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3
    .param p1, "virtualViewId"    # I

    .line 360
    packed-switch p1, :pswitch_data_e

    .line 364
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 362
    :pswitch_8
    invoke-direct {p0}, Lcom/android/internal/widget/ExploreByTouchHelper;->createNodeForHost()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method private greylist-max-o createNodeForChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10
    .param p1, "virtualViewId"    # I

    .line 431
    invoke-direct {p0}, Lcom/android/internal/widget/ExploreByTouchHelper;->ensureTempRects()V

    .line 432
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 433
    .local v0, "tempParentRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 434
    .local v1, "tempGlobalRect":[I
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 436
    .local v2, "tempScreenRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 439
    .local v3, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 440
    sget-object v5, Lcom/android/internal/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 441
    sget-object v5, Lcom/android/internal/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 444
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 447
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_33

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_2b

    goto :goto_33

    .line 448
    :cond_2b
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 452
    :cond_33
    :goto_33
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 453
    sget-object v5, Lcom/android/internal/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a6

    .line 458
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v5

    .line 459
    .local v5, "actions":I
    and-int/lit8 v6, v5, 0x40

    if-nez v6, :cond_9e

    .line 463
    and-int/lit16 v6, v5, 0x80

    if-nez v6, :cond_96

    .line 469
    iget-object v6, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v6, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v3, v6, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 471
    iget-object v6, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 474
    iget v6, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    const/4 v7, 0x0

    if-ne v6, p1, :cond_6f

    .line 475
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 476
    sget-object v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_77

    .line 478
    :cond_6f
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 479
    sget-object v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 483
    :goto_77
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->intersectVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 484
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 485
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 489
    :cond_83
    iget-object v6, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 490
    aget v6, v1, v7

    .line 491
    .local v6, "offsetX":I
    aget v4, v1, v4

    .line 492
    .local v4, "offsetY":I
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 493
    invoke-virtual {v2, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 494
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 496
    return-object v3

    .line 464
    .end local v4    # "offsetY":I
    .end local v6    # "offsetX":I
    :cond_96
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 460
    :cond_9e
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 454
    .end local v5    # "actions":I
    :cond_a6
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private greylist-max-o createNodeForHost()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 8

    .line 375
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 376
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 377
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    .line 380
    .local v1, "realNodeCount":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 383
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempArray:Landroid/util/IntArray;

    if-nez v2, :cond_1e

    .line 384
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempArray:Landroid/util/IntArray;

    goto :goto_23

    .line 386
    :cond_1e
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempArray:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    .line 388
    :goto_23
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempArray:Landroid/util/IntArray;

    .line 389
    .local v2, "virtualViewIds":Landroid/util/IntArray;
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Landroid/util/IntArray;)V

    .line 390
    if-lez v1, :cond_39

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    if-gtz v3, :cond_31

    goto :goto_39

    .line 391
    :cond_31
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Views cannot have both real and virtual children"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 394
    :cond_39
    :goto_39
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    .line 395
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3e
    if-ge v4, v3, :cond_4c

    .line 396
    iget-object v5, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/util/IntArray;->get(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 395
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 399
    .end local v4    # "i":I
    :cond_4c
    return-object v0
.end method

.method private greylist-max-o ensureTempRects()V
    .registers 2

    .line 500
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 501
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 502
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 503
    return-void
.end method

.method private greylist-max-o intersectVisibleToUser(Landroid/graphics/Rect;)Z
    .registers 7
    .param p1, "localRect"    # Landroid/graphics/Rect;

    .line 549
    const/4 v0, 0x0

    if-eqz p1, :cond_54

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_54

    .line 554
    :cond_a
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_13

    .line 555
    return v0

    .line 559
    :cond_13
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 560
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_19
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_36

    .line 561
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 562
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_35

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_35

    .line 565
    :cond_30
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 566
    .end local v2    # "view":Landroid/view/View;
    goto :goto_19

    .line 563
    .restart local v2    # "view":Landroid/view/View;
    :cond_35
    :goto_35
    return v0

    .line 569
    .end local v2    # "view":Landroid/view/View;
    :cond_36
    if-nez v1, :cond_39

    .line 570
    return v0

    .line 574
    :cond_39
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    if-nez v2, :cond_44

    .line 575
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 577
    :cond_44
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 578
    .local v2, "tempVisibleRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 579
    return v0

    .line 583
    :cond_4f
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 550
    .end local v1    # "viewParent":Landroid/view/ViewParent;
    .end local v2    # "tempVisibleRect":Landroid/graphics/Rect;
    :cond_54
    :goto_54
    return v0
.end method

.method private greylist-max-o isAccessibilityFocused(I)Z
    .registers 3
    .param p1, "virtualViewId"    # I

    .line 592
    iget v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o manageFocusForChild(II)Z
    .registers 4
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I

    .line 529
    sparse-switch p2, :sswitch_data_10

    .line 535
    const/4 v0, 0x0

    return v0

    .line 533
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v0

    return v0

    .line 531
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result v0

    return v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x40 -> :sswitch_a
        0x80 -> :sswitch_5
    .end sparse-switch
.end method

.method private greylist-max-o performAction(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 506
    packed-switch p1, :pswitch_data_e

    .line 510
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 508
    :pswitch_8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method private greylist-max-o performActionForChild(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 519
    sparse-switch p2, :sswitch_data_e

    .line 524
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 522
    :sswitch_8
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->manageFocusForChild(II)Z

    move-result v0

    return v0

    nop

    :sswitch_data_e
    .sparse-switch
        0x40 -> :sswitch_8
        0x80 -> :sswitch_8
    .end sparse-switch
.end method

.method private greylist-max-o performActionForHost(ILandroid/os/Bundle;)Z
    .registers 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 515
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o requestAccessibilityFocus(I)Z
    .registers 5
    .param p1, "virtualViewId"    # I

    .line 608
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    .line 609
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 611
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    .line 612
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_3d

    .line 616
    :cond_1a
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 618
    iget v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2d

    .line 619
    iget v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    const/high16 v2, 0x10000

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 624
    :cond_2d
    iput p1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    .line 627
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 628
    const v1, 0x8000

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 630
    const/4 v1, 0x1

    return v1

    .line 632
    :cond_3c
    return v2

    .line 613
    :cond_3d
    :goto_3d
    return v2
.end method

.method private greylist-max-o updateHoveredVirtualView(I)V
    .registers 4
    .param p1, "virtualViewId"    # I

    .line 269
    iget v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_5

    .line 270
    return-void

    .line 273
    :cond_5
    iget v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 274
    .local v0, "previousVirtualViewId":I
    iput p1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 278
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 279
    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 280
    return-void
.end method


# virtual methods
.method public greylist-max-o dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 140
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_39

    .line 144
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    packed-switch v0, :pswitch_data_3a

    .line 157
    :pswitch_1c
    return v1

    .line 151
    :pswitch_1d
    iget v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-eq v0, v3, :cond_25

    .line 152
    invoke-direct {p0, v3}, Lcom/android/internal/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 153
    return v2

    .line 155
    :cond_25
    return v1

    .line 147
    :pswitch_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result v0

    .line 148
    .local v0, "virtualViewId":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 149
    if-eq v0, v3, :cond_38

    move v1, v2

    :cond_38
    return v1

    .line 141
    .end local v0    # "virtualViewId":I
    :cond_39
    :goto_39
    return v1

    :pswitch_data_3a
    .packed-switch 0x7
        :pswitch_26
        :pswitch_1c
        :pswitch_26
        :pswitch_1d
    .end packed-switch
.end method

.method public whitelist getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 4
    .param p1, "host"    # Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    if-nez v0, :cond_c

    .line 115
    new-instance v0, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/android/internal/widget/ExploreByTouchHelper;Lcom/android/internal/widget/ExploreByTouchHelper-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    .line 117
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    return-object v0
.end method

.method public greylist-max-o getFocusedVirtualView()I
    .registers 2

    .line 257
    iget v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    return v0
.end method

.method protected abstract greylist-max-o getVirtualViewAt(FF)I
.end method

.method protected abstract greylist-max-o getVisibleVirtualViews(Landroid/util/IntArray;)V
.end method

.method public greylist-max-o invalidateRoot()V
    .registers 3

    .line 200
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 201
    return-void
.end method

.method public greylist-max-o invalidateVirtualView(I)V
    .registers 3
    .param p1, "virtualViewId"    # I

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 217
    return-void
.end method

.method public greylist-max-o invalidateVirtualView(II)V
    .registers 6
    .param p1, "virtualViewId"    # I
    .param p2, "changeTypes"    # I

    .line 239
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 240
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 241
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_22

    .line 242
    const/16 v1, 0x800

    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 244
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 245
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 248
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_22
    return-void
.end method

.method protected abstract greylist-max-o onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected greylist-max-o onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 716
    return-void
.end method

.method protected abstract greylist-max-o onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
.end method

.method protected greylist-max-o onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 786
    return-void
.end method

.method protected abstract greylist-max-o onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
.end method

.method public greylist-max-o sendEventForVirtualView(II)Z
    .registers 6
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 179
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    if-eq p1, v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_22

    .line 183
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 184
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_17

    .line 185
    return v1

    .line 188
    :cond_17
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 189
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2

    .line 180
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_22
    :goto_22
    return v1
.end method
