.class public Landroid/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SearchView$1;,
        Landroid/widget/SearchView$2;,
        Landroid/widget/SearchView$3;,
        Landroid/widget/SearchView$4;,
        Landroid/widget/SearchView$5;,
        Landroid/widget/SearchView$6;,
        Landroid/widget/SearchView$7;,
        Landroid/widget/SearchView$8;,
        Landroid/widget/SearchView$9;,
        Landroid/widget/SearchView$OnCloseListener;,
        Landroid/widget/SearchView$OnQueryTextListener;,
        Landroid/widget/SearchView$OnSuggestionListener;,
        Landroid/widget/SearchView$SavedState;,
        Landroid/widget/SearchView$SearchAutoComplete;,
        Landroid/widget/SearchView$UpdatableTouchDelegate;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field private final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDefaultQueryHint:Ljava/lang/CharSequence;

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field private final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mSearchPlate:Landroid/view/View;

.field private final mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

.field private mSearchSrcTextViewBounds:Landroid/graphics/Rect;

.field private mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field private mSuggestionsAdapter:Landroid/widget/CursorAdapter;

.field private mTemp:[I

.field private mTemp2:[I

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTouchDelegate:Landroid/widget/SearchView$UpdatableTouchDelegate;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static synthetic -get0(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/SearchView;IILjava/lang/String;)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/SearchView;I)Z
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->onItemSelected(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Landroid/widget/SearchView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/SearchView;->onVoiceClicked()V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Landroid/widget/SearchView;Z)V
    .locals 0
    .param p1, "visible"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Landroid/widget/SearchView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/SearchView;->updateFocusedState()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/SearchView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/SearchView;->adjustDropDownSizeAndPosition()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/widget/SearchView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/SearchView;->forceSuggestionQuery()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/widget/SearchView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/SearchView;->onCloseClicked()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Landroid/widget/SearchView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/SearchView;->onSearchClicked()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Landroid/widget/SearchView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/SearchView;->onSubmitQuery()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Landroid/widget/SearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "newText"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 263
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 267
    const v0, 0x1010480

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 266
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 271
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 270
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
    .line 275
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 118
    new-instance v7, Landroid/graphics/Rect;

    #@5
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    #@a
    .line 119
    new-instance v7, Landroid/graphics/Rect;

    #@c
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v7, p0, Landroid/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    #@11
    .line 120
    const/4 v7, 0x2

    #@12
    new-array v7, v7, [I

    #@14
    iput-object v7, p0, Landroid/widget/SearchView;->mTemp:[I

    #@16
    .line 121
    const/4 v7, 0x2

    #@17
    new-array v7, v7, [I

    #@19
    iput-object v7, p0, Landroid/widget/SearchView;->mTemp2:[I

    #@1b
    .line 166
    new-instance v7, Landroid/widget/SearchView$1;

    #@1d
    invoke-direct {v7, p0}, Landroid/widget/SearchView$1;-><init>(Landroid/widget/SearchView;)V

    #@20
    iput-object v7, p0, Landroid/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    #@22
    .line 176
    new-instance v7, Landroid/widget/SearchView$2;

    #@24
    invoke-direct {v7, p0}, Landroid/widget/SearchView$2;-><init>(Landroid/widget/SearchView;)V

    #@27
    iput-object v7, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    #@29
    .line 182
    new-instance v7, Landroid/widget/SearchView$3;

    #@2b
    invoke-direct {v7, p0}, Landroid/widget/SearchView$3;-><init>(Landroid/widget/SearchView;)V

    #@2e
    iput-object v7, p0, Landroid/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    #@30
    .line 193
    new-instance v7, Ljava/util/WeakHashMap;

    #@32
    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    #@35
    .line 192
    iput-object v7, p0, Landroid/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@37
    .line 991
    new-instance v7, Landroid/widget/SearchView$4;

    #@39
    invoke-direct {v7, p0}, Landroid/widget/SearchView$4;-><init>(Landroid/widget/SearchView;)V

    #@3c
    iput-object v7, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@3e
    .line 1040
    new-instance v7, Landroid/widget/SearchView$5;

    #@40
    invoke-direct {v7, p0}, Landroid/widget/SearchView$5;-><init>(Landroid/widget/SearchView;)V

    #@43
    iput-object v7, p0, Landroid/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    #@45
    .line 1256
    new-instance v7, Landroid/widget/SearchView$6;

    #@47
    invoke-direct {v7, p0}, Landroid/widget/SearchView$6;-><init>(Landroid/widget/SearchView;)V

    #@4a
    iput-object v7, p0, Landroid/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@4c
    .line 1496
    new-instance v7, Landroid/widget/SearchView$7;

    #@4e
    invoke-direct {v7, p0}, Landroid/widget/SearchView$7;-><init>(Landroid/widget/SearchView;)V

    #@51
    iput-object v7, p0, Landroid/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@53
    .line 1507
    new-instance v7, Landroid/widget/SearchView$8;

    #@55
    invoke-direct {v7, p0}, Landroid/widget/SearchView$8;-><init>(Landroid/widget/SearchView;)V

    #@58
    iput-object v7, p0, Landroid/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@5a
    .line 1796
    new-instance v7, Landroid/widget/SearchView$9;

    #@5c
    invoke-direct {v7, p0}, Landroid/widget/SearchView$9;-><init>(Landroid/widget/SearchView;)V

    #@5f
    iput-object v7, p0, Landroid/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    #@61
    .line 278
    sget-object v7, Lcom/android/internal/R$styleable;->SearchView:[I

    #@63
    .line 277
    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@66
    move-result-object v0

    #@67
    .line 280
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string/jumbo v7, "layout_inflater"

    #@6a
    .line 279
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6d
    move-result-object v3

    #@6e
    check-cast v3, Landroid/view/LayoutInflater;

    #@70
    .line 282
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v7, 0x1

    #@71
    const v8, 0x10900d8

    #@74
    .line 281
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@77
    move-result v5

    #@78
    .line 283
    .local v5, "layoutResId":I
    const/4 v7, 0x1

    #@79
    invoke-virtual {v3, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@7c
    .line 285
    const v7, 0x1020402

    #@7f
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@82
    move-result-object v7

    #@83
    check-cast v7, Landroid/widget/SearchView$SearchAutoComplete;

    #@85
    iput-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@87
    .line 286
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@89
    invoke-virtual {v7, p0}, Landroid/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/widget/SearchView;)V

    #@8c
    .line 288
    const v7, 0x10203ff

    #@8f
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@92
    move-result-object v7

    #@93
    iput-object v7, p0, Landroid/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    #@95
    .line 289
    const v7, 0x1020401

    #@98
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@9b
    move-result-object v7

    #@9c
    iput-object v7, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    #@9e
    .line 290
    const v7, 0x1020404

    #@a1
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@a4
    move-result-object v7

    #@a5
    iput-object v7, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    #@a7
    .line 291
    const v7, 0x10203fe

    #@aa
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@ad
    move-result-object v7

    #@ae
    check-cast v7, Landroid/widget/ImageView;

    #@b0
    iput-object v7, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    #@b2
    .line 292
    const v7, 0x1020405

    #@b5
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@b8
    move-result-object v7

    #@b9
    check-cast v7, Landroid/widget/ImageView;

    #@bb
    iput-object v7, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    #@bd
    .line 293
    const v7, 0x1020403

    #@c0
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@c3
    move-result-object v7

    #@c4
    check-cast v7, Landroid/widget/ImageView;

    #@c6
    iput-object v7, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    #@c8
    .line 294
    const v7, 0x1020406

    #@cb
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@ce
    move-result-object v7

    #@cf
    check-cast v7, Landroid/widget/ImageView;

    #@d1
    iput-object v7, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    #@d3
    .line 295
    const v7, 0x1020400

    #@d6
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@d9
    move-result-object v7

    #@da
    check-cast v7, Landroid/widget/ImageView;

    #@dc
    iput-object v7, p0, Landroid/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    #@de
    .line 298
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    #@e0
    const/16 v8, 0xd

    #@e2
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@e5
    move-result-object v8

    #@e6
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@e9
    .line 299
    iget-object v7, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    #@eb
    const/16 v8, 0xe

    #@ed
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@f0
    move-result-object v8

    #@f1
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@f4
    .line 300
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    #@f6
    const/16 v8, 0x9

    #@f8
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@fb
    move-result-object v8

    #@fc
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@ff
    .line 301
    iget-object v7, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    #@101
    const/16 v8, 0x8

    #@103
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@106
    move-result-object v8

    #@107
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@10a
    .line 302
    iget-object v7, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    #@10c
    const/4 v8, 0x7

    #@10d
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@110
    move-result-object v8

    #@111
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@114
    .line 303
    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    #@116
    const/16 v8, 0xa

    #@118
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@11b
    move-result-object v8

    #@11c
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@11f
    .line 304
    iget-object v7, p0, Landroid/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    #@121
    const/16 v8, 0x9

    #@123
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@126
    move-result-object v8

    #@127
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@12a
    .line 308
    const/16 v7, 0xf

    #@12c
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@12f
    move-result v7

    #@130
    if-eqz v7, :cond_4

    #@132
    .line 309
    const/16 v7, 0xf

    #@134
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@137
    move-result-object v7

    #@138
    iput-object v7, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    #@13a
    .line 315
    :goto_0
    const/16 v7, 0xc

    #@13c
    .line 316
    const v8, 0x10900d7

    #@13f
    .line 315
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@142
    move-result v7

    #@143
    iput v7, p0, Landroid/widget/SearchView;->mSuggestionRowLayout:I

    #@145
    .line 317
    const/16 v7, 0xb

    #@147
    const/4 v8, 0x0

    #@148
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@14b
    move-result v7

    #@14c
    iput v7, p0, Landroid/widget/SearchView;->mSuggestionCommitIconResId:I

    #@14e
    .line 319
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    #@150
    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@152
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@155
    .line 320
    iget-object v7, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    #@157
    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@159
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@15c
    .line 321
    iget-object v7, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    #@15e
    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@160
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@163
    .line 322
    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    #@165
    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@167
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@16a
    .line 323
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@16c
    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@16e
    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@171
    .line 325
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@173
    iget-object v8, p0, Landroid/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    #@175
    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@178
    .line 326
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@17a
    iget-object v8, p0, Landroid/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@17c
    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    #@17f
    .line 327
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@181
    iget-object v8, p0, Landroid/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@183
    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@186
    .line 328
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@188
    iget-object v8, p0, Landroid/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@18a
    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@18d
    .line 329
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@18f
    iget-object v8, p0, Landroid/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    #@191
    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@194
    .line 332
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@196
    new-instance v8, Landroid/widget/SearchView$10;

    #@198
    invoke-direct {v8, p0}, Landroid/widget/SearchView$10;-><init>(Landroid/widget/SearchView;)V

    #@19b
    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@19e
    .line 340
    const/4 v7, 0x5

    #@19f
    const/4 v8, 0x1

    #@1a0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1a3
    move-result v7

    #@1a4
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    #@1a7
    .line 342
    const/4 v7, 0x2

    #@1a8
    const/4 v8, -0x1

    #@1a9
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1ac
    move-result v6

    #@1ad
    .line 343
    .local v6, "maxWidth":I
    const/4 v7, -0x1

    #@1ae
    if-eq v6, v7, :cond_0

    #@1b0
    .line 344
    invoke-virtual {p0, v6}, Landroid/widget/SearchView;->setMaxWidth(I)V

    #@1b3
    .line 347
    :cond_0
    const/16 v7, 0x10

    #@1b5
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@1b8
    move-result-object v7

    #@1b9
    iput-object v7, p0, Landroid/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    #@1bb
    .line 348
    const/4 v7, 0x6

    #@1bc
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@1bf
    move-result-object v7

    #@1c0
    iput-object v7, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    #@1c2
    .line 350
    const/4 v7, 0x4

    #@1c3
    const/4 v8, -0x1

    #@1c4
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1c7
    move-result v2

    #@1c8
    .line 351
    .local v2, "imeOptions":I
    const/4 v7, -0x1

    #@1c9
    if-eq v2, v7, :cond_1

    #@1cb
    .line 352
    invoke-virtual {p0, v2}, Landroid/widget/SearchView;->setImeOptions(I)V

    #@1ce
    .line 355
    :cond_1
    const/4 v7, 0x3

    #@1cf
    const/4 v8, -0x1

    #@1d0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1d3
    move-result v4

    #@1d4
    .line 356
    .local v4, "inputType":I
    const/4 v7, -0x1

    #@1d5
    if-eq v4, v7, :cond_2

    #@1d7
    .line 357
    invoke-virtual {p0, v4}, Landroid/widget/SearchView;->setInputType(I)V

    #@1da
    .line 360
    :cond_2
    const/4 v1, 0x1

    #@1db
    .line 361
    .local v1, "focusable":Z
    const/4 v7, 0x0

    #@1dc
    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1df
    move-result v1

    #@1e0
    .line 362
    .local v1, "focusable":Z
    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    #@1e3
    .line 364
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1e6
    .line 367
    new-instance v7, Landroid/content/Intent;

    #@1e8
    const-string/jumbo v8, "android.speech.action.WEB_SEARCH"

    #@1eb
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1ee
    iput-object v7, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    #@1f0
    .line 368
    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    #@1f2
    const/high16 v8, 0x10000000

    #@1f4
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1f7
    .line 369
    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    #@1f9
    const-string/jumbo v8, "android.speech.extra.LANGUAGE_MODEL"

    #@1fc
    .line 370
    const-string/jumbo v9, "web_search"

    #@1ff
    .line 369
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@202
    .line 372
    new-instance v7, Landroid/content/Intent;

    #@204
    const-string/jumbo v8, "android.speech.action.RECOGNIZE_SPEECH"

    #@207
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@20a
    iput-object v7, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    #@20c
    .line 373
    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    #@20e
    const/high16 v8, 0x10000000

    #@210
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@213
    .line 375
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@215
    invoke-virtual {v7}, Landroid/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    #@218
    move-result v7

    #@219
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@21c
    move-result-object v7

    #@21d
    iput-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    #@21f
    .line 376
    iget-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    #@221
    if-eqz v7, :cond_3

    #@223
    .line 377
    iget-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    #@225
    new-instance v8, Landroid/widget/SearchView$11;

    #@227
    invoke-direct {v8, p0}, Landroid/widget/SearchView$11;-><init>(Landroid/widget/SearchView;)V

    #@22a
    invoke-virtual {v7, v8}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@22d
    .line 386
    :cond_3
    iget-boolean v7, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@22f
    invoke-direct {p0, v7}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@232
    .line 387
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    #@235
    .line 274
    return-void

    #@236
    .line 311
    .end local v1    # "focusable":Z
    .end local v2    # "imeOptions":I
    .end local v4    # "inputType":I
    .end local v6    # "maxWidth":I
    :cond_4
    const/16 v7, 0x9

    #@238
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@23b
    move-result-object v7

    #@23c
    iput-object v7, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    #@23e
    goto/16 :goto_0
.end method

.method private adjustDropDownSizeAndPosition()V
    .locals 9

    #@0
    .prologue
    .line 1453
    iget-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    #@2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    #@5
    move-result v7

    #@6
    const/4 v8, 0x1

    #@7
    if-le v7, v8, :cond_0

    #@9
    .line 1454
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@c
    move-result-object v7

    #@d
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v5

    #@11
    .line 1455
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    #@13
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    #@16
    move-result v0

    #@17
    .line 1456
    .local v0, "anchorPadding":I
    new-instance v1, Landroid/graphics/Rect;

    #@19
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@1c
    .line 1457
    .local v1, "dropDownPadding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/SearchView;->isLayoutRtl()Z

    #@1f
    move-result v3

    #@20
    .line 1458
    .local v3, "isLayoutRtl":Z
    iget-boolean v7, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@22
    if-eqz v7, :cond_1

    #@24
    .line 1459
    const v7, 0x1050068

    #@27
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2a
    move-result v7

    #@2b
    .line 1460
    const v8, 0x1050066

    #@2e
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@31
    move-result v8

    #@32
    .line 1459
    add-int v2, v7, v8

    #@34
    .line 1462
    .local v2, "iconOffset":I
    :goto_0
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@36
    invoke-virtual {v7}, Landroid/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@3d
    .line 1464
    if-eqz v3, :cond_2

    #@3f
    .line 1465
    iget v7, v1, Landroid/graphics/Rect;->left:I

    #@41
    neg-int v4, v7

    #@42
    .line 1469
    .local v4, "offset":I
    :goto_1
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@44
    invoke-virtual {v7, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    #@47
    .line 1470
    iget-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    #@49
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    #@4c
    move-result v7

    #@4d
    iget v8, v1, Landroid/graphics/Rect;->left:I

    #@4f
    add-int/2addr v7, v8

    #@50
    .line 1471
    iget v8, v1, Landroid/graphics/Rect;->right:I

    #@52
    .line 1470
    add-int/2addr v7, v8

    #@53
    add-int/2addr v7, v2

    #@54
    sub-int v6, v7, v0

    #@56
    .line 1472
    .local v6, "width":I
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@58
    invoke-virtual {v7, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    #@5b
    .line 1452
    .end local v0    # "anchorPadding":I
    .end local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .end local v2    # "iconOffset":I
    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "offset":I
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "width":I
    :cond_0
    return-void

    #@5c
    .line 1461
    .restart local v0    # "anchorPadding":I
    .restart local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .restart local v3    # "isLayoutRtl":Z
    .restart local v5    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v2, 0x0

    #@5d
    .restart local v2    # "iconOffset":I
    goto :goto_0

    #@5e
    .line 1467
    :cond_2
    iget v7, v1, Landroid/graphics/Rect;->left:I

    #@60
    add-int/2addr v7, v2

    #@61
    sub-int v4, v0, v7

    #@63
    .restart local v4    # "offset":I
    goto :goto_1
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "actionKey"    # I
    .param p6, "actionMsg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1625
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5
    .line 1626
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@a
    .line 1630
    if-eqz p2, :cond_0

    #@c
    .line 1631
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@f
    .line 1633
    :cond_0
    const-string/jumbo v1, "user_query"

    #@12
    iget-object v2, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@17
    .line 1634
    if-eqz p4, :cond_1

    #@19
    .line 1635
    const-string/jumbo v1, "query"

    #@1c
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1f
    .line 1637
    :cond_1
    if-eqz p3, :cond_2

    #@21
    .line 1638
    const-string/jumbo v1, "intent_extra_data_key"

    #@24
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@27
    .line 1640
    :cond_2
    iget-object v1, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    #@29
    if-eqz v1, :cond_3

    #@2b
    .line 1641
    const-string/jumbo v1, "app_data"

    #@2e
    iget-object v2, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    #@30
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@33
    .line 1643
    :cond_3
    if-eqz p5, :cond_4

    #@35
    .line 1644
    const-string/jumbo v1, "action_key"

    #@38
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3b
    .line 1645
    const-string/jumbo v1, "action_msg"

    #@3e
    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@41
    .line 1647
    :cond_4
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@43
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@4a
    .line 1648
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 12
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1743
    :try_start_0
    const-string/jumbo v0, "suggest_intent_action"

    #@3
    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 1745
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_0

    #@9
    .line 1746
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@b
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 1748
    :cond_0
    if-nez v1, :cond_1

    #@11
    .line 1749
    const-string/jumbo v1, "android.intent.action.SEARCH"

    #@14
    .line 1753
    :cond_1
    const-string/jumbo v0, "suggest_intent_data"

    #@17
    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v7

    #@1b
    .line 1754
    .local v7, "data":Ljava/lang/String;
    if-nez v7, :cond_2

    #@1d
    .line 1755
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@1f
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    #@22
    move-result-object v7

    #@23
    .line 1758
    :cond_2
    if-eqz v7, :cond_3

    #@25
    .line 1759
    const-string/jumbo v0, "suggest_intent_data_id"

    #@28
    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v10

    #@2c
    .line 1760
    .local v10, "id":Ljava/lang/String;
    if-eqz v10, :cond_3

    #@2e
    .line 1761
    new-instance v0, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    const-string/jumbo v5, "/"

    #@3a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    .line 1764
    .end local v10    # "id":Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_4

    #@4c
    const/4 v2, 0x0

    #@4d
    .line 1766
    :goto_0
    const-string/jumbo v0, "suggest_intent_query"

    #@50
    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    .line 1767
    .local v4, "query":Ljava/lang/String;
    const-string/jumbo v0, "suggest_intent_extra_data"

    #@57
    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    .local v3, "extraData":Ljava/lang/String;
    move-object v0, p0

    #@5c
    move v5, p2

    #@5d
    move-object v6, p3

    #@5e
    .line 1769
    invoke-direct/range {v0 .. v6}, Landroid/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    #@61
    move-result-object v0

    #@62
    return-object v0

    #@63
    .line 1764
    .end local v3    # "extraData":Ljava/lang/String;
    .end local v4    # "query":Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@66
    move-result-object v2

    #@67
    .local v2, "dataUri":Landroid/net/Uri;
    goto :goto_0

    #@68
    .line 1770
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "dataUri":Landroid/net/Uri;
    .end local v7    # "data":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@69
    .line 1773
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@6c
    move-result v11

    #@6d
    .line 1777
    .local v11, "rowNum":I
    :goto_1
    const-string/jumbo v0, "SearchView"

    #@70
    new-instance v5, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v6, "Search suggestions cursor at row "

    #@78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    .line 1778
    const-string/jumbo v6, " returned exception."

    #@83
    .line 1777
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v5

    #@8b
    invoke-static {v0, v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8e
    .line 1779
    const/4 v0, 0x0

    #@8f
    return-object v0

    #@90
    .line 1774
    .end local v11    # "rowNum":I
    :catch_1
    move-exception v9

    #@91
    .line 1775
    .local v9, "e2":Ljava/lang/RuntimeException;
    const/4 v11, -0x1

    #@92
    .restart local v11    # "rowNum":I
    goto :goto_1
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 13
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    #@0
    .prologue
    .line 1670
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    #@3
    move-result-object v8

    #@4
    .line 1675
    .local v8, "searchActivity":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    #@6
    const-string/jumbo v10, "android.intent.action.SEARCH"

    #@9
    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 1676
    .local v6, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@f
    .line 1677
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@12
    move-result-object v10

    #@13
    const/4 v11, 0x0

    #@14
    .line 1678
    const/high16 v12, 0x40000000    # 2.0f

    #@16
    .line 1677
    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@19
    move-result-object v3

    #@1a
    .line 1684
    .local v3, "pending":Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    #@1c
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@1f
    .line 1685
    .local v5, "queryExtras":Landroid/os/Bundle;
    iget-object v10, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    #@21
    if-eqz v10, :cond_0

    #@23
    .line 1686
    const-string/jumbo v10, "app_data"

    #@26
    iget-object v11, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    #@28
    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@2b
    .line 1692
    :cond_0
    new-instance v9, Landroid/content/Intent;

    #@2d
    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@30
    .line 1695
    .local v9, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "free_form"

    #@33
    .line 1696
    .local v1, "languageModel":Ljava/lang/String;
    const/4 v4, 0x0

    #@34
    .line 1697
    .local v4, "prompt":Ljava/lang/String;
    const/4 v0, 0x0

    #@35
    .line 1698
    .local v0, "language":Ljava/lang/String;
    const/4 v2, 0x1

    #@36
    .line 1700
    .local v2, "maxResults":I
    invoke-virtual {p0}, Landroid/widget/SearchView;->getResources()Landroid/content/res/Resources;

    #@39
    move-result-object v7

    #@3a
    .line 1701
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    #@3d
    move-result v10

    #@3e
    if-eqz v10, :cond_1

    #@40
    .line 1702
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    #@43
    move-result v10

    #@44
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    .line 1704
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    #@4b
    move-result v10

    #@4c
    if-eqz v10, :cond_2

    #@4e
    .line 1705
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    #@51
    move-result v10

    #@52
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    .line 1707
    .end local v4    # "prompt":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    #@59
    move-result v10

    #@5a
    if-eqz v10, :cond_3

    #@5c
    .line 1708
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    #@5f
    move-result v10

    #@60
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    .line 1710
    .end local v0    # "language":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    #@67
    move-result v10

    #@68
    if-eqz v10, :cond_4

    #@6a
    .line 1711
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    #@6d
    move-result v2

    #@6e
    .line 1713
    :cond_4
    const-string/jumbo v10, "android.speech.extra.LANGUAGE_MODEL"

    #@71
    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@74
    .line 1714
    const-string/jumbo v10, "android.speech.extra.PROMPT"

    #@77
    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@7a
    .line 1715
    const-string/jumbo v10, "android.speech.extra.LANGUAGE"

    #@7d
    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@80
    .line 1716
    const-string/jumbo v10, "android.speech.extra.MAX_RESULTS"

    #@83
    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@86
    .line 1717
    const-string/jumbo v11, "calling_package"

    #@89
    if-nez v8, :cond_5

    #@8b
    const/4 v10, 0x0

    #@8c
    :goto_0
    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@8f
    .line 1721
    const-string/jumbo v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    #@92
    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@95
    .line 1722
    const-string/jumbo v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    #@98
    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@9b
    .line 1724
    return-object v9

    #@9c
    .line 1718
    :cond_5
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@9f
    move-result-object v10

    #@a0
    goto :goto_0
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1655
    new-instance v1, Landroid/content/Intent;

    #@3
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@6
    .line 1656
    .local v1, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    #@9
    move-result-object v0

    #@a
    .line 1657
    .local v0, "searchActivity":Landroid/content/ComponentName;
    const-string/jumbo v3, "calling_package"

    #@d
    if-nez v0, :cond_0

    #@f
    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@12
    .line 1659
    return-object v1

    #@13
    .line 1658
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    goto :goto_0
.end method

.method private dismissSuggestions()V
    .locals 1

    #@0
    .prologue
    .line 1296
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    #@5
    .line 1295
    return-void
.end method

.method private forceSuggestionQuery()V
    .locals 1

    #@0
    .prologue
    .line 1784
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->doBeforeTextChanged()V

    #@5
    .line 1785
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@7
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->doAfterTextChanged()V

    #@a
    .line 1783
    return-void
.end method

.method private static getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "actionKey"    # Landroid/app/SearchableInfo$ActionKeyInfo;

    #@0
    .prologue
    .line 1164
    const/4 v1, 0x0

    #@1
    .line 1166
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1167
    .local v0, "column":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    .line 1168
    invoke-static {p0, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 1173
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    #@d
    .line 1174
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 1176
    :cond_1
    return-object v1
.end method

.method private getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 852
    iget-object v2, p0, Landroid/widget/SearchView;->mTemp:[I

    #@4
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    #@7
    .line 853
    iget-object v2, p0, Landroid/widget/SearchView;->mTemp2:[I

    #@9
    invoke-virtual {p0, v2}, Landroid/widget/SearchView;->getLocationInWindow([I)V

    #@c
    .line 854
    iget-object v2, p0, Landroid/widget/SearchView;->mTemp:[I

    #@e
    aget v2, v2, v5

    #@10
    iget-object v3, p0, Landroid/widget/SearchView;->mTemp2:[I

    #@12
    aget v3, v3, v5

    #@14
    sub-int v1, v2, v3

    #@16
    .line 855
    .local v1, "top":I
    iget-object v2, p0, Landroid/widget/SearchView;->mTemp:[I

    #@18
    aget v2, v2, v4

    #@1a
    iget-object v3, p0, Landroid/widget/SearchView;->mTemp2:[I

    #@1c
    aget v3, v3, v4

    #@1e
    sub-int v0, v2, v3

    #@20
    .line 856
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@23
    move-result v2

    #@24
    add-int/2addr v2, v0

    #@25
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@28
    move-result v3

    #@29
    add-int/2addr v3, v1

    #@2a
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@2d
    .line 851
    return-void
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1182
    iget-boolean v2, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 1183
    :cond_0
    return-object p1

    #@a
    .line 1186
    :cond_1
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@c
    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->getTextSize()F

    #@f
    move-result v2

    #@10
    float-to-double v2, v2

    #@11
    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    #@13
    mul-double/2addr v2, v4

    #@14
    double-to-int v1, v2

    #@15
    .line 1187
    .local v1, "textSize":I
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    #@17
    invoke-virtual {v2, v6, v6, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1a
    .line 1189
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@1c
    const-string/jumbo v2, "   "

    #@1f
    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@22
    .line 1190
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ImageSpan;

    #@24
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    #@26
    invoke-direct {v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    #@29
    const/4 v3, 0x1

    #@2a
    const/4 v4, 0x2

    #@2b
    const/16 v5, 0x21

    #@2d
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@30
    .line 1191
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@33
    .line 1192
    return-object v0
.end method

.method private getPreferredHeight()I
    .locals 2

    #@0
    .prologue
    .line 865
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    .line 866
    const v1, 0x1050051

    #@b
    .line 865
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    #@0
    .prologue
    .line 860
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    .line 861
    const v1, 0x1050050

    #@b
    .line 860
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method private hasVoiceSearch()Z
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 894
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@3
    if-eqz v3, :cond_3

    #@5
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@7
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_3

    #@d
    .line 895
    const/4 v1, 0x0

    #@e
    .line 896
    .local v1, "testIntent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@10
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    .line 897
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    #@18
    .line 901
    .end local v1    # "testIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    #@1a
    .line 902
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@21
    move-result-object v3

    #@22
    .line 903
    const/high16 v4, 0x10000

    #@24
    .line 902
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@27
    move-result-object v0

    #@28
    .line 904
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    #@2a
    const/4 v2, 0x1

    #@2b
    :cond_1
    return v2

    #@2c
    .line 898
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "testIntent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@2e
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_0

    #@34
    .line 899
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    #@36
    .local v1, "testIntent":Landroid/content/Intent;
    goto :goto_0

    #@37
    .line 907
    .end local v1    # "testIntent":Landroid/content/Intent;
    :cond_3
    return v2
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1789
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    #@a
    .line 1790
    const/4 v1, 0x2

    #@b
    .line 1789
    if-ne v0, v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 911
    iget-boolean v1, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    iget-boolean v1, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_2

    #@f
    :cond_1
    :goto_0
    return v0

    #@10
    :cond_2
    const/4 v0, 0x1

    #@11
    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1580
    if-nez p1, :cond_0

    #@2
    .line 1581
    return-void

    #@3
    .line 1586
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1579
    :goto_0
    return-void

    #@b
    .line 1587
    :catch_0
    move-exception v0

    #@c
    .line 1588
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "SearchView"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Failed launch activity: "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1602
    const-string/jumbo v1, "android.intent.action.SEARCH"

    #@4
    .local v1, "action":Ljava/lang/String;
    move-object v0, p0

    #@5
    move-object v3, v2

    #@6
    move-object v4, p3

    #@7
    move v5, p1

    #@8
    move-object v6, p2

    #@9
    .line 1603
    invoke-direct/range {v0 .. v6}, Landroid/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    #@c
    move-result-object v7

    #@d
    .line 1604
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@14
    .line 1601
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1563
    iget-object v2, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@2
    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    #@5
    move-result-object v0

    #@6
    .line 1564
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    #@8
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1566
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    #@11
    move-result-object v1

    #@12
    .line 1569
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    #@15
    .line 1571
    const/4 v2, 0x1

    #@16
    return v2

    #@17
    .line 1573
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    #@18
    return v2
.end method

.method private onCloseClicked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1300
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@3
    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@6
    move-result-object v0

    #@7
    .line 1301
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 1302
    iget-boolean v1, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 1304
    iget-object v1, p0, Landroid/widget/SearchView;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    #@13
    if-eqz v1, :cond_1

    #@15
    iget-object v1, p0, Landroid/widget/SearchView;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    #@17
    invoke-interface {v1}, Landroid/widget/SearchView$OnCloseListener;->onClose()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 1299
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 1306
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SearchView;->clearFocus()V

    #@21
    .line 1308
    invoke-direct {p0, v3}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@24
    goto :goto_0

    #@25
    .line 1312
    :cond_2
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@27
    const-string/jumbo v2, ""

    #@2a
    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    #@2d
    .line 1313
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2f
    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    #@32
    .line 1314
    invoke-direct {p0, v3}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    #@35
    goto :goto_0
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1477
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1478
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    #@8
    invoke-interface {v0, p1}, Landroid/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1484
    return v1

    #@f
    .line 1479
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    #@12
    .line 1480
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    #@15
    .line 1481
    invoke-direct {p0}, Landroid/widget/SearchView;->dismissSuggestions()V

    #@18
    .line 1482
    const/4 v0, 0x1

    #@19
    return v0
.end method

.method private onItemSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1488
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1489
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    #@6
    invoke-interface {v0, p1}, Landroid/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1493
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 1490
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    #@11
    .line 1491
    const/4 v0, 0x1

    #@12
    return v0
.end method

.method private onSearchClicked()V
    .locals 1

    #@0
    .prologue
    .line 1320
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@4
    .line 1321
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@6
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    #@9
    .line 1322
    const/4 v0, 0x1

    #@a
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    #@d
    .line 1323
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 1324
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    #@13
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    #@16
    .line 1319
    :cond_0
    return-void
.end method

.method private onSubmitQuery()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1282
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@4
    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@7
    move-result-object v0

    #@8
    .line 1283
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@a
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    #@d
    move-result v1

    #@e
    if-lez v1, :cond_0

    #@10
    .line 1284
    iget-object v1, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1285
    iget-object v1, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    #@16
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v1, v2}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 1281
    :cond_0
    :goto_0
    return-void

    #@21
    .line 1286
    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 1287
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {p0, v4, v3, v1}, Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    #@2c
    .line 1289
    :cond_2
    invoke-direct {p0, v4}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    #@2f
    .line 1290
    invoke-direct {p0}, Landroid/widget/SearchView;->dismissSuggestions()V

    #@32
    goto :goto_0
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/16 v9, 0x15

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v6, 0x0

    #@5
    .line 1092
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@7
    if-nez v5, :cond_0

    #@9
    .line 1093
    return v6

    #@a
    .line 1095
    :cond_0
    iget-object v5, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@c
    if-nez v5, :cond_1

    #@e
    .line 1096
    return v6

    #@f
    .line 1098
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@12
    move-result v5

    #@13
    if-nez v5, :cond_9

    #@15
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_9

    #@1b
    .line 1101
    const/16 v5, 0x42

    #@1d
    if-eq p2, v5, :cond_2

    #@1f
    const/16 v5, 0x54

    #@21
    if-ne p2, v5, :cond_3

    #@23
    .line 1103
    :cond_2
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@25
    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    #@28
    move-result v3

    #@29
    .line 1104
    .local v3, "position":I
    invoke-direct {p0, v3, v6, v7}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    #@2c
    move-result v5

    #@2d
    return v5

    #@2e
    .line 1102
    .end local v3    # "position":I
    :cond_3
    const/16 v5, 0x3d

    #@30
    if-eq p2, v5, :cond_2

    #@32
    .line 1109
    if-eq p2, v9, :cond_4

    #@34
    const/16 v5, 0x16

    #@36
    if-ne p2, v5, :cond_6

    #@38
    .line 1114
    :cond_4
    if-ne p2, v9, :cond_5

    #@3a
    const/4 v4, 0x0

    #@3b
    .line 1116
    .local v4, "selPoint":I
    :goto_0
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@3d
    invoke-virtual {v5, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    #@40
    .line 1117
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@42
    invoke-virtual {v5, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    #@45
    .line 1118
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@47
    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    #@4a
    .line 1119
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@4c
    invoke-virtual {v5, v8}, Landroid/widget/SearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    #@4f
    .line 1121
    return v8

    #@50
    .line 1114
    .end local v4    # "selPoint":I
    :cond_5
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@52
    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->length()I

    #@55
    move-result v4

    #@56
    .restart local v4    # "selPoint":I
    goto :goto_0

    #@57
    .line 1125
    .end local v4    # "selPoint":I
    :cond_6
    const/16 v5, 0x13

    #@59
    if-ne p2, v5, :cond_7

    #@5b
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@5d
    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    #@60
    move-result v5

    #@61
    if-nez v5, :cond_7

    #@63
    .line 1128
    return v6

    #@64
    .line 1132
    :cond_7
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@66
    invoke-virtual {v5, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    #@69
    move-result-object v0

    #@6a
    .line 1133
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_9

    #@6c
    .line 1134
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    if-nez v5, :cond_8

    #@72
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    if-eqz v5, :cond_9

    #@78
    .line 1137
    :cond_8
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@7a
    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    #@7d
    move-result v3

    #@7e
    .line 1138
    .restart local v3    # "position":I
    const/4 v5, -0x1

    #@7f
    if-eq v3, v5, :cond_9

    #@81
    .line 1139
    iget-object v5, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@83
    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    #@86
    move-result-object v2

    #@87
    .line 1140
    .local v2, "c":Landroid/database/Cursor;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@8a
    move-result v5

    #@8b
    if-eqz v5, :cond_9

    #@8d
    .line 1141
    invoke-static {v2, v0}, Landroid/widget/SearchView;->getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;

    #@90
    move-result-object v1

    #@91
    .line 1142
    .local v1, "actionMsg":Ljava/lang/String;
    if-eqz v1, :cond_9

    #@93
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@96
    move-result v5

    #@97
    if-lez v5, :cond_9

    #@99
    .line 1143
    invoke-direct {p0, v3, p2, v1}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    #@9c
    move-result v5

    #@9d
    return v5

    #@9e
    .line 1149
    .end local v0    # "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    .end local v1    # "actionMsg":Ljava/lang/String;
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "position":I
    :cond_9
    return v6
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "newText"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1268
    iget-object v4, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@4
    invoke-virtual {v4}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@7
    move-result-object v1

    #@8
    .line 1269
    .local v1, "text":Ljava/lang/CharSequence;
    iput-object v1, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    #@a
    .line 1270
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    move v0, v2

    #@11
    .line 1271
    .local v0, "hasText":Z
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateSubmitButton(Z)V

    #@14
    .line 1272
    if-eqz v0, :cond_2

    #@16
    :goto_1
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->updateVoiceButton(Z)V

    #@19
    .line 1273
    invoke-direct {p0}, Landroid/widget/SearchView;->updateCloseButton()V

    #@1c
    .line 1274
    invoke-direct {p0}, Landroid/widget/SearchView;->updateSubmitArea()V

    #@1f
    .line 1275
    iget-object v2, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    #@21
    if-eqz v2, :cond_0

    #@23
    iget-object v2, p0, Landroid/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    #@25
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_3

    #@2b
    .line 1278
    :cond_0
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    iput-object v2, p0, Landroid/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    #@31
    .line 1267
    return-void

    #@32
    .end local v0    # "hasText":Z
    :cond_1
    move v0, v3

    #@33
    .line 1270
    goto :goto_0

    #@34
    .restart local v0    # "hasText":Z
    :cond_2
    move v2, v3

    #@35
    .line 1272
    goto :goto_1

    #@36
    .line 1276
    :cond_3
    iget-object v2, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    #@38
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-interface {v2, v3}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    #@3f
    goto :goto_2
.end method

.method private onVoiceClicked()V
    .locals 6

    #@0
    .prologue
    .line 1330
    iget-object v4, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 1331
    return-void

    #@5
    .line 1333
    :cond_0
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@7
    .line 1335
    .local v2, "searchable":Landroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_2

    #@d
    .line 1336
    iget-object v4, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    #@f
    invoke-direct {p0, v4, v2}, Landroid/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    #@12
    move-result-object v3

    #@13
    .line 1338
    .local v3, "webSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@1a
    .line 1328
    .end local v3    # "webSearchIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    #@1b
    .line 1339
    :cond_2
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 1340
    iget-object v4, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    #@23
    invoke-direct {p0, v4, v2}, Landroid/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    #@26
    move-result-object v0

    #@27
    .line 1342
    .local v0, "appSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    goto :goto_0

    #@2f
    .line 1344
    .end local v0    # "appSearchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    #@30
    .line 1347
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "SearchView"

    #@33
    const-string/jumbo v5, "Could not find voice search activity"

    #@36
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    goto :goto_0
.end method

.method private postUpdateFocusedState()V
    .locals 1

    #@0
    .prologue
    .line 946
    iget-object v0, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    #@5
    .line 945
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1530
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@5
    move-result-object v2

    #@6
    .line 1531
    .local v2, "oldQuery":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@8
    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    #@b
    move-result-object v0

    #@c
    .line 1532
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    #@e
    .line 1533
    return-void

    #@f
    .line 1535
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_2

    #@15
    .line 1537
    iget-object v3, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@17
    invoke-virtual {v3, v0}, Landroid/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    #@1a
    move-result-object v1

    #@1b
    .line 1538
    .local v1, "newQuery":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    #@1d
    .line 1541
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    #@20
    .line 1529
    .end local v1    # "newQuery":Ljava/lang/CharSequence;
    :goto_0
    return-void

    #@21
    .line 1544
    .restart local v1    # "newQuery":Ljava/lang/CharSequence;
    :cond_1
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    #@24
    goto :goto_0

    #@25
    .line 1548
    .end local v1    # "newQuery":Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    #@28
    goto :goto_0
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 971
    if-eqz p1, :cond_1

    #@2
    .line 972
    iget-object v1, p0, Landroid/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    #@7
    .line 970
    :cond_0
    :goto_0
    return-void

    #@8
    .line 974
    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    #@a
    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@d
    .line 975
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@10
    move-result-object v1

    #@11
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    #@13
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@19
    .line 977
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    #@1b
    .line 978
    invoke-virtual {p0}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    #@1e
    move-result-object v1

    #@1f
    const/4 v2, 0x0

    #@20
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@23
    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1596
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;Z)V

    #@6
    .line 1598
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v0, 0x0

    #@f
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    #@12
    .line 1595
    return-void

    #@13
    .line 1598
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@16
    move-result v0

    #@17
    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 934
    iget-object v4, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@3
    invoke-virtual {v4}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@6
    move-result-object v4

    #@7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_2

    #@d
    move v1, v3

    #@e
    .line 937
    .local v1, "hasText":Z
    :goto_0
    if-nez v1, :cond_3

    #@10
    iget-boolean v4, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@12
    if-eqz v4, :cond_0

    #@14
    iget-boolean v4, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    #@16
    if-eqz v4, :cond_3

    #@18
    :cond_0
    const/4 v2, 0x0

    #@19
    .line 938
    .local v2, "showClose":Z
    :goto_1
    iget-object v4, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    #@1b
    if-eqz v2, :cond_4

    #@1d
    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    #@20
    .line 939
    iget-object v3, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    #@22
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object v0

    #@26
    .line 940
    .local v0, "closeButtonImg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@28
    .line 941
    if-eqz v1, :cond_5

    #@2a
    sget-object v3, Landroid/widget/SearchView;->ENABLED_STATE_SET:[I

    #@2c
    :goto_3
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@2f
    .line 933
    :cond_1
    return-void

    #@30
    .line 934
    .end local v0    # "closeButtonImg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasText":Z
    .end local v2    # "showClose":Z
    :cond_2
    const/4 v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 937
    .restart local v1    # "hasText":Z
    :cond_3
    const/4 v2, 0x1

    #@33
    .restart local v2    # "showClose":Z
    goto :goto_1

    #@34
    .line 938
    :cond_4
    const/16 v3, 0x8

    #@36
    goto :goto_2

    #@37
    .line 941
    .restart local v0    # "closeButtonImg":Landroid/graphics/drawable/Drawable;
    :cond_5
    sget-object v3, Landroid/widget/SearchView;->EMPTY_STATE_SET:[I

    #@39
    goto :goto_3
.end method

.method private updateFocusedState()V
    .locals 5

    #@0
    .prologue
    .line 950
    iget-object v4, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v4}, Landroid/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    #@5
    move-result v0

    #@6
    .line 951
    .local v0, "focused":Z
    if-eqz v0, :cond_2

    #@8
    sget-object v2, Landroid/widget/SearchView;->FOCUSED_STATE_SET:[I

    #@a
    .line 952
    .local v2, "stateSet":[I
    :goto_0
    iget-object v4, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    #@c
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v1

    #@10
    .line 953
    .local v1, "searchPlateBg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    #@12
    .line 954
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@15
    .line 956
    :cond_0
    iget-object v4, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    #@17
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@1a
    move-result-object v3

    #@1b
    .line 957
    .local v3, "submitAreaBg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    #@1d
    .line 958
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@20
    .line 960
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SearchView;->invalidate()V

    #@23
    .line 949
    return-void

    #@24
    .line 951
    .end local v1    # "searchPlateBg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "stateSet":[I
    .end local v3    # "submitAreaBg":Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-object v2, Landroid/widget/SearchView;->EMPTY_STATE_SET:[I

    #@26
    .restart local v2    # "stateSet":[I
    goto :goto_0
.end method

.method private updateQueryHint()V
    .locals 3

    #@0
    .prologue
    .line 1196
    invoke-virtual {p0}, Landroid/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    .line 1197
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@6
    if-nez v0, :cond_0

    #@8
    const-string/jumbo v0, ""

    #@b
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_0
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    #@12
    .line 1195
    return-void
.end method

.method private updateSearchAutoComplete()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1204
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@4
    const/4 v3, 0x0

    #@5
    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownAnimationStyle(I)V

    #@8
    .line 1205
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@a
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@c
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    #@f
    move-result v3

    #@10
    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    #@13
    .line 1206
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@15
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@17
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    #@1e
    .line 1207
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@20
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    #@23
    move-result v0

    #@24
    .line 1210
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    #@26
    if-ne v1, v2, :cond_0

    #@28
    .line 1213
    const v1, -0x10001

    #@2b
    and-int/2addr v0, v1

    #@2c
    .line 1214
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@2e
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    if-eqz v1, :cond_0

    #@34
    .line 1215
    const/high16 v1, 0x10000

    #@36
    or-int/2addr v0, v1

    #@37
    .line 1222
    const/high16 v1, 0x80000

    #@39
    or-int/2addr v0, v1

    #@3a
    .line 1225
    :cond_0
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@3c
    invoke-virtual {v1, v0}, Landroid/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    #@3f
    .line 1226
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@41
    if-eqz v1, :cond_1

    #@43
    .line 1227
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@45
    invoke-virtual {v1, v4}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    #@48
    .line 1231
    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@4a
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    if-eqz v1, :cond_3

    #@50
    .line 1232
    new-instance v1, Landroid/widget/SuggestionsAdapter;

    #@52
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@55
    move-result-object v3

    #@56
    .line 1233
    iget-object v4, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@58
    iget-object v5, p0, Landroid/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@5a
    .line 1232
    invoke-direct {v1, v3, p0, v4, v5}, Landroid/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    #@5d
    iput-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@5f
    .line 1234
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@61
    iget-object v3, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@63
    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    #@66
    .line 1235
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@68
    check-cast v1, Landroid/widget/SuggestionsAdapter;

    #@6a
    .line 1236
    iget-boolean v3, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    #@6c
    if-eqz v3, :cond_2

    #@6e
    const/4 v2, 0x2

    #@6f
    .line 1235
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    #@72
    .line 1203
    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    #@0
    .prologue
    .line 924
    const/16 v0, 0x8

    #@2
    .line 925
    .local v0, "visibility":I
    invoke-direct {p0}, Landroid/widget/SearchView;->isSubmitAreaEnabled()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 926
    iget-object v1, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    #@a
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 927
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    #@12
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_1

    #@18
    .line 928
    :cond_0
    const/4 v0, 0x0

    #@19
    .line 930
    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    #@1b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    #@1e
    .line 923
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .param p1, "hasText"    # Z

    #@0
    .prologue
    .line 915
    const/16 v0, 0x8

    #@2
    .line 916
    .local v0, "visibility":I
    iget-boolean v1, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    invoke-direct {p0}, Landroid/widget/SearchView;->isSubmitAreaEnabled()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    invoke-virtual {p0}, Landroid/widget/SearchView;->hasFocus()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 917
    if-nez p1, :cond_1

    #@14
    iget-boolean v1, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 920
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    #@1a
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    #@1d
    .line 914
    return-void

    #@1e
    .line 918
    :cond_1
    const/4 v0, 0x0

    #@1f
    goto :goto_0
.end method

.method private updateViewsVisibility(Z)V
    .locals 6
    .param p1, "collapsed"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 870
    iput-boolean p1, p0, Landroid/widget/SearchView;->mIconified:Z

    #@3
    .line 872
    if-eqz p1, :cond_1

    #@5
    const/4 v2, 0x0

    #@6
    .line 874
    .local v2, "visCollapsed":I
    :goto_0
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@8
    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@b
    move-result-object v3

    #@c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_2

    #@12
    const/4 v0, 0x0

    #@13
    .line 876
    .local v0, "hasText":Z
    :goto_1
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    #@15
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    #@18
    .line 877
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateSubmitButton(Z)V

    #@1b
    .line 878
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    #@1d
    if-eqz p1, :cond_3

    #@1f
    const/16 v3, 0x8

    #@21
    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    #@24
    .line 881
    iget-object v3, p0, Landroid/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    #@26
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@29
    move-result-object v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    iget-boolean v3, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@2e
    if-eqz v3, :cond_4

    #@30
    .line 882
    :cond_0
    const/16 v1, 0x8

    #@32
    .line 886
    .local v1, "iconVisibility":I
    :goto_3
    iget-object v3, p0, Landroid/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    #@34
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@37
    .line 888
    invoke-direct {p0}, Landroid/widget/SearchView;->updateCloseButton()V

    #@3a
    .line 889
    if-eqz v0, :cond_5

    #@3c
    :goto_4
    invoke-direct {p0, v4}, Landroid/widget/SearchView;->updateVoiceButton(Z)V

    #@3f
    .line 890
    invoke-direct {p0}, Landroid/widget/SearchView;->updateSubmitArea()V

    #@42
    .line 869
    return-void

    #@43
    .line 872
    .end local v0    # "hasText":Z
    .end local v1    # "iconVisibility":I
    .end local v2    # "visCollapsed":I
    :cond_1
    const/16 v2, 0x8

    #@45
    .restart local v2    # "visCollapsed":I
    goto :goto_0

    #@46
    .line 874
    :cond_2
    const/4 v0, 0x1

    #@47
    .restart local v0    # "hasText":Z
    goto :goto_1

    #@48
    :cond_3
    move v3, v4

    #@49
    .line 878
    goto :goto_2

    #@4a
    .line 884
    :cond_4
    const/4 v1, 0x0

    #@4b
    .restart local v1    # "iconVisibility":I
    goto :goto_3

    #@4c
    .line 889
    :cond_5
    const/4 v4, 0x1

    #@4d
    goto :goto_4
.end method

.method private updateVoiceButton(Z)V
    .locals 3
    .param p1, "empty"    # Z

    #@0
    .prologue
    .line 1248
    const/16 v0, 0x8

    #@2
    .line 1249
    .local v0, "visibility":I
    iget-boolean v1, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 1253
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    #@e
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    #@11
    .line 1247
    return-void

    #@12
    .line 1249
    :cond_1
    if-eqz p1, :cond_0

    #@14
    .line 1250
    const/4 v0, 0x0

    #@15
    .line 1251
    iget-object v1, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    #@17
    const/16 v2, 0x8

    #@19
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    #@1c
    goto :goto_0
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 499
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    #@4
    .line 500
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    #@7
    .line 501
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    #@a
    .line 502
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@c
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->clearFocus()V

    #@f
    .line 503
    iput-boolean v1, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    #@11
    .line 498
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1449
    const-class v0, Landroid/widget/SearchView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    #@0
    .prologue
    .line 452
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInputType()I
    .locals 1

    #@0
    .prologue
    .line 474
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getInputType()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    #@0
    .prologue
    .line 778
    iget v0, p0, Landroid/widget/SearchView;->mMaxWidth:I

    #@2
    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 561
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 3

    #@0
    .prologue
    .line 620
    iget-object v1, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 621
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    #@6
    .line 627
    .local v0, "hint":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    #@7
    .line 622
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@9
    if-eqz v1, :cond_1

    #@b
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@d
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 623
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@19
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@20
    move-result-object v0

    #@21
    .restart local v0    # "hint":Ljava/lang/CharSequence;
    goto :goto_0

    #@22
    .line 625
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Landroid/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    #@24
    .restart local v0    # "hint":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    #@0
    .prologue
    .line 395
    iget v0, p0, Landroid/widget/SearchView;->mSuggestionCommitIconResId:I

    #@2
    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    #@0
    .prologue
    .line 391
    iget v0, p0, Landroid/widget/SearchView;->mSuggestionRowLayout:I

    #@2
    return v0
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    #@0
    .prologue
    .line 756
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@2
    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    #@0
    .prologue
    .line 656
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@2
    return v0
.end method

.method public isIconified()Z
    .locals 1

    #@0
    .prologue
    .line 684
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconified:Z

    #@2
    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 736
    iget-boolean v0, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    #@2
    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 706
    iget-boolean v0, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    #@2
    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1373
    const-string/jumbo v0, ""

    #@4
    invoke-virtual {p0, v0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    #@7
    .line 1374
    invoke-virtual {p0}, Landroid/widget/SearchView;->clearFocus()V

    #@a
    .line 1375
    const/4 v0, 0x1

    #@b
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@e
    .line 1376
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@10
    iget v1, p0, Landroid/widget/SearchView;->mCollapsedImeOptions:I

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    #@15
    .line 1377
    iput-boolean v2, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    #@17
    .line 1372
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    #@0
    .prologue
    .line 1385
    iget-boolean v0, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 1387
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    #@8
    .line 1388
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@a
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/widget/SearchView;->mCollapsedImeOptions:I

    #@10
    .line 1389
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@12
    iget v1, p0, Landroid/widget/SearchView;->mCollapsedImeOptions:I

    #@14
    const/high16 v2, 0x2000000

    #@16
    or-int/2addr v1, v2

    #@17
    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    #@1a
    .line 1390
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@1c
    const-string/jumbo v1, ""

    #@1f
    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    #@22
    .line 1391
    const/4 v0, 0x0

    #@23
    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    #@26
    .line 1384
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 965
    iget-object v0, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    .line 966
    iget-object v0, p0, Landroid/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    #@7
    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 967
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    #@d
    .line 964
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1019
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1020
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 1025
    :cond_0
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@8
    invoke-virtual {v1, p1}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    #@b
    move-result-object v0

    #@c
    .line 1026
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_1

    #@e
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1027
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@1a
    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@1d
    move-result-object v2

    #@1e
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    #@25
    .line 1029
    const/4 v1, 0x1

    #@26
    return v1

    #@27
    .line 1032
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@2a
    move-result v1

    #@2b
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 833
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    #@3
    .line 835
    if-eqz p1, :cond_0

    #@5
    .line 838
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@7
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    #@9
    invoke-direct {p0, v0, v1}, Landroid/widget/SearchView;->getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V

    #@c
    .line 839
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    #@e
    .line 840
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    #@10
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@12
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    #@14
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@16
    sub-int v3, p5, p3

    #@18
    const/4 v4, 0x0

    #@19
    .line 839
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@1c
    .line 841
    iget-object v0, p0, Landroid/widget/SearchView;->mTouchDelegate:Landroid/widget/SearchView$UpdatableTouchDelegate;

    #@1e
    if-nez v0, :cond_1

    #@20
    .line 842
    new-instance v0, Landroid/widget/SearchView$UpdatableTouchDelegate;

    #@22
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    #@24
    .line 843
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    #@26
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@28
    .line 842
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/SearchView$UpdatableTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    #@2b
    iput-object v0, p0, Landroid/widget/SearchView;->mTouchDelegate:Landroid/widget/SearchView$UpdatableTouchDelegate;

    #@2d
    .line 844
    iget-object v0, p0, Landroid/widget/SearchView;->mTouchDelegate:Landroid/widget/SearchView$UpdatableTouchDelegate;

    #@2f
    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    #@32
    .line 832
    :cond_0
    :goto_0
    return-void

    #@33
    .line 846
    :cond_1
    iget-object v0, p0, Landroid/widget/SearchView;->mTouchDelegate:Landroid/widget/SearchView$UpdatableTouchDelegate;

    #@35
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    #@37
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    #@39
    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@3c
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 784
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 785
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@9
    .line 786
    return-void

    #@a
    .line 789
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@d
    move-result v3

    #@e
    .line 790
    .local v3, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@11
    move-result v2

    #@12
    .line 792
    .local v2, "width":I
    sparse-switch v3, :sswitch_data_0

    #@15
    .line 812
    :cond_1
    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    #@17
    .line 814
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@1a
    move-result v1

    #@1b
    .line 815
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@1e
    move-result v0

    #@1f
    .line 817
    .local v0, "height":I
    sparse-switch v1, :sswitch_data_1

    #@22
    .line 825
    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    #@24
    .line 827
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@27
    move-result v4

    #@28
    .line 828
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2b
    move-result v5

    #@2c
    .line 827
    invoke-super {p0, v4, v5}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@2f
    .line 782
    return-void

    #@30
    .line 795
    .end local v0    # "height":I
    .end local v1    # "heightMode":I
    :sswitch_0
    iget v4, p0, Landroid/widget/SearchView;->mMaxWidth:I

    #@32
    if-lez v4, :cond_2

    #@34
    .line 796
    iget v4, p0, Landroid/widget/SearchView;->mMaxWidth:I

    #@36
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    #@39
    move-result v2

    #@3a
    goto :goto_0

    #@3b
    .line 798
    :cond_2
    invoke-direct {p0}, Landroid/widget/SearchView;->getPreferredWidth()I

    #@3e
    move-result v4

    #@3f
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    #@42
    move-result v2

    #@43
    goto :goto_0

    #@44
    .line 803
    :sswitch_1
    iget v4, p0, Landroid/widget/SearchView;->mMaxWidth:I

    #@46
    if-lez v4, :cond_1

    #@48
    .line 804
    iget v4, p0, Landroid/widget/SearchView;->mMaxWidth:I

    #@4a
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    #@4d
    move-result v2

    #@4e
    goto :goto_0

    #@4f
    .line 809
    :sswitch_2
    iget v4, p0, Landroid/widget/SearchView;->mMaxWidth:I

    #@51
    if-lez v4, :cond_3

    #@53
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    #@55
    goto :goto_0

    #@56
    :cond_3
    invoke-direct {p0}, Landroid/widget/SearchView;->getPreferredWidth()I

    #@59
    move-result v2

    #@5a
    goto :goto_0

    #@5b
    .line 819
    .restart local v0    # "height":I
    .restart local v1    # "heightMode":I
    :sswitch_3
    invoke-direct {p0}, Landroid/widget/SearchView;->getPreferredHeight()I

    #@5e
    move-result v4

    #@5f
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    #@62
    move-result v0

    #@63
    goto :goto_1

    #@64
    .line 822
    :sswitch_4
    invoke-direct {p0}, Landroid/widget/SearchView;->getPreferredHeight()I

    #@67
    move-result v0

    #@68
    goto :goto_1

    #@69
    .line 792
    nop

    #@6a
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch

    #@78
    .line 817
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_4
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "queryText"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 988
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    #@3
    .line 987
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 1441
    check-cast v0, Landroid/widget/SearchView$SavedState;

    #@3
    .line 1442
    .local v0, "ss":Landroid/widget/SearchView$SavedState;
    invoke-virtual {v0}, Landroid/widget/SearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v1

    #@7
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 1443
    iget-boolean v1, v0, Landroid/widget/SearchView$SavedState;->isIconified:Z

    #@c
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@f
    .line 1444
    invoke-virtual {p0}, Landroid/widget/SearchView;->requestLayout()V

    #@12
    .line 1440
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 1433
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 1434
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/SearchView$SavedState;

    #@6
    invoke-direct {v0, v1}, Landroid/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 1435
    .local v0, "ss":Landroid/widget/SearchView$SavedState;
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    #@c
    move-result v2

    #@d
    iput-boolean v2, v0, Landroid/widget/SearchView$SavedState;->isIconified:Z

    #@f
    .line 1436
    return-object v0
.end method

.method onTextFocusChanged()V
    .locals 1

    #@0
    .prologue
    .line 1352
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@7
    .line 1355
    invoke-direct {p0}, Landroid/widget/SearchView;->postUpdateFocusedState()V

    #@a
    .line 1356
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@c
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1357
    invoke-direct {p0}, Landroid/widget/SearchView;->forceSuggestionQuery()V

    #@15
    .line 1351
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    .line 1363
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    #@3
    .line 1365
    invoke-direct {p0}, Landroid/widget/SearchView;->postUpdateFocusedState()V

    #@6
    .line 1362
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 481
    iget-boolean v1, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    return v2

    #@6
    .line 483
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SearchView;->isFocusable()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_1

    #@c
    return v2

    #@d
    .line 485
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_3

    #@13
    .line 486
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@15
    invoke-virtual {v1, p1, p2}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    #@18
    move-result v0

    #@19
    .line 487
    .local v0, "result":Z
    if-eqz v0, :cond_2

    #@1b
    .line 488
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@1e
    .line 490
    :cond_2
    return v0

    #@1f
    .line 492
    .end local v0    # "result":Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    #@22
    move-result v1

    #@23
    return v1
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "appSearchData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 429
    iput-object p1, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    #@2
    .line 428
    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .param p1, "iconify"    # Z

    #@0
    .prologue
    .line 670
    if-eqz p1, :cond_0

    #@2
    .line 671
    invoke-direct {p0}, Landroid/widget/SearchView;->onCloseClicked()V

    #@5
    .line 669
    :goto_0
    return-void

    #@6
    .line 673
    :cond_0
    invoke-direct {p0}, Landroid/widget/SearchView;->onSearchClicked()V

    #@9
    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .param p1, "iconified"    # Z

    #@0
    .prologue
    .line 643
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    return-void

    #@5
    .line 644
    :cond_0
    iput-boolean p1, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@7
    .line 645
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@a
    .line 646
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    #@d
    .line 642
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    #@0
    .prologue
    .line 441
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    #@5
    .line 440
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    #@0
    .prologue
    .line 464
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    #@5
    .line 463
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    #@0
    .prologue
    .line 765
    iput p1, p0, Landroid/widget/SearchView;->mMaxWidth:I

    #@2
    .line 767
    invoke-virtual {p0}, Landroid/widget/SearchView;->requestLayout()V

    #@5
    .line 764
    return-void
.end method

.method public setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SearchView$OnCloseListener;

    #@0
    .prologue
    .line 522
    iput-object p1, p0, Landroid/widget/SearchView;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    #@2
    .line 521
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    #@0
    .prologue
    .line 531
    iput-object p1, p0, Landroid/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    #@2
    .line 530
    return-void
.end method

.method public setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;

    #@0
    .prologue
    .line 513
    iput-object p1, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    #@2
    .line 512
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    .line 552
    iput-object p1, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    #@2
    .line 551
    return-void
.end method

.method public setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SearchView$OnSuggestionListener;

    #@0
    .prologue
    .line 540
    iput-object p1, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    #@2
    .line 539
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    #@0
    .prologue
    .line 573
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    #@5
    .line 574
    if-eqz p1, :cond_0

    #@7
    .line 575
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@9
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@b
    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->length()I

    #@e
    move-result v1

    #@f
    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    #@12
    .line 576
    iput-object p1, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    #@14
    .line 580
    :cond_0
    if-eqz p2, :cond_1

    #@16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 572
    :cond_1
    :goto_0
    return-void

    #@1d
    .line 581
    :cond_2
    invoke-direct {p0}, Landroid/widget/SearchView;->onSubmitQuery()V

    #@20
    goto :goto_0
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 596
    iput-object p1, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    #@2
    .line 597
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    #@5
    .line 595
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 724
    iput-boolean p1, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    #@2
    .line 725
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@4
    instance-of v0, v0, Landroid/widget/SuggestionsAdapter;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 726
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@a
    check-cast v0, Landroid/widget/SuggestionsAdapter;

    #@c
    .line 727
    if-eqz p1, :cond_1

    #@e
    const/4 v1, 0x2

    #@f
    .line 726
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    #@12
    .line 723
    :cond_0
    return-void

    #@13
    .line 727
    :cond_1
    const/4 v1, 0x1

    #@14
    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2
    .param p1, "searchable"    # Landroid/app/SearchableInfo;

    #@0
    .prologue
    .line 407
    iput-object p1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@2
    .line 408
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 409
    invoke-direct {p0}, Landroid/widget/SearchView;->updateSearchAutoComplete()V

    #@9
    .line 410
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    #@c
    .line 413
    :cond_0
    invoke-direct {p0}, Landroid/widget/SearchView;->hasVoiceSearch()Z

    #@f
    move-result v0

    #@10
    iput-boolean v0, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    #@12
    .line 415
    iget-boolean v0, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 418
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@18
    const-string/jumbo v1, "nm"

    #@1b
    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    #@1e
    .line 420
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    #@21
    move-result v0

    #@22
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@25
    .line 406
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 696
    iput-boolean p1, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    #@2
    .line 697
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    #@5
    move-result v0

    #@6
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@9
    .line 695
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/CursorAdapter;

    #@0
    .prologue
    .line 746
    iput-object p1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@2
    .line 748
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@4
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@6
    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    #@9
    .line 745
    return-void
.end method
