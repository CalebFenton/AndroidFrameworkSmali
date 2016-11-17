.class Lcom/android/uiautomator/core/QueryController;
.super Ljava/lang/Object;
.source "QueryController.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final VERBOSE:Z


# instance fields
.field private mLastActivityName:Ljava/lang/String;

.field private mLastTraversedText:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mLogIndent:I

.field private mLogParentIndent:I

.field private mPatternCounter:I

.field private mPatternIndexer:I

.field private final mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/uiautomator/core/QueryController;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/uiautomator/core/QueryController;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/uiautomator/core/QueryController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/uiautomator/core/QueryController;->mLastActivityName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/uiautomator/core/QueryController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 31
    const-class v0, Lcom/android/uiautomator/core/QueryController;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 33
    sget-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@a
    const/4 v1, 0x3

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@e
    move-result v0

    #@f
    sput-boolean v0, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    #@11
    .line 34
    sget-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@13
    const/4 v1, 0x2

    #@14
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@17
    move-result v0

    #@18
    sput-boolean v0, Lcom/android/uiautomator/core/QueryController;->VERBOSE:Z

    #@1a
    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V
    .locals 2
    .param p1, "bridge"    # Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 38
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    #@b
    .line 40
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastActivityName:Ljava/lang/String;

    #@e
    .line 44
    iput v1, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    #@10
    .line 45
    iput v1, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    #@12
    .line 51
    iput v1, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    #@14
    .line 52
    iput v1, p0, Lcom/android/uiautomator/core/QueryController;->mLogParentIndent:I

    #@16
    .line 54
    const-string/jumbo v0, ""

    #@19
    iput-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;

    #@1b
    .line 57
    iput-object p1, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@1d
    .line 58
    new-instance v0, Lcom/android/uiautomator/core/QueryController$1;

    #@1f
    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/QueryController$1;-><init>(Lcom/android/uiautomator/core/QueryController;)V

    #@22
    invoke-virtual {p1, v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V

    #@25
    .line 56
    return-void
.end method

.method private findNodePatternRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;ILcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10
    .param p1, "subSelector"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "fromNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "index"    # I
    .param p4, "originalPattern"    # Lcom/android/uiautomator/core/UiSelector;

    #@0
    .prologue
    .line 406
    invoke-virtual {p1, p2, p3}, Lcom/android/uiautomator/core/UiSelector;->isMatchFor(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z

    #@3
    move-result v5

    #@4
    if-eqz v5, :cond_3

    #@6
    .line 407
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->isLeaf()Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_6

    #@c
    .line 408
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    #@e
    if-nez v5, :cond_1

    #@10
    .line 409
    sget-boolean v5, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    #@12
    if-eqz v5, :cond_0

    #@14
    .line 410
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@16
    .line 411
    const-string/jumbo v6, "%s"

    #@19
    const/4 v7, 0x1

    #@1a
    new-array v7, v7, [Ljava/lang/Object;

    #@1c
    const/4 v8, 0x0

    #@1d
    invoke-virtual {p1, v8}, Lcom/android/uiautomator/core/UiSelector;->dumpToString(Z)Ljava/lang/String;

    #@20
    move-result-object v8

    #@21
    const/4 v9, 0x0

    #@22
    aput-object v8, v7, v9

    #@24
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v6

    #@28
    .line 410
    invoke-direct {p0, v6}, Lcom/android/uiautomator/core/QueryController;->formatLog(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 412
    :cond_0
    return-object p2

    #@30
    .line 414
    :cond_1
    sget-boolean v5, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    #@32
    if-eqz v5, :cond_2

    #@34
    .line 415
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@36
    .line 416
    const-string/jumbo v6, "%s"

    #@39
    const/4 v7, 0x1

    #@3a
    new-array v7, v7, [Ljava/lang/Object;

    #@3c
    const/4 v8, 0x0

    #@3d
    invoke-virtual {p1, v8}, Lcom/android/uiautomator/core/UiSelector;->dumpToString(Z)Ljava/lang/String;

    #@40
    move-result-object v8

    #@41
    const/4 v9, 0x0

    #@42
    aput-object v8, v7, v9

    #@44
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    .line 415
    invoke-direct {p0, v6}, Lcom/android/uiautomator/core/QueryController;->formatLog(Ljava/lang/String;)Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 417
    :cond_2
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    #@51
    add-int/lit8 v5, v5, 0x1

    #@53
    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    #@55
    .line 418
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    #@57
    add-int/lit8 v5, v5, -0x1

    #@59
    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    #@5b
    .line 424
    move-object p1, p4

    #@5c
    .line 426
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogParentIndent:I

    #@5e
    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    #@60
    .line 454
    :cond_3
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    #@63
    move-result v0

    #@64
    .line 455
    .local v0, "childCount":I
    const/4 v2, 0x0

    #@65
    .line 456
    .local v2, "hasNullChild":Z
    const/4 v3, 0x0

    #@66
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_c

    #@68
    .line 457
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@6b
    move-result-object v1

    #@6c
    .line 458
    .local v1, "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_a

    #@6e
    .line 459
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@70
    .line 460
    const-string/jumbo v6, "AccessibilityNodeInfo returned a null child (%d of %d)"

    #@73
    .line 459
    const/4 v7, 0x2

    #@74
    new-array v7, v7, [Ljava/lang/Object;

    #@76
    .line 460
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79
    move-result-object v8

    #@7a
    const/4 v9, 0x0

    #@7b
    aput-object v8, v7, v9

    #@7d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@80
    move-result-object v8

    #@81
    const/4 v9, 0x1

    #@82
    aput-object v8, v7, v9

    #@84
    .line 459
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@87
    move-result-object v6

    #@88
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    .line 461
    if-nez v2, :cond_4

    #@8d
    .line 462
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@8f
    const-string/jumbo v6, "parent = %s"

    #@92
    const/4 v7, 0x1

    #@93
    new-array v7, v7, [Ljava/lang/Object;

    #@95
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    #@98
    move-result-object v8

    #@99
    const/4 v9, 0x0

    #@9a
    aput-object v8, v7, v9

    #@9c
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9f
    move-result-object v6

    #@a0
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    .line 464
    :cond_4
    const/4 v2, 0x1

    #@a4
    .line 456
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@a6
    goto :goto_0

    #@a7
    .line 429
    .end local v0    # "childCount":I
    .end local v1    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "hasNullChild":Z
    .end local v3    # "i":I
    :cond_6
    sget-boolean v5, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    #@a9
    if-eqz v5, :cond_7

    #@ab
    .line 430
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@ad
    .line 431
    const-string/jumbo v6, "%s"

    #@b0
    const/4 v7, 0x1

    #@b1
    new-array v7, v7, [Ljava/lang/Object;

    #@b3
    const/4 v8, 0x0

    #@b4
    invoke-virtual {p1, v8}, Lcom/android/uiautomator/core/UiSelector;->dumpToString(Z)Ljava/lang/String;

    #@b7
    move-result-object v8

    #@b8
    const/4 v9, 0x0

    #@b9
    aput-object v8, v7, v9

    #@bb
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@be
    move-result-object v6

    #@bf
    .line 430
    invoke-direct {p0, v6}, Lcom/android/uiautomator/core/QueryController;->formatLog(Ljava/lang/String;)Ljava/lang/String;

    #@c2
    move-result-object v6

    #@c3
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c6
    .line 433
    :cond_7
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasChildSelector()Z

    #@c9
    move-result v5

    #@ca
    if-eqz v5, :cond_8

    #@cc
    .line 434
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    #@ce
    add-int/lit8 v5, v5, 0x1

    #@d0
    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    #@d2
    .line 435
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getChildSelector()Lcom/android/uiautomator/core/UiSelector;

    #@d5
    move-result-object p1

    #@d6
    .line 436
    if-nez p1, :cond_3

    #@d8
    .line 437
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@da
    const-string/jumbo v6, "Error: A child selector without content"

    #@dd
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e0
    .line 438
    const/4 v5, 0x0

    #@e1
    return-object v5

    #@e2
    .line 440
    :cond_8
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasParentSelector()Z

    #@e5
    move-result v5

    #@e6
    if-eqz v5, :cond_3

    #@e8
    .line 441
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    #@ea
    add-int/lit8 v5, v5, 0x1

    #@ec
    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    #@ee
    .line 442
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getParentSelector()Lcom/android/uiautomator/core/UiSelector;

    #@f1
    move-result-object p1

    #@f2
    .line 443
    if-nez p1, :cond_9

    #@f4
    .line 444
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@f6
    const-string/jumbo v6, "Error: A parent selector without content"

    #@f9
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@fc
    .line 445
    const/4 v5, 0x0

    #@fd
    return-object v5

    #@fe
    .line 447
    :cond_9
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@101
    move-result-object p2

    #@102
    .line 448
    if-nez p2, :cond_3

    #@104
    .line 449
    const/4 v5, 0x0

    #@105
    return-object v5

    #@106
    .line 467
    .restart local v0    # "childCount":I
    .restart local v1    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v2    # "hasNullChild":Z
    .restart local v3    # "i":I
    :cond_a
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    #@109
    move-result v5

    #@10a
    if-nez v5, :cond_b

    #@10c
    .line 468
    sget-boolean v5, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    #@10e
    if-eqz v5, :cond_5

    #@110
    .line 469
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@112
    .line 470
    const-string/jumbo v6, "Skipping invisible child: %s"

    #@115
    const/4 v7, 0x1

    #@116
    new-array v7, v7, [Ljava/lang/Object;

    #@118
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    #@11b
    move-result-object v8

    #@11c
    const/4 v9, 0x0

    #@11d
    aput-object v8, v7, v9

    #@11f
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@122
    move-result-object v6

    #@123
    .line 469
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@126
    goto/16 :goto_1

    #@128
    .line 473
    :cond_b
    invoke-direct {p0, p1, v1, v3, p4}, Lcom/android/uiautomator/core/QueryController;->findNodePatternRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;ILcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@12b
    move-result-object v4

    #@12c
    .line 475
    .local v4, "retNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_5

    #@12e
    .line 476
    return-object v4

    #@12f
    .line 479
    .end local v1    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "retNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_c
    const/4 v5, 0x0

    #@130
    return-object v5
.end method

.method private findNodeRegularRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 12
    .param p1, "subSelector"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "fromNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "index"    # I

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v9, 0x0

    #@3
    .line 294
    invoke-virtual {p1, p2, p3}, Lcom/android/uiautomator/core/UiSelector;->isMatchFor(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z

    #@6
    move-result v5

    #@7
    if-eqz v5, :cond_4

    #@9
    .line 295
    sget-boolean v5, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 296
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v6, "%s"

    #@12
    new-array v7, v11, [Ljava/lang/Object;

    #@14
    .line 297
    invoke-virtual {p1, v10}, Lcom/android/uiautomator/core/UiSelector;->dumpToString(Z)Ljava/lang/String;

    #@17
    move-result-object v8

    #@18
    aput-object v8, v7, v10

    #@1a
    .line 296
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1d
    move-result-object v6

    #@1e
    invoke-direct {p0, v6}, Lcom/android/uiautomator/core/QueryController;->formatLog(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 299
    :cond_0
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->isLeaf()Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_1

    #@2b
    .line 300
    return-object p2

    #@2c
    .line 302
    :cond_1
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasChildSelector()Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_2

    #@32
    .line 303
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    #@34
    add-int/lit8 v5, v5, 0x1

    #@36
    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    #@38
    .line 304
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getChildSelector()Lcom/android/uiautomator/core/UiSelector;

    #@3b
    move-result-object p1

    #@3c
    .line 305
    if-nez p1, :cond_4

    #@3e
    .line 306
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@40
    const-string/jumbo v6, "Error: A child selector without content"

    #@43
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 307
    return-object v9

    #@47
    .line 309
    :cond_2
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasParentSelector()Z

    #@4a
    move-result v5

    #@4b
    if-eqz v5, :cond_4

    #@4d
    .line 310
    iget v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    #@4f
    add-int/lit8 v5, v5, 0x1

    #@51
    iput v5, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    #@53
    .line 311
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getParentSelector()Lcom/android/uiautomator/core/UiSelector;

    #@56
    move-result-object p1

    #@57
    .line 312
    if-nez p1, :cond_3

    #@59
    .line 313
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@5b
    const-string/jumbo v6, "Error: A parent selector without content"

    #@5e
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 314
    return-object v9

    #@62
    .line 318
    :cond_3
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@65
    move-result-object p2

    #@66
    .line 319
    if-nez p2, :cond_4

    #@68
    .line 320
    return-object v9

    #@69
    .line 324
    :cond_4
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    #@6c
    move-result v0

    #@6d
    .line 325
    .local v0, "childCount":I
    const/4 v2, 0x0

    #@6e
    .line 326
    .local v2, "hasNullChild":Z
    const/4 v3, 0x0

    #@6f
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_9

    #@71
    .line 327
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@74
    move-result-object v1

    #@75
    .line 328
    .local v1, "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_7

    #@77
    .line 329
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@79
    .line 330
    const-string/jumbo v6, "AccessibilityNodeInfo returned a null child (%d of %d)"

    #@7c
    .line 329
    const/4 v7, 0x2

    #@7d
    new-array v7, v7, [Ljava/lang/Object;

    #@7f
    .line 330
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@82
    move-result-object v8

    #@83
    aput-object v8, v7, v10

    #@85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@88
    move-result-object v8

    #@89
    aput-object v8, v7, v11

    #@8b
    .line 329
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@8e
    move-result-object v6

    #@8f
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 331
    if-nez v2, :cond_5

    #@94
    .line 332
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@96
    const-string/jumbo v6, "parent = %s"

    #@99
    new-array v7, v11, [Ljava/lang/Object;

    #@9b
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    #@9e
    move-result-object v8

    #@9f
    aput-object v8, v7, v10

    #@a1
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a4
    move-result-object v6

    #@a5
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a8
    .line 334
    :cond_5
    const/4 v2, 0x1

    #@a9
    .line 326
    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@ab
    goto :goto_0

    #@ac
    .line 337
    :cond_7
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    #@af
    move-result v5

    #@b0
    if-nez v5, :cond_8

    #@b2
    .line 338
    sget-boolean v5, Lcom/android/uiautomator/core/QueryController;->VERBOSE:Z

    #@b4
    if-eqz v5, :cond_6

    #@b6
    .line 339
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@b8
    .line 340
    const-string/jumbo v6, "Skipping invisible child: %s"

    #@bb
    new-array v7, v11, [Ljava/lang/Object;

    #@bd
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    #@c0
    move-result-object v8

    #@c1
    aput-object v8, v7, v10

    #@c3
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c6
    move-result-object v6

    #@c7
    .line 339
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ca
    goto :goto_1

    #@cb
    .line 343
    :cond_8
    invoke-direct {p0, p1, v1, v3}, Lcom/android/uiautomator/core/QueryController;->findNodeRegularRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@ce
    move-result-object v4

    #@cf
    .line 344
    .local v4, "retNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_6

    #@d1
    .line 345
    return-object v4

    #@d2
    .line 348
    .end local v1    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "retNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_9
    return-object v9
.end method

.method private formatLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    .line 513
    .local v0, "l":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@9
    .local v1, "space":I
    :goto_0
    iget v2, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 514
    const-string/jumbo v2, ". . "

    #@10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 513
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 515
    :cond_0
    iget v2, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    #@18
    if-lez v2, :cond_1

    #@1a
    .line 516
    const-string/jumbo v2, ". . [%d]: %s"

    #@1d
    new-array v3, v3, [Ljava/lang/Object;

    #@1f
    iget v4, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    #@21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v4

    #@25
    aput-object v4, v3, v5

    #@27
    aput-object p1, v3, v6

    #@29
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 519
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    return-object v2

    #@35
    .line 518
    :cond_1
    const-string/jumbo v2, ". . [%d]: %s"

    #@38
    new-array v3, v3, [Ljava/lang/Object;

    #@3a
    iget v4, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    #@3c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f
    move-result-object v4

    #@40
    aput-object v4, v3, v5

    #@42
    aput-object p1, v3, v6

    #@44
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    goto :goto_1
.end method

.method private initializeNewSearch()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 113
    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    #@3
    .line 114
    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    #@5
    .line 115
    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    #@7
    .line 116
    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mLogParentIndent:I

    #@9
    .line 112
    return-void
.end method

.method private translateCompoundSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "fromNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "isCounting"    # Z

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    .line 221
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasContainerSelector()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_2

    #@a
    .line 223
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getContainerSelector()Lcom/android/uiautomator/core/UiSelector;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiSelector;->hasContainerSelector()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 225
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getContainerSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v0

    #@18
    .line 224
    invoke-direct {p0, v0, p2, v5}, Lcom/android/uiautomator/core/QueryController;->translateCompoundSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1b
    move-result-object p2

    #@1c
    .line 226
    invoke-direct {p0}, Lcom/android/uiautomator/core/QueryController;->initializeNewSearch()V

    #@1f
    .line 232
    :goto_0
    if-nez p2, :cond_3

    #@21
    .line 233
    sget-boolean v0, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 234
    sget-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "Container selector not found: "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p1, v5}, Lcom/android/uiautomator/core/UiSelector;->dumpToString(Z)Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 235
    :cond_0
    return-object v4

    #@43
    .line 228
    :cond_1
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getContainerSelector()Lcom/android/uiautomator/core/UiSelector;

    #@46
    move-result-object v0

    #@47
    invoke-direct {p0, v0, p2}, Lcom/android/uiautomator/core/QueryController;->translateReqularSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@4a
    move-result-object p2

    #@4b
    goto :goto_0

    #@4c
    .line 230
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/QueryController;->translateReqularSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@4f
    move-result-object p2

    #@50
    goto :goto_0

    #@51
    .line 238
    :cond_3
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasPatternSelector()Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_6

    #@57
    .line 239
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getPatternSelector()Lcom/android/uiautomator/core/UiSelector;

    #@5a
    move-result-object v0

    #@5b
    invoke-direct {p0, v0, p2, p3}, Lcom/android/uiautomator/core/QueryController;->translatePatternSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5e
    move-result-object p2

    #@5f
    .line 242
    if-eqz p3, :cond_4

    #@61
    .line 243
    sget-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@63
    .line 244
    const-string/jumbo v1, "Counted %d instances of: %s"

    #@66
    .line 243
    new-array v2, v2, [Ljava/lang/Object;

    #@68
    .line 244
    iget v3, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    #@6a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6d
    move-result-object v3

    #@6e
    aput-object v3, v2, v5

    #@70
    aput-object p1, v2, v6

    #@72
    .line 243
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@75
    move-result-object v1

    #@76
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 245
    return-object v4

    #@7a
    .line 247
    :cond_4
    if-nez p2, :cond_6

    #@7c
    .line 248
    sget-boolean v0, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    #@7e
    if-eqz v0, :cond_5

    #@80
    .line 249
    sget-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@82
    new-instance v1, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v2, "Pattern selector not found: "

    #@8a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    .line 250
    invoke-virtual {p1, v5}, Lcom/android/uiautomator/core/UiSelector;->dumpToString(Z)Ljava/lang/String;

    #@91
    move-result-object v2

    #@92
    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v1

    #@9a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9d
    .line 251
    :cond_5
    return-object v4

    #@9e
    .line 258
    :cond_6
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasContainerSelector()Z

    #@a1
    move-result v0

    #@a2
    if-nez v0, :cond_7

    #@a4
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasPatternSelector()Z

    #@a7
    move-result v0

    #@a8
    if-eqz v0, :cond_9

    #@aa
    .line 259
    :cond_7
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasChildSelector()Z

    #@ad
    move-result v0

    #@ae
    if-nez v0, :cond_8

    #@b0
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasParentSelector()Z

    #@b3
    move-result v0

    #@b4
    if-eqz v0, :cond_9

    #@b6
    .line 260
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/QueryController;->translateReqularSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@b9
    move-result-object p2

    #@ba
    .line 263
    :cond_9
    if-nez p2, :cond_b

    #@bc
    .line 264
    sget-boolean v0, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    #@be
    if-eqz v0, :cond_a

    #@c0
    .line 265
    sget-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@c2
    new-instance v1, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string/jumbo v2, "Object Not Found for selector "

    #@ca
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v1

    #@ce
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v1

    #@d2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v1

    #@d6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d9
    .line 266
    :cond_a
    return-object v4

    #@da
    .line 268
    :cond_b
    sget-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@dc
    const-string/jumbo v1, "Matched selector: %s <<==>> [%s]"

    #@df
    new-array v2, v2, [Ljava/lang/Object;

    #@e1
    aput-object p1, v2, v5

    #@e3
    aput-object p2, v2, v6

    #@e5
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e8
    move-result-object v1

    #@e9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ec
    .line 269
    return-object p2
.end method

.method private translatePatternSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3
    .param p1, "subSelector"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "fromNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "isCounting"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 375
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->hasPatternSelector()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_2

    #@7
    .line 378
    if-eqz p3, :cond_0

    #@9
    .line 381
    const/4 v0, -0x1

    #@a
    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    #@c
    .line 387
    :goto_0
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getPatternSelector()Lcom/android/uiautomator/core/UiSelector;

    #@f
    move-result-object p1

    #@10
    .line 388
    if-nez p1, :cond_1

    #@12
    .line 389
    sget-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@14
    const-string/jumbo v1, "Pattern portion of the selector is null or not defined"

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 390
    return-object v2

    #@1b
    .line 384
    :cond_0
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->getInstance()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mPatternIndexer:I

    #@21
    goto :goto_0

    #@22
    .line 394
    :cond_1
    iget v0, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    #@24
    add-int/lit8 v0, v0, 0x1

    #@26
    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mLogIndent:I

    #@28
    iput v0, p0, Lcom/android/uiautomator/core/QueryController;->mLogParentIndent:I

    #@2a
    .line 395
    const/4 v0, 0x0

    #@2b
    invoke-direct {p0, p1, p2, v0, p1}, Lcom/android/uiautomator/core/QueryController;->findNodePatternRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;ILcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2e
    move-result-object v0

    #@2f
    return-object v0

    #@30
    .line 398
    :cond_2
    sget-object v0, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@32
    const-string/jumbo v1, "Selector must have a pattern selector defined"

    #@35
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 399
    return-object v2
.end method

.method private translateReqularSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "fromNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 288
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/uiautomator/core/QueryController;->findNodeRegularRecursive(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method


# virtual methods
.method public clearLastTraversedText()V
    .locals 2

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle()V

    #@5
    .line 107
    iget-object v1, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    .line 108
    :try_start_0
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 105
    return-void

    #@f
    .line 107
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    #@0
    .prologue
    .line 138
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/QueryController;->findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method protected findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;Z)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "isCounting"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 143
    iget-object v2, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@3
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle()V

    #@6
    .line 144
    invoke-direct {p0}, Lcom/android/uiautomator/core/QueryController;->initializeNewSearch()V

    #@9
    .line 146
    sget-boolean v2, Lcom/android/uiautomator/core/QueryController;->DEBUG:Z

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 147
    sget-object v2, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Searching: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 149
    :cond_0
    iget-object v3, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    #@28
    monitor-enter v3

    #@29
    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/QueryController;->getRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2c
    move-result-object v0

    #@2d
    .line 151
    .local v0, "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_1

    #@2f
    .line 152
    sget-object v2, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@31
    const-string/jumbo v4, "Cannot proceed when root node is null. Aborted search"

    #@34
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    monitor-exit v3

    #@38
    .line 153
    return-object v5

    #@39
    .line 157
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    #@3b
    invoke-direct {v1, p1}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@3e
    .line 158
    .local v1, "uiSelector":Lcom/android/uiautomator/core/UiSelector;
    invoke-direct {p0, v1, v0, p2}, Lcom/android/uiautomator/core/QueryController;->translateCompoundSelector(Lcom/android/uiautomator/core/UiSelector;Landroid/view/accessibility/AccessibilityNodeInfo;Z)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    move-result-object v2

    #@42
    monitor-exit v3

    #@43
    return-object v2

    #@44
    .line 149
    .end local v0    # "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "uiSelector":Lcom/android/uiautomator/core/UiSelector;
    :catchall_0
    move-exception v2

    #@45
    monitor-exit v3

    #@46
    throw v2
.end method

.method public getAccessibilityRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    #@0
    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle()V

    #@5
    .line 494
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v0

    #@8
    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/android/uiautomator/core/QueryController;->mLastActivityName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v0

    #@b
    return-object v1

    #@c
    .line 494
    :catchall_0
    move-exception v1

    #@d
    monitor-exit v0

    #@e
    throw v1
.end method

.method public getCurrentPackageName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 504
    iget-object v2, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@3
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle()V

    #@6
    .line 505
    invoke-virtual {p0}, Lcom/android/uiautomator/core/QueryController;->getRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@9
    move-result-object v0

    #@a
    .line 506
    .local v0, "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    #@c
    .line 507
    return-object v1

    #@d
    .line 508
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    #@10
    move-result-object v2

    #@11
    if-eqz v2, :cond_1

    #@13
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    #@16
    move-result-object v1

    #@17
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    :cond_1
    return-object v1
.end method

.method public getLastTraversedText()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@2
    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->waitForIdle()V

    #@5
    .line 93
    iget-object v1, p0, Lcom/android/uiautomator/core/QueryController;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;

    #@a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    if-lez v0, :cond_0

    #@10
    .line 95
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController;->mLastTraversedText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 98
    const/4 v0, 0x0

    #@16
    return-object v0

    #@17
    .line 93
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public getPatternCount(Lcom/android/uiautomator/core/UiSelector;)I
    .locals 1
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    #@0
    .prologue
    .line 128
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/uiautomator/core/QueryController;->findAccessibilityNodeInfo(Lcom/android/uiautomator/core/UiSelector;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@4
    .line 129
    iget v0, p0, Lcom/android/uiautomator/core/QueryController;->mPatternCounter:I

    #@6
    return v0
.end method

.method protected getRootNode()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8

    #@0
    .prologue
    .line 168
    const/4 v0, 0x4

    #@1
    .line 169
    .local v0, "maxRetry":I
    const-wide/16 v2, 0xfa

    #@3
    .line 170
    .local v2, "waitInterval":J
    const/4 v1, 0x0

    #@4
    .line 171
    .local v1, "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v4, 0x0

    #@5
    .end local v1    # "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v4, "x":I
    :goto_0
    const/4 v5, 0x4

    #@6
    if-ge v4, v5, :cond_2

    #@8
    .line 172
    iget-object v5, p0, Lcom/android/uiautomator/core/QueryController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    #@a
    invoke-virtual {v5}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@d
    move-result-object v1

    #@e
    .line 173
    .local v1, "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_0

    #@10
    .line 174
    return-object v1

    #@11
    .line 176
    :cond_0
    const/4 v5, 0x3

    #@12
    if-ge v4, v5, :cond_1

    #@14
    .line 177
    sget-object v5, Lcom/android/uiautomator/core/QueryController;->LOG_TAG:Ljava/lang/String;

    #@16
    const-string/jumbo v6, "Got null root node from accessibility - Retrying..."

    #@19
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 178
    const-wide/16 v6, 0xfa

    #@1e
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    #@21
    .line 171
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@23
    goto :goto_0

    #@24
    .line 181
    .end local v1    # "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    return-object v1
.end method
