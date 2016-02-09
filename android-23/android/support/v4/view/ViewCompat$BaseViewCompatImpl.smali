.class Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewCompat$ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# instance fields
.field private mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private mTempDetachBound:Z

.field mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 393
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    #@6
    .line 389
    return-void
.end method

.method private bindTempDetach()V
    .locals 4

    #@0
    .prologue
    .line 593
    :try_start_0
    const-class v1, Landroid/view/View;

    #@2
    .line 594
    const-string/jumbo v2, "dispatchStartTemporaryDetach"

    #@5
    .line 593
    const/4 v3, 0x0

    #@6
    new-array v3, v3, [Ljava/lang/Class;

    #@8
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    #@e
    .line 595
    const-class v1, Landroid/view/View;

    #@10
    .line 596
    const-string/jumbo v2, "dispatchFinishTemporaryDetach"

    #@13
    .line 595
    const/4 v3, 0x0

    #@14
    new-array v3, v3, [Ljava/lang/Class;

    #@16
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@19
    move-result-object v1

    #@1a
    iput-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 600
    :goto_0
    const/4 v1, 0x1

    #@1d
    iput-boolean v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    #@1f
    .line 591
    return-void

    #@20
    .line 597
    :catch_0
    move-exception v0

    #@21
    .line 598
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v1, "ViewCompat"

    #@24
    const-string/jumbo v2, "Couldn\'t find method"

    #@27
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_0
.end method

.method private canScrollingViewScrollHorizontally(Landroid/support/v4/view/ScrollingView;I)Z
    .locals 6
    .param p1, "view"    # Landroid/support/v4/view/ScrollingView;
    .param p2, "direction"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 864
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollOffset()I

    #@5
    move-result v0

    #@6
    .line 865
    .local v0, "offset":I
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollRange()I

    #@9
    move-result v4

    #@a
    .line 866
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollExtent()I

    #@d
    move-result v5

    #@e
    .line 865
    sub-int v1, v4, v5

    #@10
    .line 867
    .local v1, "range":I
    if-nez v1, :cond_0

    #@12
    return v3

    #@13
    .line 868
    :cond_0
    if-gez p2, :cond_2

    #@15
    .line 869
    if-lez v0, :cond_1

    #@17
    :goto_0
    return v2

    #@18
    :cond_1
    move v2, v3

    #@19
    goto :goto_0

    #@1a
    .line 871
    :cond_2
    add-int/lit8 v4, v1, -0x1

    #@1c
    if-ge v0, v4, :cond_3

    #@1e
    :goto_1
    return v2

    #@1f
    :cond_3
    move v2, v3

    #@20
    goto :goto_1
.end method

.method private canScrollingViewScrollVertically(Landroid/support/v4/view/ScrollingView;I)Z
    .locals 6
    .param p1, "view"    # Landroid/support/v4/view/ScrollingView;
    .param p2, "direction"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 876
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollOffset()I

    #@5
    move-result v0

    #@6
    .line 877
    .local v0, "offset":I
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollRange()I

    #@9
    move-result v4

    #@a
    .line 878
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollExtent()I

    #@d
    move-result v5

    #@e
    .line 877
    sub-int v1, v4, v5

    #@10
    .line 879
    .local v1, "range":I
    if-nez v1, :cond_0

    #@12
    return v3

    #@13
    .line 880
    :cond_0
    if-gez p2, :cond_2

    #@15
    .line 881
    if-lez v0, :cond_1

    #@17
    :goto_0
    return v2

    #@18
    :cond_1
    move v2, v3

    #@19
    goto :goto_0

    #@1a
    .line 883
    :cond_2
    add-int/lit8 v4, v1, -0x1

    #@1c
    if-ge v0, v4, :cond_3

    #@1e
    :goto_1
    return v2

    #@1f
    :cond_3
    move v2, v3

    #@20
    goto :goto_1
.end method


# virtual methods
.method public animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 660
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #@2
    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    #@5
    return-object v0
.end method

.method public canScrollHorizontally(Landroid/view/View;I)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I

    #@0
    .prologue
    .line 397
    instance-of v0, p1, Landroid/support/v4/view/ScrollingView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 398
    check-cast p1, Landroid/support/v4/view/ScrollingView;

    #@6
    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->canScrollingViewScrollHorizontally(Landroid/support/v4/view/ScrollingView;I)Z

    #@9
    move-result v0

    #@a
    .line 397
    :goto_0
    return v0

    #@b
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I

    #@0
    .prologue
    .line 401
    instance-of v0, p1, Landroid/support/v4/view/ScrollingView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 402
    check-cast p1, Landroid/support/v4/view/ScrollingView;

    #@6
    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->canScrollingViewScrollVertically(Landroid/support/v4/view/ScrollingView;I)Z

    #@9
    move-result v0

    #@a
    .line 401
    :goto_0
    return v0

    #@b
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public combineMeasuredStates(II)I
    .locals 1
    .param p1, "curState"    # I
    .param p2, "newState"    # I

    #@0
    .prologue
    .line 954
    or-int v0, p1, p2

    #@2
    return v0
.end method

.method public dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    #@0
    .prologue
    .line 811
    return-object p2
.end method

.method public dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 571
    iget-boolean v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 572
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    #@7
    .line 574
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 576
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    #@d
    const/4 v2, 0x0

    #@e
    new-array v2, v2, [Ljava/lang/Object;

    #@10
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 570
    :goto_0
    return-void

    #@14
    .line 577
    :catch_0
    move-exception v0

    #@15
    .line 578
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ViewCompat"

    #@18
    const-string/jumbo v2, "Error calling dispatchFinishTemporaryDetach"

    #@1b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    goto :goto_0

    #@1f
    .line 582
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onFinishTemporaryDetach()V

    #@22
    goto :goto_0
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    #@0
    .prologue
    .line 932
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 933
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    #@6
    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedFling(FFZ)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 936
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    #@0
    .prologue
    .line 941
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 942
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    #@6
    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreFling(FF)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 944
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
    .param p5, "offsetInWindow"    # [I

    #@0
    .prologue
    .line 922
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 923
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    #@6
    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreScroll(II[I[I)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 926
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "offsetInWindow"    # [I

    #@0
    .prologue
    .line 912
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    #@2
    if-eqz v0, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 913
    check-cast v0, Landroid/support/v4/view/NestedScrollingChild;

    #@7
    move v1, p2

    #@8
    move v2, p3

    #@9
    move v3, p4

    #@a
    move v4, p5

    #@b
    move-object v5, p6

    #@c
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedScroll(IIII[I)Z

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 916
    :cond_0
    const/4 v0, 0x0

    #@12
    return v0
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 554
    iget-boolean v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 555
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    #@7
    .line 557
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 559
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    #@d
    const/4 v2, 0x0

    #@e
    new-array v2, v2, [Ljava/lang/Object;

    #@10
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 553
    :goto_0
    return-void

    #@14
    .line 560
    :catch_0
    move-exception v0

    #@15
    .line 561
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ViewCompat"

    #@18
    const-string/jumbo v2, "Error calling dispatchStartTemporaryDetach"

    #@1b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    goto :goto_0

    #@1f
    .line 565
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    #@22
    goto :goto_0
.end method

.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 529
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 463
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 466
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    return v0
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 845
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 860
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 775
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getElevation(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 757
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 785
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method getFrameTime()J
    .locals 2

    #@0
    .prologue
    .line 448
    const-wide/16 v0, 0xa

    #@2
    return-wide v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 451
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLabelFor(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 475
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLayerType(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 472
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 486
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMeasuredHeightAndState(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 524
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 655
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getMinimumHeight(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 650
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getMinimumWidth(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getOverScrollMode(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 405
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 544
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 539
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getPivotX(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 725
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getPivotY(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 730
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getRotation(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 625
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getRotationX(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 630
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getRotationY(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 635
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getScaleX(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 640
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getScaleY(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 645
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 739
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getTranslationX(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 605
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getTranslationY(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 610
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 766
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 744
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getX(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 615
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getY(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 620
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getZ(Landroid/view/View;)F
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 959
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getTranslationZ(Landroid/view/View;)F

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getElevation(Landroid/view/View;)F

    #@7
    move-result v1

    #@8
    add-float/2addr v0, v1

    #@9
    return v0
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 416
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 903
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 904
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    #@6
    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->hasNestedScrollingParent()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 906
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 588
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 430
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 964
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->isAttachedToWindow(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 457
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isLaidOut(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 949
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->isLaidOut(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 837
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 838
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    #@6
    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 840
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public isOpaque(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    .line 502
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@7
    .line 503
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@a
    move-result v2

    #@b
    const/4 v3, -0x1

    #@c
    if-ne v2, v3, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    :cond_0
    return v1

    #@10
    .line 505
    :cond_1
    return v1
.end method

.method public isPaddingRelative(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 826
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 794
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    #@0
    .prologue
    .line 806
    return-object p2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 422
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    #@0
    .prologue
    .line 425
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 419
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 460
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    #@3
    .line 435
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 439
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->invalidate(IIII)V

    #@3
    .line 438
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@7
    .line 441
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J

    #@0
    .prologue
    .line 445
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    #@3
    move-result-wide v0

    #@4
    add-long/2addr v0, p3

    #@5
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@8
    .line 444
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 748
    return-void
.end method

.method public resolveSizeAndState(III)I
    .locals 1
    .param p1, "size"    # I
    .param p2, "measureSpec"    # I
    .param p3, "childMeasuredState"    # I

    #@0
    .prologue
    .line 509
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delegate"    # Landroid/support/v4/view/AccessibilityDelegateCompat;

    #@0
    .prologue
    .line 410
    return-void
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 533
    return-void
.end method

.method public setActivated(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activated"    # Z

    #@0
    .prologue
    .line 820
    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 679
    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tintList"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 850
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    #@3
    .line 849
    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 855
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    #@3
    .line 854
    return-void
.end method

.method public setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 779
    return-void
.end method

.method public setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "clipBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 770
    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "elevation"    # F

    #@0
    .prologue
    .line 752
    return-void
.end method

.method public setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fitSystemWindows"    # Z

    #@0
    .prologue
    .line 789
    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasTransientState"    # Z

    #@0
    .prologue
    .line 432
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 453
    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I

    #@0
    .prologue
    .line 477
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 480
    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layerType"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 468
    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    #@0
    .prologue
    .line 490
    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 830
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 831
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    #@6
    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingChild;->setNestedScrollingEnabled(Z)V

    #@9
    .line 829
    :cond_0
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/support/v4/view/OnApplyWindowInsetsListener;

    #@0
    .prologue
    .line 800
    return-void
.end method

.method public setOverScrollMode(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 407
    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # I
    .param p3, "top"    # I
    .param p4, "end"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 549
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    #@3
    .line 548
    return-void
.end method

.method public setPivotX(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 714
    return-void
.end method

.method public setPivotY(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 719
    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 664
    return-void
.end method

.method public setRotationX(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 684
    return-void
.end method

.method public setRotationY(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 689
    return-void
.end method

.method public setSaveFromParentEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 815
    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 694
    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 699
    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 734
    return-void
.end method

.method public setTranslationX(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 669
    return-void
.end method

.method public setTranslationY(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 674
    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "translationZ"    # F

    #@0
    .prologue
    .line 761
    return-void
.end method

.method public setX(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 704
    return-void
.end method

.method public setY(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 709
    return-void
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "axes"    # I

    #@0
    .prologue
    .line 888
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 889
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    #@6
    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingChild;->startNestedScroll(I)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 891
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 896
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 897
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    #@6
    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->stopNestedScroll()V

    #@9
    .line 895
    :cond_0
    return-void
.end method
