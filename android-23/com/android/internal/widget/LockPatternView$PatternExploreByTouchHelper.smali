.class final Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PatternExploreByTouchHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternView;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternView;
    .param p2, "forView"    # Landroid/view/View;

    #@0
    .prologue
    .line 1310
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@2
    .line 1311
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    #@5
    .line 1299
    new-instance v0, Landroid/graphics/Rect;

    #@7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    #@c
    .line 1300
    new-instance v0, Ljava/util/HashMap;

    #@e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Ljava/util/HashMap;

    #@13
    .line 1310
    return-void
.end method

.method private getBoundsForVirtualView(I)Landroid/graphics/Rect;
    .locals 12
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    #@2
    .line 1431
    add-int/lit8 v7, p1, -0x1

    #@4
    .line 1432
    .local v7, "ordinal":I
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    #@6
    .line 1433
    .local v0, "bounds":Landroid/graphics/Rect;
    div-int/lit8 v8, v7, 0x3

    #@8
    .line 1434
    .local v8, "row":I
    rem-int/lit8 v6, v7, 0x3

    #@a
    .line 1435
    .local v6, "col":I
    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@c
    invoke-static {v9}, Lcom/android/internal/widget/LockPatternView;->-get1(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    #@f
    move-result-object v9

    #@10
    aget-object v9, v9, v8

    #@12
    aget-object v1, v9, v6

    #@14
    .line 1436
    .local v1, "cell":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@16
    invoke-static {v9, v6}, Lcom/android/internal/widget/LockPatternView;->-wrap0(Lcom/android/internal/widget/LockPatternView;I)F

    #@19
    move-result v4

    #@1a
    .line 1437
    .local v4, "centerX":F
    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@1c
    invoke-static {v9, v8}, Lcom/android/internal/widget/LockPatternView;->-wrap1(Lcom/android/internal/widget/LockPatternView;I)F

    #@1f
    move-result v5

    #@20
    .line 1438
    .local v5, "centerY":F
    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@22
    invoke-static {v9}, Lcom/android/internal/widget/LockPatternView;->-get9(Lcom/android/internal/widget/LockPatternView;)F

    #@25
    move-result v9

    #@26
    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@28
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternView;->-get6(Lcom/android/internal/widget/LockPatternView;)F

    #@2b
    move-result v10

    #@2c
    mul-float/2addr v9, v10

    #@2d
    mul-float v2, v9, v11

    #@2f
    .line 1439
    .local v2, "cellheight":F
    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@31
    invoke-static {v9}, Lcom/android/internal/widget/LockPatternView;->-get10(Lcom/android/internal/widget/LockPatternView;)F

    #@34
    move-result v9

    #@35
    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@37
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternView;->-get6(Lcom/android/internal/widget/LockPatternView;)F

    #@3a
    move-result v10

    #@3b
    mul-float/2addr v9, v10

    #@3c
    mul-float v3, v9, v11

    #@3e
    .line 1440
    .local v3, "cellwidth":F
    sub-float v9, v4, v3

    #@40
    float-to-int v9, v9

    #@41
    iput v9, v0, Landroid/graphics/Rect;->left:I

    #@43
    .line 1441
    add-float v9, v4, v3

    #@45
    float-to-int v9, v9

    #@46
    iput v9, v0, Landroid/graphics/Rect;->right:I

    #@48
    .line 1442
    sub-float v9, v5, v2

    #@4a
    float-to-int v9, v9

    #@4b
    iput v9, v0, Landroid/graphics/Rect;->top:I

    #@4d
    .line 1443
    add-float v9, v5, v2

    #@4f
    float-to-int v9, v9

    #@50
    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    #@52
    .line 1444
    return-object v0
.end method

.method private getTextForVirtualView(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    .line 1458
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 1459
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->shouldSpeakPassword()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    new-array v1, v1, [Ljava/lang/Object;

    #@f
    .line 1460
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v2

    #@13
    const/4 v3, 0x0

    #@14
    aput-object v2, v1, v3

    #@16
    const v2, 0x1040297

    #@19
    .line 1459
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    :goto_0
    return-object v1

    #@1e
    .line 1461
    :cond_0
    const v1, 0x1040296

    #@21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    goto :goto_0
.end method

.method private getVirtualViewIdForHit(FF)I
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    const/high16 v6, -0x80000000

    #@2
    .line 1473
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@4
    invoke-static {v5, p2}, Lcom/android/internal/widget/LockPatternView;->-wrap3(Lcom/android/internal/widget/LockPatternView;F)I

    #@7
    move-result v3

    #@8
    .line 1474
    .local v3, "rowHit":I
    if-gez v3, :cond_0

    #@a
    .line 1475
    return v6

    #@b
    .line 1477
    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@d
    invoke-static {v5, p1}, Lcom/android/internal/widget/LockPatternView;->-wrap2(Lcom/android/internal/widget/LockPatternView;F)I

    #@10
    move-result v0

    #@11
    .line 1478
    .local v0, "columnHit":I
    if-gez v0, :cond_1

    #@13
    .line 1479
    return v6

    #@14
    .line 1481
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@16
    invoke-static {v5}, Lcom/android/internal/widget/LockPatternView;->-get7(Lcom/android/internal/widget/LockPatternView;)[[Z

    #@19
    move-result-object v5

    #@1a
    aget-object v5, v5, v3

    #@1c
    aget-boolean v1, v5, v0

    #@1e
    .line 1482
    .local v1, "dotAvailable":Z
    mul-int/lit8 v5, v3, 0x3

    #@20
    add-int/2addr v5, v0

    #@21
    add-int/lit8 v2, v5, 0x1

    #@23
    .line 1483
    .local v2, "dotId":I
    if-eqz v1, :cond_2

    #@25
    move v4, v2

    #@26
    .line 1486
    .local v4, "view":I
    :goto_0
    return v4

    #@27
    .line 1483
    .end local v4    # "view":I
    :cond_2
    const/high16 v4, -0x80000000

    #@29
    .restart local v4    # "view":I
    goto :goto_0
.end method

.method private isClickable(I)Z
    .locals 4
    .param p1, "virtualViewId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1386
    const/high16 v3, -0x80000000

    #@3
    if-eq p1, v3, :cond_1

    #@5
    .line 1387
    add-int/lit8 v3, p1, -0x1

    #@7
    div-int/lit8 v1, v3, 0x3

    #@9
    .line 1388
    .local v1, "row":I
    add-int/lit8 v3, p1, -0x1

    #@b
    rem-int/lit8 v0, v3, 0x3

    #@d
    .line 1389
    .local v0, "col":I
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@f
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternView;->-get7(Lcom/android/internal/widget/LockPatternView;)[[Z

    #@12
    move-result-object v3

    #@13
    aget-object v3, v3, v1

    #@15
    aget-boolean v3, v3, v0

    #@17
    if-eqz v3, :cond_0

    #@19
    :goto_0
    return v2

    #@1a
    :cond_0
    const/4 v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1391
    .end local v0    # "col":I
    .end local v1    # "row":I
    :cond_1
    return v2
.end method

.method private shouldSpeakPassword()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1449
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@3
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->-get2(Lcom/android/internal/widget/LockPatternView;)Landroid/content/Context;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v2

    #@b
    const-string/jumbo v3, "speak_password"

    #@e
    .line 1450
    const/4 v4, -0x3

    #@f
    .line 1448
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    const/4 v1, 0x1

    #@16
    .line 1451
    .local v1, "speakPassword":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@18
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->-get0(Lcom/android/internal/widget/LockPatternView;)Landroid/media/AudioManager;

    #@1b
    move-result-object v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 1452
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@20
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->-get0(Lcom/android/internal/widget/LockPatternView;)Landroid/media/AudioManager;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_1

    #@2a
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@2c
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->-get0(Lcom/android/internal/widget/LockPatternView;)Landroid/media/AudioManager;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    #@33
    move-result v0

    #@34
    .line 1454
    :goto_1
    if-nez v1, :cond_3

    #@36
    :goto_2
    return v0

    #@37
    .line 1448
    .end local v1    # "speakPassword":Z
    :cond_0
    const/4 v1, 0x0

    #@38
    .restart local v1    # "speakPassword":Z
    goto :goto_0

    #@39
    .line 1452
    :cond_1
    const/4 v0, 0x1

    #@3a
    .local v0, "hasHeadphones":Z
    goto :goto_1

    #@3b
    .line 1453
    .end local v0    # "hasHeadphones":Z
    :cond_2
    const/4 v0, 0x0

    #@3c
    .restart local v0    # "hasHeadphones":Z
    goto :goto_1

    #@3d
    .line 1454
    .end local v0    # "hasHeadphones":Z
    :cond_3
    const/4 v0, 0x1

    #@3e
    goto :goto_2
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 1318
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getVirtualViewIdForHit(FF)I

    #@3
    move-result v0

    #@4
    .line 1319
    .local v0, "id":I
    return v0
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 4
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    #@0
    .prologue
    .line 1325
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@2
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->-get8(Lcom/android/internal/widget/LockPatternView;)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1326
    return-void

    #@9
    .line 1328
    :cond_0
    const/4 v0, 0x1

    #@a
    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    #@c
    if-ge v0, v2, :cond_2

    #@e
    .line 1329
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Ljava/util/HashMap;

    #@10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_1

    #@1a
    .line 1330
    new-instance v1, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    #@1c
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;-><init>(Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;Ljava/lang/CharSequence;)V

    #@23
    .line 1331
    .local v1, "item":Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Ljava/util/HashMap;

    #@25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 1335
    .end local v1    # "item":Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    :cond_1
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    #@2f
    .line 1328
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1323
    :cond_2
    return-void
.end method

.method onItemClicked(I)Z
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1420
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateVirtualView(I)V

    #@4
    .line 1425
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@7
    .line 1427
    return v0
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1399
    packed-switch p2, :pswitch_data_0

    #@3
    .line 1410
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1404
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->onItemClicked(I)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 1399
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 1351
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 1352
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@5
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternView;->-get8(Lcom/android/internal/widget/LockPatternView;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 1353
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getContext()Landroid/content/Context;

    #@10
    move-result-object v1

    #@11
    .line 1354
    const v2, 0x1040299

    #@14
    .line 1353
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@17
    move-result-object v0

    #@18
    .line 1355
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    #@1b
    .line 1350
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 1343
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1344
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Ljava/util/HashMap;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    #@18
    iget-object v0, v1, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->description:Ljava/lang/CharSequence;

    #@1a
    .line 1345
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    .line 1340
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 1365
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    #@7
    .line 1366
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    #@e
    .line 1368
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    #@10
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternView;->-get8(Lcom/android/internal/widget/LockPatternView;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1369
    const/4 v1, 0x1

    #@17
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    #@1a
    .line 1371
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->isClickable(I)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 1373
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@22
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@25
    .line 1374
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->isClickable(I)Z

    #@28
    move-result v1

    #@29
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    #@2c
    .line 1379
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getBoundsForVirtualView(I)Landroid/graphics/Rect;

    #@2f
    move-result-object v0

    #@30
    .line 1381
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    #@33
    .line 1360
    return-void
.end method
