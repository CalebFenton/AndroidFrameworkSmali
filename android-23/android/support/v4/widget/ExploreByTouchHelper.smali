.class public abstract Landroid/support/v4/widget/ExploreByTouchHelper;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String;

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000


# instance fields
.field private mFocusedVirtualViewId:I

.field private mHoveredVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;

.field private final mView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Landroid/support/v4/widget/ExploreByTouchHelper;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNode(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/support/v4/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 64
    const-class v0, Landroid/view/View;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    #@8
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "forView"    # Landroid/view/View;

    #@0
    .prologue
    const/high16 v2, -0x80000000

    #@2
    .line 92
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    #@5
    .line 67
    new-instance v1, Landroid/graphics/Rect;

    #@7
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@a
    iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    #@c
    .line 68
    new-instance v1, Landroid/graphics/Rect;

    #@e
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    #@13
    .line 69
    new-instance v1, Landroid/graphics/Rect;

    #@15
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@18
    iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    #@1a
    .line 70
    const/4 v1, 0x2

    #@1b
    new-array v1, v1, [I

    #@1d
    iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    #@1f
    .line 82
    iput v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@21
    .line 85
    iput v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    #@23
    .line 93
    if-nez p1, :cond_0

    #@25
    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v2, "View may not be null"

    #@2a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1

    #@2e
    .line 97
    :cond_0
    iput-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@30
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@33
    move-result-object v0

    #@34
    .line 99
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "accessibility"

    #@37
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    #@3d
    iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@3f
    .line 92
    return-void
.end method

.method private clearAccessibilityFocus(I)Z
    .locals 1
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    .line 577
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 578
    const/high16 v0, -0x80000000

    #@8
    iput v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@a
    .line 579
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@c
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@f
    .line 581
    const/high16 v0, 0x10000

    #@11
    .line 580
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@14
    .line 582
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 584
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
    .line 258
    packed-switch p1, :pswitch_data_0

    #@3
    .line 262
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 260
    :pswitch_0
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 258
    nop

    #@e
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    #@0
    .prologue
    .line 290
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@3
    move-result-object v0

    #@4
    .line 291
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    #@5
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    #@8
    .line 292
    sget-object v2, Landroid/support/v4/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@d
    .line 295
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    #@10
    .line 298
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    #@1d
    move-result-object v2

    #@1e
    if-nez v2, :cond_0

    #@20
    .line 299
    new-instance v2, Ljava/lang/RuntimeException;

    #@22
    const-string/jumbo v3, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    #@25
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2

    #@29
    .line 304
    :cond_0
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@2b
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    #@36
    .line 306
    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    #@39
    move-result-object v1

    #@3a
    .line 307
    .local v1, "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@3c
    invoke-virtual {v1, v2, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;I)V

    #@3f
    .line 309
    return-object v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2
    .param p1, "eventType"    # I

    #@0
    .prologue
    .line 274
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@3
    move-result-object v0

    #@4
    .line 275
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@6
    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    #@9
    .line 276
    return-object v0
.end method

.method private createNode(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    .line 323
    packed-switch p1, :pswitch_data_0

    #@3
    .line 327
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 325
    :pswitch_0
    invoke-direct {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 323
    nop

    #@e
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 8
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 384
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    #@5
    move-result-object v1

    #@6
    .line 387
    .local v1, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v1, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    #@9
    .line 388
    sget-object v4, Landroid/support/v4/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    #@e
    .line 391
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@11
    .line 394
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    #@14
    move-result-object v4

    #@15
    if-nez v4, :cond_0

    #@17
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    #@1a
    move-result-object v4

    #@1b
    if-nez v4, :cond_0

    #@1d
    .line 395
    new-instance v4, Ljava/lang/RuntimeException;

    #@1f
    const-string/jumbo v5, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    #@22
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@25
    throw v4

    #@26
    .line 399
    :cond_0
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    #@28
    invoke-virtual {v1, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    #@2b
    .line 400
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    #@2d
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_1

    #@33
    .line 401
    new-instance v4, Ljava/lang/RuntimeException;

    #@35
    const-string/jumbo v5, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    #@38
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v4

    #@3c
    .line 405
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    #@3f
    move-result v0

    #@40
    .line 406
    .local v0, "actions":I
    and-int/lit8 v4, v0, 0x40

    #@42
    if-eqz v4, :cond_2

    #@44
    .line 407
    new-instance v4, Ljava/lang/RuntimeException;

    #@46
    const-string/jumbo v5, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    #@49
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v4

    #@4d
    .line 410
    :cond_2
    and-int/lit16 v4, v0, 0x80

    #@4f
    if-eqz v4, :cond_3

    #@51
    .line 411
    new-instance v4, Ljava/lang/RuntimeException;

    #@53
    const-string/jumbo v5, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    #@56
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@59
    throw v4

    #@5a
    .line 416
    :cond_3
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@5c
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v1, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    #@67
    .line 417
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@69
    invoke-virtual {v1, v4, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    #@6c
    .line 418
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@6e
    invoke-virtual {v1, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    #@71
    .line 421
    iget v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@73
    if-ne v4, p1, :cond_5

    #@75
    .line 422
    invoke-virtual {v1, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    #@78
    .line 423
    const/16 v4, 0x80

    #@7a
    invoke-virtual {v1, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@7d
    .line 430
    :goto_0
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    #@7f
    invoke-direct {p0, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->intersectVisibleToUser(Landroid/graphics/Rect;)Z

    #@82
    move-result v4

    #@83
    if-eqz v4, :cond_4

    #@85
    .line 431
    invoke-virtual {v1, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    #@88
    .line 432
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    #@8a
    invoke-virtual {v1, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    #@8d
    .line 436
    :cond_4
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@8f
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    #@91
    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    #@94
    .line 437
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    #@96
    aget v2, v4, v6

    #@98
    .line 438
    .local v2, "offsetX":I
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    #@9a
    aget v3, v4, v7

    #@9c
    .line 439
    .local v3, "offsetY":I
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    #@9e
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    #@a0
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@a3
    .line 440
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    #@a5
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    #@a8
    .line 441
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    #@aa
    invoke-virtual {v1, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    #@ad
    .line 443
    return-object v1

    #@ae
    .line 425
    .end local v2    # "offsetX":I
    .end local v3    # "offsetY":I
    :cond_5
    invoke-virtual {v1, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    #@b1
    .line 426
    const/16 v4, 0x40

    #@b3
    invoke-virtual {v1, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@b6
    goto :goto_0
.end method

.method private createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 6

    #@0
    .prologue
    .line 338
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@2
    invoke-static {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    #@5
    move-result-object v2

    #@6
    .line 339
    .local v2, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@8
    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@b
    .line 342
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@e
    .line 345
    new-instance v3, Ljava/util/LinkedList;

    #@10
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    #@13
    .line 346
    .local v3, "virtualViewIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    #@16
    .line 348
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "childVirtualViewId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Ljava/lang/Integer;

    #@26
    .line 349
    .local v0, "childVirtualViewId":Ljava/lang/Integer;
    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result v5

    #@2c
    invoke-virtual {v2, v4, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    #@2f
    goto :goto_0

    #@30
    .line 352
    .end local v0    # "childVirtualViewId":Ljava/lang/Integer;
    :cond_0
    return-object v2
.end method

.method private intersectVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "localRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 490
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 491
    :cond_0
    return v4

    #@a
    .line 495
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@c
    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_2

    #@12
    .line 496
    return v4

    #@13
    .line 500
    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@15
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@18
    move-result-object v1

    #@19
    .line 501
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    #@1b
    if-eqz v2, :cond_5

    #@1d
    move-object v0, v1

    #@1e
    .line 502
    check-cast v0, Landroid/view/View;

    #@20
    .line 503
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    #@23
    move-result v2

    #@24
    const/4 v3, 0x0

    #@25
    cmpg-float v2, v2, v3

    #@27
    if-lez v2, :cond_3

    #@29
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_4

    #@2f
    .line 504
    :cond_3
    return v4

    #@30
    .line 506
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@33
    move-result-object v1

    #@34
    goto :goto_0

    #@35
    .line 510
    .end local v0    # "view":Landroid/view/View;
    :cond_5
    if-nez v1, :cond_6

    #@37
    .line 511
    return v4

    #@38
    .line 515
    :cond_6
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@3a
    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    #@3c
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    #@3f
    move-result v2

    #@40
    if-nez v2, :cond_7

    #@42
    .line 516
    return v4

    #@43
    .line 520
    :cond_7
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    #@45
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@48
    move-result v2

    #@49
    return v2
.end method

.method private isAccessibilityFocused(I)Z
    .locals 1
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    .line 529
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

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

.method private manageFocusForChild(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 470
    sparse-switch p2, :sswitch_data_0

    #@3
    .line 476
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 472
    :sswitch_0
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 474
    :sswitch_1
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 470
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
    .line 447
    packed-switch p1, :pswitch_data_0

    #@3
    .line 451
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 449
    :pswitch_0
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 447
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
    .line 460
    sparse-switch p2, :sswitch_data_0

    #@3
    .line 465
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 463
    :sswitch_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->manageFocusForChild(IILandroid/os/Bundle;)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 460
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
    .line 456
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@2
    invoke-static {v0, p1, p2}, Landroid/support/v4/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .locals 2
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 545
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 546
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@b
    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 550
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_2

    #@17
    .line 552
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@19
    const/high16 v1, -0x80000000

    #@1b
    if-eq v0, v1, :cond_0

    #@1d
    .line 553
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@1f
    .line 554
    const/high16 v1, 0x10000

    #@21
    .line 553
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@24
    .line 558
    :cond_0
    iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@26
    .line 561
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@28
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@2b
    .line 563
    const v0, 0x8000

    #@2e
    .line 562
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@31
    .line 564
    const/4 v0, 0x1

    #@32
    return v0

    #@33
    .line 547
    :cond_1
    return v1

    #@34
    .line 566
    :cond_2
    return v1
.end method

.method private updateHoveredVirtualView(I)V
    .locals 2
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    .line 233
    iget v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    #@2
    if-ne v1, p1, :cond_0

    #@4
    .line 234
    return-void

    #@5
    .line 237
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    #@7
    .line 238
    .local v0, "previousVirtualViewId":I
    iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    #@9
    .line 242
    const/16 v1, 0x80

    #@b
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@e
    .line 244
    const/16 v1, 0x100

    #@10
    .line 243
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@13
    .line 232
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
    .line 136
    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@6
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 137
    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@e
    invoke-static {v3}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@17
    move-result v3

    #@18
    packed-switch v3, :pswitch_data_0

    #@1b
    .line 154
    :pswitch_0
    return v2

    #@1c
    .line 138
    :cond_0
    return v2

    #@1d
    .line 144
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@20
    move-result v3

    #@21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@24
    move-result v4

    #@25
    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    #@28
    move-result v0

    #@29
    .line 145
    .local v0, "virtualViewId":I
    invoke-direct {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    #@2c
    .line 146
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
    .line 148
    .end local v0    # "virtualViewId":I
    :pswitch_2
    iget v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@33
    if-eq v3, v5, :cond_2

    #@35
    .line 149
    invoke-direct {p0, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    #@38
    .line 150
    return v1

    #@39
    .line 152
    :cond_2
    return v2

    #@3a
    .line 141
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 2
    .param p1, "host"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 110
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 111
    new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Landroid/support/v4/widget/ExploreByTouchHelper;Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;)V

    #@a
    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    #@c
    .line 113
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    #@e
    return-object v0
.end method

.method public getFocusedVirtualView()I
    .locals 1

    #@0
    .prologue
    .line 221
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    #@2
    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public invalidateRoot()V
    .locals 1

    #@0
    .prologue
    .line 197
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    #@4
    .line 196
    return-void
.end method

.method public invalidateVirtualView(I)V
    .locals 1
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    .line 211
    const/16 v0, 0x800

    #@2
    .line 210
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@5
    .line 209
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected abstract onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    #@0
    .prologue
    .line 706
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method public sendEventForVirtualView(II)Z
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 176
    const/high16 v2, -0x80000000

    #@3
    if-eq p1, v2, :cond_0

    #@5
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@7
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 180
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@f
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@12
    move-result-object v1

    #@13
    .line 181
    .local v1, "parent":Landroid/view/ViewParent;
    if-nez v1, :cond_1

    #@15
    .line 182
    return v3

    #@16
    .line 177
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return v3

    #@17
    .line 185
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    #@1a
    move-result-object v0

    #@1b
    .line 186
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    #@1d
    invoke-static {v1, v2, v0}, Landroid/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@20
    move-result v2

    #@21
    return v2
.end method
