.class final Lcom/android/internal/view/menu/StandardMenuPopup;
.super Lcom/android/internal/view/menu/MenuPopup;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/StandardMenuPopup$1;,
        Lcom/android/internal/view/menu/StandardMenuPopup$2;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasContentWidth:Z

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPopup:Landroid/widget/MenuPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mShowTitle:Z

.field private mShownAnchorView:Landroid/view/View;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mWasDismissed:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/widget/MenuPopupWindow;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/view/menu/StandardMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@2
    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "popupStyleAttr"    # I
    .param p5, "popupStyleRes"    # I
    .param p6, "overflowOnly"    # Z

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopup;-><init>()V

    #@3
    .line 59
    new-instance v2, Lcom/android/internal/view/menu/StandardMenuPopup$1;

    #@5
    invoke-direct {v2, p0}, Lcom/android/internal/view/menu/StandardMenuPopup$1;-><init>(Lcom/android/internal/view/menu/StandardMenuPopup;)V

    #@8
    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@a
    .line 78
    new-instance v2, Lcom/android/internal/view/menu/StandardMenuPopup$2;

    #@c
    invoke-direct {v2, p0}, Lcom/android/internal/view/menu/StandardMenuPopup$2;-><init>(Lcom/android/internal/view/menu/StandardMenuPopup;)V

    #@f
    .line 77
    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@11
    .line 109
    const/4 v2, 0x0

    #@12
    iput v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    #@14
    .line 115
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroid/content/Context;

    #@1a
    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    #@1c
    .line 116
    iput-object p2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1e
    .line 117
    iput-boolean p6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    #@20
    .line 118
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@23
    move-result-object v0

    #@24
    .line 119
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Lcom/android/internal/view/menu/MenuAdapter;

    #@26
    iget-boolean v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    #@28
    invoke-direct {v2, p2, v0, v3}, Lcom/android/internal/view/menu/MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    #@2b
    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    #@2d
    .line 120
    iput p4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    #@2f
    .line 121
    iput p5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    #@31
    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@34
    move-result-object v1

    #@35
    .line 124
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@38
    move-result-object v2

    #@39
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@3b
    div-int/lit8 v2, v2, 0x2

    #@3d
    .line 125
    const v3, 0x105000e

    #@40
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@43
    move-result v3

    #@44
    .line 124
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@47
    move-result v2

    #@48
    iput v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    #@4a
    .line 127
    iput-object p3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    #@4c
    .line 129
    new-instance v2, Landroid/widget/MenuPopupWindow;

    #@4e
    iget-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    #@50
    iget v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    #@52
    iget v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    #@54
    const/4 v6, 0x0

    #@55
    invoke-direct {v2, v3, v6, v4, v5}, Landroid/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@58
    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@5a
    .line 132
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@5d
    .line 114
    return-void
.end method

