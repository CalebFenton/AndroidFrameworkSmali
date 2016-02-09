.class public Landroid/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SearchView$OnQueryTextListener;,
        Landroid/widget/SearchView$OnCloseListener;,
        Landroid/widget/SearchView$OnSuggestionListener;,
        Landroid/widget/SearchView$SearchAutoComplete;,
        Landroid/widget/SearchView$1;,
        Landroid/widget/SearchView$2;,
        Landroid/widget/SearchView$3;,
        Landroid/widget/SearchView$4;,
        Landroid/widget/SearchView$5;,
        Landroid/widget/SearchView$6;,
        Landroid/widget/SearchView$7;,
        Landroid/widget/SearchView$8;,
        Landroid/widget/SearchView$9;
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

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field private mSuggestionsAdapter:Landroid/widget/CursorAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

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
    .line 251
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 255
    const v0, 0x1010480

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 259
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 258
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
    .line 263
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 153
    new-instance v7, Landroid/widget/SearchView$1;

    #@5
    invoke-direct {v7, p0}, Landroid/widget/SearchView$1;-><init>(Landroid/widget/SearchView;)V

    #@8
    iput-object v7, p0, Landroid/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    #@a
    .line 164
    new-instance v7, Landroid/widget/SearchView$2;

    #@c
    invoke-direct {v7, p0}, Landroid/widget/SearchView$2;-><init>(Landroid/widget/SearchView;)V

    #@f
    iput-object v7, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    #@11
    .line 170
    new-instance v7, Landroid/widget/SearchView$3;

    #@13
    invoke-direct {v7, p0}, Landroid/widget/SearchView$3;-><init>(Landroid/widget/SearchView;)V

    #@16
    iput-object v7, p0, Landroid/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    #@18
    .line 181
    new-instance v7, Ljava/util/WeakHashMap;

    #@1a
    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    #@1d
    .line 180
    iput-object v7, p0, Landroid/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@1f
    .line 924
    new-instance v7, Landroid/widget/SearchView$4;

    #@21
    invoke-direct {v7, p0}, Landroid/widget/SearchView$4;-><init>(Landroid/widget/SearchView;)V

    #@24
    iput-object v7, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@26
    .line 973
    new-instance v7, Landroid/widget/SearchView$5;

    #@28
    invoke-direct {v7, p0}, Landroid/widget/SearchView$5;-><init>(Landroid/widget/SearchView;)V

    #@2b
    iput-object v7, p0, Landroid/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    #@2d
    .line 1189
    new-instance v7, Landroid/widget/SearchView$6;

    #@2f
    invoke-direct {v7, p0}, Landroid/widget/SearchView$6;-><init>(Landroid/widget/SearchView;)V

    #@32
    iput-object v7, p0, Landroid/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@34
    .line 1376
    new-instance v7, Landroid/widget/SearchView$7;

    #@36
    invoke-direct {v7, p0}, Landroid/widget/SearchView$7;-><init>(Landroid/widget/SearchView;)V

    #@39
    iput-object v7, p0, Landroid/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@3b
    .line 1387
    new-instance v7, Landroid/widget/SearchView$8;

    #@3d
    invoke-direct {v7, p0}, Landroid/widget/SearchView$8;-><init>(Landroid/widget/SearchView;)V

    #@40
    iput-object v7, p0, Landroid/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@42
    .line 1676
    new-instance v7, Landroid/widget/SearchView$9;

    #@44
    invoke-direct {v7, p0}, Landroid/widget/SearchView$9;-><init>(Landroid/widget/SearchView;)V

    #@47
    iput-object v7, p0, Landroid/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    #@49
    .line 266
    sget-object v7, Lcom/android/internal/R$styleable;->SearchView:[I

    #@4b
    .line 265
    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@4e
    move-result-object v0

    #@4f
    .line 268
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string/jumbo v7, "layout_inflater"

    #@52
    .line 267
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@55
    move-result-object v3

    #@56
    check-cast v3, Landroid/view/LayoutInflater;

    #@58
    .line 270
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v7, 0x1

    #@59
    const v8, 0x10900d1

    #@5c
    .line 269
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@5f
    move-result v5

    #@60
    .line 271
    .local v5, "layoutResId":I
    const/4 v7, 0x1

    #@61
    invoke-virtual {v3, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@64
    .line 273
    const v7, 0x10203bc

    #@67
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@6a
    move-result-object v7

    #@6b
    check-cast v7, Landroid/widget/SearchView$SearchAutoComplete;

    #@6d
    iput-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@6f
    .line 274
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@71
    invoke-virtual {v7, p0}, Landroid/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/widget/SearchView;)V

    #@74
    .line 276
    const v7, 0x10203b9

    #@77
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@7a
    move-result-object v7

    #@7b
    iput-object v7, p0, Landroid/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    #@7d
    .line 277
    const v7, 0x10203bb

    #@80
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@83
    move-result-object v7

    #@84
    iput-object v7, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    #@86
    .line 278
    const v7, 0x10203be

    #@89
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@8c
    move-result-object v7

    #@8d
    iput-object v7, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    #@8f
    .line 279
    const v7, 0x10203b8

    #@92
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@95
    move-result-object v7

    #@96
    check-cast v7, Landroid/widget/ImageView;

    #@98
    iput-object v7, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    #@9a
    .line 280
    const v7, 0x10203bf

    #@9d
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@a0
    move-result-object v7

    #@a1
    check-cast v7, Landroid/widget/ImageView;

    #@a3
    iput-object v7, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    #@a5
    .line 281
    const v7, 0x10203bd

    #@a8
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@ab
    move-result-object v7

    #@ac
    check-cast v7, Landroid/widget/ImageView;

    #@ae
    iput-object v7, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    #@b0
    .line 282
    const v7, 0x10203c0

    #@b3
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@b6
    move-result-object v7

    #@b7
    check-cast v7, Landroid/widget/ImageView;

    #@b9
    iput-object v7, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    #@bb
    .line 283
    const v7, 0x10203ba

    #@be
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@c1
    move-result-object v7

    #@c2
    check-cast v7, Landroid/widget/ImageView;

    #@c4
    iput-object v7, p0, Landroid/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    #@c6
    .line 286
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    #@c8
    const/16 v8, 0xd

    #@ca
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@cd
    move-result-object v8

    #@ce
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@d1
    .line 287
    iget-object v7, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    #@d3
    const/16 v8, 0xe

    #@d5
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@d8
    move-result-object v8

    #@d9
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@dc
    .line 288
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    #@de
    const/16 v8, 0x9

    #@e0
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@e3
    move-result-object v8

    #@e4
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@e7
    .line 289
    iget-object v7, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    #@e9
    const/16 v8, 0x8

    #@eb
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@ee
    move-result-object v8

    #@ef
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f2
    .line 290
    iget-object v7, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    #@f4
    const/4 v8, 0x7

    #@f5
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@f8
    move-result-object v8

    #@f9
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@fc
    .line 291
    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    #@fe
    const/16 v8, 0xa

    #@100
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@103
    move-result-object v8

    #@104
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@107
    .line 292
    iget-object v7, p0, Landroid/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    #@109
    const/16 v8, 0x9

    #@10b
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@10e
    move-result-object v8

    #@10f
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@112
    .line 296
    const/16 v7, 0xf

    #@114
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@117
    move-result v7

    #@118
    if-eqz v7, :cond_4

    #@11a
    .line 297
    const/16 v7, 0xf

    #@11c
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@11f
    move-result-object v7

    #@120
    iput-object v7, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    #@122
    .line 303
    :goto_0
    const/16 v7, 0xc

    #@124
    .line 304
    const v8, 0x10900d0

    #@127
    .line 303
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@12a
    move-result v7

    #@12b
    iput v7, p0, Landroid/widget/SearchView;->mSuggestionRowLayout:I

    #@12d
    .line 305
    const/16 v7, 0xb

    #@12f
    const/4 v8, 0x0

    #@130
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@133
    move-result v7

    #@134
    iput v7, p0, Landroid/widget/SearchView;->mSuggestionCommitIconResId:I

    #@136
    .line 307
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    #@138
    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@13a
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@13d
    .line 308
    iget-object v7, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    #@13f
    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@141
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@144
    .line 309
    iget-object v7, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    #@146
    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@148
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@14b
    .line 310
    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    #@14d
    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@14f
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@152
    .line 311
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@154
    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@156
    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@159
    .line 313
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@15b
    iget-object v8, p0, Landroid/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    #@15d
    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@160
    .line 314
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@162
    iget-object v8, p0, Landroid/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@164
    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    #@167
    .line 315
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@169
    iget-object v8, p0, Landroid/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@16b
    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@16e
    .line 316
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@170
    iget-object v8, p0, Landroid/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@172
    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@175
    .line 317
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@177
    iget-object v8, p0, Landroid/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    #@179
    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@17c
    .line 320
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@17e
    new-instance v8, Landroid/widget/SearchView$10;

    #@180
    invoke-direct {v8, p0}, Landroid/widget/SearchView$10;-><init>(Landroid/widget/SearchView;)V

    #@183
    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@186
    .line 328
    const/4 v7, 0x5

    #@187
    const/4 v8, 0x1

    #@188
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@18b
    move-result v7

    #@18c
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    #@18f
    .line 330
    const/4 v7, 0x2

    #@190
    const/4 v8, -0x1

    #@191
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@194
    move-result v6

    #@195
    .line 331
    .local v6, "maxWidth":I
    const/4 v7, -0x1

    #@196
    if-eq v6, v7, :cond_0

    #@198
    .line 332
    invoke-virtual {p0, v6}, Landroid/widget/SearchView;->setMaxWidth(I)V

    #@19b
    .line 335
    :cond_0
    const/16 v7, 0x10

    #@19d
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@1a0
    move-result-object v7

    #@1a1
    iput-object v7, p0, Landroid/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    #@1a3
    .line 336
    const/4 v7, 0x6

    #@1a4
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@1a7
    move-result-object v7

    #@1a8
    iput-object v7, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    #@1aa
    .line 338
    const/4 v7, 0x4

    #@1ab
    const/4 v8, -0x1

    #@1ac
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1af
    move-result v2

    #@1b0
    .line 339
    .local v2, "imeOptions":I
    const/4 v7, -0x1

    #@1b1
    if-eq v2, v7, :cond_1

    #@1b3
    .line 340
    invoke-virtual {p0, v2}, Landroid/widget/SearchView;->setImeOptions(I)V

    #@1b6
    .line 343
    :cond_1
    const/4 v7, 0x3

    #@1b7
    const/4 v8, -0x1

    #@1b8
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1bb
    move-result v4

    #@1bc
    .line 344
    .local v4, "inputType":I
    const/4 v7, -0x1

    #@1bd
    if-eq v4, v7, :cond_2

    #@1bf
    .line 345
    invoke-virtual {p0, v4}, Landroid/widget/SearchView;->setInputType(I)V

    #@1c2
    .line 348
    :cond_2
    const/4 v1, 0x1

    #@1c3
    .line 349
    .local v1, "focusable":Z
    const/4 v7, 0x0

    #@1c4
    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1c7
    move-result v1

    #@1c8
    .line 350
    .local v1, "focusable":Z
    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    #@1cb
    .line 352
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1ce
    .line 355
    new-instance v7, Landroid/content/Intent;

    #@1d0
    const-string/jumbo v8, "android.speech.action.WEB_SEARCH"

    #@1d3
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1d6
    iput-object v7, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    #@1d8
    .line 356
    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    #@1da
    const/high16 v8, 0x10000000

    #@1dc
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1df
    .line 357
    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    #@1e1
    const-string/jumbo v8, "android.speech.extra.LANGUAGE_MODEL"

    #@1e4
    .line 358
    const-string/jumbo v9, "web_search"

    #@1e7
    .line 357
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1ea
    .line 360
    new-instance v7, Landroid/content/Intent;

    #@1ec
    const-string/jumbo v8, "android.speech.action.RECOGNIZE_SPEECH"

    #@1ef
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1f2
    iput-object v7, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    #@1f4
    .line 361
    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    #@1f6
    const/high16 v8, 0x10000000

    #@1f8
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1fb
    .line 363
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@1fd
    invoke-virtual {v7}, Landroid/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    #@200
    move-result v7

    #@201
    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@204
    move-result-object v7

    #@205
    iput-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    #@207
    .line 364
    iget-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    #@209
    if-eqz v7, :cond_3

    #@20b
    .line 365
    iget-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    #@20d
    new-instance v8, Landroid/widget/SearchView$11;

    #@20f
    invoke-direct {v8, p0}, Landroid/widget/SearchView$11;-><init>(Landroid/widget/SearchView;)V

    #@212
    invoke-virtual {v7, v8}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@215
    .line 374
    :cond_3
    iget-boolean v7, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@217
    invoke-direct {p0, v7}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@21a
    .line 375
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    #@21d
    .line 262
    return-void

    #@21e
    .line 299
    .end local v1    # "focusable":Z
    .end local v2    # "imeOptions":I
    .end local v4    # "inputType":I
    .end local v6    # "maxWidth":I
    :cond_4
    const/16 v7, 0x9

    #@220
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@223
    move-result-object v7

    #@224
    iput-object v7, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    #@226
    goto/16 :goto_0
.end method

.method private adjustDropDownSizeAndPosition()V
    .locals 9

    #@0
    .prologue
    .line 1333
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
    .line 1334
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@c
    move-result-object v7

    #@d
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v5

    #@11
    .line 1335
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    #@13
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    #@16
    move-result v0

    #@17
    .line 1336
    .local v0, "anchorPadding":I
    new-instance v1, Landroid/graphics/Rect;

    #@19
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@1c
    .line 1337
    .local v1, "dropDownPadding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/SearchView;->isLayoutRtl()Z

    #@1f
    move-result v3

    #@20
    .line 1338
    .local v3, "isLayoutRtl":Z
    iget-boolean v7, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@22
    if-eqz v7, :cond_1

    #@24
    .line 1339
    const v7, 0x1050051

    #@27
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2a
    move-result v7

    #@2b
    .line 1340
    const v8, 0x105004f

    #@2e
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@31
    move-result v8

    #@32
    .line 1339
    add-int v2, v7, v8

    #@34
    .line 1342
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
    .line 1344
    if-eqz v3, :cond_2

    #@3f
    .line 1345
    iget v7, v1, Landroid/graphics/Rect;->left:I

    #@41
    neg-int v4, v7

    #@42
    .line 1349
    .local v4, "offset":I
    :goto_1
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@44
    invoke-virtual {v7, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    #@47
    .line 1350
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
    .line 1351
    iget v8, v1, Landroid/graphics/Rect;->right:I

    #@52
    .line 1350
    add-int/2addr v7, v8

    #@53
    add-int/2addr v7, v2

    #@54
    sub-int v6, v7, v0

    #@56
    .line 1352
    .local v6, "width":I
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@58
    invoke-virtual {v7, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    #@5b
    .line 1332
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
    .line 1341
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
    .line 1347
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
    .line 1505
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5
    .line 1506
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@a
    .line 1510
    if-eqz p2, :cond_0

    #@c
    .line 1511
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@f
    .line 1513
    :cond_0
    const-string/jumbo v1, "user_query"

    #@12
    iget-object v2, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@17
    .line 1514
    if-eqz p4, :cond_1

    #@19
    .line 1515
    const-string/jumbo v1, "query"

    #@1c
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1f
    .line 1517
    :cond_1
    if-eqz p3, :cond_2

    #@21
    .line 1518
    const-string/jumbo v1, "intent_extra_data_key"

    #@24
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@27
    .line 1520
    :cond_2
    iget-object v1, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    #@29
    if-eqz v1, :cond_3

    #@2b
    .line 1521
    const-string/jumbo v1, "app_data"

    #@2e
    iget-object v2, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    #@30
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@33
    .line 1523
    :cond_3
    if-eqz p5, :cond_4

    #@35
    .line 1524
    const-string/jumbo v1, "action_key"

    #@38
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3b
    .line 1525
    const-string/jumbo v1, "action_msg"

    #@3e
    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@41
    .line 1527
    :cond_4
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@43
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@4a
    .line 1528
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 12
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1623
    :try_start_0
    const-string/jumbo v0, "suggest_intent_action"

    #@3
    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 1625
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_0

    #@9
    .line 1626
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@b
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 1628
    :cond_0
    if-nez v1, :cond_1

    #@11
    .line 1629
    const-string/jumbo v1, "android.intent.action.SEARCH"

    #@14
    .line 1633
    :cond_1
    const-string/jumbo v0, "suggest_intent_data"

    #@17
    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v7

    #@1b
    .line 1634
    .local v7, "data":Ljava/lang/String;
    if-nez v7, :cond_2

    #@1d
    .line 1635
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@1f
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    #@22
    move-result-object v7

    #@23
    .line 1638
    :cond_2
    if-eqz v7, :cond_3

    #@25
    .line 1639
    const-string/jumbo v0, "suggest_intent_data_id"

    #@28
    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v10

    #@2c
    .line 1640
    .local v10, "id":Ljava/lang/String;
    if-eqz v10, :cond_3

    #@2e
    .line 1641
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
    .line 1644
    .end local v10    # "id":Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_4

    #@4c
    const/4 v2, 0x0

    #@4d
    .line 1646
    :goto_0
    const-string/jumbo v0, "suggest_intent_query"

    #@50
    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    .line 1647
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
    .line 1649
    invoke-direct/range {v0 .. v6}, Landroid/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    #@61
    move-result-object v0

    #@62
    return-object v0

    #@63
    .line 1644
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
    .line 1650
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "dataUri":Landroid/net/Uri;
    .end local v7    # "data":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@69
    .line 1653
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@6c
    move-result v11

    #@6d
    .line 1657
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
    .line 1658
    const-string/jumbo v6, " returned exception."

    #@83
    .line 1657
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
    .line 1659
    const/4 v0, 0x0

    #@8f
    return-object v0

    #@90
    .line 1654
    .end local v11    # "rowNum":I
    :catch_1
    move-exception v9

    #@91
    .line 1655
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
    .line 1550
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    #@3
    move-result-object v8

    #@4
    .line 1555
    .local v8, "searchActivity":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    #@6
    const-string/jumbo v10, "android.intent.action.SEARCH"

    #@9
    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 1556
    .local v6, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@f
    .line 1557
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@12
    move-result-object v10

    #@13
    const/4 v11, 0x0

    #@14
    .line 1558
    const/high16 v12, 0x40000000    # 2.0f

    #@16
    .line 1557
    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@19
    move-result-object v3

    #@1a
    .line 1564
    .local v3, "pending":Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    #@1c
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@1f
    .line 1565
    .local v5, "queryExtras":Landroid/os/Bundle;
    iget-object v10, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    #@21
    if-eqz v10, :cond_0

    #@23
    .line 1566
    const-string/jumbo v10, "app_data"

    #@26
    iget-object v11, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    #@28
    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@2b
    .line 1572
    :cond_0
    new-instance v9, Landroid/content/Intent;

    #@2d
    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@30
    .line 1575
    .local v9, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "free_form"

    #@33
    .line 1576
    .local v1, "languageModel":Ljava/lang/String;
    const/4 v4, 0x0

    #@34
    .line 1577
    .local v4, "prompt":Ljava/lang/String;
    const/4 v0, 0x0

    #@35
    .line 1578
    .local v0, "language":Ljava/lang/String;
    const/4 v2, 0x1

    #@36
    .line 1580
    .local v2, "maxResults":I
    invoke-virtual {p0}, Landroid/widget/SearchView;->getResources()Landroid/content/res/Resources;

    #@39
    move-result-object v7

    #@3a
    .line 1581
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    #@3d
    move-result v10

    #@3e
    if-eqz v10, :cond_1

    #@40
    .line 1582
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    #@43
    move-result v10

    #@44
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    .line 1584
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    #@4b
    move-result v10

    #@4c
    if-eqz v10, :cond_2

    #@4e
    .line 1585
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    #@51
    move-result v10

    #@52
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    .line 1587
    .end local v4    # "prompt":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    #@59
    move-result v10

    #@5a
    if-eqz v10, :cond_3

    #@5c
    .line 1588
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    #@5f
    move-result v10

    #@60
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    .line 1590
    .end local v0    # "language":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    #@67
    move-result v10

    #@68
    if-eqz v10, :cond_4

    #@6a
    .line 1591
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    #@6d
    move-result v2

    #@6e
    .line 1593
    :cond_4
    const-string/jumbo v10, "android.speech.extra.LANGUAGE_MODEL"

    #@71
    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@74
    .line 1594
    const-string/jumbo v10, "android.speech.extra.PROMPT"

    #@77
    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@7a
    .line 1595
    const-string/jumbo v10, "android.speech.extra.LANGUAGE"

    #@7d
    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@80
    .line 1596
    const-string/jumbo v10, "android.speech.extra.MAX_RESULTS"

    #@83
    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@86
    .line 1597
    const-string/jumbo v11, "calling_package"

    #@89
    if-nez v8, :cond_5

    #@8b
    const/4 v10, 0x0

    #@8c
    :goto_0
    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@8f
    .line 1601
    const-string/jumbo v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    #@92
    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@95
    .line 1602
    const-string/jumbo v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    #@98
    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@9b
    .line 1604
    return-object v9

    #@9c
    .line 1598
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
    .line 1535
    new-instance v1, Landroid/content/Intent;

    #@3
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@6
    .line 1536
    .local v1, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    #@9
    move-result-object v0

    #@a
    .line 1537
    .local v0, "searchActivity":Landroid/content/ComponentName;
    const-string/jumbo v3, "calling_package"

    #@d
    if-nez v0, :cond_0

    #@f
    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@12
    .line 1539
    return-object v1

    #@13
    .line 1538
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
    .line 1229
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    #@5
    .line 1228
    return-void
.end method

.method private forceSuggestionQuery()V
    .locals 1

    #@0
    .prologue
    .line 1664
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->doBeforeTextChanged()V

    #@5
    .line 1665
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@7
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->doAfterTextChanged()V

    #@a
    .line 1663
    return-void
.end method

.method private static getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "actionKey"    # Landroid/app/SearchableInfo$ActionKeyInfo;

    #@0
    .prologue
    .line 1097
    const/4 v1, 0x0

    #@1
    .line 1099
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1100
    .local v0, "column":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    .line 1101
    invoke-static {p0, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 1106
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    #@d
    .line 1107
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 1109
    :cond_1
    return-object v1
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1115
    iget-boolean v2, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 1116
    :cond_0
    return-object p1

    #@a
    .line 1119
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
    .line 1120
    .local v1, "textSize":I
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    #@17
    invoke-virtual {v2, v6, v6, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1a
    .line 1122
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@1c
    const-string/jumbo v2, "   "

    #@1f
    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@22
    .line 1123
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
    .line 1124
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@33
    .line 1125
    return-object v0
.end method

.method private getPreferredWidth()I
    .locals 2

    #@0
    .prologue
    .line 805
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    .line 806
    const v1, 0x105003a

    #@b
    .line 805
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
    .line 826
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
    .line 827
    const/4 v1, 0x0

    #@e
    .line 828
    .local v1, "testIntent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@10
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    .line 829
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    #@18
    .line 833
    .end local v1    # "testIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    #@1a
    .line 834
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@21
    move-result-object v3

    #@22
    .line 835
    const/high16 v4, 0x10000

    #@24
    .line 834
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@27
    move-result-object v0

    #@28
    .line 836
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    #@2a
    const/4 v2, 0x1

    #@2b
    :cond_1
    return v2

    #@2c
    .line 830
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
    .line 831
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    #@36
    .local v1, "testIntent":Landroid/content/Intent;
    goto :goto_0

    #@37
    .line 839
    .end local v1    # "testIntent":Landroid/content/Intent;
    :cond_3
    return v2
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1669
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
    .line 1670
    const/4 v1, 0x2

    #@b
    .line 1669
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
    .line 843
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
    .line 1460
    if-nez p1, :cond_0

    #@2
    .line 1461
    return-void

    #@3
    .line 1466
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
    .line 1459
    :goto_0
    return-void

    #@b
    .line 1467
    :catch_0
    move-exception v0

    #@c
    .line 1468
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
    .line 1482
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
    .line 1483
    invoke-direct/range {v0 .. v6}, Landroid/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    #@c
    move-result-object v7

    #@d
    .line 1484
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@14
    .line 1481
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1443
    iget-object v2, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@2
    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    #@5
    move-result-object v0

    #@6
    .line 1444
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    #@8
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1446
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    #@11
    move-result-object v1

    #@12
    .line 1449
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    #@15
    .line 1451
    const/4 v2, 0x1

    #@16
    return v2

    #@17
    .line 1453
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
    .line 1233
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@3
    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@6
    move-result-object v0

    #@7
    .line 1234
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 1235
    iget-boolean v1, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 1237
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
    .line 1232
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 1239
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SearchView;->clearFocus()V

    #@21
    .line 1241
    invoke-direct {p0, v3}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@24
    goto :goto_0

    #@25
    .line 1245
    :cond_2
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@27
    const-string/jumbo v2, ""

    #@2a
    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    #@2d
    .line 1246
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2f
    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    #@32
    .line 1247
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
    .line 1357
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1358
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    #@8
    invoke-interface {v0, p1}, Landroid/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1364
    return v1

    #@f
    .line 1359
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    #@12
    .line 1360
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    #@15
    .line 1361
    invoke-direct {p0}, Landroid/widget/SearchView;->dismissSuggestions()V

    #@18
    .line 1362
    const/4 v0, 0x1

    #@19
    return v0
.end method

.method private onItemSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1368
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1369
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    #@6
    invoke-interface {v0, p1}, Landroid/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1373
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 1370
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    #@11
    .line 1371
    const/4 v0, 0x1

    #@12
    return v0
.end method

.method private onSearchClicked()V
    .locals 1

    #@0
    .prologue
    .line 1253
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@4
    .line 1254
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@6
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    #@9
    .line 1255
    const/4 v0, 0x1

    #@a
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    #@d
    .line 1256
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 1257
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    #@13
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    #@16
    .line 1252
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
    .line 1215
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@4
    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@7
    move-result-object v0

    #@8
    .line 1216
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@a
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    #@d
    move-result v1

    #@e
    if-lez v1, :cond_0

    #@10
    .line 1217
    iget-object v1, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1218
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
    .line 1214
    :cond_0
    :goto_0
    return-void

    #@21
    .line 1219
    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 1220
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {p0, v4, v3, v1}, Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    #@2c
    .line 1222
    :cond_2
    invoke-direct {p0, v4}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    #@2f
    .line 1223
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
    .line 1025
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@7
    if-nez v5, :cond_0

    #@9
    .line 1026
    return v6

    #@a
    .line 1028
    :cond_0
    iget-object v5, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@c
    if-nez v5, :cond_1

    #@e
    .line 1029
    return v6

    #@f
    .line 1031
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
    .line 1034
    const/16 v5, 0x42

    #@1d
    if-eq p2, v5, :cond_2

    #@1f
    const/16 v5, 0x54

    #@21
    if-ne p2, v5, :cond_3

    #@23
    .line 1036
    :cond_2
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@25
    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    #@28
    move-result v3

    #@29
    .line 1037
    .local v3, "position":I
    invoke-direct {p0, v3, v6, v7}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    #@2c
    move-result v5

    #@2d
    return v5

    #@2e
    .line 1035
    .end local v3    # "position":I
    :cond_3
    const/16 v5, 0x3d

    #@30
    if-eq p2, v5, :cond_2

    #@32
    .line 1042
    if-eq p2, v9, :cond_4

    #@34
    const/16 v5, 0x16

    #@36
    if-ne p2, v5, :cond_6

    #@38
    .line 1047
    :cond_4
    if-ne p2, v9, :cond_5

    #@3a
    const/4 v4, 0x0

    #@3b
    .line 1049
    .local v4, "selPoint":I
    :goto_0
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@3d
    invoke-virtual {v5, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    #@40
    .line 1050
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@42
    invoke-virtual {v5, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    #@45
    .line 1051
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@47
    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    #@4a
    .line 1052
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@4c
    invoke-virtual {v5, v8}, Landroid/widget/SearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    #@4f
    .line 1054
    return v8

    #@50
    .line 1047
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
    .line 1058
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
    .line 1061
    return v6

    #@64
    .line 1065
    :cond_7
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@66
    invoke-virtual {v5, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    #@69
    move-result-object v0

    #@6a
    .line 1066
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_9

    #@6c
    .line 1067
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
    .line 1070
    :cond_8
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@7a
    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    #@7d
    move-result v3

    #@7e
    .line 1071
    .restart local v3    # "position":I
    const/4 v5, -0x1

    #@7f
    if-eq v3, v5, :cond_9

    #@81
    .line 1072
    iget-object v5, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@83
    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    #@86
    move-result-object v2

    #@87
    .line 1073
    .local v2, "c":Landroid/database/Cursor;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@8a
    move-result v5

    #@8b
    if-eqz v5, :cond_9

    #@8d
    .line 1074
    invoke-static {v2, v0}, Landroid/widget/SearchView;->getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;

    #@90
    move-result-object v1

    #@91
    .line 1075
    .local v1, "actionMsg":Ljava/lang/String;
    if-eqz v1, :cond_9

    #@93
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@96
    move-result v5

    #@97
    if-lez v5, :cond_9

    #@99
    .line 1076
    invoke-direct {p0, v3, p2, v1}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    #@9c
    move-result v5

    #@9d
    return v5

    #@9e
    .line 1082
    .end local v0    # "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    .end local v1    # "actionMsg":Ljava/lang/String;
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "position":I
    :cond_9
    return v6
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "newText"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1201
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@5
    move-result-object v1

    #@6
    .line 1202
    .local v1, "text":Ljava/lang/CharSequence;
    iput-object v1, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    #@8
    .line 1203
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    const/4 v0, 0x0

    #@f
    .line 1204
    .local v0, "hasText":Z
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateSubmitButton(Z)V

    #@12
    .line 1205
    if-eqz v0, :cond_2

    #@14
    const/4 v2, 0x0

    #@15
    :goto_1
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->updateVoiceButton(Z)V

    #@18
    .line 1206
    invoke-direct {p0}, Landroid/widget/SearchView;->updateCloseButton()V

    #@1b
    .line 1207
    invoke-direct {p0}, Landroid/widget/SearchView;->updateSubmitArea()V

    #@1e
    .line 1208
    iget-object v2, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    #@20
    if-eqz v2, :cond_0

    #@22
    iget-object v2, p0, Landroid/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    #@24
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_3

    #@2a
    .line 1211
    :cond_0
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    iput-object v2, p0, Landroid/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    #@30
    .line 1200
    return-void

    #@31
    .line 1203
    .end local v0    # "hasText":Z
    :cond_1
    const/4 v0, 0x1

    #@32
    .restart local v0    # "hasText":Z
    goto :goto_0

    #@33
    .line 1205
    :cond_2
    const/4 v2, 0x1

    #@34
    goto :goto_1

    #@35
    .line 1209
    :cond_3
    iget-object v2, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    #@37
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-interface {v2, v3}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    #@3e
    goto :goto_2
.end method

.method private onVoiceClicked()V
    .locals 6

    #@0
    .prologue
    .line 1263
    iget-object v4, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 1264
    return-void

    #@5
    .line 1266
    :cond_0
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@7
    .line 1268
    .local v2, "searchable":Landroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_2

    #@d
    .line 1269
    iget-object v4, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    #@f
    invoke-direct {p0, v4, v2}, Landroid/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    #@12
    move-result-object v3

    #@13
    .line 1271
    .local v3, "webSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@1a
    .line 1261
    .end local v3    # "webSearchIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    #@1b
    .line 1272
    :cond_2
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 1273
    iget-object v4, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    #@23
    invoke-direct {p0, v4, v2}, Landroid/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    #@26
    move-result-object v0

    #@27
    .line 1275
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
    .line 1277
    .end local v0    # "appSearchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    #@30
    .line 1280
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
    .line 878
    iget-object v0, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    #@5
    .line 877
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1410
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@5
    move-result-object v2

    #@6
    .line 1411
    .local v2, "oldQuery":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@8
    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    #@b
    move-result-object v0

    #@c
    .line 1412
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    #@e
    .line 1413
    return-void

    #@f
    .line 1415
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_2

    #@15
    .line 1417
    iget-object v3, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@17
    invoke-virtual {v3, v0}, Landroid/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    #@1a
    move-result-object v1

    #@1b
    .line 1418
    .local v1, "newQuery":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    #@1d
    .line 1421
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    #@20
    .line 1409
    .end local v1    # "newQuery":Ljava/lang/CharSequence;
    :goto_0
    return-void

    #@21
    .line 1424
    .restart local v1    # "newQuery":Ljava/lang/CharSequence;
    :cond_1
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    #@24
    goto :goto_0

    #@25
    .line 1428
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
    .line 903
    if-eqz p1, :cond_1

    #@2
    .line 904
    iget-object v1, p0, Landroid/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    #@7
    .line 902
    :cond_0
    :goto_0
    return-void

    #@8
    .line 906
    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    #@a
    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@d
    .line 908
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, "input_method"

    #@14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    .line 907
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@1a
    .line 910
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    #@1c
    .line 911
    invoke-virtual {p0}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    #@1f
    move-result-object v1

    #@20
    const/4 v2, 0x0

    #@21
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@24
    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1476
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;Z)V

    #@6
    .line 1478
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
    .line 1475
    return-void

    #@13
    .line 1478
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
    .line 866
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@5
    move-result-object v3

    #@6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_2

    #@c
    const/4 v1, 0x0

    #@d
    .line 869
    .local v1, "hasText":Z
    :goto_0
    if-nez v1, :cond_3

    #@f
    iget-boolean v3, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@11
    if-eqz v3, :cond_0

    #@13
    iget-boolean v3, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    #@15
    if-eqz v3, :cond_3

    #@17
    :cond_0
    const/4 v2, 0x0

    #@18
    .line 870
    .local v2, "showClose":Z
    :goto_1
    iget-object v4, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    #@1a
    if-eqz v2, :cond_4

    #@1c
    const/4 v3, 0x0

    #@1d
    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    #@20
    .line 871
    iget-object v3, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    #@22
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object v0

    #@26
    .line 872
    .local v0, "closeButtonImg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@28
    .line 873
    if-eqz v1, :cond_5

    #@2a
    sget-object v3, Landroid/widget/SearchView;->ENABLED_STATE_SET:[I

    #@2c
    :goto_3
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@2f
    .line 865
    :cond_1
    return-void

    #@30
    .line 866
    .end local v0    # "closeButtonImg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasText":Z
    .end local v2    # "showClose":Z
    :cond_2
    const/4 v1, 0x1

    #@31
    .restart local v1    # "hasText":Z
    goto :goto_0

    #@32
    .line 869
    :cond_3
    const/4 v2, 0x1

    #@33
    .restart local v2    # "showClose":Z
    goto :goto_1

    #@34
    .line 870
    :cond_4
    const/16 v3, 0x8

    #@36
    goto :goto_2

    #@37
    .line 873
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
    .line 882
    iget-object v4, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v4}, Landroid/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    #@5
    move-result v0

    #@6
    .line 883
    .local v0, "focused":Z
    if-eqz v0, :cond_2

    #@8
    sget-object v2, Landroid/widget/SearchView;->FOCUSED_STATE_SET:[I

    #@a
    .line 884
    .local v2, "stateSet":[I
    :goto_0
    iget-object v4, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    #@c
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v1

    #@10
    .line 885
    .local v1, "searchPlateBg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    #@12
    .line 886
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@15
    .line 888
    :cond_0
    iget-object v4, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    #@17
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@1a
    move-result-object v3

    #@1b
    .line 889
    .local v3, "submitAreaBg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    #@1d
    .line 890
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@20
    .line 892
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SearchView;->invalidate()V

    #@23
    .line 881
    return-void

    #@24
    .line 883
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
    .line 1129
    invoke-virtual {p0}, Landroid/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    .line 1130
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
    .line 1128
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
    .line 1137
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@4
    const/4 v3, 0x0

    #@5
    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownAnimationStyle(I)V

    #@8
    .line 1138
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
    .line 1139
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
    .line 1140
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@20
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    #@23
    move-result v0

    #@24
    .line 1143
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    #@26
    if-ne v1, v2, :cond_0

    #@28
    .line 1146
    const v1, -0x10001

    #@2b
    and-int/2addr v0, v1

    #@2c
    .line 1147
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@2e
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    if-eqz v1, :cond_0

    #@34
    .line 1148
    const/high16 v1, 0x10000

    #@36
    or-int/2addr v0, v1

    #@37
    .line 1155
    const/high16 v1, 0x80000

    #@39
    or-int/2addr v0, v1

    #@3a
    .line 1158
    :cond_0
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@3c
    invoke-virtual {v1, v0}, Landroid/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    #@3f
    .line 1159
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@41
    if-eqz v1, :cond_1

    #@43
    .line 1160
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@45
    invoke-virtual {v1, v4}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    #@48
    .line 1164
    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@4a
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    if-eqz v1, :cond_3

    #@50
    .line 1165
    new-instance v1, Landroid/widget/SuggestionsAdapter;

    #@52
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@55
    move-result-object v3

    #@56
    .line 1166
    iget-object v4, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@58
    iget-object v5, p0, Landroid/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@5a
    .line 1165
    invoke-direct {v1, v3, p0, v4, v5}, Landroid/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    #@5d
    iput-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@5f
    .line 1167
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@61
    iget-object v3, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@63
    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    #@66
    .line 1168
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@68
    check-cast v1, Landroid/widget/SuggestionsAdapter;

    #@6a
    .line 1169
    iget-boolean v3, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    #@6c
    if-eqz v3, :cond_2

    #@6e
    const/4 v2, 0x2

    #@6f
    .line 1168
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    #@72
    .line 1136
    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    #@0
    .prologue
    .line 856
    const/16 v0, 0x8

    #@2
    .line 857
    .local v0, "visibility":I
    invoke-direct {p0}, Landroid/widget/SearchView;->isSubmitAreaEnabled()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 858
    iget-object v1, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    #@a
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 859
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    #@12
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_1

    #@18
    .line 860
    :cond_0
    const/4 v0, 0x0

    #@19
    .line 862
    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    #@1b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    #@1e
    .line 855
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .param p1, "hasText"    # Z

    #@0
    .prologue
    .line 847
    const/16 v0, 0x8

    #@2
    .line 848
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
    .line 849
    if-nez p1, :cond_1

    #@14
    iget-boolean v1, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 852
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    #@1a
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    #@1d
    .line 846
    return-void

    #@1e
    .line 850
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
    const/16 v3, 0x8

    #@2
    const/4 v4, 0x0

    #@3
    .line 810
    iput-boolean p1, p0, Landroid/widget/SearchView;->mIconified:Z

    #@5
    .line 812
    if-eqz p1, :cond_0

    #@7
    const/4 v1, 0x0

    #@8
    .line 814
    .local v1, "visCollapsed":I
    :goto_0
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@a
    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@d
    move-result-object v2

    #@e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    const/4 v0, 0x0

    #@15
    .line 816
    .local v0, "hasText":Z
    :goto_1
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    #@17
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@1a
    .line 817
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateSubmitButton(Z)V

    #@1d
    .line 818
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    #@1f
    if-eqz p1, :cond_2

    #@21
    move v2, v3

    #@22
    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    #@25
    .line 819
    iget-object v2, p0, Landroid/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    #@27
    iget-boolean v5, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@29
    if-eqz v5, :cond_3

    #@2b
    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    #@2e
    .line 820
    invoke-direct {p0}, Landroid/widget/SearchView;->updateCloseButton()V

    #@31
    .line 821
    if-eqz v0, :cond_4

    #@33
    :goto_4
    invoke-direct {p0, v4}, Landroid/widget/SearchView;->updateVoiceButton(Z)V

    #@36
    .line 822
    invoke-direct {p0}, Landroid/widget/SearchView;->updateSubmitArea()V

    #@39
    .line 809
    return-void

    #@3a
    .line 812
    .end local v0    # "hasText":Z
    .end local v1    # "visCollapsed":I
    :cond_0
    const/16 v1, 0x8

    #@3c
    .restart local v1    # "visCollapsed":I
    goto :goto_0

    #@3d
    .line 814
    :cond_1
    const/4 v0, 0x1

    #@3e
    .restart local v0    # "hasText":Z
    goto :goto_1

    #@3f
    :cond_2
    move v2, v4

    #@40
    .line 818
    goto :goto_2

    #@41
    :cond_3
    move v3, v4

    #@42
    .line 819
    goto :goto_3

    #@43
    .line 821
    :cond_4
    const/4 v4, 0x1

    #@44
    goto :goto_4
.end method

.method private updateVoiceButton(Z)V
    .locals 3
    .param p1, "empty"    # Z

    #@0
    .prologue
    .line 1181
    const/16 v0, 0x8

    #@2
    .line 1182
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
    .line 1186
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    #@e
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    #@11
    .line 1180
    return-void

    #@12
    .line 1182
    :cond_1
    if-eqz p1, :cond_0

    #@14
    .line 1183
    const/4 v0, 0x0

    #@15
    .line 1184
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
    .line 487
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    #@4
    .line 488
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    #@7
    .line 489
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    #@a
    .line 490
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@c
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->clearFocus()V

    #@f
    .line 491
    iput-boolean v1, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    #@11
    .line 486
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1329
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
    .line 440
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
    .line 462
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
    .line 766
    iget v0, p0, Landroid/widget/SearchView;->mMaxWidth:I

    #@2
    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 549
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
    .line 608
    iget-object v1, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 609
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    #@6
    .line 615
    .local v0, "hint":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    #@7
    .line 610
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
    .line 611
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
    .line 613
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
    .line 383
    iget v0, p0, Landroid/widget/SearchView;->mSuggestionCommitIconResId:I

    #@2
    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    #@0
    .prologue
    .line 379
    iget v0, p0, Landroid/widget/SearchView;->mSuggestionRowLayout:I

    #@2
    return v0
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    #@0
    .prologue
    .line 744
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@2
    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    #@0
    .prologue
    .line 644
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@2
    return v0
.end method

.method public isIconified()Z
    .locals 1

    #@0
    .prologue
    .line 672
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconified:Z

    #@2
    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 724
    iget-boolean v0, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    #@2
    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 694
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
    .line 1306
    const-string/jumbo v0, ""

    #@4
    invoke-virtual {p0, v0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    #@7
    .line 1307
    invoke-virtual {p0}, Landroid/widget/SearchView;->clearFocus()V

    #@a
    .line 1308
    const/4 v0, 0x1

    #@b
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@e
    .line 1309
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@10
    iget v1, p0, Landroid/widget/SearchView;->mCollapsedImeOptions:I

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    #@15
    .line 1310
    iput-boolean v2, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    #@17
    .line 1305
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    #@0
    .prologue
    .line 1318
    iget-boolean v0, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 1320
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    #@8
    .line 1321
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@a
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/widget/SearchView;->mCollapsedImeOptions:I

    #@10
    .line 1322
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
    .line 1323
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@1c
    const-string/jumbo v1, ""

    #@1f
    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    #@22
    .line 1324
    const/4 v0, 0x0

    #@23
    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    #@26
    .line 1317
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 897
    iget-object v0, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    .line 898
    iget-object v0, p0, Landroid/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    #@7
    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 899
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    #@d
    .line 896
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 952
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 953
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 958
    :cond_0
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@8
    invoke-virtual {v1, p1}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    #@b
    move-result-object v0

    #@c
    .line 959
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_1

    #@e
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 960
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
    .line 962
    const/4 v1, 0x1

    #@26
    return v1

    #@27
    .line 965
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@2a
    move-result v1

    #@2b
    return v1
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 772
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 773
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@9
    .line 774
    return-void

    #@a
    .line 777
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@d
    move-result v1

    #@e
    .line 778
    .local v1, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@11
    move-result v0

    #@12
    .line 780
    .local v0, "width":I
    sparse-switch v1, :sswitch_data_0

    #@15
    .line 800
    :cond_1
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    #@17
    .line 801
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1a
    move-result v2

    #@1b
    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@1e
    .line 770
    return-void

    #@1f
    .line 783
    :sswitch_0
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    #@21
    if-lez v2, :cond_2

    #@23
    .line 784
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    #@25
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    #@28
    move-result v0

    #@29
    goto :goto_0

    #@2a
    .line 786
    :cond_2
    invoke-direct {p0}, Landroid/widget/SearchView;->getPreferredWidth()I

    #@2d
    move-result v2

    #@2e
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    #@31
    move-result v0

    #@32
    goto :goto_0

    #@33
    .line 791
    :sswitch_1
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    #@35
    if-lez v2, :cond_1

    #@37
    .line 792
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    #@39
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    #@3c
    move-result v0

    #@3d
    goto :goto_0

    #@3e
    .line 797
    :sswitch_2
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    #@40
    if-lez v2, :cond_3

    #@42
    iget v0, p0, Landroid/widget/SearchView;->mMaxWidth:I

    #@44
    goto :goto_0

    #@45
    :cond_3
    invoke-direct {p0}, Landroid/widget/SearchView;->getPreferredWidth()I

    #@48
    move-result v0

    #@49
    goto :goto_0

    #@4a
    .line 780
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "queryText"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 921
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    #@3
    .line 920
    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    #@0
    .prologue
    .line 1285
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@7
    .line 1288
    invoke-direct {p0}, Landroid/widget/SearchView;->postUpdateFocusedState()V

    #@a
    .line 1289
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@c
    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1290
    invoke-direct {p0}, Landroid/widget/SearchView;->forceSuggestionQuery()V

    #@15
    .line 1284
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    .line 1296
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    #@3
    .line 1298
    invoke-direct {p0}, Landroid/widget/SearchView;->postUpdateFocusedState()V

    #@6
    .line 1295
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
    .line 469
    iget-boolean v1, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    return v2

    #@6
    .line 471
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SearchView;->isFocusable()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_1

    #@c
    return v2

    #@d
    .line 473
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_3

    #@13
    .line 474
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@15
    invoke-virtual {v1, p1, p2}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    #@18
    move-result v0

    #@19
    .line 475
    .local v0, "result":Z
    if-eqz v0, :cond_2

    #@1b
    .line 476
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@1e
    .line 478
    :cond_2
    return v0

    #@1f
    .line 480
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
    .line 417
    iput-object p1, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    #@2
    .line 416
    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .param p1, "iconify"    # Z

    #@0
    .prologue
    .line 658
    if-eqz p1, :cond_0

    #@2
    .line 659
    invoke-direct {p0}, Landroid/widget/SearchView;->onCloseClicked()V

    #@5
    .line 657
    :goto_0
    return-void

    #@6
    .line 661
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
    .line 631
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    return-void

    #@5
    .line 632
    :cond_0
    iput-boolean p1, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    #@7
    .line 633
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@a
    .line 634
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    #@d
    .line 630
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    #@5
    .line 428
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    #@0
    .prologue
    .line 452
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    #@5
    .line 451
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    #@0
    .prologue
    .line 753
    iput p1, p0, Landroid/widget/SearchView;->mMaxWidth:I

    #@2
    .line 755
    invoke-virtual {p0}, Landroid/widget/SearchView;->requestLayout()V

    #@5
    .line 752
    return-void
.end method

.method public setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SearchView$OnCloseListener;

    #@0
    .prologue
    .line 510
    iput-object p1, p0, Landroid/widget/SearchView;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    #@2
    .line 509
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    #@0
    .prologue
    .line 519
    iput-object p1, p0, Landroid/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    #@2
    .line 518
    return-void
.end method

.method public setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;

    #@0
    .prologue
    .line 501
    iput-object p1, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    #@2
    .line 500
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    .line 540
    iput-object p1, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    #@2
    .line 539
    return-void
.end method

.method public setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SearchView$OnSuggestionListener;

    #@0
    .prologue
    .line 528
    iput-object p1, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    #@2
    .line 527
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    #@0
    .prologue
    .line 561
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    #@5
    .line 562
    if-eqz p1, :cond_0

    #@7
    .line 563
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
    .line 564
    iput-object p1, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    #@14
    .line 568
    :cond_0
    if-eqz p2, :cond_1

    #@16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 560
    :cond_1
    :goto_0
    return-void

    #@1d
    .line 569
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
    .line 584
    iput-object p1, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    #@2
    .line 585
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    #@5
    .line 583
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 712
    iput-boolean p1, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    #@2
    .line 713
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@4
    instance-of v0, v0, Landroid/widget/SuggestionsAdapter;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 714
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@a
    check-cast v0, Landroid/widget/SuggestionsAdapter;

    #@c
    .line 715
    if-eqz p1, :cond_1

    #@e
    const/4 v1, 0x2

    #@f
    .line 714
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    #@12
    .line 711
    :cond_0
    return-void

    #@13
    .line 715
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
    .line 395
    iput-object p1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@2
    .line 396
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 397
    invoke-direct {p0}, Landroid/widget/SearchView;->updateSearchAutoComplete()V

    #@9
    .line 398
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    #@c
    .line 401
    :cond_0
    invoke-direct {p0}, Landroid/widget/SearchView;->hasVoiceSearch()Z

    #@f
    move-result v0

    #@10
    iput-boolean v0, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    #@12
    .line 403
    iget-boolean v0, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 406
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@18
    const-string/jumbo v1, "nm"

    #@1b
    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    #@1e
    .line 408
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    #@21
    move-result v0

    #@22
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@25
    .line 394
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 684
    iput-boolean p1, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    #@2
    .line 685
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    #@5
    move-result v0

    #@6
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    #@9
    .line 683
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/CursorAdapter;

    #@0
    .prologue
    .line 734
    iput-object p1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@2
    .line 736
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    #@4
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    #@6
    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    #@9
    .line 733
    return-void
.end method
