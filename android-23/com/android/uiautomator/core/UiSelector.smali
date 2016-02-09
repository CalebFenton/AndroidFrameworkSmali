.class public Lcom/android/uiautomator/core/UiSelector;
.super Ljava/lang/Object;
.source "UiSelector.java"


# static fields
.field static final SELECTOR_CHECKABLE:I = 0x1e

.field static final SELECTOR_CHECKED:I = 0xf

.field static final SELECTOR_CHILD:I = 0x13

.field static final SELECTOR_CLASS:I = 0x4

.field static final SELECTOR_CLASS_REGEX:I = 0x1a

.field static final SELECTOR_CLICKABLE:I = 0xe

.field static final SELECTOR_CONTAINER:I = 0x14

.field static final SELECTOR_CONTAINS_DESCRIPTION:I = 0x7

.field static final SELECTOR_CONTAINS_TEXT:I = 0x3

.field static final SELECTOR_COUNT:I = 0x17

.field static final SELECTOR_DESCRIPTION:I = 0x5

.field static final SELECTOR_DESCRIPTION_REGEX:I = 0x1b

.field static final SELECTOR_ENABLED:I = 0xa

.field static final SELECTOR_FOCUSABLE:I = 0xc

.field static final SELECTOR_FOCUSED:I = 0xb

.field static final SELECTOR_ID:I = 0x11

.field static final SELECTOR_INDEX:I = 0x8

.field static final SELECTOR_INSTANCE:I = 0x9

.field static final SELECTOR_LONG_CLICKABLE:I = 0x18

.field static final SELECTOR_NIL:I = 0x0

.field static final SELECTOR_PACKAGE_NAME:I = 0x12

.field static final SELECTOR_PACKAGE_NAME_REGEX:I = 0x1c

.field static final SELECTOR_PARENT:I = 0x16

.field static final SELECTOR_PATTERN:I = 0x15

.field static final SELECTOR_RESOURCE_ID:I = 0x1d

.field static final SELECTOR_RESOURCE_ID_REGEX:I = 0x1f

.field static final SELECTOR_SCROLLABLE:I = 0xd

.field static final SELECTOR_SELECTED:I = 0x10

.field static final SELECTOR_START_DESCRIPTION:I = 0x6

.field static final SELECTOR_START_TEXT:I = 0x2

.field static final SELECTOR_TEXT:I = 0x1

.field static final SELECTOR_TEXT_REGEX:I = 0x19


# instance fields
.field private mSelectorAttributes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@a
    .line 70
    return-void
.end method

.method constructor <init>(Lcom/android/uiautomator/core/UiSelector;)V
    .locals 1
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@a
    .line 74
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->cloneSelector()Lcom/android/uiautomator/core/UiSelector;

    #@d
    move-result-object v0

    #@e
    iget-object v0, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@10
    iput-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@12
    .line 73
    return-void
.end method

.method private buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "selectorId"    # I
    .param p2, "selectorValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 586
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    #@2
    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@5
    .line 587
    .local v0, "selector":Lcom/android/uiautomator/core/UiSelector;
    const/16 v1, 0x13

    #@7
    if-eq p1, v1, :cond_0

    #@9
    const/16 v1, 0x16

    #@b
    if-ne p1, v1, :cond_1

    #@d
    .line 588
    :cond_0
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;->getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;

    #@10
    move-result-object v1

    #@11
    iget-object v1, v1, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@16
    .line 591
    :goto_0
    return-object v0

    #@17
    .line 590
    :cond_1
    iget-object v1, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1c
    goto :goto_0
.end method

.method private containerSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    #@0
    .prologue
    .line 539
    const/16 v0, 0x14

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x16

    #@2
    const/16 v3, 0x13

    #@4
    .line 879
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@9
    move-result v2

    #@a
    if-ltz v2, :cond_1

    #@c
    .line 880
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    #@14
    .line 881
    .local v0, "child":Lcom/android/uiautomator/core/UiSelector;
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;->getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;

    #@17
    move-result-object v2

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 882
    return-object v0

    #@1b
    .line 884
    :cond_0
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;->getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;

    #@1e
    move-result-object v2

    #@1f
    return-object v2

    #@20
    .line 885
    .end local v0    # "child":Lcom/android/uiautomator/core/UiSelector;
    :cond_1
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@22
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@25
    move-result v2

    #@26
    if-ltz v2, :cond_3

    #@28
    .line 886
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@2a
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Lcom/android/uiautomator/core/UiSelector;

    #@30
    .line 887
    .local v1, "parent":Lcom/android/uiautomator/core/UiSelector;
    invoke-direct {v1}, Lcom/android/uiautomator/core/UiSelector;->getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;

    #@33
    move-result-object v2

    #@34
    if-nez v2, :cond_2

    #@36
    .line 888
    return-object v1

    #@37
    .line 890
    :cond_2
    invoke-direct {v1}, Lcom/android/uiautomator/core/UiSelector;->getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;

    #@3a
    move-result-object v2

    #@3b
    return-object v2

    #@3c
    .line 892
    .end local v1    # "parent":Lcom/android/uiautomator/core/UiSelector;
    :cond_3
    return-object p0
