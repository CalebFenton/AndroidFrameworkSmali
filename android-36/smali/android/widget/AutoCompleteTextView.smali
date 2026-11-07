.class public Landroid/widget/AutoCompleteTextView;
.super Landroid/widget/EditText;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AutoCompleteTextView$Validator;,
        Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;,
        Landroid/widget/AutoCompleteTextView$MyWatcher;,
        Landroid/widget/AutoCompleteTextView$PassThroughClickListener;,
        Landroid/widget/AutoCompleteTextView$OnDismissListener;,
        Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;,
        Landroid/widget/AutoCompleteTextView$InputMethodMode;
    }
.end annotation


# static fields
.field static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o EXPAND_MAX:I = 0x3

.field static final greylist-max-o TAG:Ljava/lang/String; = "AutoCompleteTextView"


# instance fields
.field private greylist-max-o mAdapter:Landroid/widget/ListAdapter;

.field private blacklist mAutoCompleteTextWatcher:Landroid/widget/AutoCompleteTextView$MyWatcher;

.field private final blacklist mBackCallback:Landroid/window/OnBackInvokedCallback;

.field private blacklist mBackCallbackRegistered:Z

.field private greylist-max-o mBlockCompletion:Z

.field private greylist-max-o mDropDownAnchorId:I

.field private greylist-max-o mDropDownDismissedOnCompletion:Z

.field private greylist-max-o mFilter:Landroid/widget/Filter;

.field private greylist-max-o mHintResource:I

.field private greylist-max-o mHintText:Ljava/lang/CharSequence;

.field private greylist-max-r mHintView:Landroid/widget/TextView;

.field private greylist-max-o mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private greylist-max-o mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private greylist-max-o mLastKeyCode:I

.field private greylist mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

.field private final greylist mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

.field private final greylist mPopup:Landroid/widget/ListPopupWindow;

.field private greylist-max-o mPopupCanBeUpdated:Z

.field private final greylist-max-o mPopupContext:Landroid/content/Context;

.field private greylist-max-o mThreshold:I

