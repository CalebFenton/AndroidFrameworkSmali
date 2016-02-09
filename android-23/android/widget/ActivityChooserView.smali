.class public Landroid/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/widget/ActivityChooserModel$ActivityChooserModelClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActivityChooserView$Callbacks;,
        Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;,
        Landroid/widget/ActivityChooserView$1;,
        Landroid/widget/ActivityChooserView$2;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityChooserView"


# instance fields
.field private final mActivityChooserContent:Landroid/widget/LinearLayout;

.field private final mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

.field private final mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

.field private final mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

.field private mDefaultActionButtonContentDescription:I

.field private final mDefaultActivityButton:Landroid/widget/FrameLayout;

.field private final mDefaultActivityButtonImage:Landroid/widget/ImageView;

.field private final mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

.field private final mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

.field private mInitialActivityCount:I

.field private mIsAttachedToWindow:Z

.field private mIsSelectingDefaultActivity:Z

.field private final mListPopupMaxWidth:I

.field private mListPopupWindow:Landroid/widget/ListPopupWindow;

.field private final mModelDataSetOberver:Landroid/database/DataSetObserver;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mProvider:Landroid/view/ActionProvider;


# direct methods
.method static synthetic -get0(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/ActivityChooserView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/widget/ActivityChooserView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/widget/ActivityChooserView;)Landroid/database/DataSetObserver;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/ActivityChooserView;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/ActivityChooserView;)Landroid/widget/ListPopupWindow;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/ActivityChooserView;I)V
    .locals 0
    .param p1, "maxActivityCount"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserView;->showPopupUnchecked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/ActivityChooserView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->updateAppearance()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 188
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 198
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 211
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const v8, 0x10202eb

    #@4
    const/4 v7, 0x4

    #@5
    const/4 v6, 0x1

    #@6
    .line 228
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@9
    .line 122
    new-instance v5, Landroid/widget/ActivityChooserView$1;

    #@b
    invoke-direct {v5, p0}, Landroid/widget/ActivityChooserView$1;-><init>(Landroid/widget/ActivityChooserView;)V

    #@e
    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    #@10
    .line 136
    new-instance v5, Landroid/widget/ActivityChooserView$2;

    #@12
    invoke-direct {v5, p0}, Landroid/widget/ActivityChooserView$2;-><init>(Landroid/widget/ActivityChooserView;)V

    #@15
    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@17
    .line 170
    iput v7, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    #@19
    .line 231
    sget-object v5, Lcom/android/internal/R$styleable;->ActivityChooserView:[I

    #@1b
    .line 230
    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@1e
    move-result-object v0

    #@1f
    .line 234
    .local v0, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    #@20
    .line 233
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@23
    move-result v5

    #@24
    iput v5, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    #@26
    .line 237
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@29
    move-result-object v1

    #@2a
    .line 240
    .local v1, "expandActivityOverflowButtonDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2d
    .line 242
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    #@2f
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@32
    move-result-object v3

    #@33
    .line 243
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x1090021

    #@36
    invoke-virtual {v3, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@39
    .line 245
    new-instance v5, Landroid/widget/ActivityChooserView$Callbacks;

    #@3b
    invoke-direct {v5, p0, v9}, Landroid/widget/ActivityChooserView$Callbacks;-><init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$Callbacks;)V

    #@3e
    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    #@40
    .line 247
    const v5, 0x10202e9

    #@43
    invoke-virtual {p0, v5}, Landroid/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    #@46
    move-result-object v5

    #@47
    check-cast v5, Landroid/widget/LinearLayout;

    #@49
    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    #@4b
    .line 248
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    #@4d
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    #@50
    move-result-object v5

    #@51
    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    #@53
    .line 250
    const v5, 0x10202ec

    #@56
    invoke-virtual {p0, v5}, Landroid/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    #@59
    move-result-object v5

    #@5a
    check-cast v5, Landroid/widget/FrameLayout;

    #@5c
    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    #@5e
    .line 251
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    #@60
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    #@62
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@65
    .line 252
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    #@67
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    #@69
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@6c
    .line 253
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    #@6e
    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    #@71
    move-result-object v5

    #@72
    check-cast v5, Landroid/widget/ImageView;

    #@74
    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    #@76
    .line 255
    const v5, 0x10202ea

    #@79
    invoke-virtual {p0, v5}, Landroid/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    #@7c
    move-result-object v2

    #@7d
    check-cast v2, Landroid/widget/FrameLayout;

    #@7f
    .line 256
    .local v2, "expandButton":Landroid/widget/FrameLayout;
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    #@81
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@84
    .line 257
    new-instance v5, Landroid/widget/ActivityChooserView$3;

    #@86
    invoke-direct {v5, p0}, Landroid/widget/ActivityChooserView$3;-><init>(Landroid/widget/ActivityChooserView;)V

    #@89
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@8c
    .line 264
    new-instance v5, Landroid/widget/ActivityChooserView$4;

    #@8e
    invoke-direct {v5, p0, v2}, Landroid/widget/ActivityChooserView$4;-><init>(Landroid/widget/ActivityChooserView;Landroid/view/View;)V

    #@91
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@94
    .line 282
    iput-object v2, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    #@96
    .line 285
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    #@99
    move-result-object v5

    #@9a
    check-cast v5, Landroid/widget/ImageView;

    #@9c
    .line 284
    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    #@9e
    .line 286
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    #@a0
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@a3
    .line 288
    new-instance v5, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@a5
    invoke-direct {v5, p0, v9}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;)V

    #@a8
    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@aa
    .line 289
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@ac
    new-instance v6, Landroid/widget/ActivityChooserView$5;

    #@ae
    invoke-direct {v6, p0}, Landroid/widget/ActivityChooserView$5;-><init>(Landroid/widget/ActivityChooserView;)V

    #@b1
    invoke-virtual {v5, v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@b4
    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b7
    move-result-object v4

    #@b8
    .line 298
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@bb
    move-result-object v5

    #@bc
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    #@be
    div-int/lit8 v5, v5, 0x2

    #@c0
    .line 299
    const v6, 0x105000e

    #@c3
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@c6
    move-result v6

    #@c7
    .line 298
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@ca
    move-result v5

    #@cb
    iput v5, p0, Landroid/widget/ActivityChooserView;->mListPopupMaxWidth:I

    #@cd
    .line 227
    return-void
.end method

.method private getListPopupWindow()Landroid/widget/ListPopupWindow;
    .locals 2

    #@0
    .prologue
    .line 528
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 529
    new-instance v0, Landroid/widget/ListPopupWindow;

    #@6
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    #@d
    iput-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    #@f
    .line 530
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    #@11
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@13
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    #@16
    .line 531
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    #@18
    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    #@1b
    .line 532
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    #@1d
    const/4 v1, 0x1

    #@1e
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    #@21
    .line 533
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    #@23
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    #@25
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@28
    .line 534
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    #@2a
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    #@2c
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    #@2f
    .line 536
    :cond_0
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    #@31
    return-object v0
.end method

.method private showPopupUnchecked(I)V
    .locals 9
    .param p1, "maxActivityCount"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 371
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@4
    invoke-virtual {v5}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    #@7
    move-result-object v5

    #@8
    if-nez v5, :cond_0

    #@a
    .line 372
    new-instance v5, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v6, "No data model. Did you call #setDataModel?"

    #@f
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v5

    #@13
    .line 375
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@16
    move-result-object v5

    #@17
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@19
    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@1c
    .line 378
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    #@1e
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_3

    #@24
    const/4 v2, 0x1

    #@25
    .line 380
    .local v2, "defaultActivityButtonShown":Z
    :goto_0
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@27
    invoke-virtual {v5}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    #@2a
    move-result v0

    #@2b
    .line 381
    .local v0, "activityCount":I
    if-eqz v2, :cond_4

    #@2d
    const/4 v3, 0x1

    #@2e
    .line 382
    .local v3, "maxActivityCountOffset":I
    :goto_1
    const v5, 0x7fffffff

    #@31
    if-eq p1, v5, :cond_5

    #@33
    .line 383
    add-int v5, p1, v3

    #@35
    if-le v0, v5, :cond_5

    #@37
    .line 384
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@39
    invoke-virtual {v5, v8}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    #@3c
    .line 385
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@3e
    add-int/lit8 v6, p1, -0x1

    #@40
    invoke-virtual {v5, v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    #@43
    .line 391
    :goto_2
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    #@46
    move-result-object v4

    #@47
    .line 392
    .local v4, "popupWindow":Landroid/widget/ListPopupWindow;
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@4a
    move-result v5

    #@4b
    if-nez v5, :cond_2

    #@4d
    .line 393
    iget-boolean v5, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    #@4f
    if-nez v5, :cond_6

    #@51
    if-eqz v2, :cond_6

    #@53
    .line 396
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@55
    invoke-virtual {v5, v7, v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    #@58
    .line 398
    :goto_3
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@5a
    invoke-virtual {v5}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->measureContentWidth()I

    #@5d
    move-result v5

    #@5e
    iget v6, p0, Landroid/widget/ActivityChooserView;->mListPopupMaxWidth:I

    #@60
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@63
    move-result v1

    #@64
    .line 399
    .local v1, "contentWidth":I
    invoke-virtual {v4, v1}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    #@67
    .line 400
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->show()V

    #@6a
    .line 401
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    #@6c
    if-eqz v5, :cond_1

    #@6e
    .line 402
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    #@70
    invoke-virtual {v5, v8}, Landroid/view/ActionProvider;->subUiVisibilityChanged(Z)V

    #@73
    .line 404
    :cond_1
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    #@76
    move-result-object v5

    #@77
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    #@79
    .line 405
    const v7, 0x1040473

    #@7c
    .line 404
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@7f
    move-result-object v6

    #@80
    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@83
    .line 370
    .end local v1    # "contentWidth":I
    :cond_2
    return-void

    #@84
    .line 378
    .end local v0    # "activityCount":I
    .end local v2    # "defaultActivityButtonShown":Z
    .end local v3    # "maxActivityCountOffset":I
    .end local v4    # "popupWindow":Landroid/widget/ListPopupWindow;
    :cond_3
    const/4 v2, 0x0

    #@85
    .restart local v2    # "defaultActivityButtonShown":Z
    goto :goto_0

    #@86
    .line 381
    .restart local v0    # "activityCount":I
    :cond_4
    const/4 v3, 0x0

    #@87
    .restart local v3    # "maxActivityCountOffset":I
    goto :goto_1

    #@88
    .line 387
    :cond_5
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@8a
    invoke-virtual {v5, v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    #@8d
    .line 388
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@8f
    invoke-virtual {v5, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    #@92
    goto :goto_2

    #@93
    .line 394
    .restart local v4    # "popupWindow":Landroid/widget/ListPopupWindow;
    :cond_6
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@95
    invoke-virtual {v5, v8, v2}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    #@98
    goto :goto_3
.end method

.method private updateAppearance()V
    .locals 10

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 544
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@4
    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    #@7
    move-result v6

    #@8
    if-lez v6, :cond_2

    #@a
    .line 545
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    #@c
    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    #@f
    .line 550
    :goto_0
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@11
    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    #@14
    move-result v1

    #@15
    .line 551
    .local v1, "activityCount":I
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@17
    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getHistorySize()I

    #@1a
    move-result v3

    #@1b
    .line 552
    .local v3, "historySize":I
    if-eq v1, v8, :cond_0

    #@1d
    if-le v1, v8, :cond_3

    #@1f
    if-lez v3, :cond_3

    #@21
    .line 553
    :cond_0
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    #@23
    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@26
    .line 554
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@28
    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    #@2b
    move-result-object v0

    #@2c
    .line 555
    .local v0, "activity":Landroid/content/pm/ResolveInfo;
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    #@2e
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@31
    move-result-object v5

    #@32
    .line 556
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    #@34
    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3b
    .line 557
    iget v6, p0, Landroid/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    #@3d
    if-eqz v6, :cond_1

    #@3f
    .line 558
    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@42
    move-result-object v4

    #@43
    .line 559
    .local v4, "label":Ljava/lang/CharSequence;
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    #@45
    .line 560
    iget v7, p0, Landroid/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    #@47
    .line 559
    new-array v8, v8, [Ljava/lang/Object;

    #@49
    .line 560
    aput-object v4, v8, v9

    #@4b
    .line 559
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    .line 561
    .local v2, "contentDescription":Ljava/lang/String;
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    #@51
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    #@54
    .line 567
    .end local v0    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v2    # "contentDescription":Ljava/lang/String;
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    #@56
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    #@59
    move-result v6

    #@5a
    if-nez v6, :cond_4

    #@5c
    .line 568
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    #@5e
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    #@60
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@63
    .line 542
    :goto_2
    return-void

    #@64
    .line 547
    .end local v1    # "activityCount":I
    .end local v3    # "historySize":I
    :cond_2
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    #@66
    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    #@69
    goto :goto_0

    #@6a
    .line 564
    .restart local v1    # "activityCount":I
    .restart local v3    # "historySize":I
    :cond_3
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    #@6c
    const/16 v7, 0x8

    #@6e
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@71
    goto :goto_1

    #@72
    .line 570
    :cond_4
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    #@74
    const/4 v7, 0x0

    #@75
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@78
    goto :goto_2
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    #@0
    .prologue
    .line 415
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 416
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    #@d
    .line 417
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@10
    move-result-object v0

    #@11
    .line 418
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 419
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@19
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@1c
    .line 422
    .end local v0    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v1, 0x1

    #@1d
    return v1
.end method

.method public getDataModel()Landroid/widget/ActivityChooserModel;
    .locals 1

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@2
    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isShowingPopup()Z
    .locals 1

    #@0
    .prologue
    .line 431
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    #@0
    .prologue
    .line 436
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    .line 437
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@5
    invoke-virtual {v1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    #@8
    move-result-object v0

    #@9
    .line 438
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    #@b
    .line 439
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    #@d
    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    #@10
    .line 441
    :cond_0
    const/4 v1, 0x1

    #@11
    iput-boolean v1, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    #@13
    .line 435
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    #@0
    .prologue
    .line 446
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    .line 447
    iget-object v2, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@5
    invoke-virtual {v2}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    #@8
    move-result-object v0

    #@9
    .line 448
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    #@b
    .line 449
    iget-object v2, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    #@d
    invoke-virtual {v0, v2}, Landroid/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    #@10
    .line 451
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@13
    move-result-object v1

    #@14
    .line 452
    .local v1, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 453
    iget-object v2, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@1c
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@1f
    .line 455
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 456
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    #@28
    .line 458
    :cond_2
    const/4 v2, 0x0

    #@29
    iput-boolean v2, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    #@2b
    .line 445
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 477
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    #@3
    sub-int v1, p4, p2

    #@5
    sub-int v2, p5, p3

    #@7
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    #@a
    .line 478
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 479
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    #@13
    .line 476
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 463
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    #@2
    .line 467
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    #@4
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 468
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@d
    move-result v1

    #@e
    .line 469
    const/high16 v2, 0x40000000    # 2.0f

    #@10
    .line 468
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@13
    move-result p2

    #@14
    .line 471
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    #@17
    .line 472
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@1e
    move-result v2

    #@1f
    invoke-virtual {p0, v1, v2}, Landroid/widget/ActivityChooserView;->setMeasuredDimension(II)V

    #@22
    .line 462
    return-void
.end method

.method public setActivityChooserModel(Landroid/widget/ActivityChooserModel;)V
    .locals 1
    .param p1, "dataModel"    # Landroid/widget/ActivityChooserModel;

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setDataModel(Landroid/widget/ActivityChooserModel;)V

    #@5
    .line 307
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 308
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    #@e
    .line 309
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->showPopup()Z

    #@11
    .line 305
    :cond_0
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .locals 0
    .param p1, "resourceId"    # I

    #@0
    .prologue
    .line 519
    iput p1, p0, Landroid/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    #@2
    .line 518
    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .locals 2
    .param p1, "resourceId"    # I

    #@0
    .prologue
    .line 339
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 340
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    #@8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@b
    .line 338
    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 324
    return-void
.end method

.method public setInitialActivityCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    #@0
    .prologue
    .line 505
    iput p1, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    #@2
    .line 504
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    #@0
    .prologue
    .line 493
    iput-object p1, p0, Landroid/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@2
    .line 492
    return-void
.end method

.method public setProvider(Landroid/view/ActionProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/view/ActionProvider;

    #@0
    .prologue
    .line 348
    iput-object p1, p0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    #@2
    .line 347
    return-void
.end method

.method public showPopup()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 357
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 360
    iput-boolean v1, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    #@d
    .line 361
    iget v0, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    #@f
    invoke-direct {p0, v0}, Landroid/widget/ActivityChooserView;->showPopupUnchecked(I)V

    #@12
    .line 362
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    .line 358
    :cond_0
    return v1
.end method