.end method

.method private matchOrUpdateInstance()Z
    .locals 6

    #@0
    .prologue
    const/16 v3, 0x9

    #@2
    const/16 v5, 0x17

    #@4
    const/4 v4, 0x0

    #@5
    .line 805
    const/4 v0, 0x0

    #@6
    .line 806
    .local v0, "currentSelectorCounter":I
    const/4 v1, 0x0

    #@7
    .line 809
    .local v1, "currentSelectorInstance":I
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@c
    move-result v2

    #@d
    if-ltz v2, :cond_0

    #@f
    .line 811
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/Integer;

    #@17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@1a
    move-result v1

    #@1b
    .line 815
    :cond_0
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@20
    move-result v2

    #@21
    if-ltz v2, :cond_1

    #@23
    .line 816
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@25
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Ljava/lang/Integer;

    #@2b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@2e
    move-result v0

    #@2f
    .line 820
    :cond_1
    if-ne v1, v0, :cond_2

    #@31
    .line 821
    const/4 v2, 0x1

    #@32
    return v2

    #@33
    .line 824
    :cond_2
    if-le v1, v0, :cond_3

    #@35
    .line 825
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@37
    add-int/lit8 v0, v0, 0x1

    #@39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@40
    .line 827
    :cond_3
    return v4
.end method

