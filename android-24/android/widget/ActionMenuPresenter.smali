.class public Landroid/widget/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuPresenter$1;,
        Landroid/widget/ActionMenuPresenter$2;,
        Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;,
        Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;,
        Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/widget/ActionMenuPresenter$OverflowPopup;,
        Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final ACTIONBAR_ANIMATIONS_ENABLED:Z = false

.field private static final ITEM_ANIMATION_DURATION:I = 0x96


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
    .line 126
    const v0, 0x109001d

    #@3
    .line 127
    const v1, 0x109001c

    #@6
    .line 126
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    #@9
    .line 81
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@b
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@e
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    #@10
    .line 89
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
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    #@1f
    .line 95
    new-instance v0, Landroid/util/SparseArray;

    #@21
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@24
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    #@26
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    #@28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    #@2d
    .line 100
    new-instance v0, Landroid/widget/ActionMenuPresenter$1;

    #@2f
    invoke-direct {v0, p0}, Landroid/widget/ActionMenuPresenter$1;-><init>(Landroid/widget/ActionMenuPresenter;)V

    #@32
    .line 99
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@34
    .line 110
    new-instance v0, Landroid/widget/ActionMenuPresenter$2;

    #@36
    invoke-direct {v0, p0}, Landroid/widget/ActionMenuPresenter$2;-><init>(Landroid/widget/ActionMenuPresenter;)V

    #@39
    .line 109
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@3b
    .line 125
    return-void
.end method

.method private computeMenuItemAnimationInfo(Z)V
    .locals 8
    .param p1, "preLayout"    # Z

    #@0
    .prologue
    .line 277
    iget-object v6, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@2
    check-cast v6, Landroid/view/ViewGroup;

    #@4
    .line 278
    .local v6, "menuView":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    #@7
    move-result v1

    #@8
    .line 279
    .local v1, "count":I
    if-eqz p1, :cond_1

    #@a
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    #@c
    .line 280
    .local v5, "items":Landroid/util/SparseArray;
    :goto_0
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    #@f
    .line 281
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    .line 282
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    #@16
    move-result v3

    #@17
    .line 283
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
    .line 284
    new-instance v4, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    #@27
    invoke-direct {v4, v0, p1}, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;-><init>(Landroid/view/View;Z)V

    #@2a
    .line 285
    .local v4, "info":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@2d
    .line 280
    .end local v4    # "info":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 279
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
    .line 276
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
    .line 529
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@3
    check-cast v3, Landroid/view/ViewGroup;

    #@5
    .line 530
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_0

    #@7
    return-object v5

    #@8
    .line 532
    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    #@b
    move-result v1

    #@c
    .line 533
    .local v1, "count":I
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@f
    .line 534
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    .line 535
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    #@15
    if-eqz v4, :cond_1

    #@17
    move-object v4, v0

    #@18
    .line 536
    check-cast v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    #@1a
    invoke-interface {v4}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    #@1d
    move-result-object v4

    #@1e
    if-ne v4, p1, :cond_1

    #@20
    .line 537
    return-object v0

    #@21
    .line 533
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 540
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-object v5
.end method

