.class Landroid/widget/Editor$PositionListener;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field private final MAXIMUM_NUMBER_OF_LISTENERS:I

.field private mCanMove:[Z

.field private mNumberOfListeners:I

.field private mPositionHasChanged:Z

.field private mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

.field private mPositionX:I

.field private mPositionY:I

.field private mScrollHasChanged:Z

.field final mTempCoords:[I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    const/4 v1, 0x7

    #@1
    .line 2439
    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 2443
    iput v1, p0, Landroid/widget/Editor$PositionListener;->MAXIMUM_NUMBER_OF_LISTENERS:I

    #@8
    .line 2445
    new-array v0, v1, [Landroid/widget/Editor$TextViewPositionListener;

    #@a
    .line 2444
    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    #@c
    .line 2446
    new-array v0, v1, [Z

    #@e
    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    #@10
    .line 2447
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    #@13
    .line 2452
    const/4 v0, 0x2

    #@14
    new-array v0, v0, [I

    #@16
    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    #@18
    .line 2439
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$PositionListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;)V

    #@3
    return-void
.end method

.method private updatePosition()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 2518
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    #@4
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@7
    move-result-object v0

    #@8
    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    #@a
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getLocationInWindow([I)V

    #@d
    .line 2520
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    #@f
    aget v0, v0, v2

    #@11
    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    #@13
    if-ne v0, v3, :cond_0

    #@15
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    #@17
    aget v0, v0, v1

    #@19
    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    #@1b
    if-eq v0, v3, :cond_1

    #@1d
    :cond_0
    move v0, v1

    #@1e
    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    #@20
    .line 2522
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    #@22
    aget v0, v0, v2

    #@24
    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    #@26
    .line 2523
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    #@28
    aget v0, v0, v1

    #@2a
    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    #@2c
    .line 2517
    return-void

    #@2d
    :cond_1
    move v0, v2

    #@2e
    .line 2520
    goto :goto_0
.end method


# virtual methods
.method public addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V
    .locals 5
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;
    .param p2, "canMove"    # Z

    #@0
    .prologue
    .line 2455
    iget v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    #@2
    if-nez v4, :cond_0

    #@4
    .line 2456
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    #@7
    .line 2457
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    #@9
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v4}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@10
    move-result-object v3

    #@11
    .line 2458
    .local v3, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@14
    .line 2461
    .end local v3    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v0, -0x1

    #@15
    .line 2462
    .local v0, "emptySlotIndex":I
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    const/4 v4, 0x7

    #@17
    if-ge v1, v4, :cond_3

    #@19
    .line 2463
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    #@1b
    aget-object v2, v4, v1

    #@1d
    .line 2464
    .local v2, "listener":Landroid/widget/Editor$TextViewPositionListener;
    if-ne v2, p1, :cond_1

    #@1f
    .line 2465
    return-void

    #@20
    .line 2466
    :cond_1
    if-gez v0, :cond_2

    #@22
    if-nez v2, :cond_2

    #@24
    .line 2467
    move v0, v1

    #@25
    .line 2462
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 2471
    .end local v2    # "listener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    #@2a
    aput-object p1, v4, v0

    #@2c
    .line 2472
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    #@2e
    aput-boolean p2, v4, v0

    #@30
    .line 2473
    iget v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    #@32
    add-int/lit8 v4, v4, 0x1

    #@34
    iput v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    #@36
    .line 2454
    return-void
.end method

.method public getPositionX()I
    .locals 1

    #@0
    .prologue
    .line 2492
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    #@2
    return v0
.end method

.method public getPositionY()I
    .locals 1

    #@0
    .prologue
    .line 2496
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    #@2
    return v0
.end method

.method public onPreDraw()Z
    .locals 6

    #@0
    .prologue
    .line 2501
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    #@3
    .line 2503
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    #@5
    if-ge v0, v2, :cond_2

    #@7
    .line 2504
    iget-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    #@9
    if-nez v2, :cond_0

    #@b
    iget-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    #@d
    if-nez v2, :cond_0

    #@f
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    #@11
    aget-boolean v2, v2, v0

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 2505
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    #@17
    aget-object v1, v2, v0

    #@19
    .line 2506
    .local v1, "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    if-eqz v1, :cond_1

    #@1b
    .line 2507
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    #@1d
    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    #@1f
    .line 2508
    iget-boolean v4, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    #@21
    iget-boolean v5, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    #@23
    .line 2507
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V

    #@26
    .line 2503
    .end local v1    # "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 2513
    :cond_2
    const/4 v2, 0x0

    #@2a
    iput-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    #@2c
    .line 2514
    const/4 v2, 0x1

    #@2d
    return v2
.end method

.method public onScrollChanged()V
    .locals 1

    #@0
    .prologue
    .line 2527
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    #@3
    .line 2526
    return-void
.end method

.method public removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V
    .locals 4
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;

    #@0
    .prologue
    .line 2477
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    #@2
    if-ge v0, v2, :cond_0

    #@4
    .line 2478
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    #@6
    aget-object v2, v2, v0

    #@8
    if-ne v2, p1, :cond_2

    #@a
    .line 2479
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v3, v2, v0

    #@f
    .line 2480
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    #@11
    add-int/lit8 v2, v2, -0x1

    #@13
    iput v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    #@15
    .line 2485
    :cond_0
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    #@17
    if-nez v2, :cond_1

    #@19
    .line 2486
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    #@1b
    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@22
    move-result-object v1

    #@23
    .line 2487
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@26
    .line 2476
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void

    #@27
    .line 2477
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0
.end method
