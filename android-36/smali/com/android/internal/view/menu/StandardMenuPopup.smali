.class final Lcom/android/internal/view/menu/StandardMenuPopup;
.super Lcom/android/internal/view/menu/MenuPopup;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final blacklist ITEM_LAYOUT:I = 0x1090104

.field private static final blacklist ITEM_LAYOUT_MATERIAL:I = 0x1090105


# instance fields
.field private final blacklist mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

.field private blacklist mAnchorView:Landroid/view/View;

.field private final blacklist mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private blacklist mContentWidth:I

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDropDownGravity:I

.field private final blacklist mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private blacklist mHasContentWidth:Z

.field private final blacklist mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private blacklist mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final blacklist mOverflowOnly:Z

.field private final blacklist mPopup:Landroid/widget/MenuPopupWindow;

.field private final blacklist mPopupMaxWidth:I

.field private final blacklist mPopupStyleAttr:I

.field private final blacklist mPopupStyleRes:I

.field private blacklist mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private blacklist mShowTitle:Z

.field private blacklist mShownAnchorView:Landroid/view/View;

.field private blacklist mTreeObserver:Landroid/view/ViewTreeObserver;

.field private blacklist mWasDismissed:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGlobalLayoutListener(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPopup(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/widget/MenuPopupWindow;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShownAnchorView(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTreeObserver(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTreeObserver(Lcom/android/internal/view/menu/StandardMenuPopup;Landroid/view/ViewTreeObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;IIZ)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "popupStyleAttr"    # I
    .param p5, "popupStyleRes"    # I
    .param p6, "overflowOnly"    # Z

    .line 118
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopup;-><init>()V

    .line 63
    new-instance v0, Lcom/android/internal/view/menu/StandardMenuPopup$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/StandardMenuPopup$1;-><init>(Lcom/android/internal/view/menu/StandardMenuPopup;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 81
    new-instance v0, Lcom/android/internal/view/menu/StandardMenuPopup$2;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/StandardMenuPopup$2;-><init>(Lcom/android/internal/view/menu/StandardMenuPopup;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 119
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 121
    iput-boolean p6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 123
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/android/internal/view/menu/MenuAdapter;

    iget-boolean v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    const v3, 0x1090105

    invoke-direct {v1, p2, v0, v2, v3}, Lcom/android/internal/view/menu/MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    .line 124
    iput p4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    .line 125
    iput p5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 128
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    .line 129
    const v3, 0x1050104

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 128
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    .line 131
    iput-object p3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 133
    new-instance v2, Landroid/widget/MenuPopupWindow;

    iget-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    .line 136
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method private blacklist tryShow()Z
    .registers 10

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 151
    return v1

    .line 154
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mWasDismissed:Z

    const/4 v2, 0x0

    if-nez v0, :cond_c8

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_13

    goto/16 :goto_c8

    .line 158
    :cond_13
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 160
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    iget-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setModal(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 166
    .local v0, "anchor":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_35

    move v3, v1

    goto :goto_36

    :cond_35
    move v3, v2

    .line 167
    .local v3, "addGlobalListener":Z
    :goto_36
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 168
    if-eqz v3, :cond_45

    .line 169
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 171
    :cond_45
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 172
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4, v0}, Landroid/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 173
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    iget v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v4, v5}, Landroid/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 175
    iget-boolean v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    const/4 v5, 0x0

    if-nez v4, :cond_69

    .line 176
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    invoke-static {v4, v5, v6, v7}, Lcom/android/internal/view/menu/StandardMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContentWidth:I

    .line 177
    iput-boolean v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 180
    :cond_69
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    iget v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContentWidth:I

    invoke-virtual {v4, v6}, Landroid/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 181
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/widget/MenuPopupWindow;->setInputMethodMode(I)V

    .line 182
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 183
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->show()V

    .line 185
    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 186
    .local v4, "listView":Landroid/widget/ListView;
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 188
    iget-boolean v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShowTitle:Z

    if-eqz v6, :cond_c7

    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_c7

    .line 189
    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 190
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x1090103

    invoke-virtual {v6, v7, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 194
    .local v6, "titleItemView":Landroid/widget/FrameLayout;
    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 196
    .local v7, "titleView":Landroid/widget/TextView;
    if-eqz v7, :cond_bc

    .line 197
    iget-object v8, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_bc
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 200
    invoke-virtual {v4, v6, v5, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 203
    iget-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroid/widget/MenuPopupWindow;->show()V

    .line 205
    .end local v6    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v7    # "titleView":Landroid/widget/TextView;
    :cond_c7
    return v1

    .line 155
    .end local v0    # "anchor":Landroid/view/View;
    .end local v3    # "addGlobalListener":Z
    .end local v4    # "listView":Landroid/widget/ListView;
    :cond_c8
    :goto_c8
    return v2
.end method


# virtual methods
.method public blacklist addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 225
    return-void
.end method

.method public blacklist dismiss()V
    .registers 2

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 218
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->dismiss()V

    .line 220
    :cond_b
    return-void
.end method

.method public blacklist flagActionItems()Z
    .registers 2

    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getListView()Landroid/widget/ListView;
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isShowing()Z
    .registers 2

    .line 229
    iget-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 303
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_5

    return-void

    .line 305
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->dismiss()V

    .line 306
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_11

    .line 307
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 309
    :cond_11
    return-void
.end method

.method public whitelist onDismiss()V
    .registers 3

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mWasDismissed:Z

    .line 235
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 237
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_26

    .line 238
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 239
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 242
    :cond_26
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_36

    .line 245
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 247
    :cond_36
    return-void
.end method

.method public whitelist onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 332
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/16 v0, 0x52

    if-ne p2, v0, :cond_f

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->dismiss()V

    .line 334
    return v1

    .line 336
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 323
    return-void
.end method

.method public blacklist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .registers 11
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 265
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_65

    .line 266
    new-instance v2, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-boolean v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    iget v7, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v8, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    move-object v4, p1

    .end local p1    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    .local v4, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 268
    .local v2, "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v2, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 269
    invoke-static {v4}, Lcom/android/internal/view/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 272
    iget-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v2, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 273
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 276
    iget-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 279
    iget-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {p1}, Landroid/widget/MenuPopupWindow;->getHorizontalOffset()I

    move-result p1

    .line 280
    .local p1, "horizontalOffset":I
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->getVerticalOffset()I

    move-result v0

    .line 284
    .local v0, "verticalOffset":I
    iget v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 285
    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    .line 284
    invoke-static {v3, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    .line 286
    .local v3, "hgrav":I
    const/4 v5, 0x5

    if-ne v3, v5, :cond_54

    .line 287
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr p1, v5

    .line 290
    :cond_54
    invoke-virtual {v2, p1, v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 291
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_63

    .line 292
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v1, v4}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 294
    :cond_63
    const/4 v1, 0x1

    return v1

    .line 265
    .end local v0    # "verticalOffset":I
    .end local v2    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    .end local v3    # "hgrav":I
    .end local v4    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    .local p1, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_65
    move-object v4, p1

    .line 297
    .end local p1    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    .restart local v4    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_66
    return v1
.end method

.method public blacklist setAnchorView(Landroid/view/View;)V
    .registers 2
    .param p1, "anchor"    # Landroid/view/View;

    .line 327
    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 328
    return-void
.end method

.method public blacklist setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 260
    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 261
    return-void
.end method

.method public blacklist setForceShowIcon(Z)V
    .registers 3
    .param p1, "forceShow"    # Z

    .line 141
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 142
    return-void
.end method

.method public blacklist setGravity(I)V
    .registers 2
    .param p1, "gravity"    # I

    .line 146
    iput p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 147
    return-void
.end method

.method public blacklist setHorizontalOffset(I)V
    .registers 3
    .param p1, "x"    # I

    .line 352
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 353
    return-void
.end method

.method public blacklist setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 341
    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 342
    return-void
.end method

.method public blacklist setShowTitle(Z)V
    .registers 2
    .param p1, "showTitle"    # Z

    .line 362
    iput-boolean p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShowTitle:Z

    .line 363
    return-void
.end method

.method public blacklist setVerticalOffset(I)V
    .registers 3
    .param p1, "y"    # I

    .line 357
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 358
    return-void
.end method

.method public blacklist show()V
    .registers 3

    .line 210
    invoke-direct {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 213
    return-void

    .line 211
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist updateMenuView(Z)V
    .registers 3
    .param p1, "cleared"    # Z

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 253
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    if-eqz v0, :cond_c

    .line 254
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 256
    :cond_c
    return-void
.end method