.method private runItemAnimations()V
    .locals 20

    #@0
    .prologue
    .line 299
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
    .line 300
    move-object/from16 v0, p0

    #@d
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->keyAt(I)I

    #@12
    move-result v4

    #@13
    .line 301
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
    .line 302
    .local v9, "menuItemLayoutInfoPre":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    move-object/from16 v0, p0

    #@1f
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    #@21
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@24
    move-result v12

    #@25
    .line 303
    .local v12, "postLayoutIndex":I
    if-ltz v12, :cond_8

    #@27
    .line 306
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
    .line 307
    .local v8, "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v13, 0x0

    #@32
    .line 308
    .local v13, "pvhX":Landroid/animation/PropertyValuesHolder;
    const/4 v14, 0x0

    #@33
    .line 309
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
    .line 310
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
    .line 311
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
    .line 310
    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    #@63
    move-result-object v13

    #@64
    .line 313
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
    .line 314
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
    .line 315
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
    .line 314
    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    #@94
    move-result-object v14

    #@95
    .line 317
    .end local v14    # "pvhY":Landroid/animation/PropertyValuesHolder;
    :cond_1
    if-nez v13, :cond_2

    #@97
    if-eqz v14, :cond_5

    #@99
    .line 318
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
    .line 319
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
    .line 320
    .local v11, "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    #@b0
    if-ne v15, v4, :cond_3

    #@b2
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    #@b4
    if-nez v15, :cond_3

    #@b6
    .line 321
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    #@b8
    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    #@bb
    .line 318
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@bd
    goto :goto_1

    #@be
    .line 325
    .end local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_4
    if-eqz v13, :cond_7

    #@c0
    .line 326
    if-eqz v14, :cond_6

    #@c2
    .line 327
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
    .line 328
    const/16 v17, 0x0

    #@ce
    aput-object v13, v16, v17

    #@d0
    const/16 v17, 0x1

    #@d2
    aput-object v14, v16, v17

    #@d4
    .line 327
    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@d7
    move-result-object v2

    #@d8
    .line 335
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    :goto_2
    const-wide/16 v16, 0x96

    #@da
    move-wide/from16 v0, v16

    #@dc
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@df
    .line 336
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    #@e2
    .line 337
    new-instance v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    #@e4
    .line 338
    const/4 v15, 0x0

    #@e5
    .line 337
    invoke-direct {v5, v4, v8, v2, v15}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    #@e8
    .line 339
    .local v5, "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    #@ea
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    #@ec
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ef
    .line 340
    new-instance v15, Landroid/widget/ActionMenuPresenter$3;

    #@f1
    move-object/from16 v0, p0

    #@f3
    invoke-direct {v15, v0}, Landroid/widget/ActionMenuPresenter$3;-><init>(Landroid/widget/ActionMenuPresenter;)V

    #@f6
    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@f9
    .line 352
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
    .line 299
    .end local v8    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@102
    goto/16 :goto_0

    #@104
    .line 330
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
    .line 333
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
    .line 355
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v6    # "j":I
    .end local v8    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    :cond_8
    const/high16 v10, 0x3f800000    # 1.0f

    #@12c
    .line 356
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
    .line 357
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
    .line 358
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
    .line 359
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    #@14f
    iget-object v15, v15, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    #@151
    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    #@154
    move-result v10

    #@155
    .line 360
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    #@157
    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    #@15a
    .line 356
    :cond_9
    add-int/lit8 v6, v6, 0x1

    #@15c
    goto :goto_4

    #@15d
    .line 363
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
    .line 364
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
    .line 363
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@176
    move-result-object v2

    #@177
    .line 366
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
    .line 367
    const-wide/16 v16, 0x96

    #@18a
    move-wide/from16 v0, v16

    #@18c
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@18f
    .line 368
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    #@192
    .line 369
    new-instance v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    #@194
    const/4 v15, 0x2

    #@195
    invoke-direct {v5, v4, v9, v2, v15}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    #@198
    .line 370
    .restart local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    #@19a
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    #@19c
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19f
    .line 371
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
    .line 385
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
    .line 386
    move-object/from16 v0, p0

    #@1b8
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    #@1ba
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->keyAt(I)I

    #@1bd
    move-result v4

    #@1be
    .line 387
    .restart local v4    # "id":I
    move-object/from16 v0, p0

    #@1c0
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    #@1c2
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@1c5
    move-result v12

    #@1c6
    .line 388
    .restart local v12    # "postLayoutIndex":I
    if-ltz v12, :cond_e

    #@1c8
    .line 391
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
    .line 392
    .local v7, "menuItemLayoutInfo":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v10, 0x0

    #@1d3
    .line 393
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
    .line 394
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
    .line 395
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
    .line 396
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    #@1f6
    iget-object v15, v15, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    #@1f8
    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    #@1fb
    move-result v10

    #@1fc
    .line 397
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    #@1fe
    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    #@201
    .line 393
    :cond_c
    add-int/lit8 v6, v6, 0x1

    #@203
    goto :goto_6

    #@204
    .line 400
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
    .line 401
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
    .line 400
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@21d
    move-result-object v2

    #@21e
    .line 402
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    #@221
    .line 403
    const-wide/16 v16, 0x96

    #@223
    move-wide/from16 v0, v16

    #@225
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@228
    .line 404
    new-instance v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    #@22a
    const/4 v15, 0x1

    #@22b
    invoke-direct {v5, v4, v7, v2, v15}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    #@22e
    .line 405
    .restart local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    #@230
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    #@232
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@235
    .line 406
    new-instance v15, Landroid/widget/ActionMenuPresenter$5;

    #@237
    move-object/from16 v0, p0

    #@239
    invoke-direct {v15, v0}, Landroid/widget/ActionMenuPresenter$5;-><init>(Landroid/widget/ActionMenuPresenter;)V

    #@23c
    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@23f
    .line 385
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
    .line 419
    .end local v4    # "id":I
    .end local v12    # "postLayoutIndex":I
    :cond_f
    move-object/from16 v0, p0

    #@245
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    #@247
    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    #@24a
    .line 420
    move-object/from16 v0, p0

    #@24c
    iget-object v15, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    #@24e
    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    #@251
    .line 298
    return-void
.end method