.method private tryShow()Z
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 146
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->isShowing()Z

    #@6
    move-result v5

    #@7
    if-eqz v5, :cond_0

    #@9
    .line 147
    return v10

    #@a
    .line 150
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mWasDismissed:Z

    #@c
    if-nez v5, :cond_1

    #@e
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    #@10
    if-nez v5, :cond_2

    #@12
    .line 151
    :cond_1
    return v9

    #@13
    .line 154
    :cond_2
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    #@15
    iput-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@17
    .line 156
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@19
    invoke-virtual {v5, p0}, Landroid/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    #@1c
    .line 157
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@1e
    invoke-virtual {v5, p0}, Landroid/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@21
    .line 158
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@23
    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    #@25
    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    #@28
    .line 159
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@2a
    invoke-virtual {v5, v10}, Landroid/widget/MenuPopupWindow;->setModal(Z)V

    #@2d
    .line 161
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@2f
    .line 162
    .local v1, "anchor":Landroid/view/View;
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@31
    if-nez v5, :cond_7

    #@33
    const/4 v0, 0x1

    #@34
    .line 163
    .local v0, "addGlobalListener":Z
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@37
    move-result-object v5

    #@38
    iput-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@3a
    .line 164
    if-eqz v0, :cond_3

    #@3c
    .line 165
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@3e
    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@40
    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@43
    .line 167
    :cond_3
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@45
    invoke-virtual {v1, v5}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@48
    .line 168
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@4a
    invoke-virtual {v5, v1}, Landroid/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    #@4d
    .line 169
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@4f
    iget v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    #@51
    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setDropDownGravity(I)V

    #@54
    .line 171
    iget-boolean v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    #@56
    if-nez v5, :cond_4

    #@58
    .line 172
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    #@5a
    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    #@5c
    iget v7, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    #@5e
    invoke-static {v5, v8, v6, v7}, Lcom/android/internal/view/menu/StandardMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    #@61
    move-result v5

    #@62
    iput v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContentWidth:I

    #@64
    .line 173
    iput-boolean v10, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    #@66
    .line 176
    :cond_4
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@68
    iget v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContentWidth:I

    #@6a
    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setContentWidth(I)V

    #@6d
    .line 177
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@6f
    const/4 v6, 0x2

    #@70
    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setInputMethodMode(I)V

    #@73
    .line 178
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@75
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    #@78
    move-result-object v6

    #@79
    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    #@7c
    .line 179
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@7e
    invoke-virtual {v5}, Landroid/widget/MenuPopupWindow;->show()V

    #@81
    .line 181
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@83
    invoke-virtual {v5}, Landroid/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    #@86
    move-result-object v2

    #@87
    .line 182
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@8a
    .line 184
    iget-boolean v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShowTitle:Z

    #@8c
    if-eqz v5, :cond_6

    #@8e
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@90
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    #@93
    move-result-object v5

    #@94
    if-eqz v5, :cond_6

    #@96
    .line 186
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    #@98
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@9b
    move-result-object v5

    #@9c
    .line 187
    const v6, 0x10900a0

    #@9f
    .line 186
    invoke-virtual {v5, v6, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@a2
    move-result-object v3

    #@a3
    check-cast v3, Landroid/widget/FrameLayout;

    #@a5
    .line 191
    .local v3, "titleItemView":Landroid/widget/FrameLayout;
    const v5, 0x1020016

    #@a8
    .line 190
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    #@ab
    move-result-object v4

    #@ac
    check-cast v4, Landroid/widget/TextView;

    #@ae
    .line 192
    .local v4, "titleView":Landroid/widget/TextView;
    if-eqz v4, :cond_5

    #@b0
    .line 193
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@b2
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    #@b5
    move-result-object v5

    #@b6
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@b9
    .line 195
    :cond_5
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    #@bc
    .line 196
    invoke-virtual {v2, v3, v8, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    #@bf
    .line 199
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@c1
    invoke-virtual {v5}, Landroid/widget/MenuPopupWindow;->show()V

    #@c4
    .line 201
    .end local v3    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v4    # "titleView":Landroid/widget/TextView;
    :cond_6
    return v10

    #@c5
    .line 162
    .end local v0    # "addGlobalListener":Z
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_7
    const/4 v0, 0x0

    #@c6
    .restart local v0    # "addGlobalListener":Z
    goto/16 :goto_0
.end method


# virtual methods
.method public addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 219
    return-void
.end method

.method public dismiss()V
    .locals 1

    #@0
    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 214
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@8
    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->dismiss()V

    #@b
    .line 212
    :cond_0
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    #@0
    .prologue
    .line 300
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    #@0
    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mWasDismissed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@6
    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->isShowing()Z

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

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    return-void

    #@5
    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->dismiss()V

    #@8
    .line 293
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 294
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@e
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    #@11
    .line 288
    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 230
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mWasDismissed:Z

    #@4
    .line 231
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    #@9
    .line 233
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 234
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@f
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_0

    #@15
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@17
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@1d
    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@1f
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@21
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@24
    .line 236
    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@26
    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@28
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@2a
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@2d
    .line 240
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@2f
    if-eqz v0, :cond_2

    #@31
    .line 241
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@33
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    #@36
    .line 229
    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 319
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@4
    move-result v0

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/16 v0, 0x52

    #@9
    if-ne p2, v0, :cond_0

    #@b
    .line 320
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->dismiss()V

    #@e
    .line 321
    return v1

    #@f
    .line 323
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 309
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    #@0
    .prologue
    .line 305
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 11
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 261
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 262
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper;

    #@a
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    #@c
    .line 263
    iget-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@e
    iget-boolean v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    #@10
    iget v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    #@12
    iget v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    #@14
    move-object v2, p1

    #@15
    .line 262
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    #@18
    .line 264
    .local v0, "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@1d
    .line 265
    invoke-static {p1}, Lcom/android/internal/view/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/android/internal/view/menu/MenuBuilder;)Z

    #@20
    move-result v1

    #@21
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    #@24
    .line 268
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@26
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    #@29
    .line 269
    iput-object v10, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@2b
    .line 272
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2d
    invoke-virtual {v1, v9}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    #@30
    .line 275
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@32
    invoke-virtual {v1}, Landroid/widget/MenuPopupWindow;->getHorizontalOffset()I

    #@35
    move-result v7

    #@36
    .line 276
    .local v7, "horizontalOffset":I
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@38
    invoke-virtual {v1}, Landroid/widget/MenuPopupWindow;->getVerticalOffset()I

    #@3b
    move-result v8

    #@3c
    .line 277
    .local v8, "verticalOffset":I
    invoke-virtual {v0, v7, v8}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow(II)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_1

    #@42
    .line 278
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@44
    if-eqz v1, :cond_0

    #@46
    .line 279
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@48
    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    #@4b
    .line 281
    :cond_0
    const/4 v1, 0x1

    #@4c
    return v1

    #@4d
    .line 284
    .end local v0    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    .end local v7    # "horizontalOffset":I
    .end local v8    # "verticalOffset":I
    :cond_1
    return v9
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    #@0
    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    #@2
    .line 313
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@0
    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2
    .line 255
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShow"    # Z

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    #@5
    .line 136
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 142
    iput p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    #@2
    .line 141
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "x"    # I

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    #@5
    .line 338
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    #@0
    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@2
    .line 327
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .param p1, "showTitle"    # Z

    #@0
    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShowTitle:Z

    #@2
    .line 348
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "y"    # I

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/MenuPopupWindow;->setVerticalOffset(I)V

    #@5
    .line 343
    return-void
.end method

.method public show()V
    .locals 2

    #@0
    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->tryShow()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "StandardMenuPopup cannot be used without an anchor"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 205
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    #@0
    .prologue
    .line 247
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    #@3
    .line 249
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 250
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    #@9
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuAdapter;->notifyDataSetChanged()V

    #@c
    .line 246
    :cond_0
    return-void
.end method