.method static patternBuilder(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .param p0, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    #@0
    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->hasPatternSelector()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 94
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    #@8
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    #@b
    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/UiSelector;->patternSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 96
    :cond_0
    return-object p0
.end method

.method static patternBuilder(Lcom/android/uiautomator/core/UiSelector;Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p0, "container"    # Lcom/android/uiautomator/core/UiSelector;
    .param p1, "pattern"    # Lcom/android/uiautomator/core/UiSelector;

    #@0
    .prologue
    .line 100
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    #@2
    .line 101
    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    #@4
    invoke-direct {v1}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    #@7
    invoke-direct {v1, p0}, Lcom/android/uiautomator/core/UiSelector;->containerSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    #@a
    move-result-object v1

    #@b
    invoke-direct {v1, p1}, Lcom/android/uiautomator/core/UiSelector;->patternSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    #@e
    move-result-object v1

    #@f
    .line 100
    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@12
    return-object v0
.end method

.method private patternSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    #@0
    .prologue
    .line 535
    const/16 v0, 0x15

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method public checkable(Z)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 498
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x1e

    #@6
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public checked(Z)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 460
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0xf

    #@6
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public childSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    #@0
    .prologue
    .line 531
    const/16 v0, 0x13

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public className(Ljava/lang/Class;)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/android/uiautomator/core/UiSelector;"
        }
    .end annotation

    #@0
    .prologue
    .line 195
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x4

    #@5
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public className(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 171
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public classNameMatches(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 183
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x1a

    #@6
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public clickable(Z)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 479
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0xe

    #@6
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method protected cloneSelector()Lcom/android/uiautomator/core/UiSelector;
    .locals 4

    #@0
    .prologue
    .line 81
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    #@2
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    #@5
    .line 82
    .local v0, "ret":Lcom/android/uiautomator/core/UiSelector;
    iget-object v1, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    #@a
    move-result-object v1

    #@b
    iput-object v1, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@d
    .line 83
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->hasChildSelector()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 84
    iget-object v1, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@15
    new-instance v2, Lcom/android/uiautomator/core/UiSelector;

    #@17
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->getChildSelector()Lcom/android/uiautomator/core/UiSelector;

    #@1a
    move-result-object v3

    #@1b
    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@1e
    const/16 v3, 0x13

    #@20
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@23
    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->hasParentSelector()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 86
    iget-object v1, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@2b
    new-instance v2, Lcom/android/uiautomator/core/UiSelector;

    #@2d
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->getParentSelector()Lcom/android/uiautomator/core/UiSelector;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@34
    const/16 v3, 0x16

    #@36
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@39
    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->hasPatternSelector()Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_2

    #@3f
    .line 88
    iget-object v1, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@41
    new-instance v2, Lcom/android/uiautomator/core/UiSelector;

    #@43
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->getPatternSelector()Lcom/android/uiautomator/core/UiSelector;

    #@46
    move-result-object v3

    #@47
    invoke-direct {v2, v3}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@4a
    const/16 v3, 0x15

    #@4c
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@4f
    .line 89
    :cond_2
    return-object v0
.end method

.method public description(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 216
    const/4 v0, 0x5

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public descriptionContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 277
    const/4 v0, 0x7

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public descriptionMatches(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 235
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x1b

    #@6
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public descriptionStartsWith(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 256
    const/4 v0, 0x6

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method dumpToString(Z)Ljava/lang/String;
    .locals 6
    .param p1, "all"    # Z

    #@0
    .prologue
    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 902
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-class v4, Lcom/android/uiautomator/core/UiSelector;

    #@7
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    const-string/jumbo v5, "["

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 903
    iget-object v4, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@1a
    move-result v2

    #@1b
    .line 904
    .local v2, "criterionCount":I
    const/4 v3, 0x0

    #@1c
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    #@1e
    .line 905
    if-lez v3, :cond_0

    #@20
    .line 906
    const-string/jumbo v4, ", "

    #@23
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 908
    :cond_0
    iget-object v4, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@28
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    #@2b
    move-result v1

    #@2c
    .line 909
    .local v1, "criterion":I
    packed-switch v1, :pswitch_data_0

    #@2f
    .line 1016
    const-string/jumbo v4, "UNDEFINED="

    #@32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    const-string/jumbo v5, " "

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@43
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    .line 904
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 911
    :pswitch_0
    const-string/jumbo v4, "TEXT="

    #@50
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@56
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    goto :goto_1

    #@5e
    .line 914
    :pswitch_1
    const-string/jumbo v4, "TEXT_REGEX="

    #@61
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@67
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    goto :goto_1

    #@6f
    .line 917
    :pswitch_2
    const-string/jumbo v4, "START_TEXT="

    #@72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@78
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@7b
    move-result-object v5

    #@7c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    goto :goto_1

    #@80
    .line 920
    :pswitch_3
    const-string/jumbo v4, "CONTAINS_TEXT="

    #@83
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v4

    #@87
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@89
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@90
    goto :goto_1

    #@91
    .line 923
    :pswitch_4
    const-string/jumbo v4, "CLASS="

    #@94
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@9a
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@9d
    move-result-object v5

    #@9e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    goto :goto_1

    #@a2
    .line 926
    :pswitch_5
    const-string/jumbo v4, "CLASS_REGEX="

    #@a5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v4

    #@a9
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@ab
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@ae
    move-result-object v5

    #@af
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b2
    goto :goto_1

    #@b3
    .line 929
    :pswitch_6
    const-string/jumbo v4, "DESCRIPTION="

    #@b6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v4

    #@ba
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@bc
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@bf
    move-result-object v5

    #@c0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c3
    goto :goto_1

    #@c4
    .line 932
    :pswitch_7
    const-string/jumbo v4, "DESCRIPTION_REGEX="

    #@c7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v4

    #@cb
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@cd
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@d0
    move-result-object v5

    #@d1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d4
    goto/16 :goto_1

    #@d6
    .line 935
    :pswitch_8
    const-string/jumbo v4, "START_DESCRIPTION="

    #@d9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v4

    #@dd
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@df
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e2
    move-result-object v5

    #@e3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e6
    goto/16 :goto_1

    #@e8
    .line 938
    :pswitch_9
    const-string/jumbo v4, "CONTAINS_DESCRIPTION="

    #@eb
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v4

    #@ef
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@f1
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f4
    move-result-object v5

    #@f5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f8
    goto/16 :goto_1

    #@fa
    .line 941
    :pswitch_a
    const-string/jumbo v4, "INDEX="

    #@fd
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v4

    #@101
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@103
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@106
    move-result-object v5

    #@107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10a
    goto/16 :goto_1

    #@10c
    .line 944
    :pswitch_b
    const-string/jumbo v4, "INSTANCE="

    #@10f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v4

    #@113
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@115
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@118
    move-result-object v5

    #@119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11c
    goto/16 :goto_1

    #@11e
    .line 947
    :pswitch_c
    const-string/jumbo v4, "ENABLED="

    #@121
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v4

    #@125
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@127
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@12a
    move-result-object v5

    #@12b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12e
    goto/16 :goto_1

    #@130
    .line 950
    :pswitch_d
    const-string/jumbo v4, "FOCUSED="

    #@133
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v4

    #@137
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@139
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@13c
    move-result-object v5

    #@13d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@140
    goto/16 :goto_1

    #@142
    .line 953
    :pswitch_e
    const-string/jumbo v4, "FOCUSABLE="

    #@145
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v4

    #@149
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@14b
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@14e
    move-result-object v5

    #@14f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@152
    goto/16 :goto_1

    #@154
    .line 956
    :pswitch_f
    const-string/jumbo v4, "SCROLLABLE="

    #@157
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v4

    #@15b
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@15d
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@160
    move-result-object v5

    #@161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@164
    goto/16 :goto_1

    #@166
    .line 959
    :pswitch_10
    const-string/jumbo v4, "CLICKABLE="

    #@169
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v4

    #@16d
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@16f
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@172
    move-result-object v5

    #@173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@176
    goto/16 :goto_1

    #@178
    .line 962
    :pswitch_11
    const-string/jumbo v4, "CHECKABLE="

    #@17b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v4

    #@17f
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@181
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@184
    move-result-object v5

    #@185
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@188
    goto/16 :goto_1

    #@18a
    .line 965
    :pswitch_12
    const-string/jumbo v4, "LONG_CLICKABLE="

    #@18d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v4

    #@191
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@193
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@196
    move-result-object v5

    #@197
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19a
    goto/16 :goto_1

    #@19c
    .line 968
    :pswitch_13
    const-string/jumbo v4, "CHECKED="

    #@19f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v4

    #@1a3
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@1a5
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1a8
    move-result-object v5

    #@1a9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ac
    goto/16 :goto_1

    #@1ae
    .line 971
    :pswitch_14
    const-string/jumbo v4, "SELECTED="

    #@1b1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v4

    #@1b5
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@1b7
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1ba
    move-result-object v5

    #@1bb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1be
    goto/16 :goto_1

    #@1c0
    .line 974
    :pswitch_15
    const-string/jumbo v4, "ID="

    #@1c3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v4

    #@1c7
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@1c9
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1cc
    move-result-object v5

    #@1cd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d0
    goto/16 :goto_1

    #@1d2
    .line 977
    :pswitch_16
    if-eqz p1, :cond_1

    #@1d4
    .line 978
    const-string/jumbo v4, "CHILD="

    #@1d7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v4

    #@1db
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@1dd
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1e0
    move-result-object v5

    #@1e1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e4
    goto/16 :goto_1

    #@1e6
    .line 980
    :cond_1
    const-string/jumbo v4, "CHILD[..]"

    #@1e9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    goto/16 :goto_1

    #@1ee
    .line 983
    :pswitch_17
    if-eqz p1, :cond_2

    #@1f0
    .line 984
    const-string/jumbo v4, "PATTERN="

    #@1f3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v4

    #@1f7
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@1f9
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1fc
    move-result-object v5

    #@1fd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@200
    goto/16 :goto_1

    #@202
    .line 986
    :cond_2
    const-string/jumbo v4, "PATTERN[..]"

    #@205
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    goto/16 :goto_1

    #@20a
    .line 989
    :pswitch_18
    if-eqz p1, :cond_3

    #@20c
    .line 990
    const-string/jumbo v4, "CONTAINER="

    #@20f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@212
    move-result-object v4

    #@213
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@215
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@218
    move-result-object v5

    #@219
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21c
    goto/16 :goto_1

    #@21e
    .line 992
    :cond_3
    const-string/jumbo v4, "CONTAINER[..]"

    #@221
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@224
    goto/16 :goto_1

    #@226
    .line 995
    :pswitch_19
    if-eqz p1, :cond_4

    #@228
    .line 996
    const-string/jumbo v4, "PARENT="

    #@22b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    move-result-object v4

    #@22f
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@231
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@234
    move-result-object v5

    #@235
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@238
    goto/16 :goto_1

    #@23a
    .line 998
    :cond_4
    const-string/jumbo v4, "PARENT[..]"

    #@23d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@240
    goto/16 :goto_1

    #@242
    .line 1001
    :pswitch_1a
    const-string/jumbo v4, "COUNT="

    #@245
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v4

    #@249
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@24b
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@24e
    move-result-object v5

    #@24f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@252
    goto/16 :goto_1

    #@254
    .line 1004
    :pswitch_1b
    const-string/jumbo v4, "PACKAGE NAME="

    #@257
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v4

    #@25b
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@25d
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@260
    move-result-object v5

    #@261
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@264
    goto/16 :goto_1

    #@266
    .line 1007
    :pswitch_1c
    const-string/jumbo v4, "PACKAGE_NAME_REGEX="

    #@269
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26c
    move-result-object v4

    #@26d
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@26f
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@272
    move-result-object v5

    #@273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@276
    goto/16 :goto_1

    #@278
    .line 1010
    :pswitch_1d
    const-string/jumbo v4, "RESOURCE_ID="

    #@27b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27e
    move-result-object v4

    #@27f
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@281
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@284
    move-result-object v5

    #@285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@288
    goto/16 :goto_1

    #@28a
    .line 1013
    :pswitch_1e
    const-string/jumbo v4, "RESOURCE_ID_REGEX="

    #@28d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v4

    #@291
    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@293
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@296
    move-result-object v5

    #@297
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29a
    goto/16 :goto_1

    #@29c
    .line 1019
    .end local v1    # "criterion":I
    :cond_5
    const-string/jumbo v4, "]"

    #@29f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a2
    .line 1020
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a5
    move-result-object v4

    #@2a6
    return-object v4

    #@2a7
    .line 909
    nop

    #@2a8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_1b
        :pswitch_16
        :pswitch_18
        :pswitch_17
        :pswitch_19
        :pswitch_1a
        :pswitch_12
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_1c
        :pswitch_1d
        :pswitch_11
        :pswitch_1e
    .end packed-switch
.end method

.method public enabled(Z)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 363
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0xa

    #@6
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public focusable(Z)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 401
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0xc

    #@6
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public focused(Z)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 382
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0xb

    #@6
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public fromParent(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    #@0
    .prologue
    .line 554
    const/16 v0, 0x16

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getBoolean(I)Z
    .locals 2
    .param p1, "criterion"    # I

    #@0
    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/Boolean;

    #@d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method getChildSelector()Lcom/android/uiautomator/core/UiSelector;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 604
    iget-object v1, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@3
    const/16 v2, 0x13

    #@5
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    #@b
    .line 605
    .local v0, "selector":Lcom/android/uiautomator/core/UiSelector;
    if-eqz v0, :cond_0

    #@d
    .line 606
    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    #@f
    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@12
    return-object v1

    #@13
    .line 607
    :cond_0
    return-object v3
.end method

.method getContainerSelector()Lcom/android/uiautomator/core/UiSelector;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 620
    iget-object v1, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@3
    const/16 v2, 0x14

    #@5
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    #@b
    .line 621
    .local v0, "selector":Lcom/android/uiautomator/core/UiSelector;
    if-eqz v0, :cond_0

    #@d
    .line 622
    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    #@f
    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@12
    return-object v1

    #@13
    .line 623
    :cond_0
    return-object v3
.end method

.method getInstance()I
    .locals 1

    #@0
    .prologue
    .line 635
    const/16 v0, 0x9

    #@2
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getInt(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getInt(I)I
    .locals 2
    .param p1, "criterion"    # I

    #@0
    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/Integer;

    #@d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method getParentSelector()Lcom/android/uiautomator/core/UiSelector;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 628
    iget-object v1, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@3
    const/16 v2, 0x16

    #@5
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    #@b
    .line 629
    .local v0, "selector":Lcom/android/uiautomator/core/UiSelector;
    if-eqz v0, :cond_0

    #@d
    .line 630
    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    #@f
    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@12
    return-object v1

    #@13
    .line 631
    :cond_0
    return-object v3
.end method

.method getPattern(I)Ljava/util/regex/Pattern;
    .locals 2
    .param p1, "criterion"    # I

    #@0
    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/util/regex/Pattern;

    #@9
    return-object v0
.end method

.method getPatternSelector()Lcom/android/uiautomator/core/UiSelector;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 612
    iget-object v1, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@3
    const/16 v2, 0x15

    #@5
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    #@b
    .line 613
    .local v0, "selector":Lcom/android/uiautomator/core/UiSelector;
    if-eqz v0, :cond_0

    #@d
    .line 614
    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    #@f
    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    #@12
    return-object v1

    #@13
    .line 615
    :cond_0
    return-object v3
.end method

.method getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "criterion"    # I

    #@0
    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    return-object v0
.end method

.method hasChildSelector()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 844
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@3
    const/16 v1, 0x13

    #@5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@8
    move-result v0

    #@9
    if-gez v0, :cond_0

    #@b
    .line 845
    return v2

    #@c
    .line 847
    :cond_0
    const/4 v0, 0x1

    #@d
    return v0
.end method

.method hasContainerSelector()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 858
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@3
    const/16 v1, 0x14

    #@5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@8
    move-result v0

    #@9
    if-gez v0, :cond_0

    #@b
    .line 859
    return v2

    #@c
    .line 861
    :cond_0
    const/4 v0, 0x1

    #@d
    return v0
.end method

.method hasParentSelector()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 865
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@3
    const/16 v1, 0x16

    #@5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@8
    move-result v0

    #@9
    if-gez v0, :cond_0

    #@b
    .line 866
    return v2

    #@c
    .line 868
    :cond_0
    const/4 v0, 0x1

    #@d
    return v0
.end method

.method hasPatternSelector()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 851
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@3
    const/16 v1, 0x15

    #@5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@8
    move-result v0

    #@9
    if-gez v0, :cond_0

    #@b
    .line 852
    return v2

    #@c
    .line 854
    :cond_0
    const/4 v0, 0x1

    #@d
    return v0
.end method

.method public index(I)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 318
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x8

    #@6
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public instance(I)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "instance"    # I

    #@0
    .prologue
    .line 344
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x9

    #@6
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method isLeaf()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 836
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@3
    const/16 v1, 0x13

    #@5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@8
    move-result v0

    #@9
    if-gez v0, :cond_0

    #@b
    .line 837
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@d
    const/16 v1, 0x16

    #@f
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@12
    move-result v0

    #@13
    if-gez v0, :cond_0

    #@15
    .line 838
    const/4 v0, 0x1

    #@16
    return v0

    #@17
    .line 840
    :cond_0
    return v2
.end method

.method isMatchFor(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z
    .locals 7
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 655
    iget-object v4, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v2

    #@7
    .line 656
    .local v2, "size":I
    const/4 v3, 0x0

    #@8
    .local v3, "x":I
    :goto_0
    if-ge v3, v2, :cond_f

    #@a
    .line 657
    const/4 v1, 0x0

    #@b
    .line 658
    .local v1, "s":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    #@10
    move-result v0

    #@11
    .line 659
    .local v0, "criterion":I
    packed-switch v0, :pswitch_data_0

    #@14
    .line 656
    .end local v1    # "s":Ljava/lang/CharSequence;
    :cond_0
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 661
    .restart local v1    # "s":Ljava/lang/CharSequence;
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getInt(I)I

    #@1a
    move-result v4

    #@1b
    if-eq p2, v4, :cond_0

    #@1d
    .line 662
    return v6

    #@1e
    .line 665
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    #@21
    move-result v4

    #@22
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    #@25
    move-result v5

    #@26
    if-eq v4, v5, :cond_0

    #@28
    .line 666
    return v6

    #@29
    .line 670
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    #@2c
    move-result-object v1

    #@2d
    .line 671
    .local v1, "s":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    #@2f
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@3a
    move-result v4

    #@3b
    if-nez v4, :cond_0

    #@3d
    .line 672
    :cond_1
    return v6

    #@3e
    .line 676
    .local v1, "s":Ljava/lang/CharSequence;
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    #@41
    move-result-object v1

    #@42
    .line 677
    .local v1, "s":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    #@44
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getPattern(I)Ljava/util/regex/Pattern;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    #@4f
    move-result v4

    #@50
    if-nez v4, :cond_0

    #@52
    .line 678
    :cond_2
    return v6

    #@53
    .line 682
    .local v1, "s":Ljava/lang/CharSequence;
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    #@56
    move-result v4

    #@57
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    #@5a
    move-result v5

    #@5b
    if-eq v4, v5, :cond_0

    #@5d
    .line 683
    return v6

    #@5e
    .line 687
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    #@61
    move-result v4

    #@62
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    #@65
    move-result v5

    #@66
    if-eq v4, v5, :cond_0

    #@68
    .line 688
    return v6

    #@69
    .line 692
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    #@6c
    move-result v4

    #@6d
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    #@70
    move-result v5

    #@71
    if-eq v4, v5, :cond_0

    #@73
    .line 693
    return v6

    #@74
    .line 697
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    #@77
    move-result-object v1

    #@78
    .line 698
    .local v1, "s":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    #@7a
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    .line 699
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    #@85
    move-result-object v5

    #@86
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@89
    move-result-object v5

    #@8a
    .line 698
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@8d
    move-result v4

    #@8e
    if-nez v4, :cond_0

    #@90
    .line 700
    :cond_3
    return v6

    #@91
    .line 704
    .local v1, "s":Ljava/lang/CharSequence;
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    #@94
    move-result-object v1

    #@95
    .line 705
    .local v1, "s":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    #@97
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@9e
    move-result-object v4

    #@9f
    .line 706
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    #@a2
    move-result-object v5

    #@a3
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@a6
    move-result-object v5

    #@a7
    .line 705
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@aa
    move-result v4

    #@ab
    if-nez v4, :cond_0

    #@ad
    .line 707
    :cond_4
    return v6

    #@ae
    .line 711
    .local v1, "s":Ljava/lang/CharSequence;
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    #@b1
    move-result-object v1

    #@b2
    .line 712
    .local v1, "s":Ljava/lang/CharSequence;
    if-eqz v1, :cond_5

    #@b4
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@b7
    move-result-object v4

    #@b8
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    #@bb
    move-result-object v5

    #@bc
    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@bf
    move-result v4

    #@c0
    if-nez v4, :cond_0

    #@c2
    .line 713
    :cond_5
    return v6

    #@c3
    .line 717
    .local v1, "s":Ljava/lang/CharSequence;
    :pswitch_b
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    #@c6
    move-result-object v1

    #@c7
    .line 718
    .local v1, "s":Ljava/lang/CharSequence;
    if-eqz v1, :cond_6

    #@c9
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getPattern(I)Ljava/util/regex/Pattern;

    #@cc
    move-result-object v4

    #@cd
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@d0
    move-result-object v4

    #@d1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    #@d4
    move-result v4

    #@d5
    if-nez v4, :cond_0

    #@d7
    .line 719
    :cond_6
    return v6

    #@d8
    .line 723
    .local v1, "s":Ljava/lang/CharSequence;
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    #@db
    move-result-object v1

    #@dc
    .line 724
    .local v1, "s":Ljava/lang/CharSequence;
    if-eqz v1, :cond_7

    #@de
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@e1
    move-result-object v4

    #@e2
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@e5
    move-result-object v4

    #@e6
    .line 725
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    #@e9
    move-result-object v5

    #@ea
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@ed
    move-result-object v5

    #@ee
    .line 724
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@f1
    move-result v4

    #@f2
    if-nez v4, :cond_0

    #@f4
    .line 726
    :cond_7
    return v6

    #@f5
    .line 730
    .local v1, "s":Ljava/lang/CharSequence;
    :pswitch_d
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    #@f8
    move-result-object v1

    #@f9
    .line 731
    .local v1, "s":Ljava/lang/CharSequence;
    if-eqz v1, :cond_8

    #@fb
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@fe
    move-result-object v4

    #@ff
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@102
    move-result-object v4

    #@103
    .line 732
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    #@106
    move-result-object v5

    #@107
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@10a
    move-result-object v5

    #@10b
    .line 731
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@10e
    move-result v4

    #@10f
    if-nez v4, :cond_0

    #@111
    .line 733
    :cond_8
    return v6

    #@112
    .line 737
    .local v1, "s":Ljava/lang/CharSequence;
    :pswitch_e
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    #@115
    move-result-object v1

    #@116
    .line 738
    .local v1, "s":Ljava/lang/CharSequence;
    if-eqz v1, :cond_9

    #@118
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@11b
    move-result-object v4

    #@11c
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    #@11f
    move-result-object v5

    #@120
    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@123
    move-result v4

    #@124
    if-nez v4, :cond_0

    #@126
    .line 739
    :cond_9
    return v6

    #@127
    .line 743
    .local v1, "s":Ljava/lang/CharSequence;
    :pswitch_f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    #@12a
    move-result-object v1

    #@12b
    .line 744
    .local v1, "s":Ljava/lang/CharSequence;
    if-eqz v1, :cond_a

    #@12d
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getPattern(I)Ljava/util/regex/Pattern;

    #@130
    move-result-object v4

    #@131
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@134
    move-result-object v4

    #@135
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    #@138
    move-result v4

    #@139
    if-nez v4, :cond_0

    #@13b
    .line 745
    :cond_a
    return v6

    #@13c
    .line 749
    .local v1, "s":Ljava/lang/CharSequence;
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    #@13f
    move-result v4

    #@140
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    #@143
    move-result v5

    #@144
    if-eq v4, v5, :cond_0

    #@146
    .line 750
    return v6

    #@147
    .line 754
    :pswitch_11
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    #@14a
    move-result v4

    #@14b
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    #@14e
    move-result v5

    #@14f
    if-eq v4, v5, :cond_0

    #@151
    .line 755
    return v6

    #@152
    .line 759
    :pswitch_12
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    #@155
    move-result v4

    #@156
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    #@159
    move-result v5

    #@15a
    if-eq v4, v5, :cond_0

    #@15c
    .line 760
    return v6

    #@15d
    .line 766
    :pswitch_13
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    #@160
    move-result-object v1

    #@161
    .line 767
    .local v1, "s":Ljava/lang/CharSequence;
    if-eqz v1, :cond_b

    #@163
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@166
    move-result-object v4

    #@167
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    #@16a
    move-result-object v5

    #@16b
    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@16e
    move-result v4

    #@16f
    if-nez v4, :cond_0

    #@171
    .line 768
    :cond_b
    return v6

    #@172
    .line 772
    .local v1, "s":Ljava/lang/CharSequence;
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    #@175
    move-result-object v1

    #@176
    .line 773
    .local v1, "s":Ljava/lang/CharSequence;
    if-eqz v1, :cond_c

    #@178
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getPattern(I)Ljava/util/regex/Pattern;

    #@17b
    move-result-object v4

    #@17c
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@17f
    move-result-object v4

    #@180
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    #@183
    move-result v4

    #@184
    if-nez v4, :cond_0

    #@186
    .line 774
    :cond_c
    return v6

    #@187
    .line 778
    .local v1, "s":Ljava/lang/CharSequence;
    :pswitch_15
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    #@18a
    move-result v4

    #@18b
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    #@18e
    move-result v5

    #@18f
    if-eq v4, v5, :cond_0

    #@191
    .line 779
    return v6

    #@192
    .line 783
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    #@195
    move-result v4

    #@196
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    #@199
    move-result v5

    #@19a
    if-eq v4, v5, :cond_0

    #@19c
    .line 784
    return v6

    #@19d
    .line 788
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    #@1a0
    move-result-object v1

    #@1a1
    .line 789
    .local v1, "s":Ljava/lang/CharSequence;
    if-eqz v1, :cond_d

    #@1a3
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1a6
    move-result-object v4

    #@1a7
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    #@1aa
    move-result-object v5

    #@1ab
    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@1ae
    move-result v4

    #@1af
    if-nez v4, :cond_0

    #@1b1
    .line 790
    :cond_d
    return v6

    #@1b2
    .line 794
    .local v1, "s":Ljava/lang/CharSequence;
    :pswitch_18
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    #@1b5
    move-result-object v1

    #@1b6
    .line 795
    .local v1, "s":Ljava/lang/CharSequence;
    if-eqz v1, :cond_e

    #@1b8
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getPattern(I)Ljava/util/regex/Pattern;

    #@1bb
    move-result-object v4

    #@1bc
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@1bf
    move-result-object v4

    #@1c0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    #@1c3
    move-result v4

    #@1c4
    if-nez v4, :cond_0

    #@1c6
    .line 796
    :cond_e
    return v6

    #@1c7
    .line 801
    .end local v0    # "criterion":I
    .end local v1    # "s":Ljava/lang/CharSequence;
    :cond_f
    invoke-direct {p0}, Lcom/android/uiautomator/core/UiSelector;->matchOrUpdateInstance()Z

    #@1ca
    move-result v4

    #@1cb
    return v4

    #@1cc
    .line 659
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_10
        :pswitch_12
        :pswitch_11
        :pswitch_15
        :pswitch_5
        :pswitch_2
        :pswitch_16
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_f
        :pswitch_4
        :pswitch_b
        :pswitch_14
        :pswitch_17
        :pswitch_6
        :pswitch_18
    .end packed-switch
.end method

.method public longClickable(Z)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 517
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x18

    #@6
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public packageName(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 566
    const/16 v0, 0x12

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public packageNameMatches(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 578
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x1c

    #@6
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public resourceId(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 288
    const/16 v0, 0x1d

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public resourceIdMatches(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 300
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x1f

    #@6
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public scrollable(Z)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 420
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0xd

    #@6
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public selected(Z)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 440
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x10

    #@6
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public text(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 116
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public textContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 159
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public textMatches(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 131
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x19

    #@6
    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public textStartsWith(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 145
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 897
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->dumpToString(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method