.method private setupItemAnimations()V
    .locals 2

    #@0
    .prologue
    .line 428
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/widget/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V

    #@4
    .line 429
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@b
    move-result-object v0

    #@c
    .line 430
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@e
    .line 429
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@11
    .line 427
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
    .line 251
    const/4 v2, 0x0

    #@2
    invoke-interface {p2, p1, v2}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    #@5
    .line 253
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@7
    check-cast v1, Landroid/widget/ActionMenuView;

    #@9
    .local v1, "menuView":Landroid/widget/ActionMenuView;
    move-object v0, p2

    #@a
    .line 254
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    #@c
    .line 255
    .local v0, "actionItemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    #@f
    .line 257
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    #@11
    if-nez v2, :cond_0

    #@13
    .line 258
    new-instance v2, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    #@15
    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;)V

    #@18
    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    #@1a
    .line 260
    :cond_0
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    #@1c
    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setPopupCallback(Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;)V

    #@1f
    .line 250
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    #@0
    .prologue
    .line 589
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    #@3
    move-result v0

    #@4
    .line 590
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    #@7
    move-result v1

    #@8
    or-int/2addr v0, v1

    #@9
    .line 591
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    #@0
    .prologue
    .line 488
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
    .line 489
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
    .line 628
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@4
    move-object/from16 v27, v0

    #@6
    if-eqz v27, :cond_1

    #@8
    .line 629
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@c
    move-object/from16 v27, v0

    #@e
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@11
    move-result-object v25

    #@12
    .line 630
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v15

    #@16
    .line 636
    .end local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .local v15, "itemsSize":I
    :goto_0
    move-object/from16 v0, p0

    #@18
    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    #@1a
    move/from16 v17, v0

    #@1c
    .line 637
    .local v17, "maxActions":I
    move-object/from16 v0, p0

    #@1e
    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    #@20
    move/from16 v26, v0

    #@22
    .line 638
    .local v26, "widthLimit":I
    const/16 v27, 0x0

    #@24
    const/16 v28, 0x0

    #@26
    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@29
    move-result v20

    #@2a
    .line 639
    .local v20, "querySpec":I
    move-object/from16 v0, p0

    #@2c
    iget-object v0, v0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@2e
    move-object/from16 v19, v0

    #@30
    check-cast v19, Landroid/view/ViewGroup;

    #@32
    .line 641
    .local v19, "parent":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    #@34
    .line 642
    .local v22, "requiredItems":I
    const/16 v21, 0x0

    #@36
    .line 643
    .local v21, "requestedItems":I
    const/4 v8, 0x0

    #@37
    .line 644
    .local v8, "firstActionWidth":I
    const/4 v10, 0x0

    #@38
    .line 645
    .local v10, "hasOverflow":Z
    const/4 v11, 0x0

    #@39
    .local v11, "i":I
    :goto_1
    if-ge v11, v15, :cond_4

    #@3b
    .line 646
    move-object/from16 v0, v25

    #@3d
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v14

    #@41
    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    #@43
    .line 647
    .local v14, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    #@46
    move-result v27

    #@47
    if-eqz v27, :cond_2

    #@49
    .line 648
    add-int/lit8 v22, v22, 0x1

    #@4b
    .line 654
    :goto_2
    move-object/from16 v0, p0

    #@4d
    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    #@4f
    move/from16 v27, v0

    #@51
    if-eqz v27, :cond_0

    #@53
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    #@56
    move-result v27

    #@57
    if-eqz v27, :cond_0

    #@59
    .line 657
    const/16 v17, 0x0

    #@5b
    .line 645
    :cond_0
    add-int/lit8 v11, v11, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 632
    .end local v8    # "firstActionWidth":I
    .end local v10    # "hasOverflow":Z
    .end local v11    # "i":I
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v15    # "itemsSize":I
    .end local v17    # "maxActions":I
    .end local v19    # "parent":Landroid/view/ViewGroup;
    .end local v20    # "querySpec":I
    .end local v21    # "requestedItems":I
    .end local v22    # "requiredItems":I
    .end local v26    # "widthLimit":I
    :cond_1
    const/16 v25, 0x0

    #@60
    .line 633
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    const/4 v15, 0x0

    #@61
    .restart local v15    # "itemsSize":I
    goto :goto_0

    #@62
    .line 649
    .end local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .restart local v8    # "firstActionWidth":I
    .restart local v10    # "hasOverflow":Z
    .restart local v11    # "i":I
    .restart local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v17    # "maxActions":I
    .restart local v19    # "parent":Landroid/view/ViewGroup;
    .restart local v20    # "querySpec":I
    .restart local v21    # "requestedItems":I
    .restart local v22    # "requiredItems":I
    .restart local v26    # "widthLimit":I
    :cond_2
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    #@65
    move-result v27

    #@66
    if-eqz v27, :cond_3

    #@68
    .line 650
    add-int/lit8 v21, v21, 0x1

    #@6a
    goto :goto_2

    #@6b
    .line 652
    :cond_3
    const/4 v10, 0x1

    #@6c
    goto :goto_2

    #@6d
    .line 662
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_4
    move-object/from16 v0, p0

    #@6f
    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@71
    move/from16 v27, v0

    #@73
    if-eqz v27, :cond_6

    #@75
    .line 663
    if-nez v10, :cond_5

    #@77
    add-int v27, v22, v21

    #@79
    move/from16 v0, v27

    #@7b
    move/from16 v1, v17

    #@7d
    if-le v0, v1, :cond_6

    #@7f
    .line 664
    :cond_5
    add-int/lit8 v17, v17, -0x1

    #@81
    .line 666
    :cond_6
    sub-int v17, v17, v22

    #@83
    .line 668
    move-object/from16 v0, p0

    #@85
    iget-object v0, v0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    #@87
    move-object/from16 v23, v0

    #@89
    .line 669
    .local v23, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    #@8c
    .line 671
    const/4 v4, 0x0

    #@8d
    .line 672
    .local v4, "cellSize":I
    const/4 v7, 0x0

    #@8e
    .line 673
    .local v7, "cellsRemaining":I
    move-object/from16 v0, p0

    #@90
    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@92
    move/from16 v27, v0

    #@94
    if-eqz v27, :cond_7

    #@96
    .line 674
    move-object/from16 v0, p0

    #@98
    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    #@9a
    move/from16 v27, v0

    #@9c
    div-int v7, v26, v27

    #@9e
    .line 675
    move-object/from16 v0, p0

    #@a0
    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    #@a2
    move/from16 v27, v0

    #@a4
    rem-int v5, v26, v27

    #@a6
    .line 676
    .local v5, "cellSizeRemaining":I
    move-object/from16 v0, p0

    #@a8
    iget v0, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    #@aa
    move/from16 v27, v0

    #@ac
    div-int v28, v5, v7

    #@ae
    add-int v4, v27, v28

    #@b0
    .line 680
    .end local v5    # "cellSizeRemaining":I
    :cond_7
    const/4 v11, 0x0

    #@b1
    :goto_3
    if-ge v11, v15, :cond_1d

    #@b3
    .line 681
    move-object/from16 v0, v25

    #@b5
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b8
    move-result-object v14

    #@b9
    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    #@bb
    .line 683
    .restart local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    #@be
    move-result v27

    #@bf
    if-eqz v27, :cond_b

    #@c1
    .line 684
    const/16 v27, 0x0

    #@c3
    move-object/from16 v0, p0

    #@c5
    move-object/from16 v1, v27

    #@c7
    move-object/from16 v2, v19

    #@c9
    invoke-virtual {v0, v14, v1, v2}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@cc
    move-result-object v24

    #@cd
    .line 685
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p0

    #@cf
    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@d1
    move/from16 v27, v0

    #@d3
    if-eqz v27, :cond_a

    #@d5
    .line 687
    const/16 v27, 0x0

    #@d7
    .line 686
    move-object/from16 v0, v24

    #@d9
    move/from16 v1, v20

    #@db
    move/from16 v2, v27

    #@dd
    invoke-static {v0, v4, v7, v1, v2}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    #@e0
    move-result v27

    #@e1
    sub-int v7, v7, v27

    #@e3
    .line 691
    :goto_4
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    #@e6
    move-result v18

    #@e7
    .line 692
    .local v18, "measuredWidth":I
    sub-int v26, v26, v18

    #@e9
    .line 693
    if-nez v8, :cond_8

    #@eb
    .line 694
    move/from16 v8, v18

    #@ed
    .line 696
    :cond_8
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    #@f0
    move-result v9

    #@f1
    .line 697
    .local v9, "groupId":I
    if-eqz v9, :cond_9

    #@f3
    .line 698
    const/16 v27, 0x1

    #@f5
    move-object/from16 v0, v23

    #@f7
    move/from16 v1, v27

    #@f9
    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@fc
    .line 700
    :cond_9
    const/16 v27, 0x1

    #@fe
    move/from16 v0, v27

    #@100
    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    #@103
    .line 680
    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    #@105
    goto :goto_3

    #@106
    .line 689
    .restart local v24    # "v":Landroid/view/View;
    :cond_a
    move-object/from16 v0, v24

    #@108
    move/from16 v1, v20

    #@10a
    move/from16 v2, v20

    #@10c
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    #@10f
    goto :goto_4

    #@110
    .line 701
    .end local v24    # "v":Landroid/view/View;
    :cond_b
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    #@113
    move-result v27

    #@114
    if-eqz v27, :cond_1c

    #@116
    .line 704
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    #@119
    move-result v9

    #@11a
    .line 705
    .restart local v9    # "groupId":I
    move-object/from16 v0, v23

    #@11c
    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@11f
    move-result v12

    #@120
    .line 706
    .local v12, "inGroup":Z
    if-gtz v17, :cond_c

    #@122
    if-eqz v12, :cond_14

    #@124
    :cond_c
    if-lez v26, :cond_14

    #@126
    .line 707
    move-object/from16 v0, p0

    #@128
    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@12a
    move/from16 v27, v0

    #@12c
    if-eqz v27, :cond_d

    #@12e
    if-lez v7, :cond_13

    #@130
    :cond_d
    const/16 v27, 0x1

    #@132
    :goto_6
    move/from16 v13, v27

    #@134
    .line 709
    .local v13, "isAction":Z
    :goto_7
    if-eqz v13, :cond_10

    #@136
    .line 710
    const/16 v27, 0x0

    #@138
    move-object/from16 v0, p0

    #@13a
    move-object/from16 v1, v27

    #@13c
    move-object/from16 v2, v19

    #@13e
    invoke-virtual {v0, v14, v1, v2}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@141
    move-result-object v24

    #@142
    .line 711
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    #@144
    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@146
    move/from16 v27, v0

    #@148
    if-eqz v27, :cond_15

    #@14a
    .line 713
    const/16 v27, 0x0

    #@14c
    .line 712
    move-object/from16 v0, v24

    #@14e
    move/from16 v1, v20

    #@150
    move/from16 v2, v27

    #@152
    invoke-static {v0, v4, v7, v1, v2}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    #@155
    move-result v6

    #@156
    .line 714
    .local v6, "cells":I
    sub-int/2addr v7, v6

    #@157
    .line 715
    if-nez v6, :cond_e

    #@159
    .line 716
    const/4 v13, 0x0

    #@15a
    .line 721
    .end local v6    # "cells":I
    .end local v13    # "isAction":Z
    :cond_e
    :goto_8
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    #@15d
    move-result v18

    #@15e
    .line 722
    .restart local v18    # "measuredWidth":I
    sub-int v26, v26, v18

    #@160
    .line 723
    if-nez v8, :cond_f

    #@162
    .line 724
    move/from16 v8, v18

    #@164
    .line 727
    :cond_f
    move-object/from16 v0, p0

    #@166
    iget-boolean v0, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@168
    move/from16 v27, v0

    #@16a
    if-eqz v27, :cond_17

    #@16c
    .line 728
    if-ltz v26, :cond_16

    #@16e
    const/16 v27, 0x1

    #@170
    :goto_9
    and-int v13, v13, v27

    #@172
    .line 735
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    .restart local v13    # "isAction":Z
    :cond_10
    :goto_a
    if-eqz v13, :cond_19

    #@174
    if-eqz v9, :cond_19

    #@176
    .line 736
    const/16 v27, 0x1

    #@178
    move-object/from16 v0, v23

    #@17a
    move/from16 v1, v27

    #@17c
    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@17f
    .line 750
    :cond_11
    if-eqz v13, :cond_12

    #@181
    add-int/lit8 v17, v17, -0x1

    #@183
    .line 752
    :cond_12
    invoke-virtual {v14, v13}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    #@186
    goto/16 :goto_5

    #@188
    .line 707
    .end local v13    # "isAction":Z
    :cond_13
    const/16 v27, 0x0

    #@18a
    goto :goto_6

    #@18b
    .line 706
    :cond_14
    const/4 v13, 0x0

    #@18c
    goto :goto_7

    #@18d
    .line 719
    .restart local v13    # "isAction":Z
    .restart local v24    # "v":Landroid/view/View;
    :cond_15
    move-object/from16 v0, v24

    #@18f
    move/from16 v1, v20

    #@191
    move/from16 v2, v20

    #@193
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    #@196
    goto :goto_8

    #@197
    .line 728
    .end local v13    # "isAction":Z
    .restart local v18    # "measuredWidth":I
    :cond_16
    const/16 v27, 0x0

    #@199
    goto :goto_9

    #@19a
    .line 731
    :cond_17
    add-int v27, v26, v8

    #@19c
    if-lez v27, :cond_18

    #@19e
    const/16 v27, 0x1

    #@1a0
    :goto_b
    and-int v13, v13, v27

    #@1a2
    .restart local v13    # "isAction":Z
    goto :goto_a

    #@1a3
    .end local v13    # "isAction":Z
    :cond_18
    const/16 v27, 0x0

    #@1a5
    goto :goto_b

    #@1a6
    .line 737
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    .restart local v13    # "isAction":Z
    :cond_19
    if-eqz v12, :cond_11

    #@1a8
    .line 739
    const/16 v27, 0x0

    #@1aa
    move-object/from16 v0, v23

    #@1ac
    move/from16 v1, v27

    #@1ae
    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@1b1
    .line 740
    const/16 v16, 0x0

    #@1b3
    .local v16, "j":I
    :goto_c
    move/from16 v0, v16

    #@1b5
    if-ge v0, v11, :cond_11

    #@1b7
    .line 741
    move-object/from16 v0, v25

    #@1b9
    move/from16 v1, v16

    #@1bb
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1be
    move-result-object v3

    #@1bf
    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    #@1c1
    .line 742
    .local v3, "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    #@1c4
    move-result v27

    #@1c5
    move/from16 v0, v27

    #@1c7
    if-ne v0, v9, :cond_1b

    #@1c9
    .line 744
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    #@1cc
    move-result v27

    #@1cd
    if-eqz v27, :cond_1a

    #@1cf
    add-int/lit8 v17, v17, 0x1

    #@1d1
    .line 745
    :cond_1a
    const/16 v27, 0x0

    #@1d3
    move/from16 v0, v27

    #@1d5
    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    #@1d8
    .line 740
    :cond_1b
    add-int/lit8 v16, v16, 0x1

    #@1da
    goto :goto_c

    #@1db
    .line 755
    .end local v3    # "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v9    # "groupId":I
    .end local v12    # "inGroup":Z
    .end local v13    # "isAction":Z
    .end local v16    # "j":I
    :cond_1c
    const/16 v27, 0x0

    #@1dd
    move/from16 v0, v27

    #@1df
    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    #@1e2
    goto/16 :goto_5

    #@1e4
    .line 758
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1d
    const/16 v27, 0x1

    #@1e6
    return v27
