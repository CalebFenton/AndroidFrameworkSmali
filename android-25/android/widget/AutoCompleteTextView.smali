.class public Landroid/widget/AutoCompleteTextView;
.super Landroid/widget/EditText;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;,
        Landroid/widget/AutoCompleteTextView$MyWatcher;,
        Landroid/widget/AutoCompleteTextView$OnDismissListener;,
        Landroid/widget/AutoCompleteTextView$PassThroughClickListener;,
        Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;,
        Landroid/widget/AutoCompleteTextView$Validator;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final EXPAND_MAX:I = 0x3

.field static final TAG:Ljava/lang/String; = "AutoCompleteTextView"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBlockCompletion:Z

.field private mDropDownAnchorId:I

.field private mDropDownDismissedOnCompletion:Z

.field private mFilter:Landroid/widget/Filter;

.field private mHintResource:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mHintView:Landroid/widget/TextView;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLastKeyCode:I

.field private mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

.field private mOpenBefore:Z

.field private final mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

.field private final mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupCanBeUpdated:Z

.field private final mPopupContext:Landroid/content/Context;

.field private mThreshold:I

.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method static synthetic -get0(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->onClickImpl()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/AutoCompleteTextView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/AutoCompleteTextView;I)V
    .locals 0
    .param p1, "count"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 142
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 154
    const v0, 0x101006b

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 170
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 191
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    #@9
    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "popupTheme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 218
    invoke-direct/range {p0 .. p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 119
    const/4 v13, 0x1

    #@4
    move-object/from16 v0, p0

    #@6
    iput-boolean v13, v0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    #@8
    .line 121
    const/4 v13, 0x0

    #@9
    move-object/from16 v0, p0

    #@b
    iput v13, v0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    #@d
    .line 124
    const/4 v13, 0x0

    #@e
    move-object/from16 v0, p0

    #@10
    iput-object v13, v0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    #@12
    .line 131
    const/4 v13, 0x1

    #@13
    move-object/from16 v0, p0

    #@15
    iput-boolean v13, v0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    #@17
    .line 221
    sget-object v13, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    #@19
    .line 220
    move-object/from16 v0, p1

    #@1b
    move-object/from16 v1, p2

    #@1d
    move/from16 v2, p3

    #@1f
    move/from16 v3, p4

    #@21
    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@24
    move-result-object v4

    #@25
    .line 223
    .local v4, "a":Landroid/content/res/TypedArray;
    if-eqz p5, :cond_2

    #@27
    .line 224
    new-instance v13, Landroid/view/ContextThemeWrapper;

    #@29
    move-object/from16 v0, p1

    #@2b
    move-object/from16 v1, p5

    #@2d
    invoke-direct {v13, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    #@30
    move-object/from16 v0, p0

    #@32
    iput-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    #@34
    .line 237
    :goto_0
    move-object/from16 v0, p0

    #@36
    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    #@38
    move-object/from16 v0, p1

    #@3a
    if-eq v13, v0, :cond_4

    #@3c
    .line 238
    move-object/from16 v0, p0

    #@3e
    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    #@40
    .line 239
    sget-object v14, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    #@42
    .line 238
    move-object/from16 v0, p2

    #@44
    move/from16 v1, p3

    #@46
    move/from16 v2, p4

    #@48
    invoke-virtual {v13, v0, v14, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@4b
    move-result-object v6

    #@4c
    .line 245
    .local v6, "pa":Landroid/content/res/TypedArray;
    :goto_1
    const/4 v13, 0x3

    #@4d
    .line 244
    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@50
    move-result-object v10

    #@51
    .line 247
    .local v10, "popupListSelector":Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x5

    #@52
    const/4 v14, -0x2

    #@53
    .line 246
    invoke-virtual {v6, v13, v14}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@56
    move-result v12

    #@57
    .line 249
    .local v12, "popupWidth":I
    const/4 v13, 0x7

    #@58
    const/4 v14, -0x2

    #@59
    .line 248
    invoke-virtual {v6, v13, v14}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@5c
    move-result v7

    #@5d
    .line 251
    .local v7, "popupHeight":I
    const/4 v13, 0x1

    #@5e
    const v14, 0x10900e3

    #@61
    .line 250
    invoke-virtual {v6, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@64
    move-result v8

    #@65
    .line 253
    .local v8, "popupHintLayoutResId":I
    const/4 v13, 0x0

    #@66
    .line 252
    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@69
    move-result-object v9

    #@6a
    .line 255
    .local v9, "popupHintText":Ljava/lang/CharSequence;
    if-eq v6, v4, :cond_0

    #@6c
    .line 256
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@6f
    .line 259
    :cond_0
    new-instance v13, Landroid/widget/ListPopupWindow;

    #@71
    move-object/from16 v0, p0

    #@73
    iget-object v14, v0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    #@75
    move-object/from16 v0, p2

    #@77
    move/from16 v1, p3

    #@79
    move/from16 v2, p4

    #@7b
    invoke-direct {v13, v14, v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@7e
    move-object/from16 v0, p0

    #@80
    iput-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@82
    .line 260
    move-object/from16 v0, p0

    #@84
    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@86
    const/16 v14, 0x10

    #@88
    invoke-virtual {v13, v14}, Landroid/widget/ListPopupWindow;->setSoftInputMode(I)V

    #@8b
    .line 261
    move-object/from16 v0, p0

    #@8d
    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@8f
    const/4 v14, 0x1

    #@90
    invoke-virtual {v13, v14}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    #@93
    .line 262
    move-object/from16 v0, p0

    #@95
    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@97
    invoke-virtual {v13, v10}, Landroid/widget/ListPopupWindow;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    #@9a
    .line 263
    move-object/from16 v0, p0

    #@9c
    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@9e
    new-instance v14, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    #@a0
    const/4 v15, 0x0

    #@a1
    move-object/from16 v0, p0

    #@a3
    invoke-direct {v14, v0, v15}, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;)V

    #@a6
    invoke-virtual {v13, v14}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@a9
    .line 268
    move-object/from16 v0, p0

    #@ab
    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@ad
    invoke-virtual {v13, v12}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    #@b0
    .line 269
    move-object/from16 v0, p0

    #@b2
    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@b4
    invoke-virtual {v13, v7}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    #@b7
    .line 272
    move-object/from16 v0, p0

    #@b9
    iput v8, v0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    #@bb
    .line 273
    move-object/from16 v0, p0

    #@bd
    invoke-virtual {v0, v9}, Landroid/widget/AutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    #@c0
    .line 281
    const/4 v13, 0x6

    #@c1
    const/4 v14, -0x1

    #@c2
    .line 280
    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c5
    move-result v13

    #@c6
    move-object/from16 v0, p0

    #@c8
    iput v13, v0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    #@ca
    .line 283
    const/4 v13, 0x2

    #@cb
    const/4 v14, 0x2

    #@cc
    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    #@cf
    move-result v13

    #@d0
    move-object/from16 v0, p0

    #@d2
    iput v13, v0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    #@d4
    .line 285
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    #@d7
    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getInputType()I

    #@da
    move-result v5

    #@db
    .line 290
    .local v5, "inputType":I
    and-int/lit8 v13, v5, 0xf

    #@dd
    const/4 v14, 0x1

    #@de
    if-ne v13, v14, :cond_1

    #@e0
    .line 291
    const/high16 v13, 0x10000

    #@e2
    or-int/2addr v5, v13

    #@e3
    .line 292
    move-object/from16 v0, p0

    #@e5
    invoke-virtual {v0, v5}, Landroid/widget/AutoCompleteTextView;->setRawInputType(I)V

    #@e8
    .line 295
    :cond_1
    const/4 v13, 0x1

    #@e9
    move-object/from16 v0, p0

    #@eb
    invoke-virtual {v0, v13}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    #@ee
    .line 297
    new-instance v13, Landroid/widget/AutoCompleteTextView$MyWatcher;

    #@f0
    const/4 v14, 0x0

    #@f1
    move-object/from16 v0, p0

    #@f3
    invoke-direct {v13, v0, v14}, Landroid/widget/AutoCompleteTextView$MyWatcher;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$MyWatcher;)V

    #@f6
    move-object/from16 v0, p0

    #@f8
    invoke-virtual {v0, v13}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@fb
    .line 299
    new-instance v13, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    #@fd
    const/4 v14, 0x0

    #@fe
    move-object/from16 v0, p0

    #@100
    invoke-direct {v13, v0, v14}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$PassThroughClickListener;)V

    #@103
    move-object/from16 v0, p0

    #@105
    iput-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    #@107
    .line 300
    move-object/from16 v0, p0

    #@109
    iget-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    #@10b
    move-object/from16 v0, p0

    #@10d
    invoke-super {v0, v13}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@110
    .line 217
    return-void

    #@111
    .line 227
    .end local v5    # "inputType":I
    .end local v6    # "pa":Landroid/content/res/TypedArray;
    .end local v7    # "popupHeight":I
    .end local v8    # "popupHintLayoutResId":I
    .end local v9    # "popupHintText":Ljava/lang/CharSequence;
    .end local v10    # "popupListSelector":Landroid/graphics/drawable/Drawable;
    .end local v12    # "popupWidth":I
    :cond_2
    const/16 v13, 0x8

    #@113
    const/4 v14, 0x0

    #@114
    .line 226
    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@117
    move-result v11

    #@118
    .line 228
    .local v11, "popupThemeResId":I
    if-eqz v11, :cond_3

    #@11a
    .line 229
    new-instance v13, Landroid/view/ContextThemeWrapper;

    #@11c
    move-object/from16 v0, p1

    #@11e
    invoke-direct {v13, v0, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@121
    move-object/from16 v0, p0

    #@123
    iput-object v13, v0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    #@125
    goto/16 :goto_0

    #@127
    .line 231
    :cond_3
    move-object/from16 v0, p1

    #@129
    move-object/from16 v1, p0

    #@12b
    iput-object v0, v1, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    #@12d
    goto/16 :goto_0

    #@12f
    .line 241
    .end local v11    # "popupThemeResId":I
    :cond_4
    move-object v6, v4

    #@130
    .restart local v6    # "pa":Landroid/content/res/TypedArray;
    goto/16 :goto_1
.end method

.method private buildImeCompletions()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1231
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@3
    .line 1232
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    #@5
    .line 1233
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@8
    move-result-object v6

    #@9
    .line 1234
    .local v6, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_3

    #@b
    .line 1235
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@e
    move-result v10

    #@f
    const/16 v11, 0x14

    #@11
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@14
    move-result v2

    #@15
    .line 1236
    .local v2, "count":I
    new-array v1, v2, [Landroid/view/inputmethod/CompletionInfo;

    #@17
    .line 1237
    .local v1, "completions":[Landroid/view/inputmethod/CompletionInfo;
    const/4 v8, 0x0

    #@18
    .line 1239
    .local v8, "realCount":I
    const/4 v3, 0x0

    #@19
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@1b
    .line 1240
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@1e
    move-result v10

    #@1f
    if-eqz v10, :cond_0

    #@21
    .line 1241
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    #@24
    move-result-object v7

    #@25
    .line 1242
    .local v7, "item":Ljava/lang/Object;
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@28
    move-result-wide v4

    #@29
    .line 1243
    .local v4, "id":J
    new-instance v10, Landroid/view/inputmethod/CompletionInfo;

    #@2b
    .line 1244
    invoke-virtual {p0, v7}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@2e
    move-result-object v11

    #@2f
    .line 1243
    invoke-direct {v10, v4, v5, v8, v11}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    #@32
    aput-object v10, v1, v8

    #@34
    .line 1245
    add-int/lit8 v8, v8, 0x1

    #@36
    .line 1239
    .end local v4    # "id":J
    .end local v7    # "item":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@38
    goto :goto_0

    #@39
    .line 1249
    :cond_1
    if-eq v8, v2, :cond_2

    #@3b
    .line 1250
    new-array v9, v8, [Landroid/view/inputmethod/CompletionInfo;

    #@3d
    .line 1251
    .local v9, "tmp":[Landroid/view/inputmethod/CompletionInfo;
    invoke-static {v1, v12, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@40
    .line 1252
    move-object v1, v9

    #@41
    .line 1255
    .end local v9    # "tmp":[Landroid/view/inputmethod/CompletionInfo;
    :cond_2
    invoke-virtual {v6, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    #@44
    .line 1230
    .end local v1    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v6    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v8    # "realCount":I
    :cond_3
    return-void
.end method

.method private onClickImpl()V
    .locals 1

    #@0
    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 315
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    #@a
    .line 311
    :cond_0
    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .locals 9
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 991
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_4

    #@7
    .line 993
    if-gez p2, :cond_0

    #@9
    .line 994
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@b
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    #@e
    move-result-object v7

    #@f
    .line 998
    .local v7, "selectedItem":Ljava/lang/Object;
    :goto_0
    if-nez v7, :cond_1

    #@11
    .line 999
    const-string/jumbo v0, "AutoCompleteTextView"

    #@14
    const-string/jumbo v1, "performCompletion: no selected item"

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1000
    return-void

    #@1b
    .line 996
    .end local v7    # "selectedItem":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@1d
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    #@20
    move-result-object v7

    #@21
    .restart local v7    # "selectedItem":Ljava/lang/Object;
    goto :goto_0

    #@22
    .line 1003
    :cond_1
    const/4 v0, 0x1

    #@23
    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    #@25
    .line 1004
    invoke-virtual {p0, v7}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    #@2c
    .line 1005
    iput-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    #@2e
    .line 1007
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@30
    if-eqz v0, :cond_4

    #@32
    .line 1008
    iget-object v6, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@34
    .line 1010
    .local v6, "list":Landroid/widget/ListPopupWindow;
    if-eqz p1, :cond_2

    #@36
    if-gez p2, :cond_3

    #@38
    .line 1011
    :cond_2
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    #@3b
    move-result-object p1

    #@3c
    .line 1012
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    #@3f
    move-result p2

    #@40
    .line 1013
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemId()J

    #@43
    move-result-wide p3

    #@44
    .line 1015
    :cond_3
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@46
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    #@49
    move-result-object v1

    #@4a
    move-object v2, p1

    #@4b
    move v3, p2

    #@4c
    move-wide v4, p3

    #@4d
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    #@50
    .line 1019
    .end local v6    # "list":Landroid/widget/ListPopupWindow;
    .end local v7    # "selectedItem":Ljava/lang/Object;
    :cond_4
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    #@52
    if-eqz v0, :cond_5

    #@54
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@56
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_6

    #@5c
    .line 990
    :cond_5
    :goto_1
    return-void

    #@5d
    .line 1020
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    #@60
    goto :goto_1
.end method

.method private updateDropDownForFilter(I)V
    .locals 4
    .param p1, "count"    # I

    #@0
    .prologue
    .line 1071
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWindowVisibility()I

    #@3
    move-result v2

    #@4
    const/16 v3, 0x8

    #@6
    if-ne v2, v3, :cond_0

    #@8
    return-void

    #@9
    .line 1080
    :cond_0
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@b
    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    #@e
    move-result v0

    #@f
    .line 1081
    .local v0, "dropDownAlwaysVisible":Z
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    #@12
    move-result v1

    #@13
    .line 1082
    .local v1, "enoughToFilter":Z
    if-gtz p1, :cond_1

    #@15
    if-eqz v0, :cond_3

    #@17
    :cond_1
    if-eqz v1, :cond_3

    #@19
    .line 1083
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_2

    #@1f
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasWindowFocus()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2

    #@25
    iget-boolean v2, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    #@27
    if-eqz v2, :cond_2

    #@29
    .line 1084
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    #@2c
    .line 1069
    :cond_2
    :goto_0
    return-void

    #@2d
    .line 1086
    :cond_3
    if-nez v0, :cond_2

    #@2f
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_2

    #@35
    .line 1087
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    #@38
    .line 1091
    const/4 v2, 0x1

    #@39
    iput-boolean v2, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    #@3b
    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 1

    #@0
    .prologue
    .line 933
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    #@5
    .line 932
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "selectedItem"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 925
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public dismissDropDown()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1148
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@4
    move-result-object v0

    #@5
    .line 1149
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    #@7
    .line 1150
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    #@a
    .line 1152
    :cond_0
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@c
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    #@f
    .line 1153
    const/4 v1, 0x0

    #@10
    iput-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    #@12
    .line 1147
    return-void
.end method

.method doAfterTextChanged()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 877
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    return-void

    #@6
    .line 884
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mOpenBefore:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_3

    #@10
    .line 890
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_4

    #@16
    .line 891
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 892
    const/4 v0, 0x1

    #@1b
    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    #@1d
    .line 893
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    #@20
    move-result-object v0

    #@21
    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    #@23
    invoke-virtual {p0, v0, v1}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    #@26
    .line 876
    :cond_2
    :goto_0
    return-void

    #@27
    .line 885
    :cond_3
    return-void

    #@28
    .line 898
    :cond_4
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2a
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_5

    #@30
    .line 899
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    #@33
    .line 901
    :cond_5
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    #@35
    if-eqz v0, :cond_2

    #@37
    .line 902
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    #@39
    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    #@3c
    goto :goto_0
.end method

.method doBeforeTextChanged()V
    .locals 1

    #@0
    .prologue
    .line 868
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 872
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@8
    move-result v0

    #@9
    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mOpenBefore:Z

    #@b
    .line 867
    return-void
.end method

.method public enoughToFilter()Z
    .locals 2

    #@0
    .prologue
    .line 848
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    #@7
    move-result v0

    #@8
    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    #@a
    if-lt v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public ensureImeVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 1183
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    if-eqz p1, :cond_2

    #@4
    .line 1184
    const/4 v0, 0x1

    #@5
    .line 1183
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    #@8
    .line 1185
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@a
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    #@12
    if-eqz v0, :cond_1

    #@14
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1186
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    #@1d
    .line 1182
    :cond_1
    return-void

    #@1e
    .line 1184
    :cond_2
    const/4 v0, 0x2

    #@1f
    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    #@0
    .prologue
    .line 717
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    return-object v0
.end method

.method public getCompletionHint()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getDropDownAnchor()I
    .locals 1

    #@0
    .prologue
    .line 423
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    #@2
    return v0
.end method

.method public getDropDownAnimationStyle()I
    .locals 1

    #@0
    .prologue
    .line 542
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnimationStyle()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 448
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDropDownHeight()I
    .locals 1

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    #@0
    .prologue
    .line 514
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHorizontalOffset()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    #@0
    .prologue
    .line 492
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getVerticalOffset()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .locals 1

    #@0
    .prologue
    .line 1306
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    #@2
    return-object v0
.end method

.method public getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@2
    return-object v0
.end method

.method public getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 671
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@2
    return-object v0
.end method

.method public getListSelection()I
    .locals 1

    #@0
    .prologue
    .line 956
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    #@0
    .prologue
    .line 681
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@2
    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    #@0
    .prologue
    .line 691
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@2
    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    #@0
    .prologue
    .line 603
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    #@2
    return v0
.end method

.method public getValidator()Landroid/widget/AutoCompleteTextView$Validator;
    .locals 1

    #@0
    .prologue
    .line 1280
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    #@2
    return-object v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    #@0
    .prologue
    .line 551
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isDropDownDismissedOnCompletion()Z
    .locals 1

    #@0
    .prologue
    .line 577
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    #@2
    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    #@0
    .prologue
    .line 1194
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getInputMethodMode()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x2

    #@7
    if-ne v0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isPerformingCompletion()Z
    .locals 1

    #@0
    .prologue
    .line 1029
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    #@2
    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    #@0
    .prologue
    .line 913
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    #@0
    .prologue
    .line 1135
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    #@3
    .line 1134
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .param p1, "completion"    # Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 985
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 986
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@8
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->performItemClick(I)Z

    #@f
    .line 984
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 1140
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    #@3
    .line 1141
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    #@6
    .line 1139
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    #@0
    .prologue
    .line 1105
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDisplayHint(I)V

    #@3
    .line 1106
    packed-switch p1, :pswitch_data_0

    #@6
    .line 1104
    :cond_0
    :goto_0
    return-void

    #@7
    .line 1108
    :pswitch_0
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@9
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 1109
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    #@12
    goto :goto_0

    #@13
    .line 1106
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onFilterComplete(I)V
    .locals 0
    .param p1, "count"    # I

    #@0
    .prologue
    .line 1066
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    #@3
    .line 1065
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1117
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@3
    .line 1119
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isTemporarilyDetached()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1121
    return-void

    #@a
    .line 1125
    :cond_0
    if-nez p1, :cond_1

    #@c
    .line 1126
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    #@f
    .line 1128
    :cond_1
    if-nez p1, :cond_2

    #@11
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@13
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_3

    #@19
    .line 1116
    :cond_2
    :goto_0
    return-void

    #@1a
    .line 1129
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    #@1d
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 811
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@3
    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 812
    return v2

    #@a
    .line 815
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 816
    packed-switch p1, :pswitch_data_0

    #@13
    .line 824
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    const/16 v1, 0x3d

    #@1b
    if-ne p1, v1, :cond_2

    #@1d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 825
    return v2

    #@24
    .line 818
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 819
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    #@2d
    goto :goto_0

    #@2e
    .line 828
    :cond_2
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    #@30
    .line 829
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@33
    move-result v0

    #@34
    .line 830
    .local v0, "handled":Z
    const/4 v1, 0x0

    #@35
    iput v1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    #@37
    .line 832
    if-eqz v0, :cond_3

    #@39
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_3

    #@3f
    .line 833
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    #@42
    .line 836
    :cond_3
    return v0

    #@43
    .line 816
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 759
    const/4 v1, 0x4

    #@2
    if-ne p1, v1, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 760
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@c
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 780
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 763
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_3

    #@1d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_3

    #@23
    .line 764
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@26
    move-result-object v0

    #@27
    .line 765
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    #@29
    .line 766
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@2c
    .line 768
    :cond_2
    return v2

    #@2d
    .line 769
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@30
    move-result v1

    #@31
    if-ne v1, v2, :cond_0

    #@33
    .line 770
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@36
    move-result-object v0

    #@37
    .line 771
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    #@39
    .line 772
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    #@3c
    .line 774
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_0

    #@42
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@45
    move-result v1

    #@46
    if-nez v1, :cond_0

    #@48
    .line 775
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    #@4b
    .line 776
    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 785
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@3
    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@6
    move-result v0

    #@7
    .line 786
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    #@9
    .line 787
    sparse-switch p1, :sswitch_data_0

    #@c
    .line 801
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_2

    #@12
    const/16 v1, 0x3d

    #@14
    if-ne p1, v1, :cond_2

    #@16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 802
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    #@1f
    .line 803
    return v2

    #@20
    .line 794
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_1

    #@26
    .line 795
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    #@29
    .line 797
    :cond_1
    return v2

    #@2a
    .line 806
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@2d
    move-result v1

    #@2e
    return v1

    #@2f
    .line 787
    nop

    #@30
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    .line 1097
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    #@3
    .line 1098
    if-nez p1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@7
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1096
    :cond_0
    :goto_0
    return-void

    #@e
    .line 1099
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    #@11
    goto :goto_0
.end method

.method public performCompletion()V
    .locals 4

    #@0
    .prologue
    .line 980
    const-wide/16 v0, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, -0x1

    #@4
    invoke-direct {p0, v2, v3, v0, v1}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    #@7
    .line 979
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    #@0
    .prologue
    .line 971
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    #@2
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    #@5
    .line 970
    return-void
.end method

.method public performValidation()V
    .locals 2

    #@0
    .prologue
    .line 1291
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 1293
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    #@8
    move-result-object v0

    #@9
    .line 1295
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_1

    #@f
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    #@11
    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 1290
    :cond_1
    :goto_0
    return-void

    #@18
    .line 1296
    :cond_2
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    #@1a
    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    #@21
    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1056
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearComposingText()V

    #@3
    .line 1058
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    #@6
    .line 1060
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    #@9
    move-result-object v0

    #@a
    .line 1061
    .local v0, "spannable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    #@d
    move-result v1

    #@e
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@11
    .line 1055
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    const/4 v2, 0x0

    #@1
    .line 740
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    #@3
    if-nez v0, :cond_1

    #@5
    .line 741
    new-instance v0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    #@7
    invoke-direct {v0, p0, v2}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)V

    #@a
    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    #@c
    .line 745
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@e
    .line 746
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 748
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@14
    check-cast v0, Landroid/widget/Filterable;

    #@16
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    #@1c
    .line 749
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    #@1e
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@21
    .line 754
    :goto_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@23
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@25
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    #@28
    .line 739
    return-void

    #@29
    .line 742
    :cond_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 743
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@2f
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    #@31
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@34
    goto :goto_0

    #@35
    .line 751
    :cond_2
    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    #@37
    goto :goto_1
.end method

.method public setCompletionHint(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "hint"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 331
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    #@3
    .line 332
    if-eqz p1, :cond_1

    #@5
    .line 333
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 334
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    #@b
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@e
    move-result-object v1

    #@f
    .line 335
    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    #@11
    .line 334
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@14
    move-result-object v1

    #@15
    .line 335
    const v2, 0x1020014

    #@18
    .line 334
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/widget/TextView;

    #@1e
    .line 336
    .local v0, "hintView":Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    #@20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@23
    .line 337
    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    #@25
    .line 338
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@27
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    #@2a
    .line 330
    .end local v0    # "hintView":Landroid/widget/TextView;
    :goto_0
    return-void

    #@2b
    .line 340
    :cond_0
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    #@2d
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@30
    goto :goto_0

    #@31
    .line 343
    :cond_1
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@33
    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    #@36
    .line 344
    iput-object v3, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    #@38
    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 1
    .param p1, "dropDownAlwaysVisible"    # Z

    #@0
    .prologue
    .line 568
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setDropDownAlwaysVisible(Z)V

    #@5
    .line 567
    return-void
.end method

.method public setDropDownAnchor(I)V
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 436
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    #@2
    .line 437
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    #@8
    .line 435
    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    #@0
    .prologue
    .line 530
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnimationStyle(I)V

    #@5
    .line 529
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 459
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 458
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 470
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 469
    return-void
.end method

.method public setDropDownDismissedOnCompletion(Z)V
    .locals 0
    .param p1, "dropDownDismissedOnCompletion"    # Z

    #@0
    .prologue
    .line 589
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    #@2
    .line 588
    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 1
    .param p1, "height"    # I

    #@0
    .prologue
    .line 412
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    #@5
    .line 411
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 503
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    #@5
    .line 502
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 481
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    #@5
    .line 480
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1
    .param p1, "width"    # I

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    #@5
    .line 383
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 1
    .param p1, "forceIgnoreOutsideTouch"    # Z

    #@0
    .prologue
    .line 1227
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setForceIgnoreOutsideTouch(Z)V

    #@5
    .line 1226
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    #@0
    .prologue
    .line 1158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    #@3
    move-result v0

    #@4
    .line 1160
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1161
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    #@d
    .line 1164
    :cond_0
    return v0
.end method

.method public setListSelection(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 942
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    #@5
    .line 941
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    .line 305
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    #@2
    invoke-static {v0, p1}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->-set0(Landroid/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    #@5
    .line 304
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V
    .locals 2
    .param p1, "dismissListener"    # Landroid/widget/AutoCompleteTextView$OnDismissListener;

    #@0
    .prologue
    .line 700
    const/4 v0, 0x0

    #@1
    .line 701
    .local v0, "wrappedListener":Landroid/widget/PopupWindow$OnDismissListener;
    if-eqz p1, :cond_0

    #@3
    .line 702
    new-instance v0, Landroid/widget/AutoCompleteTextView$1;

    #@5
    .end local v0    # "wrappedListener":Landroid/widget/PopupWindow$OnDismissListener;
    invoke-direct {v0, p0, p1}, Landroid/widget/AutoCompleteTextView$1;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    #@8
    .line 708
    :cond_0
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@a
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    #@d
    .line 699
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    #@0
    .prologue
    .line 635
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@2
    .line 634
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    #@0
    .prologue
    .line 645
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@2
    .line 644
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filter"    # Z

    #@0
    .prologue
    .line 1039
    if-eqz p2, :cond_0

    #@2
    .line 1040
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    #@5
    .line 1038
    :goto_0
    return-void

    #@6
    .line 1042
    :cond_0
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    #@9
    .line 1043
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    #@c
    .line 1044
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    #@f
    goto :goto_0
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    #@0
    .prologue
    .line 621
    if-gtz p1, :cond_0

    #@2
    .line 622
    const/4 p1, 0x1

    #@3
    .line 625
    :cond_0
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    #@5
    .line 620
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .param p1, "validator"    # Landroid/widget/AutoCompleteTextView$Validator;

    #@0
    .prologue
    .line 1269
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    #@2
    .line 1268
    return-void
.end method

.method public showDropDown()V
    .locals 3

    #@0
    .prologue
    .line 1201
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->buildImeCompletions()V

    #@3
    .line 1203
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@5
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1204
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    #@d
    const/4 v1, -0x1

    #@e
    if-eq v0, v1, :cond_2

    #@10
    .line 1205
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@12
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getRootView()Landroid/view/View;

    #@15
    move-result-object v1

    #@16
    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    #@18
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    #@1f
    .line 1210
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_1

    #@25
    .line 1212
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@27
    const/4 v1, 0x1

    #@28
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    #@2b
    .line 1213
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2d
    const/4 v1, 0x3

    #@2e
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setListItemExpandMax(I)V

    #@31
    .line 1215
    :cond_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@33
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    #@36
    .line 1216
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@38
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    #@3b
    move-result-object v0

    #@3c
    const/4 v1, 0x0

    #@3d
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    #@40
    .line 1200
    return-void

    #@41
    .line 1207
    :cond_2
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@43
    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    #@46
    goto :goto_0
.end method

.method public showDropDownAfterLayout()V
    .locals 1

    #@0
    .prologue
    .line 1173
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->postShow()V

    #@5
    .line 1172
    return-void
.end method
