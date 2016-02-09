.class public Landroid/widget/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuPresenter$SavedState;,
        Landroid/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/widget/ActionMenuPresenter$OverflowPopup;,
        Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;,
        Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;,
        Landroid/widget/ActionMenuPresenter$1;,
        Landroid/widget/ActionMenuPresenter$2;
    }
.end annotation


# static fields
.field private static final ACTIONBAR_ANIMATIONS_ENABLED:Z = false

.field private static final ITEM_ANIMATION_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mExpandedActionViewsExclusive:Z

.field private mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

.field private mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostLayoutItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mPreLayoutItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mRunningItemAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method static synthetic -get0(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/ActionMenuPresenter;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowMenuButton;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowPopup;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)Landroid/widget/ActionMenuPresenter$OverflowPopup;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;)Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/ActionMenuPresenter;Z)V
    .locals 0
    .param p1, "preLayout"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/ActionMenuPresenter;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter;->runItemAnimations()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 127
    const v0, 0x109001d

    #@3
    .line 128
    const v1, 0x109001c

    #@6
    .line 127
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    #@9
    .line 80
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@b
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@e
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    #@10
    .line 88
    new-instance v0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-direct {v0, p0, v1}, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;)V

    #@16
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    #@18
    .line 94
    new-instance v0, Landroid/util/SparseArray;

    #@1a
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1d
    .line 93
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    #@1f
    .line 96
    new-instance v0, Landroid/util/SparseArray;

    #@21
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@24
    .line 95
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    #@26
    .line 99
    new-instance v0, Ljava/util/ArrayList;

    #@28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    #@2d
    .line 101
    new-instance v0, Landroid/widget/ActionMenuPresenter$1;

    #@2f
    invoke-direct {v0, p0}, Landroid/widget/ActionMenuPresenter$1;-><init>(Landroid/widget/ActionMenuPresenter;)V

    #@32
    .line 100
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@34
    .line 111
    new-instance v0, Landroid/widget/ActionMenuPresenter$2;

    #@36
    invoke-direct {v0, p0}, Landroid/widget/ActionMenuPresenter$2;-><init>(Landroid/widget/ActionMenuPresenter;)V

    #@39
    .line 110
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@3b
    .line 126
    return-void
.end method

.method private computeMenuItemAnimationInfo(Z)V
    .locals 8
    .param p1, "preLayout"    # Z

    #@0
    .prologue
    .line 279
    iget-object v6, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@2
    check-cast v6, Landroid/view/ViewGroup;

    #@4
    .line 280
    .local v6, "menuView":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    #@7
    move-result v1

    #@8
    .line 281
    .local v1, "count":I
    if-eqz p1, :cond_1

    #@a
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    #@c
    .line 282
    .local v5, "items":Landroid/util/SparseArray;
    :goto_0
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    #@f
    .line 283
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    .line 284
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    #@16
    move-result v3

    #@17
    .line 285
    .local v3, "id":I
    if-lez v3, :cond_0

    #@19
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@1c
    move-result v7

    #@1d
    if-eqz v7, :cond_0

    #@1f
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@22
    move-result v7

    #@23
    if-eqz v7, :cond_0

    #@25
    .line 286
    new-instance v4, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    #@27
    invoke-direct {v4, v0, p1}, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;-><init>(Landroid/view/View;Z)V

    #@2a
    .line 287
    .local v4, "info":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@2d
    .line 282
    .end local v4    # "info":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 281
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v5    # "items":Landroid/util/SparseArray;
    :cond_1
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    #@32
    .restart local v5    # "items":Landroid/util/SparseArray;
    goto :goto_0

    #@33
    .line 278
    .restart local v2    # "i":I
    :cond_2
    return-void
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 516
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@3
    check-cast v3, Landroid/view/ViewGroup;

    #@5
    .line 517
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_0

    #@7
    return-object v5

    #@8
    .line 519
    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    #@b
    move-result v1

    #@c
    .line 520
    .local v1, "count":I
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@f
    .line 521
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    .line 522
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    #@15
    if-eqz v4, :cond_1

    #@17
    move-object v4, v0

    #@18
    .line 523
    check-cast v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    #@1a
    invoke-interface {v4}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    #@1d
    move-result-object v4

    #@1e
    if-ne v4, p1, :cond_1

    #@20
    .line 524
    return-object v0

    #@21
    .line 520
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 527
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-object v5
.end method