.end method

.method public getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 236
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 237
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    .line 239
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
    .line 241
    check-cast v2, Landroid/widget/ActionMenuView;

    #@1e
    .line 242
    .local v2, "menuParent":Landroid/widget/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@21
    move-result-object v1

    #@22
    .line 243
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_2

    #@28
    .line 244
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@2f
    .line 246
    :cond_2
    return-object v0

    #@30
    .line 239
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
    .line 221
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@2
    .line 222
    .local v0, "oldMenuView":Lcom/android/internal/view/menu/MenuView;
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    #@5
    move-result-object v1

    #@6
    .line 223
    .local v1, "result":Lcom/android/internal/view/menu/MenuView;
    if-eq v0, v1, :cond_1

    #@8
    move-object v2, v1

    #@9
    .line 224
    check-cast v2, Landroid/widget/ActionMenuView;

    #@b
    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    #@e
    .line 225
    if-eqz v0, :cond_0

    #@10
    .line 226
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
    .line 228
    check-cast v2, Landroid/view/View;

    #@1a
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@1c
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@1f
    .line 230
    :cond_1
    return-object v1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 211
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 212
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@7
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 213
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 214
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    #@12
    return-object v0

    #@13
    .line 216
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
    .line 570
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 571
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@c
    check-cast v1, Landroid/view/View;

    #@e
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@10
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@13
    .line 572
    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@15
    .line 573
    return v4

    #@16
    .line 576
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    #@18
    .line 577
    .local v0, "popup":Lcom/android/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    #@1a
    .line 578
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    #@1d
    .line 579
    return v4

    #@1e
    .line 581
    :cond_1
    const/4 v1, 0x0

    #@1f
    return v1