.field private greylist-max-o mValidator:Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method public static synthetic blacklist $r8$lambda$I6XvJJZMvpt9qqnyqfIIlVzsfeg(Landroid/widget/AutoCompleteTextView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dEUeyVMznxgRIwrdodUODeN8h2g(Landroid/widget/AutoCompleteTextView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAdapter(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;
    .registers 1

    iget-object p0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBlockCompletion(Landroid/widget/AutoCompleteTextView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monClickImpl(Landroid/widget/AutoCompleteTextView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->onClickImpl()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mperformCompletion(Landroid/widget/AutoCompleteTextView;Landroid/view/View;IJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterOnBackInvokedCallback(Landroid/widget/AutoCompleteTextView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->unregisterOnBackInvokedCallback()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDropDownForFilter(Landroid/widget/AutoCompleteTextView;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 176
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 193
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 213
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "attrs":Landroid/util/AttributeSet;
    .local v3, "defStyleAttr":I
    .local v4, "defStyleRes":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    .line 214
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "popupTheme"    # Landroid/content/res/Resources$Theme;

    .line 240
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {p0 .. p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 132
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 134
    const/4 v9, 0x0

    iput v9, v0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 137
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 144
    iput-boolean v8, v0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 151
    new-instance v2, Landroid/widget/AutoCompleteTextView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/widget/AutoCompleteTextView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/AutoCompleteTextView;)V

    iput-object v2, v0, Landroid/widget/AutoCompleteTextView;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 242
    sget-object v2, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual {v1, v3, v2, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 244
    .local v4, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AutoCompleteTextView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 247
    if-eqz v7, :cond_36

    .line 248
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v1, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v2, v0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    goto :goto_48

    .line 250
    :cond_36
    const/16 v2, 0x8

    invoke-virtual {v4, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 252
    .local v2, "popupThemeResId":I
    if-eqz v2, :cond_46

    .line 253
    new-instance v11, Landroid/view/ContextThemeWrapper;

    invoke-direct {v11, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v11, v0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    goto :goto_48

    .line 255
    :cond_46
    iput-object v1, v0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    .line 261
    .end local v2    # "popupThemeResId":I
    :goto_48
    iget-object v2, v0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    if-eq v2, v1, :cond_5a

    .line 262
    iget-object v2, v0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual {v2, v3, v11, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 264
    .local v11, "pa":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AutoCompleteTextView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    goto :goto_5b

    .line 267
    .end local v11    # "pa":Landroid/content/res/TypedArray;
    :cond_5a
    move-object v11, v4

    .line 270
    .restart local v11    # "pa":Landroid/content/res/TypedArray;
    :goto_5b
    const/4 v1, 0x3

    invoke-virtual {v11, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 272
    .local v1, "popupListSelector":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x5

    const/4 v12, -0x2

    invoke-virtual {v11, v2, v12}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    .line 274
    .local v2, "popupWidth":I
    const/4 v13, 0x7

    invoke-virtual {v11, v13, v12}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v12

    .line 276
    .local v12, "popupHeight":I
    const v13, 0x109014b

    invoke-virtual {v11, v8, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 278
    .local v13, "popupHintLayoutResId":I
    invoke-virtual {v11, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 281
    .local v9, "popupHintText":Ljava/lang/CharSequence;
    if-eq v11, v4, :cond_7b

    .line 282
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 285
    :cond_7b
    new-instance v14, Landroid/widget/ListPopupWindow;

    iget-object v15, v0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    invoke-direct {v14, v15, v3, v5, v6}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v14, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 286
    iget-object v14, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v15, Landroid/widget/AutoCompleteTextView$$ExternalSyntheticLambda1;

    invoke-direct {v15, v0}, Landroid/widget/AutoCompleteTextView$$ExternalSyntheticLambda1;-><init>(Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v14, v15}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 289
    iget-object v14, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/16 v15, 0x10

    invoke-virtual {v14, v15}, Landroid/widget/ListPopupWindow;->setSoftInputMode(I)V

    .line 290
    iget-object v14, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v14, v8}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 291
    iget-object v14, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v14, v1}, Landroid/widget/ListPopupWindow;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v14, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v15, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    invoke-direct {v15, v0, v10}, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView-IA;)V

    invoke-virtual {v14, v15}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 297
    iget-object v14, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v14, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 298
    iget-object v14, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v14, v12}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 301
    iput v13, v0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    .line 302
    invoke-virtual {v0, v9}, Landroid/widget/AutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    .line 309
    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 312
    const/4 v14, 0x2

    invoke-virtual {v4, v14, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    .line 314
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 318
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getInputType()I

    move-result v14

    .line 319
    .local v14, "inputType":I
    and-int/lit8 v15, v14, 0xf

    if-ne v15, v8, :cond_d8

    .line 320
    const/high16 v15, 0x10000

    or-int/2addr v14, v15

    .line 321
    invoke-virtual {v0, v14}, Landroid/widget/AutoCompleteTextView;->setRawInputType(I)V

    .line 324
    :cond_d8
    invoke-virtual {v0, v8}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 326
    new-instance v8, Landroid/widget/AutoCompleteTextView$MyWatcher;

    invoke-direct {v8, v0, v10}, Landroid/widget/AutoCompleteTextView$MyWatcher;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView-IA;)V

    iput-object v8, v0, Landroid/widget/AutoCompleteTextView;->mAutoCompleteTextWatcher:Landroid/widget/AutoCompleteTextView$MyWatcher;

    .line 327
    iget-object v8, v0, Landroid/widget/AutoCompleteTextView;->mAutoCompleteTextWatcher:Landroid/widget/AutoCompleteTextView$MyWatcher;

    invoke-virtual {v0, v8}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 329
    new-instance v8, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-direct {v8, v0, v10}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView-IA;)V

    iput-object v8, v0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    .line 330
    iget-object v8, v0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-super {v0, v8}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    return-void
.end method

.method private greylist-max-o buildImeCompletions()V
    .registers 12

    .line 1352
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1353
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_4c

    .line 1354
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1355
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4c

    .line 1356
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1357
    .local v2, "count":I
    new-array v3, v2, [Landroid/view/inputmethod/CompletionInfo;

    .line 1358
    .local v3, "completions":[Landroid/view/inputmethod/CompletionInfo;
    const/4 v4, 0x0

    .line 1360
    .local v4, "realCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    if-ge v5, v2, :cond_40

    .line 1361
    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 1362
    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 1363
    .local v6, "item":Ljava/lang/Object;
    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    .line 1364
    .local v7, "id":J
    new-instance v9, Landroid/view/inputmethod/CompletionInfo;

    .line 1365
    invoke-virtual {p0, v6}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v9, v7, v8, v4, v10}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v9, v3, v4

    .line 1366
    add-int/lit8 v4, v4, 0x1

    .line 1360
    .end local v6    # "item":Ljava/lang/Object;
    .end local v7    # "id":J
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 1370
    .end local v5    # "i":I
    :cond_40
    if-eq v4, v2, :cond_49

    .line 1371
    new-array v5, v4, [Landroid/view/inputmethod/CompletionInfo;

    .line 1372
    .local v5, "tmp":[Landroid/view/inputmethod/CompletionInfo;
    const/4 v6, 0x0

    invoke-static {v3, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1373
    move-object v3, v5

    .line 1376
    .end local v5    # "tmp":[Landroid/view/inputmethod/CompletionInfo;
    :cond_49
    invoke-virtual {v1, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1379
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "count":I
    .end local v3    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v4    # "realCount":I
    :cond_4c
    return-void
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 2

    .line 152
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 153
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 155
    :cond_9
    return-void
.end method

.method private synthetic blacklist lambda$new$1()V
    .registers 1

    .line 287
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->unregisterOnBackInvokedCallback()V

    .line 288
    return-void
.end method

.method private greylist-max-o onClickImpl()V
    .registers 2

    .line 344
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 345
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    .line 347
    :cond_a
    return-void
.end method

.method private greylist-max-o performCompletion(Landroid/view/View;IJ)V
    .registers 13
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 1062
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1064
    if-gez p2, :cond_f

    .line 1065
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .local v0, "selectedItem":Ljava/lang/Object;
    goto :goto_15

    .line 1067
    .end local v0    # "selectedItem":Ljava/lang/Object;
    :cond_f
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1069
    .restart local v0    # "selectedItem":Ljava/lang/Object;
    :goto_15
    if-nez v0, :cond_1f

    .line 1070
    const-string v1, "AutoCompleteTextView"

    const-string v2, "performCompletion: no selected item"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return-void

    .line 1074
    :cond_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 1075
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 1076
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 1078
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_56

    .line 1079
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 1081
    .local v1, "list":Landroid/widget/ListPopupWindow;
    if-eqz p1, :cond_3b

    if-gez p2, :cond_37

    goto :goto_3b

    :cond_37
    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    goto :goto_4a

    .line 1082
    :cond_3b
    :goto_3b
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 1083
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p2

    .line 1084
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getSelectedItemId()J

    move-result-wide p3

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    .line 1086
    .end local p1    # "selectedView":Landroid/view/View;
    .end local p2    # "position":I
    .end local p3    # "id":J
    .local v4, "selectedView":Landroid/view/View;
    .local v5, "position":I
    .local v6, "id":J
    :goto_4a
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move-object p1, v4

    move p2, v5

    move-wide p3, v6

    .line 1090
    .end local v0    # "selectedItem":Ljava/lang/Object;
    .end local v1    # "list":Landroid/widget/ListPopupWindow;
    .end local v4    # "selectedView":Landroid/view/View;
    .end local v5    # "position":I
    .end local v6    # "id":J
    .restart local p1    # "selectedView":Landroid/view/View;
    .restart local p2    # "position":I
    .restart local p3    # "id":J
    :cond_56
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    if-eqz v0, :cond_65

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_65

    .line 1091
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1093
    :cond_65
    return-void
.end method

.method private blacklist registerOnBackInvokedCallback()V
    .registers 4

    .line 1450
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBackCallbackRegistered:Z

    if-eqz v0, :cond_5

    .line 1451
    return-void

    .line 1453
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    .line 1454
    .local v0, "dispatcher":Landroid/window/OnBackInvokedDispatcher;
    if-nez v0, :cond_c

    .line 1455
    return-void

    .line 1457
    :cond_c
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1458
    const v1, 0xf4240

    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 1461
    :cond_1c
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mBackCallbackRegistered:Z

    .line 1462
    return-void
.end method

.method private blacklist unregisterOnBackInvokedCallback()V
    .registers 3

    .line 1436
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBackCallbackRegistered:Z

    if-nez v0, :cond_5

    .line 1437
    return-void

    .line 1439
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    .line 1440
    .local v0, "dispatcher":Landroid/window/OnBackInvokedDispatcher;
    if-nez v0, :cond_c

    .line 1441
    return-void

    .line 1443
    :cond_c
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1444
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 1446
    :cond_19
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mBackCallbackRegistered:Z

    .line 1447
    return-void
.end method

.method private greylist-max-o updateDropDownForFilter(I)V
    .registers 5
    .param p1, "count"    # I

    .line 1142
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    return-void

    .line 1151
    :cond_9
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    .line 1152
    .local v0, "dropDownAlwaysVisible":Z
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v1

    .line 1153
    .local v1, "enoughToFilter":Z
    if-gtz p1, :cond_17

    if-eqz v0, :cond_2d

    :cond_17
    if-eqz v1, :cond_2d

    .line 1154
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-boolean v2, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    if-eqz v2, :cond_3b

    .line 1155
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_3b

    .line 1157
    :cond_2d
    if-nez v0, :cond_3b

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1158
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1162
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 1164
    :cond_3b
    :goto_3b
    return-void
.end method


# virtual methods
.method public whitelist clearListSelection()V
    .registers 2

    .line 1004
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 1005
    return-void
.end method

.method protected whitelist convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "selectedItem"    # Ljava/lang/Object;

    .line 996
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist dismissDropDown()V
    .registers 3

    .line 1219
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1220
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_12

    .line 1221
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1223
    :cond_12
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1224
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 1225
    return-void
.end method

.method greylist-max-p doAfterTextChanged()V
    .registers 3

    .line 949
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAutoCompleteTextWatcher:Landroid/widget/AutoCompleteTextView$MyWatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView$MyWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 950
    return-void
.end method

.method greylist-max-p doBeforeTextChanged()V
    .registers 4

    .line 940
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAutoCompleteTextWatcher:Landroid/widget/AutoCompleteTextView$MyWatcher;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/AutoCompleteTextView$MyWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 941
    return-void
.end method

.method public whitelist enoughToFilter()Z
    .registers 3

    .line 896
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-p ensureImeVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 1263
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_6

    .line 1264
    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x2

    .line 1263
    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1265
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1266
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1268
    :cond_1f
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1432
    const-class v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 764
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public whitelist getCompletionHint()Ljava/lang/CharSequence;
    .registers 2

    .line 389
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getDropDownAnchor()I
    .registers 2

    .line 462
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    return v0
.end method

.method public greylist-max-o getDropDownAnimationStyle()I
    .registers 2

    .line 585
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public whitelist getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 488
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDropDownHeight()I
    .registers 2

    .line 436
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHeight()I

    move-result v0

    return v0
.end method

.method public whitelist getDropDownHorizontalOffset()I
    .registers 2

    .line 556
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public whitelist getDropDownVerticalOffset()I
    .registers 2

    .line 533
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public whitelist getDropDownWidth()I
    .registers 2

    .line 405
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v0

    return v0
.end method

.method protected whitelist getFilter()Landroid/widget/Filter;
    .registers 2

    .line 1427
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public whitelist getInputMethodMode()I
    .registers 2

    .line 1295
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public whitelist getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 704
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public whitelist getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 717
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public whitelist getListSelection()I
    .registers 2

    .line 1027
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public whitelist getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .line 727
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public whitelist getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2

    .line 737
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public whitelist getThreshold()I
    .registers 2

    .line 649
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    return v0
.end method

.method public whitelist getValidator()Landroid/widget/AutoCompleteTextView$Validator;
    .registers 2

    .line 1401
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method public greylist-max-o isDropDownAlwaysVisible()Z
    .registers 2

    .line 594
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isDropDownDismissedOnCompletion()Z
    .registers 2

    .line 621
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    return v0
.end method

.method public greylist-max-p isInputMethodNotNeeded()Z
    .registers 3

    .line 1277
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist isPerformingCompletion()Z
    .registers 2

    .line 1100
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    return v0
.end method

.method public whitelist isPopupShowing()Z
    .registers 2

    .line 984
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 1

    .line 1206
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 1207
    return-void
.end method

.method public whitelist onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 4
    .param p1, "completion"    # Landroid/view/inputmethod/CompletionInfo;

    .line 1056
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1057
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->performItemClick(I)Z

    .line 1059
    :cond_f
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 1

    .line 1211
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1212
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 1213
    return-void
.end method

.method protected whitelist onDisplayHint(I)V
    .registers 3
    .param p1, "hint"    # I

    .line 1176
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDisplayHint(I)V

    .line 1177
    packed-switch p1, :pswitch_data_14

    goto :goto_12

    .line 1179
    :pswitch_7
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1180
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1184
    :cond_12
    :goto_12
    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x4
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist onFilterComplete(I)V
    .registers 2
    .param p1, "count"    # I

    .line 1137
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    .line 1138
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 1188
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1190
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1192
    return-void

    .line 1196
    :cond_a
    if-nez p1, :cond_f

    .line 1197
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    .line 1199
    :cond_f
    if-nez p1, :cond_1c

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1200
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1202
    :cond_1c
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 859
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 860
    return v1

    .line 863
    :cond_a
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 864
    packed-switch p1, :pswitch_data_44

    goto :goto_1d

    .line 866
    :pswitch_14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 867
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    .line 872
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_2e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 873
    return v1

    .line 876
    :cond_2e
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 877
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 878
    .local v0, "handled":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 880
    if-eqz v0, :cond_42

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 881
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 884
    :cond_42
    return v0

    nop

    :pswitch_data_44
    .packed-switch 0x14
        :pswitch_14
    .end packed-switch
.end method

.method public whitelist onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 806
    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_4b

    .line 807
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 810
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2c

    .line 811
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 812
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2b

    .line 813
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 815
    :cond_2b
    return v1

    .line 816
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4b

    .line 817
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 818
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3b

    .line 819
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 821
    :cond_3b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 822
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 823
    return v1

    .line 827
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4b
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 832
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 833
    .local v0, "consumed":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 834
    sparse-switch p1, :sswitch_data_30

    goto :goto_17

    .line 842
    :sswitch_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 843
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    .line 845
    :cond_16
    return v1

    .line 849
    :cond_17
    :goto_17
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x3d

    if-ne p1, v2, :cond_2b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 850
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    .line 851
    return v1

    .line 854
    :cond_2b
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :sswitch_data_30
    .sparse-switch
        0x17 -> :sswitch_d
        0x3d -> :sswitch_d
        0x42 -> :sswitch_d
        0xa0 -> :sswitch_d
    .end sparse-switch
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .line 1168
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 1169
    if-nez p1, :cond_10

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1170
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1172
    :cond_10
    return-void
.end method

.method public whitelist performCompletion()V
    .registers 5

    .line 1051
    const/4 v0, -0x1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    .line 1052
    return-void
.end method

.method protected whitelist performFiltering(Ljava/lang/CharSequence;I)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .line 1042
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 1043
    return-void
.end method

.method public whitelist performValidation()V
    .registers 3

    .line 1412
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v0, :cond_5

    return-void

    .line 1414
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1416
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1417
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1419
    :cond_20
    return-void
.end method

.method public final whitelist refreshAutoCompleteResults()V
    .registers 3

    .line 961
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 962
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_2c

    .line 963
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 964
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_2c

    .line 969
    :cond_17
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_22

    .line 970
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 972
    :cond_22
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_2c

    .line 973
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 976
    :cond_2c
    :goto_2c
    return-void
.end method

.method protected whitelist replaceText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1127
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearComposingText()V

    .line 1129
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1131
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1132
    .local v0, "spannable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1133
    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .line 787
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 788
    new-instance v0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {v0, p0, v1}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView-IA;)V

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    goto :goto_18

    .line 789
    :cond_d
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_18

    .line 790
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 792
    :cond_18
    :goto_18
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 793
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2e

    .line 795
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    .line 796
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_30

    .line 798
    :cond_2e
    iput-object v1, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    .line 801
    :goto_30
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 802
    return-void
.end method

.method public whitelist setCompletionHint(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 361
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 362
    const/4 v0, 0x0

    if-eqz p1, :cond_31

    .line 363
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    if-nez v1, :cond_2b

    .line 364
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 365
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 366
    .local v0, "hintView":Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    .line 368
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 369
    .end local v0    # "hintView":Landroid/widget/TextView;
    goto :goto_38

    .line 370
    :cond_2b
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38

    .line 373
    :cond_31
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 374
    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    .line 376
    :goto_38
    return-void
.end method

.method public greylist setDropDownAlwaysVisible(Z)V
    .registers 3
    .param p1, "dropDownAlwaysVisible"    # Z

    .line 612
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setDropDownAlwaysVisible(Z)V

    .line 613
    return-void
.end method

.method public whitelist setDropDownAnchor(I)V
    .registers 4
    .param p1, "id"    # I

    .line 475
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 476
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 477
    return-void
.end method

.method public greylist-max-p setDropDownAnimationStyle(I)V
    .registers 3
    .param p1, "animationStyle"    # I

    .line 573
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 574
    return-void
.end method

.method public whitelist setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 499
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    return-void
.end method

.method public whitelist setDropDownBackgroundResource(I)V
    .registers 4
    .param p1, "id"    # I

    .line 510
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 511
    return-void
.end method

.method public greylist-max-r setDropDownDismissedOnCompletion(Z)V
    .registers 2
    .param p1, "dropDownDismissedOnCompletion"    # Z

    .line 634
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 635
    return-void
.end method

.method public whitelist setDropDownHeight(I)V
    .registers 3
    .param p1, "height"    # I

    .line 451
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 452
    return-void
.end method

.method public whitelist setDropDownHorizontalOffset(I)V
    .registers 3
    .param p1, "offset"    # I

    .line 544
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 545
    return-void
.end method

.method public whitelist setDropDownVerticalOffset(I)V
    .registers 3
    .param p1, "offset"    # I

    .line 521
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 522
    return-void
.end method

.method public whitelist setDropDownWidth(I)V
    .registers 3
    .param p1, "width"    # I

    .line 420
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 421
    return-void
.end method

.method public greylist setForceIgnoreOutsideTouch(Z)V
    .registers 3
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .line 1348
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setForceIgnoreOutsideTouch(Z)V

    .line 1349
    return-void
.end method

.method protected whitelist setFrame(IIII)Z
    .registers 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 1229
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    move-result v0

    .line 1231
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1232
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1235
    :cond_d
    return v0
.end method

.method public whitelist setInputMethodMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 1311
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1312
    return-void
.end method

.method public whitelist setListSelection(I)V
    .registers 3
    .param p1, "position"    # I

    .line 1013
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    .line 1014
    return-void
.end method

.method public whitelist setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 335
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-static {v0, p1}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->-$$Nest$fputmWrapped(Landroid/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)V

    .line 336
    return-void
.end method

.method public whitelist setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V
    .registers 4
    .param p1, "dismissListener"    # Landroid/widget/AutoCompleteTextView$OnDismissListener;

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "wrappedListener":Landroid/widget/PopupWindow$OnDismissListener;
    if-eqz p1, :cond_9

    .line 748
    new-instance v1, Landroid/widget/AutoCompleteTextView$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/AutoCompleteTextView$1;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    move-object v0, v1

    .line 755
    :cond_9
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 756
    return-void
.end method

.method public whitelist setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 681
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 682
    return-void
.end method

.method public whitelist setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 691
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 692
    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filter"    # Z

    .line 1110
    if-eqz p2, :cond_6

    .line 1111
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 1113
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 1114
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 1117
    :goto_f
    return-void
.end method

.method public whitelist setThreshold(I)V
    .registers 2
    .param p1, "threshold"    # I

    .line 667
    if-gtz p1, :cond_3

    .line 668
    const/4 p1, 0x1

    .line 671
    :cond_3
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    .line 672
    return-void
.end method

.method public whitelist setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .registers 2
    .param p1, "validator"    # Landroid/widget/AutoCompleteTextView$Validator;

    .line 1390
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 1391
    return-void
.end method

.method public whitelist showDropDown()V
    .registers 4

    .line 1318
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->buildImeCompletions()V

    .line 1320
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_25

    .line 1321
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 1322
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    goto :goto_25

    .line 1324
    :cond_20
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1327
    :cond_25
    :goto_25
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1329
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1330
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setListItemExpandMax(I)V

    .line 1332
    :cond_37
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1333
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_47

    .line 1334
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->registerOnBackInvokedCallback()V

    .line 1336
    :cond_47
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 1337
    return-void
.end method

.method public greylist-max-r showDropDownAfterLayout()V
    .registers 2

    .line 1245
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->postShow()V

    .line 1246
    return-void
.end method