.method private runItemAnimations()V
    .locals 20

    #@0
    .prologue
    .line 301
    const/4 v3, 0x0

    #@1
    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@3
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v15

    #@9
    if-ge v3, v15, :cond_b

    #@b
    .line 302
    move-object/from16 v0, p0

    #@d
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->keyAt(I)I

    #@12
    move-result v4

    #@13
    .line 303
    .local v4, "id":I
    move-object/from16 v0, p0

    #@15
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v9

    #@1b
    check-cast v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    #@1d
    .line 304
    .local v9, "menuItemLayoutInfoPre":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    move-object/from16 v0, p0

    #@1f
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    #@21
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@24
    move-result v12

    #@25
    .line 305
    .local v12, "postLayoutIndex":I
    if-ltz v12, :cond_8

    #@27
    .line 308
    move-object/from16 v0, p0

    #@29
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    #@2b
    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2e
    move-result-object v8

    #@2f
    check-cast v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    #@31
    .line 309
    .local v8, "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v13, 0x0

    #@32
    .line 310
    .local v13, "pvhX":Landroid/animation/PropertyValuesHolder;
    const/4 v14, 0x0

    #@33
    .line 311
    .local v14, "pvhY":Landroid/animation/PropertyValuesHolder;
    iget v15, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    #@35
    iget v0, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    #@37
    move/from16 v16, v0

    #@39
    move/from16 v0, v16

    #@3b
    if-eq v15, v0, :cond_0

    #@3d
    .line 312
    sget-object v15, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    #@3f
    const/16 v16, 0x2

    #@41
    move/from16 v0, v16

    #@43
    new-array v0, v0, [F

    #@45
    move-object/from16 v16, v0

    #@47
    .line 313
    iget v0, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    #@49
    move/from16 v17, v0

    #@4b
    iget v0, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    #@4d
    move/from16 v18, v0

    #@4f
    sub-int v17, v17, v18

    #@51
    move/from16 v0, v17

    #@53
    int-to-float v0, v0

    #@54
    move/from16 v17, v0

    #@56
    const/16 v18, 0x0

    #@58
    aput v17, v16, v18

    #@5a
    const/16 v17, 0x0

    #@5c
    const/16 v18, 0x1

    #@5e
    aput v17, v16, v18

    #@60
    .line 312
    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    #@63
    move-result-object v13

    #@64
    .line 315
    .end local v13    # "pvhX":Landroid/animation/PropertyValuesHolder;
    :cond_0
    iget v15, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    #@66
    iget v0, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    #@68
    move/from16 v16, v0

    #@6a
    move/from16 v0, v16

    #@6c
    if-eq v15, v0, :cond_1

    #@6e
    .line 316
    sget-object v15, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    #@70
    const/16 v16, 0x2

    #@72
    move/from16 v0, v16

    #@74
    new-array v0, v0, [F

    #@76
    move-object/from16 v16, v0

    #@78
    .line 317
    iget v0, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    #@7a
    move/from16 v17, v0

    #@7c
    iget v0, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    #@7e
    move/from16 v18, v0

    #@80
    sub-int v17, v17, v18

    #@82
    move/from16 v0, v17

    #@84
    int-to-float v0, v0

    #@85
    move/from16 v17, v0

    #@87
    const/16 v18, 0x0

    #@89
    aput v17, v16, v18

    #@8b
    const/16 v17, 0x0

    #@8d
    const/16 v18, 0x1

    #@8f
    aput v17, v16, v18

    #@91
    .line 316
    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    #@94
    move-result-object v14

    #@95
    .line 319
    .end local v14    # "pvhY":Landroid/animation/PropertyValuesHolder;
    :cond_1
    if-nez v13, :cond_2

    #@97
    if-eqz v14, :cond_5

    #@99
    .line 320
    :cond_2
    const/4 v6, 0x0

    #@9a
    .local v6, "j":I
    :goto_1
    move-object/from16 v0, p0

    #@9c
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    #@9e
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@a1
    move-result v15

    #@a2
    if-ge v6, v15, :cond_4

    #@a4
    .line 321
    move-object/from16 v0, p0

    #@a6
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    #@a8
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@ab
    move-result-object v11

    #@ac
    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    #@ae
    .line 322
    .local v11, "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    #@b0
    if-ne v15, v4, :cond_3

    #@b2
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    #@b4
    if-nez v15, :cond_3

    #@b6
    .line 323
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    #@b8
    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    #@bb
    .line 320
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@bd
    goto :goto_1

    #@be
    .line 327
    .end local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_4
    if-eqz v13, :cond_7

    #@c0
    .line 328
    if-eqz v14, :cond_6

    #@c2
    .line 329
    iget-object v15, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    #@c4
    const/16 v16, 0x2

    #@c6
    move/from16 v0, v16

    #@c8
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    #@ca
    move-object/from16 v16, v0

    #@cc
    .line 330
    const/16 v17, 0x0

    #@ce
    aput-object v13, v16, v17

    #@d0
    const/16 v17, 0x1

    #@d2
    aput-object v14, v16, v17

    #@d4
    .line 329
    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@d7
    move-result-object v2

    #@d8
    .line 337
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    :goto_2
    const-wide/16 v16, 0x96

    #@da
    move-wide/from16 v0, v16

    #@dc
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@df
    .line 338
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    #@e2
    .line 339
    new-instance v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    #@e4
    .line 340
    const/4 v15, 0x0

    #@e5
    .line 339
    invoke-direct {v5, v4, v8, v2, v15}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    #@e8
    .line 341
    .local v5, "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    #@ea
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    #@ec
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ef
    .line 342
    new-instance v15, Landroid/widget/ActionMenuPresenter$3;

    #@f1
    move-object/from16 v0, p0

    #@f3
    invoke-direct {v15, v0}, Landroid/widget/ActionMenuPresenter$3;-><init>(Landroid/widget/ActionMenuPresenter;)V

    #@f6
    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@f9
    .line 354
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    .end local v6    # "j":I
    :cond_5
    move-object/from16 v0, p0

    #@fb
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    #@fd
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->remove(I)V

    #@100
    .line 301
    .end local v8    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@102
    goto/16 :goto_0

    #@104
    .line 332
    .restart local v6    # "j":I
    .restart local v8    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    :cond_6
    iget-object v15, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    #@106
    const/16 v16, 0x1

    #@108
    move/from16 v0, v16

    #@10a
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    #@10c
    move-object/from16 v16, v0

    #@10e
    const/16 v17, 0x0

    #@110
    aput-object v13, v16, v17

    #@112
    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@115
    move-result-object v2

    #@116
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_2

    #@117
    .line 335
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    :cond_7
    iget-object v15, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    #@119
    const/16 v16, 0x1

    #@11b
    move/from16 v0, v16

    #@11d
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    #@11f
    move-object/from16 v16, v0

    #@121
    const/16 v17, 0x0

    #@123
    aput-object v14, v16, v17

    #@125
    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@128
    move-result-object v2

    #@129
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_2

    #@12a
    .line 357
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v6    # "j":I
    .end local v8    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    :cond_8
    const/high16 v10, 0x3f800000    # 1.0f

    #@12c
    .line 358
    .local v10, "oldAlpha":F
    const/4 v6, 0x0

    #@12d
    .restart local v6    # "j":I
    :goto_4
    move-object/from16 v0, p0

    #@12f
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    #@131
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@134
    move-result v15

    #@135
    if-ge v6, v15, :cond_a

    #@137
    .line 359
    move-object/from16 v0, p0

    #@139
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    #@13b
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13e
    move-result-object v11

    #@13f
    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    #@141
    .line 360
    .restart local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    #@143
    if-ne v15, v4, :cond_9

    #@145
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    #@147
    const/16 v16, 0x1

    #@149
    move/from16 v0, v16

    #@14b
    if-ne v15, v0, :cond_9

    #@14d
    .line 361
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    #@14f
    iget-object v15, v15, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    #@151
    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    #@154
    move-result v10

    #@155
    .line 362
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    #@157
    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    #@15a
    .line 358
    :cond_9
    add-int/lit8 v6, v6, 0x1

    #@15c
    goto :goto_4

    #@15d
    .line 365
    .end local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_a
    iget-object v15, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    #@15f
    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@161
    const/16 v17, 0x2

    #@163
    move/from16 v0, v17

    #@165
    new-array v0, v0, [F

    #@167
    move-object/from16 v17, v0

    #@169
    .line 366
    const/16 v18, 0x0

    #@16b
    aput v10, v17, v18

    #@16d
    const/16 v18, 0x0

    #@16f
    const/16 v19, 0x1

    #@171
    aput v18, v17, v19

    #@173
    .line 365
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@176
    move-result-object v2

    #@177
    .line 368
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    #@179
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@17b
    check-cast v15, Landroid/view/ViewGroup;

    #@17d
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@180
    move-result-object v15

    #@181
    iget-object v0, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    #@183
    move-object/from16 v16, v0

    #@185
    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    #@188
    .line 369
    const-wide/16 v16, 0x96

    #@18a
    move-wide/from16 v0, v16

    #@18c
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@18f
    .line 370
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    #@192
    .line 371
    new-instance v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    #@194
    const/4 v15, 0x2

    #@195
    invoke-direct {v5, v4, v9, v2, v15}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    #@198
    .line 372
    .restart local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    #@19a
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    #@19c
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19f
    .line 373
    new-instance v15, Landroid/widget/ActionMenuPresenter$4;

    #@1a1
    move-object/from16 v0, p0

    #@1a3
    invoke-direct {v15, v0, v9}, Landroid/widget/ActionMenuPresenter$4;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;)V

    #@1a6
    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@1a9
    goto/16 :goto_3

    #@1ab
    .line 387
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v4    # "id":I
    .end local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    .end local v6    # "j":I
    .end local v9    # "menuItemLayoutInfoPre":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v10    # "oldAlpha":F
    .end local v12    # "postLayoutIndex":I
    :cond_b
    const/4 v3, 0x0

    #@1ac
    :goto_5
    move-object/from16 v0, p0

    #@1ae
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    #@1b0
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    #@1b3
    move-result v15

    #@1b4
    if-ge v3, v15, :cond_f

    #@1b6
    .line 388
    move-object/from16 v0, p0

    #@1b8
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    #@1ba
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->keyAt(I)I

    #@1bd
    move-result v4

    #@1be
    .line 389
    .restart local v4    # "id":I
    move-object/from16 v0, p0

    #@1c0
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    #@1c2
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@1c5
    move-result v12

    #@1c6
    .line 390
    .restart local v12    # "postLayoutIndex":I
    if-ltz v12, :cond_e

    #@1c8
    .line 393
    move-object/from16 v0, p0

    #@1ca
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    #@1cc
    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1cf
    move-result-object v7

    #@1d0
    check-cast v7, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    #@1d2
    .line 394
    .local v7, "menuItemLayoutInfo":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v10, 0x0

    #@1d3
    .line 395
    .restart local v10    # "oldAlpha":F
    const/4 v6, 0x0

    #@1d4
    .restart local v6    # "j":I
    :goto_6
    move-object/from16 v0, p0

    #@1d6
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    #@1d8
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@1db
    move-result v15

    #@1dc
    if-ge v6, v15, :cond_d

    #@1de
    .line 396
    move-object/from16 v0, p0

    #@1e0
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    #@1e2
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e5
    move-result-object v11

    #@1e6
    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    #@1e8
    .line 397
    .restart local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    #@1ea
    if-ne v15, v4, :cond_c

    #@1ec
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    #@1ee
    const/16 v16, 0x2

    #@1f0
    move/from16 v0, v16

    #@1f2
    if-ne v15, v0, :cond_c

    #@1f4
    .line 398
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    #@1f6
    iget-object v15, v15, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    #@1f8
    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    #@1fb
    move-result v10

    #@1fc
    .line 399
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    #@1fe
    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    #@201
    .line 395
    :cond_c
    add-int/lit8 v6, v6, 0x1

    #@203
    goto :goto_6

    #@204
    .line 402
    .end local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_d
    iget-object v15, v7, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    #@206
    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@208
    const/16 v17, 0x2

    #@20a
    move/from16 v0, v17

    #@20c
    new-array v0, v0, [F

    #@20e
    move-object/from16 v17, v0

    #@210
    .line 403
    const/16 v18, 0x0

    #@212
    aput v10, v17, v18

    #@214
    const/high16 v18, 0x3f800000    # 1.0f

    #@216
    const/16 v19, 0x1

    #@218
    aput v18, v17, v19

    #@21a
    .line 402
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@21d
    move-result-object v2

    #@21e
    .line 404
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    #@221
    .line 405
    const-wide/16 v16, 0x96

    #@223
    move-wide/from16 v0, v16

    #@225
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@228
    .line 406
    new-instance v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    #@22a
    const/4 v15, 0x1

    #@22b
    invoke-direct {v5, v4, v7, v2, v15}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    #@22e
    .line 407
    .restart local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    #@230
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    #@232
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@235
    .line 408
    new-instance v15, Landroid/widget/ActionMenuPresenter$5;

    #@237
    move-object/from16 v0, p0

    #@239
    invoke-direct {v15, v0}, Landroid/widget/ActionMenuPresenter$5;-><init>(Landroid/widget/ActionMenuPresenter;)V

    #@23c
    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@23f
    .line 387
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    .end local v6    # "j":I
    .end local v7    # "menuItemLayoutInfo":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v10    # "oldAlpha":F
    :cond_e
    add-int/lit8 v3, v3, 0x1

    #@241
    goto/16 :goto_5

    #@243
    .line 421
    .end local v4    # "id":I
    .end local v12    # "postLayoutIndex":I
    :cond_f
    move-object/from16 v0, p0

    #@245
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    #@247
    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    #@24a
    .line 422
    move-object/from16 v0, p0

    #@24c
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    #@24e
    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    #@251
    .line 300
    return-void
.end method

.method private setupItemAnimations()V
    .locals 2

    #@0
    .prologue
    .line 430
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/widget/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V

    #@4
    .line 431
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@b
    move-result-object v0

    #@c
    .line 432
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@e
    .line 431
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@11
    .line 429
    return-void
.end method


# virtual methods
.method public bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .locals 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/android/internal/view/menu/MenuView$ItemView;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 253
    const/4 v2, 0x0

    #@2
    invoke-interface {p2, p1, v2}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    #@5
    .line 255
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@7
    check-cast v1, Landroid/widget/ActionMenuView;

    #@9
    .local v1, "menuView":Landroid/widget/ActionMenuView;
    move-object v0, p2

    #@a
    .line 256
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    #@c
    .line 257
    .local v0, "actionItemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    #@f
    .line 259
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    #@11
    if-nez v2, :cond_0

    #@13
    .line 260
    new-instance v2, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    #@15
    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;)V

    #@18
    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    #@1a
    .line 262
    :cond_0
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    #@1c
    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setPopupCallback(Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;)V

    #@1f
    .line 252
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    #@0
    .prologue
    .line 576
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    #@3
    move-result v0

    #@4
    .line 577
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    #@7
    move-result v1

    #@8
    or-int/2addr v0, v1

    #@9
    .line 578
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    #@0
    .prologue
    .line 490
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 491
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public flagActionItems()Z
    .locals 29

    #@0
    .prologue
    .line 613
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@4
    move-object/from16 v27, v0

    #@6
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@9
    move-result-object v25

    #@a
    .line 614
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v15

    #@e
    .line 615
    .local v15, "itemsSize":I
    move-object/from16 v0, p0

    #@10
    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    #@12
    move/from16 v17, v0

    #@14
    .line 616
    .local v17, "maxActions":I
    move-object/from16 v0, p0

    #@16
    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    #@18
    move/from16 v26, v0

    #@1a
    .line 617
    .local v26, "widthLimit":I
    const/16 v27, 0x0

    #@1c
    const/16 v28, 0x0

    #@1e
    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@21
    move-result v20

    #@22
    .line 618
    .local v20, "querySpec":I
    move-object/from16 v0, p0

    #@24
    iget-object v0, v0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@26
    move-object/from16 v19, v0

    #@28
    check-cast v19, Landroid/view/ViewGroup;

    #@2a
    .line 620
    .local v19, "parent":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    #@2c
    .line 621
    .local v22, "requiredItems":I
    const/16 v21, 0x0

    #@2e
    .line 622
    .local v21, "requestedItems":I
    const/4 v8, 0x0

    #@2f
    .line 623
    .local v8, "firstActionWidth":I
    const/4 v10, 0x0

    #@30
    .line 624
    .local v10, "hasOverflow":Z
    const/4 v11, 0x0

    #@31
    .local v11, "i":I
    :goto_0
    if-ge v11, v15, :cond_3

    #@33
    .line 625
    move-object/from16 v0, v25

    #@35
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v14

    #@39
    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    #@3b
    .line 626
    .local v14, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    #@3e
    move-result v27

    #@3f
    if-eqz v27, :cond_1

    #@41
    .line 627
    add-int/lit8 v22, v22, 0x1

    #@43
    .line 633
    :goto_1
    move-object/from16 v0, p0

    #@45
    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    #@47
    move/from16 v27, v0

    #@49
    if-eqz v27, :cond_0

    #@4b
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    #@4e
    move-result v27

    #@4f
    if-eqz v27, :cond_0

    #@51
    .line 636
    const/16 v17, 0x0

    #@53
    .line 624
    :cond_0
    add-int/lit8 v11, v11, 0x1

    #@55
    goto :goto_0

    #@56
    .line 628
    :cond_1
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    #@59
    move-result v27

    #@5a
    if-eqz v27, :cond_2

    #@5c
    .line 629
    add-int/lit8 v21, v21, 0x1

    #@5e
    goto :goto_1

    #@5f
    .line 631
    :cond_2
    const/4 v10, 0x1

    #@60
    goto :goto_1

    #@61
    .line 641
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_3
    move-object/from16 v0, p0

    #@63
    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@65
    move/from16 v27, v0

    #@67
    if-eqz v27, :cond_5

    #@69
    .line 642
    if-nez v10, :cond_4

    #@6b
    add-int v27, v22, v21

    #@6d
    move/from16 v0, v27

    #@6f
    move/from16 v1, v17

    #@71
    if-le v0, v1, :cond_5

    #@73
    .line 643
    :cond_4
    add-int/lit8 v17, v17, -0x1

    #@75
    .line 645
    :cond_5
    sub-int v17, v17, v22

    #@77
    .line 647
    move-object/from16 v0, p0

    #@79
    iget-object v0, v0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    #@7b
    move-object/from16 v23, v0

    #@7d
    .line 648
    .local v23, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    #@80
    .line 650
    const/4 v4, 0x0

    #@81
    .line 651
    .local v4, "cellSize":I
    const/4 v7, 0x0

    #@82
    .line 652
    .local v7, "cellsRemaining":I
    move-object/from16 v0, p0

    #@84
    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@86
    move/from16 v27, v0

    #@88
    if-eqz v27, :cond_6

    #@8a
    .line 653
    move-object/from16 v0, p0

    #@8c
    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    #@8e
    move/from16 v27, v0

    #@90
    div-int v7, v26, v27

    #@92
    .line 654
    move-object/from16 v0, p0

    #@94
    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    #@96
    move/from16 v27, v0

    #@98
    rem-int v5, v26, v27

    #@9a
    .line 655
    .local v5, "cellSizeRemaining":I
    move-object/from16 v0, p0

    #@9c
    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    #@9e
    move/from16 v27, v0

    #@a0
    div-int v28, v5, v7

    #@a2
    add-int v4, v27, v28

    #@a4
    .line 659
    .end local v5    # "cellSizeRemaining":I
    :cond_6
    const/4 v11, 0x0

    #@a5
    :goto_2
    if-ge v11, v15, :cond_1c

    #@a7
    .line 660
    move-object/from16 v0, v25

    #@a9
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ac
    move-result-object v14

    #@ad
    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    #@af
    .line 662
    .restart local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    #@b2
    move-result v27

    #@b3
    if-eqz v27, :cond_a

    #@b5
    .line 663
    const/16 v27, 0x0

    #@b7
    move-object/from16 v0, p0

    #@b9
    move-object/from16 v1, v27

    #@bb
    move-object/from16 v2, v19

    #@bd
    invoke-virtual {v0, v14, v1, v2}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@c0
    move-result-object v24

    #@c1
    .line 664
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p0

    #@c3
    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@c5
    move/from16 v27, v0

    #@c7
    if-eqz v27, :cond_9

    #@c9
    .line 666
    const/16 v27, 0x0

    #@cb
    .line 665
    move-object/from16 v0, v24

    #@cd
    move/from16 v1, v20

    #@cf
    move/from16 v2, v27

    #@d1
    invoke-static {v0, v4, v7, v1, v2}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    #@d4
    move-result v27

    #@d5
    sub-int v7, v7, v27

    #@d7
    .line 670
    :goto_3
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    #@da
    move-result v18

    #@db
    .line 671
    .local v18, "measuredWidth":I
    sub-int v26, v26, v18

    #@dd
    .line 672
    if-nez v8, :cond_7

    #@df
    .line 673
    move/from16 v8, v18

    #@e1
    .line 675
    :cond_7
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    #@e4
    move-result v9

    #@e5
    .line 676
    .local v9, "groupId":I
    if-eqz v9, :cond_8

    #@e7
    .line 677
    const/16 v27, 0x1

    #@e9
    move-object/from16 v0, v23

    #@eb
    move/from16 v1, v27

    #@ed
    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@f0
    .line 679
    :cond_8
    const/16 v27, 0x1

    #@f2
    move/from16 v0, v27

    #@f4
    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    #@f7
    .line 659
    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :goto_4
    add-int/lit8 v11, v11, 0x1

    #@f9
    goto :goto_2

    #@fa
    .line 668
    .restart local v24    # "v":Landroid/view/View;
    :cond_9
    move-object/from16 v0, v24

    #@fc
    move/from16 v1, v20

    #@fe
    move/from16 v2, v20

    #@100
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    #@103
    goto :goto_3

    #@104
    .line 680
    .end local v24    # "v":Landroid/view/View;
    :cond_a
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    #@107
    move-result v27

    #@108
    if-eqz v27, :cond_1b

    #@10a
    .line 683
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    #@10d
    move-result v9

    #@10e
    .line 684
    .restart local v9    # "groupId":I
    move-object/from16 v0, v23

    #@110
    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@113
    move-result v12

    #@114
    .line 685
    .local v12, "inGroup":Z
    if-gtz v17, :cond_b

    #@116
    if-eqz v12, :cond_13

    #@118
    :cond_b
    if-lez v26, :cond_13

    #@11a
    .line 686
    move-object/from16 v0, p0

    #@11c
    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@11e
    move/from16 v27, v0

    #@120
    if-eqz v27, :cond_c

    #@122
    if-lez v7, :cond_12

    #@124
    :cond_c
    const/4 v13, 0x1

    #@125
    .line 688
    .local v13, "isAction":Z
    :goto_5
    if-eqz v13, :cond_f

    #@127
    .line 689
    const/16 v27, 0x0

    #@129
    move-object/from16 v0, p0

    #@12b
    move-object/from16 v1, v27

    #@12d
    move-object/from16 v2, v19

    #@12f
    invoke-virtual {v0, v14, v1, v2}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@132
    move-result-object v24

    #@133
    .line 690
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    #@135
    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@137
    move/from16 v27, v0

    #@139
    if-eqz v27, :cond_14

    #@13b
    .line 692
    const/16 v27, 0x0

    #@13d
    .line 691
    move-object/from16 v0, v24

    #@13f
    move/from16 v1, v20

    #@141
    move/from16 v2, v27

    #@143
    invoke-static {v0, v4, v7, v1, v2}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    #@146
    move-result v6

    #@147
    .line 693
    .local v6, "cells":I
    sub-int/2addr v7, v6

    #@148
    .line 694
    if-nez v6, :cond_d

    #@14a
    .line 695
    const/4 v13, 0x0

    #@14b
    .line 700
    .end local v6    # "cells":I
    :cond_d
    :goto_6
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    #@14e
    move-result v18

    #@14f
    .line 701
    .restart local v18    # "measuredWidth":I
    sub-int v26, v26, v18

    #@151
    .line 702
    if-nez v8, :cond_e

    #@153
    .line 703
    move/from16 v8, v18

    #@155
    .line 706
    :cond_e
    move-object/from16 v0, p0

    #@157
    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@159
    move/from16 v27, v0

    #@15b
    if-eqz v27, :cond_16

    #@15d
    .line 707
    if-ltz v26, :cond_15

    #@15f
    const/16 v27, 0x1

    #@161
    :goto_7
    and-int v13, v13, v27

    #@163
    .line 714
    .end local v13    # "isAction":Z
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_f
    :goto_8
    if-eqz v13, :cond_18

    #@165
    if-eqz v9, :cond_18

    #@167
    .line 715
    const/16 v27, 0x1

    #@169
    move-object/from16 v0, v23

    #@16b
    move/from16 v1, v27

    #@16d
    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@170
    .line 729
    :cond_10
    if-eqz v13, :cond_11

    #@172
    add-int/lit8 v17, v17, -0x1

    #@174
    .line 731
    :cond_11
    invoke-virtual {v14, v13}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    #@177
    goto :goto_4

    #@178
    .line 686
    :cond_12
    const/4 v13, 0x0

    #@179
    .restart local v13    # "isAction":Z
    goto :goto_5

    #@17a
    .line 685
    .end local v13    # "isAction":Z
    :cond_13
    const/4 v13, 0x0

    #@17b
    .restart local v13    # "isAction":Z
    goto :goto_5

    #@17c
    .line 698
    .restart local v24    # "v":Landroid/view/View;
    :cond_14
    move-object/from16 v0, v24

    #@17e
    move/from16 v1, v20

    #@180
    move/from16 v2, v20

    #@182
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    #@185
    goto :goto_6

    #@186
    .line 707
    .restart local v18    # "measuredWidth":I
    :cond_15
    const/16 v27, 0x0

    #@188
    goto :goto_7

    #@189
    .line 710
    :cond_16
    add-int v27, v26, v8

    #@18b
    if-lez v27, :cond_17

    #@18d
    const/16 v27, 0x1

    #@18f
    :goto_9
    and-int v13, v13, v27

    #@191
    .local v13, "isAction":Z
    goto :goto_8

    #@192
    .local v13, "isAction":Z
    :cond_17
    const/16 v27, 0x0

    #@194
    goto :goto_9

    #@195
    .line 716
    .end local v13    # "isAction":Z
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_18
    if-eqz v12, :cond_10

    #@197
    .line 718
    const/16 v27, 0x0

    #@199
    move-object/from16 v0, v23

    #@19b
    move/from16 v1, v27

    #@19d
    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@1a0
    .line 719
    const/16 v16, 0x0

    #@1a2
    .local v16, "j":I
    :goto_a
    move/from16 v0, v16

    #@1a4
    if-ge v0, v11, :cond_10

    #@1a6
    .line 720
    move-object/from16 v0, v25

    #@1a8
    move/from16 v1, v16

    #@1aa
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1ad
    move-result-object v3

    #@1ae
    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    #@1b0
    .line 721
    .local v3, "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    #@1b3
    move-result v27

    #@1b4
    move/from16 v0, v27

    #@1b6
    if-ne v0, v9, :cond_1a

    #@1b8
    .line 723
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    #@1bb
    move-result v27

    #@1bc
    if-eqz v27, :cond_19

    #@1be
    add-int/lit8 v17, v17, 0x1

    #@1c0
    .line 724
    :cond_19
    const/16 v27, 0x0

    #@1c2
    move/from16 v0, v27

    #@1c4
    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    #@1c7
    .line 719
    :cond_1a
    add-int/lit8 v16, v16, 0x1

    #@1c9
    goto :goto_a

    #@1ca
    .line 734
    .end local v3    # "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v9    # "groupId":I
    .end local v12    # "inGroup":Z
    .end local v16    # "j":I
    :cond_1b
    const/16 v27, 0x0

    #@1cc
    move/from16 v0, v27

    #@1ce
    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    #@1d1
    goto/16 :goto_4

    #@1d3
    .line 737
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1c
    const/16 v27, 0x1

    #@1d5
    return v27
.end method

.method public getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 238
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 239
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    .line 241
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_3

    #@16
    const/16 v3, 0x8

    #@18
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    #@1b
    move-object v2, p3

    #@1c
    .line 243
    check-cast v2, Landroid/widget/ActionMenuView;

    #@1e
    .line 244
    .local v2, "menuParent":Landroid/widget/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@21
    move-result-object v1

    #@22
    .line 245
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_2

    #@28
    .line 246
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@2f
    .line 248
    :cond_2
    return-object v0

    #@30
    .line 241
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuParent":Landroid/widget/ActionMenuView;
    :cond_3
    const/4 v3, 0x0

    #@31
    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@2
    .line 224
    .local v0, "oldMenuView":Lcom/android/internal/view/menu/MenuView;
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    #@5
    move-result-object v1

    #@6
    .line 225
    .local v1, "result":Lcom/android/internal/view/menu/MenuView;
    if-eq v0, v1, :cond_1

    #@8
    move-object v2, v1

    #@9
    .line 226
    check-cast v2, Landroid/widget/ActionMenuView;

    #@b
    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    #@e
    .line 227
    if-eqz v0, :cond_0

    #@10
    .line 228
    check-cast v0, Landroid/view/View;

    #@12
    .end local v0    # "oldMenuView":Lcom/android/internal/view/menu/MenuView;
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@14
    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@17
    :cond_0
    move-object v2, v1

    #@18
    .line 230
    check-cast v2, Landroid/view/View;

    #@1a
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@1c
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@1f
    .line 232
    :cond_1
    return-object v1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 213
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 214
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@7
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 215
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 216
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    #@12
    return-object v0

    #@13
    .line 218
    :cond_1
    return-object v1
.end method

.method public hideOverflowMenu()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 557
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 558
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@c
    check-cast v1, Landroid/view/View;

    #@e
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@10
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@13
    .line 559
    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@15
    .line 560
    return v4

    #@16
    .line 563
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    #@18
    .line 564
    .local v0, "popup":Lcom/android/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    #@1a
    .line 565
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    #@1d
    .line 566
    return v4

    #@1e
    .line 568
    :cond_1
    const/4 v1, 0x0

    #@1f
    return v1
.end method

.method public hideSubMenus()Z
    .locals 1

    #@0
    .prologue
    .line 587
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 588
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    #@9
    .line 589
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 591
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 133
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    #@5
    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v1

    #@9
    .line 137
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    #@c
    move-result-object v0

    #@d
    .line 138
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    #@f
    if-nez v4, :cond_0

    #@11
    .line 139
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    #@14
    move-result v4

    #@15
    iput-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@17
    .line 142
    :cond_0
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    #@19
    if-nez v4, :cond_1

    #@1b
    .line 143
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    #@1e
    move-result v4

    #@1f
    iput v4, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    #@21
    .line 147
    :cond_1
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    #@23
    if-nez v4, :cond_2

    #@25
    .line 148
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    #@28
    move-result v4

    #@29
    iput v4, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    #@2b
    .line 151
    :cond_2
    iget v3, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    #@2d
    .line 152
    .local v3, "width":I
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@2f
    if-eqz v4, :cond_5

    #@31
    .line 153
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@33
    if-nez v4, :cond_4

    #@35
    .line 154
    new-instance v4, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@37
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    #@39
    invoke-direct {v4, p0, v5}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    #@3c
    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@3e
    .line 155
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    #@40
    if-eqz v4, :cond_3

    #@42
    .line 156
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@44
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    #@46
    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@49
    .line 157
    iput-object v7, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    #@4b
    .line 158
    iput-boolean v6, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    #@4d
    .line 160
    :cond_3
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@50
    move-result v2

    #@51
    .line 161
    .local v2, "spec":I
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@53
    invoke-virtual {v4, v2, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    #@56
    .line 163
    .end local v2    # "spec":I
    :cond_4
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@58
    invoke-virtual {v4}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I

    #@5b
    move-result v4

    #@5c
    sub-int/2addr v3, v4

    #@5d
    .line 168
    :goto_0
    iput v3, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    #@5f
    .line 170
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@62
    move-result-object v4

    #@63
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    #@65
    const/high16 v5, 0x42600000    # 56.0f

    #@67
    mul-float/2addr v4, v5

    #@68
    float-to-int v4, v4

    #@69
    iput v4, p0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    #@6b
    .line 132
    return-void

    #@6c
    .line 165
    :cond_5
    iput-object v7, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@6e
    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    #@0
    .prologue
    .line 602
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    #@0
    .prologue
    .line 598
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    #@0
    .prologue
    .line 609
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@2
    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    .line 742
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    #@3
    .line 743
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    #@6
    .line 741
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 174
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 175
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v0

    #@a
    .line 176
    const v1, 0x10e0099

    #@d
    .line 175
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    #@13
    .line 178
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 179
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@19
    const/4 v1, 0x1

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@1d
    .line 173
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v1, p1

    #@1
    .line 755
    check-cast v1, Landroid/widget/ActionMenuPresenter$SavedState;

    #@3
    .line 756
    .local v1, "saved":Landroid/widget/ActionMenuPresenter$SavedState;
    iget v3, v1, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    #@5
    if-lez v3, :cond_0

    #@7
    .line 757
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@9
    iget v4, v1, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    #@b
    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    #@e
    move-result-object v0

    #@f
    .line 758
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    #@11
    .line 759
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    #@17
    .line 760
    .local v2, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    #@1a
    .line 754
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    #@0
    .prologue
    .line 748
    new-instance v0, Landroid/widget/ActionMenuPresenter$SavedState;

    #@2
    invoke-direct {v0}, Landroid/widget/ActionMenuPresenter$SavedState;-><init>()V

    #@5
    .line 749
    .local v0, "state":Landroid/widget/ActionMenuPresenter$SavedState;
    iget v1, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    #@7
    iput v1, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    #@9
    .line 750
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 5
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 495
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    return v4

    #@8
    .line 497
    :cond_0
    move-object v1, p1

    #@9
    .line 498
    .local v1, "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    #@c
    move-result-object v2

    #@d
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@f
    if-eq v2, v3, :cond_1

    #@11
    .line 499
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    #@14
    move-result-object v1

    #@15
    .end local v1    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    #@17
    .restart local v1    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    goto :goto_0

    #@18
    .line 501
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {p0, v2}, Landroid/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    #@1f
    move-result-object v0

    #@20
    .line 502
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_3

    #@22
    .line 503
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@24
    if-nez v2, :cond_2

    #@26
    return v4

    #@27
    .line 504
    :cond_2
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@29
    .line 507
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    #@2c
    move-result-object v2

    #@2d
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    #@30
    move-result v2

    #@31
    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    #@33
    .line 508
    new-instance v2, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@35
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    #@37
    invoke-direct {v2, p0, v3, p1}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V

    #@3a
    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@3c
    .line 509
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@3e
    invoke-virtual {v2, v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    #@41
    .line 510
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@43
    invoke-virtual {v2}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    #@46
    .line 511
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    #@49
    .line 512
    const/4 v2, 0x1

    #@4a
    return v2
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    #@0
    .prologue
    .line 767
    if-eqz p1, :cond_0

    #@2
    .line 769
    const/4 v0, 0x0

    #@3
    invoke-super {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    #@6
    .line 766
    :goto_0
    return-void

    #@7
    .line 771
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    #@d
    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    #@0
    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    #@2
    .line 199
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    #@0
    .prologue
    .line 195
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    #@2
    .line 196
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    #@5
    .line 194
    return-void
.end method

.method public setMenuView(Landroid/widget/ActionMenuView;)V
    .locals 2
    .param p1, "menuView"    # Landroid/widget/ActionMenuView;

    #@0
    .prologue
    .line 776
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@2
    if-eq p1, v0, :cond_1

    #@4
    .line 777
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 778
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@a
    check-cast v0, Landroid/view/View;

    #@c
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@e
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@11
    .line 780
    :cond_0
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@13
    .line 781
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@15
    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@18
    .line 782
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@1a
    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@1d
    .line 775
    :cond_1
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 205
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 203
    :goto_0
    return-void

    #@a
    .line 207
    :cond_0
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    #@d
    .line 208
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    #@f
    goto :goto_0
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    #@0
    .prologue
    .line 190
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@2
    .line 191
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    #@5
    .line 189
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    #@0
    .prologue
    .line 184
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    #@2
    .line 185
    iput-boolean p2, p0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@4
    .line 186
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    #@7
    .line 183
    return-void
.end method

.method public shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 267
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public showOverflowMenu()Z
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 535
    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 548
    :cond_0
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    .line 535
    :cond_1
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@10
    if-eqz v1, :cond_0

    #@12
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 536
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@18
    if-nez v1, :cond_0

    #@1a
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1c
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_0

    #@26
    .line 537
    new-instance v0, Landroid/widget/ActionMenuPresenter$OverflowPopup;

    #@28
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    #@2a
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2c
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@2e
    move-object v1, p0

    #@2f
    invoke-direct/range {v0 .. v5}, Landroid/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    #@32
    .line 538
    .local v0, "popup":Landroid/widget/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@34
    invoke-direct {v1, p0, v0}, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V

    #@37
    iput-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@39
    .line 540
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@3b
    check-cast v1, Landroid/view/View;

    #@3d
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@3f
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@42
    .line 544
    invoke-super {p0, v6}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    #@45
    .line 546
    return v5
.end method

.method public updateMenuView(Z)V
    .locals 11
    .param p1, "cleared"    # Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 437
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@3
    check-cast v9, Landroid/view/View;

    #@5
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@8
    move-result-object v5

    #@9
    check-cast v5, Landroid/view/ViewGroup;

    #@b
    .line 438
    .local v5, "menuViewParent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    #@d
    .line 441
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    #@10
    .line 443
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@12
    check-cast v9, Landroid/view/View;

    #@14
    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    #@17
    .line 445
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@19
    if-eqz v9, :cond_2

    #@1b
    .line 446
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1d
    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    #@20
    move-result-object v0

    #@21
    .line 447
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v1

    #@25
    .line 448
    .local v1, "count":I
    const/4 v3, 0x0

    #@26
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    #@28
    .line 449
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v9

    #@2c
    check-cast v9, Lcom/android/internal/view/menu/MenuItemImpl;

    #@2e
    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionProvider()Landroid/view/ActionProvider;

    #@31
    move-result-object v8

    #@32
    .line 450
    .local v8, "provider":Landroid/view/ActionProvider;
    if-eqz v8, :cond_1

    #@34
    .line 451
    invoke-virtual {v8, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    #@37
    .line 448
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 456
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v8    # "provider":Landroid/view/ActionProvider;
    :cond_2
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@3c
    if-eqz v9, :cond_7

    #@3e
    .line 457
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@40
    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    #@43
    move-result-object v6

    #@44
    .line 459
    :goto_1
    const/4 v2, 0x0

    #@45
    .line 460
    .local v2, "hasOverflow":Z
    iget-boolean v9, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@47
    if-eqz v9, :cond_3

    #@49
    if-eqz v6, :cond_3

    #@4b
    .line 461
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@4e
    move-result v1

    #@4f
    .line 462
    .restart local v1    # "count":I
    const/4 v9, 0x1

    #@50
    if-ne v1, v9, :cond_9

    #@52
    .line 463
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v9

    #@56
    check-cast v9, Lcom/android/internal/view/menu/MenuItemImpl;

    #@58
    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    #@5b
    move-result v9

    #@5c
    if-eqz v9, :cond_8

    #@5e
    const/4 v2, 0x0

    #@5f
    .line 469
    .end local v1    # "count":I
    :cond_3
    :goto_2
    if-eqz v2, :cond_b

    #@61
    .line 470
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@63
    if-nez v9, :cond_4

    #@65
    .line 471
    new-instance v9, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@67
    iget-object v10, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    #@69
    invoke-direct {v9, p0, v10}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    #@6c
    iput-object v9, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@6e
    .line 473
    :cond_4
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@70
    invoke-virtual {v9}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    #@73
    move-result-object v7

    #@74
    check-cast v7, Landroid/view/ViewGroup;

    #@76
    .line 474
    .local v7, "parent":Landroid/view/ViewGroup;
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@78
    if-eq v7, v9, :cond_6

    #@7a
    .line 475
    if-eqz v7, :cond_5

    #@7c
    .line 476
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@7e
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@81
    .line 478
    :cond_5
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@83
    check-cast v4, Landroid/widget/ActionMenuView;

    #@85
    .line 479
    .local v4, "menuView":Landroid/widget/ActionMenuView;
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@87
    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    #@8a
    move-result-object v10

    #@8b
    invoke-virtual {v4, v9, v10}, Landroid/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@8e
    .line 485
    .end local v4    # "menuView":Landroid/widget/ActionMenuView;
    .end local v7    # "parent":Landroid/view/ViewGroup;
    :cond_6
    :goto_3
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@90
    check-cast v9, Landroid/widget/ActionMenuView;

    #@92
    iget-boolean v10, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@94
    invoke-virtual {v9, v10}, Landroid/widget/ActionMenuView;->setOverflowReserved(Z)V

    #@97
    .line 436
    return-void

    #@98
    .line 457
    .end local v2    # "hasOverflow":Z
    :cond_7
    const/4 v6, 0x0

    #@99
    .local v6, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    goto :goto_1

    #@9a
    .line 463
    .end local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .restart local v1    # "count":I
    .restart local v2    # "hasOverflow":Z
    :cond_8
    const/4 v2, 0x1

    #@9b
    goto :goto_2

    #@9c
    .line 465
    :cond_9
    if-lez v1, :cond_a

    #@9e
    const/4 v2, 0x1

    #@9f
    goto :goto_2

    #@a0
    :cond_a
    const/4 v2, 0x0

    #@a1
    goto :goto_2

    #@a2
    .line 481
    .end local v1    # "count":I
    :cond_b
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@a4
    if-eqz v9, :cond_6

    #@a6
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@a8
    invoke-virtual {v9}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    #@ab
    move-result-object v9

    #@ac
    iget-object v10, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@ae
    if-ne v9, v10, :cond_6

    #@b0
    .line 482
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@b2
    check-cast v9, Landroid/view/ViewGroup;

    #@b4
    iget-object v10, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@b6
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@b9
    goto :goto_3
.end method