.end method

.method public hideSubMenus()Z
    .locals 1

    #@0
    .prologue
    .line 600
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 601
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    #@9
    .line 602
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 604
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
    .line 132
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    #@5
    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v1

    #@9
    .line 136
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    #@c
    move-result-object v0

    #@d
    .line 137
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    #@f
    if-nez v4, :cond_0

    #@11
    .line 138
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    #@14
    move-result v4

    #@15
    iput-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@17
    .line 141
    :cond_0
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    #@19
    if-nez v4, :cond_1

    #@1b
    .line 142
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    #@1e
    move-result v4

    #@1f
    iput v4, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    #@21
    .line 146
    :cond_1
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    #@23
    if-nez v4, :cond_2

    #@25
    .line 147
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    #@28
    move-result v4

    #@29
    iput v4, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    #@2b
    .line 150
    :cond_2
    iget v3, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    #@2d
    .line 151
    .local v3, "width":I
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@2f
    if-eqz v4, :cond_5

    #@31
    .line 152
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@33
    if-nez v4, :cond_4

    #@35
    .line 153
    new-instance v4, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@37
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    #@39
    invoke-direct {v4, p0, v5}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    #@3c
    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@3e
    .line 154
    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    #@40
    if-eqz v4, :cond_3

    #@42
    .line 155
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@44
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    #@46
    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@49
    .line 156
    iput-object v7, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    #@4b
    .line 157
    iput-boolean v6, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    #@4d
    .line 159
    :cond_3
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@50
    move-result v2

    #@51
    .line 160
    .local v2, "spec":I
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@53
    invoke-virtual {v4, v2, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    #@56
    .line 162
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
    .line 167
    :goto_0
    iput v3, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    #@5f
    .line 169
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
    .line 131
    return-void

    #@6c
    .line 164
    :cond_5
    iput-object v7, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@6e
    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    #@0
    .prologue
    .line 615
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
    .line 611
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
    .line 622
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
    .line 763
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    #@3
    .line 764
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    #@6
    .line 762
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 173
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 174
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    #@10
    .line 176
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 177
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@16
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@1a
    .line 172
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
    .line 776
    check-cast v1, Landroid/widget/ActionMenuPresenter$SavedState;

    #@3
    .line 777
    .local v1, "saved":Landroid/widget/ActionMenuPresenter$SavedState;
    iget v3, v1, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    #@5
    if-lez v3, :cond_0

    #@7
    .line 778
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@9
    iget v4, v1, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    #@b
    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    #@e
    move-result-object v0

    #@f
    .line 779
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    #@11
    .line 780
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    #@17
    .line 781
    .local v2, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    #@1a
    .line 775
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    #@0
    .prologue
    .line 769
    new-instance v0, Landroid/widget/ActionMenuPresenter$SavedState;

    #@2
    invoke-direct {v0}, Landroid/widget/ActionMenuPresenter$SavedState;-><init>()V

    #@5
    .line 770
    .local v0, "state":Landroid/widget/ActionMenuPresenter$SavedState;
    iget v1, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    #@7
    iput v1, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    #@9
    .line 771
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 9
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 493
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    #@4
    move-result v6

    #@5
    if-nez v6, :cond_0

    #@7
    return v8

    #@8
    .line 495
    :cond_0
    move-object v5, p1

    #@9
    .line 496
    .local v5, "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :goto_0
    invoke-virtual {v5}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    #@c
    move-result-object v6

    #@d
    iget-object v7, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@f
    if-eq v6, v7, :cond_1

    #@11
    .line 497
    invoke-virtual {v5}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    #@14
    move-result-object v5

    #@15
    .end local v5    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    check-cast v5, Lcom/android/internal/view/menu/SubMenuBuilder;

    #@17
    .restart local v5    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    goto :goto_0

    #@18
    .line 499
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    #@1b
    move-result-object v6

    #@1c
    invoke-direct {p0, v6}, Landroid/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    #@1f
    move-result-object v0

    #@20
    .line 500
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_2

    #@22
    .line 505
    return v8

    #@23
    .line 508
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    #@26
    move-result-object v6

    #@27
    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    #@2a
    move-result v6

    #@2b
    iput v6, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    #@2d
    .line 510
    const/4 v4, 0x0

    #@2e
    .line 511
    .local v4, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    #@31
    move-result v2

    #@32
    .line 512
    .local v2, "count":I
    const/4 v3, 0x0

    #@33
    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    #@35
    .line 513
    invoke-virtual {p1, v3}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@38
    move-result-object v1

    #@39
    .line 514
    .local v1, "childItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    #@3c
    move-result v6

    #@3d
    if-eqz v6, :cond_4

    #@3f
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    #@42
    move-result-object v6

    #@43
    if-eqz v6, :cond_4

    #@45
    .line 515
    const/4 v4, 0x1

    #@46
    .line 520
    .end local v1    # "childItem":Landroid/view/MenuItem;
    :cond_3
    new-instance v6, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@48
    iget-object v7, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    #@4a
    invoke-direct {v6, p0, v7, p1, v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;Landroid/view/View;)V

    #@4d
    iput-object v6, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@4f
    .line 521
    iget-object v6, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@51
    invoke-virtual {v6, v4}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    #@54
    .line 522
    iget-object v6, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    #@56
    invoke-virtual {v6}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    #@59
    .line 524
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    #@5c
    .line 525
    const/4 v6, 0x1

    #@5d
    return v6

    #@5e
    .line 512
    .restart local v1    # "childItem":Landroid/view/MenuItem;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@60
    goto :goto_1
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 788
    if-eqz p1, :cond_1

    #@3
    .line 790
    invoke-super {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    #@6
    .line 787
    :cond_0
    :goto_0
    return-void

    #@7
    .line 791
    :cond_1
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 792
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    #@11
    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    #@0
    .prologue
    .line 198
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    #@2
    .line 197
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    #@0
    .prologue
    .line 193
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    #@2
    .line 194
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    #@5
    .line 192
    return-void
.end method

.method public setMenuView(Landroid/widget/ActionMenuView;)V
    .locals 2
    .param p1, "menuView"    # Landroid/widget/ActionMenuView;

    #@0
    .prologue
    .line 797
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@2
    if-eq p1, v0, :cond_1

    #@4
    .line 798
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 799
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@a
    check-cast v0, Landroid/view/View;

    #@c
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@e
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@11
    .line 801
    :cond_0
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@13
    .line 802
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@15
    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@18
    .line 803
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@1a
    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@1d
    .line 796
    :cond_1
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 203
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 201
    :goto_0
    return-void

    #@a
    .line 205
    :cond_0
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    #@d
    .line 206
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    #@f
    goto :goto_0
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    #@0
    .prologue
    .line 188
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@2
    .line 189
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    #@5
    .line 187
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    #@0
    .prologue
    .line 182
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    #@2
    .line 183
    iput-boolean p2, p0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    #@4
    .line 184
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    #@7
    .line 181
    return-void
.end method

.method public shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 265
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
    .line 548
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
    .line 561
    :cond_0
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    .line 548
    :cond_1
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@10
    if-eqz v1, :cond_0

    #@12
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 549
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
    .line 550
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
    .line 551
    .local v0, "popup":Landroid/widget/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@34
    invoke-direct {v1, p0, v0}, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V

    #@37
    iput-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@39
    .line 553
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@3b
    check-cast v1, Landroid/view/View;

    #@3d
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@3f
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@42
    .line 557
    invoke-super {p0, v6}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    #@45
    .line 559
    return v5
.end method

.method public updateMenuView(Z)V
    .locals 11
    .param p1, "cleared"    # Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 435
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
    .line 436
    .local v5, "menuViewParent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    #@d
    .line 439
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    #@10
    .line 441
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@12
    check-cast v9, Landroid/view/View;

    #@14
    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    #@17
    .line 443
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@19
    if-eqz v9, :cond_2

    #@1b
    .line 444
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1d
    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    #@20
    move-result-object v0

    #@21
    .line 445
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v1

    #@25
    .line 446
    .local v1, "count":I
    const/4 v3, 0x0

    #@26
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    #@28
    .line 447
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
    .line 448
    .local v8, "provider":Landroid/view/ActionProvider;
    if-eqz v8, :cond_1

    #@34
    .line 449
    invoke-virtual {v8, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    #@37
    .line 446
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 454
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v8    # "provider":Landroid/view/ActionProvider;
    :cond_2
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@3c
    if-eqz v9, :cond_7

    #@3e
    .line 455
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@40
    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    #@43
    move-result-object v6

    #@44
    .line 457
    :goto_1
    const/4 v2, 0x0

    #@45
    .line 458
    .local v2, "hasOverflow":Z
    iget-boolean v9, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    #@47
    if-eqz v9, :cond_3

    #@49
    if-eqz v6, :cond_3

    #@4b
    .line 459
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@4e
    move-result v1

    #@4f
    .line 460
    .restart local v1    # "count":I
    const/4 v9, 0x1

    #@50
    if-ne v1, v9, :cond_9

    #@52
    .line 461
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
    .line 467
    .end local v1    # "count":I
    :cond_3
    :goto_2
    if-eqz v2, :cond_b

    #@61
    .line 468
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@63
    if-nez v9, :cond_4

    #@65
    .line 469
    new-instance v9, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@67
    iget-object v10, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    #@69
    invoke-direct {v9, p0, v10}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    #@6c
    iput-object v9, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@6e
    .line 471
    :cond_4
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@70
    invoke-virtual {v9}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    #@73
    move-result-object v7

    #@74
    check-cast v7, Landroid/view/ViewGroup;

    #@76
    .line 472
    .local v7, "parent":Landroid/view/ViewGroup;
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@78
    if-eq v7, v9, :cond_6

    #@7a
    .line 473
    if-eqz v7, :cond_5

    #@7c
    .line 474
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@7e
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@81
    .line 476
    :cond_5
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@83
    check-cast v4, Landroid/widget/ActionMenuView;

    #@85
    .line 477
    .local v4, "menuView":Landroid/widget/ActionMenuView;
    iget-object v9, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    #@87
    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    #@8a
    move-result-object v10

    #@8b
    invoke-virtual {v4, v9, v10}, Landroid/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@8e
    .line 483
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
    .line 434
    return-void

    #@98
    .line 455
    .end local v2    # "hasOverflow":Z
    :cond_7
    const/4 v6, 0x0

    #@99
    .local v6, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    goto :goto_1

    #@9a
    .line 461
    .end local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .restart local v1    # "count":I
    .restart local v2    # "hasOverflow":Z
    :cond_8
    const/4 v2, 0x1

    #@9b
    goto :goto_2

    #@9c
    .line 463
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
    .line 479
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
    .line 480
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
