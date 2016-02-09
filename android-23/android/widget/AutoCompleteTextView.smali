.class public Landroid/widget/AutoCompleteTextView;
.super Landroid/widget/EditText;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AutoCompleteTextView$MyWatcher;,
        Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;,
        Landroid/widget/AutoCompleteTextView$Validator;,
        Landroid/widget/AutoCompleteTextView$OnDismissListener;,
        Landroid/widget/AutoCompleteTextView$PassThroughClickListener;,
        Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;
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

.field private mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupCanBeUpdated:Z

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
    .line 129
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 133
    const v0, 0x101006b

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 137
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, -0x2

    #@3
    const/4 v5, 0x0

    #@4
    const/4 v4, 0x1

    #@5
    .line 142
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@8
    .line 111
    iput-boolean v4, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    #@a
    .line 113
    iput v7, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    #@c
    .line 116
    iput-object v5, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    #@e
    .line 123
    iput-boolean v4, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    #@10
    .line 144
    new-instance v2, Landroid/widget/ListPopupWindow;

    #@12
    invoke-direct {v2, p1, p2, p3, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@15
    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@17
    .line 145
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@19
    const/16 v3, 0x10

    #@1b
    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setSoftInputMode(I)V

    #@1e
    .line 146
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@20
    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    #@23
    .line 149
    sget-object v2, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    #@25
    .line 148
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@28
    move-result-object v0

    #@29
    .line 151
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2c
    move-result v2

    #@2d
    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    #@2f
    .line 153
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@31
    const/4 v3, 0x3

    #@32
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    #@39
    .line 159
    const/4 v2, 0x6

    #@3a
    .line 160
    const/4 v3, -0x1

    #@3b
    .line 159
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3e
    move-result v2

    #@3f
    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    #@41
    .line 164
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@43
    const/4 v3, 0x5

    #@44
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@47
    move-result v3

    #@48
    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    #@4b
    .line 166
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@4d
    const/4 v3, 0x7

    #@4e
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@51
    move-result v3

    #@52
    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    #@55
    .line 170
    const v2, 0x10900dc

    #@58
    .line 169
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@5b
    move-result v2

    #@5c
    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    #@5e
    .line 172
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@60
    new-instance v3, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    #@62
    invoke-direct {v3, p0, v5}, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;)V

    #@65
    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@68
    .line 173
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    #@6f
    .line 177
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getInputType()I

    #@72
    move-result v1

    #@73
    .line 178
    .local v1, "inputType":I
    and-int/lit8 v2, v1, 0xf

    #@75
    if-ne v2, v4, :cond_0

    #@77
    .line 180
    const/high16 v2, 0x10000

    #@79
    or-int/2addr v1, v2

    #@7a
    .line 181
    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setRawInputType(I)V

    #@7d
    .line 184
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@80
    .line 186
    invoke-virtual {p0, v4}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    #@83
    .line 188
    new-instance v2, Landroid/widget/AutoCompleteTextView$MyWatcher;

    #@85
    invoke-direct {v2, p0, v5}, Landroid/widget/AutoCompleteTextView$MyWatcher;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$MyWatcher;)V

    #@88
    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@8b
    .line 190
    new-instance v2, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    #@8d
    invoke-direct {v2, p0, v5}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$PassThroughClickListener;)V

    #@90
    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    #@92
    .line 191
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    #@94
    invoke-super {p0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@97
    .line 141
    return-void
.end method

.method private buildImeCompletions()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1122
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@3
    .line 1123
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    #@5
    .line 1124
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@8
    move-result-object v6

    #@9
    .line 1125
    .local v6, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_3

    #@b
    .line 1126
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
    .line 1127
    .local v2, "count":I
    new-array v1, v2, [Landroid/view/inputmethod/CompletionInfo;

    #@17
    .line 1128
    .local v1, "completions":[Landroid/view/inputmethod/CompletionInfo;
    const/4 v8, 0x0

    #@18
    .line 1130
    .local v8, "realCount":I
    const/4 v3, 0x0

    #@19
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@1b
    .line 1131
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@1e
    move-result v10

    #@1f
    if-eqz v10, :cond_0

    #@21
    .line 1132
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    #@24
    move-result-object v7

    #@25
    .line 1133
    .local v7, "item":Ljava/lang/Object;
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@28
    move-result-wide v4

    #@29
    .line 1134
    .local v4, "id":J
    new-instance v10, Landroid/view/inputmethod/CompletionInfo;

    #@2b
    .line 1135
    invoke-virtual {p0, v7}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@2e
    move-result-object v11

    #@2f
    .line 1134
    invoke-direct {v10, v4, v5, v8, v11}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    #@32
    aput-object v10, v1, v8

    #@34
    .line 1136
    add-int/lit8 v8, v8, 0x1

    #@36
    .line 1130
    .end local v4    # "id":J
    .end local v7    # "item":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@38
    goto :goto_0

    #@39
    .line 1140
    :cond_1
    if-eq v8, v2, :cond_2

    #@3b
    .line 1141
    new-array v9, v8, [Landroid/view/inputmethod/CompletionInfo;

    #@3d
    .line 1142
    .local v9, "tmp":[Landroid/view/inputmethod/CompletionInfo;
    invoke-static {v1, v12, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@40
    .line 1143
    move-object v1, v9

    #@41
    .line 1146
    .end local v9    # "tmp":[Landroid/view/inputmethod/CompletionInfo;
    :cond_2
    invoke-virtual {v6, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    #@44
    .line 1121
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
    .line 205
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 206
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    #@a
    .line 202
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
    .line 882
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_4

    #@7
    .line 884
    if-gez p2, :cond_0

    #@9
    .line 885
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@b
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    #@e
    move-result-object v7

    #@f
    .line 889
    .local v7, "selectedItem":Ljava/lang/Object;
    :goto_0
    if-nez v7, :cond_1

    #@11
    .line 890
    const-string/jumbo v0, "AutoCompleteTextView"

    #@14
    const-string/jumbo v1, "performCompletion: no selected item"

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 891
    return-void

    #@1b
    .line 887
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
    .line 894
    :cond_1
    const/4 v0, 0x1

    #@23
    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    #@25
    .line 895
    invoke-virtual {p0, v7}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    #@2c
    .line 896
    iput-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    #@2e
    .line 898
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@30
    if-eqz v0, :cond_4

    #@32
    .line 899
    iget-object v6, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@34
    .line 901
    .local v6, "list":Landroid/widget/ListPopupWindow;
    if-eqz p1, :cond_2

    #@36
    if-gez p2, :cond_3

    #@38
    .line 902
    :cond_2
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    #@3b
    move-result-object p1

    #@3c
    .line 903
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    #@3f
    move-result p2

    #@40
    .line 904
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemId()J

    #@43
    move-result-wide p3

    #@44
    .line 906
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
    .line 910
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
    .line 881
    :cond_5
    :goto_1
    return-void

    #@5d
    .line 911
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
    .line 962
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
    .line 971
    :cond_0
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@b
    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    #@e
    move-result v0

    #@f
    .line 972
    .local v0, "dropDownAlwaysVisible":Z
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    #@12
    move-result v1

    #@13
    .line 973
    .local v1, "enoughToFilter":Z
    if-gtz p1, :cond_1

    #@15
    if-eqz v0, :cond_3

    #@17
    :cond_1
    if-eqz v1, :cond_3

    #@19
    .line 974
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
    .line 975
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    #@2c
    .line 960
    :cond_2
    :goto_0
    return-void

    #@2d
    .line 977
    :cond_3
    if-nez v0, :cond_2

    #@2f
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_2

    #@35
    .line 978
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    #@38
    .line 982
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
    .line 824
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    #@5
    .line 823
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "selectedItem"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 816
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
    .line 1039
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@4
    move-result-object v0

    #@5
    .line 1040
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    #@7
    .line 1041
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    #@a
    .line 1043
    :cond_0
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@c
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    #@f
    .line 1044
    const/4 v1, 0x0

    #@10
    iput-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    #@12
    .line 1038
    return-void
.end method

.method doAfterTextChanged()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 768
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    return-void

    #@6
    .line 775
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
    .line 781
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_4

    #@16
    .line 782
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 783
    const/4 v0, 0x1

    #@1b
    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    #@1d
    .line 784
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    #@20
    move-result-object v0

    #@21
    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    #@23
    invoke-virtual {p0, v0, v1}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    #@26
    .line 767
    :cond_2
    :goto_0
    return-void

    #@27
    .line 776
    :cond_3
    return-void

    #@28
    .line 789
    :cond_4
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2a
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_5

    #@30
    .line 790
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    #@33
    .line 792
    :cond_5
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    #@35
    if-eqz v0, :cond_2

    #@37
    .line 793
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
    .line 759
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 763
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@8
    move-result v0

    #@9
    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mOpenBefore:Z

    #@b
    .line 758
    return-void
.end method

.method public enoughToFilter()Z
    .locals 2

    #@0
    .prologue
    .line 739
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
    .line 1074
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    if-eqz p1, :cond_2

    #@4
    .line 1075
    const/4 v0, 0x1

    #@5
    .line 1074
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    #@8
    .line 1076
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
    .line 1077
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    #@1d
    .line 1073
    :cond_1
    return-void

    #@1e
    .line 1075
    :cond_2
    const/4 v0, 0x2

    #@1f
    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    #@0
    .prologue
    .line 608
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    return-object v0
.end method

.method public getCompletionHint()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getDropDownAnchor()I
    .locals 1

    #@0
    .prologue
    .line 314
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    #@2
    return v0
.end method

.method public getDropDownAnimationStyle()I
    .locals 1

    #@0
    .prologue
    .line 433
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
    .line 339
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
    .line 289
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
    .line 405
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
    .line 383
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
    .line 262
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
    .line 1197
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
    .line 549
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
    .line 562
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@2
    return-object v0
.end method

.method public getListSelection()I
    .locals 1

    #@0
    .prologue
    .line 847
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
    .line 572
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@2
    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    #@0
    .prologue
    .line 582
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@2
    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    #@0
    .prologue
    .line 494
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    #@2
    return v0
.end method

.method public getValidator()Landroid/widget/AutoCompleteTextView$Validator;
    .locals 1

    #@0
    .prologue
    .line 1171
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    #@2
    return-object v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    #@0
    .prologue
    .line 442
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
    .line 468
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    #@2
    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    #@0
    .prologue
    .line 1085
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
    .line 920
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    #@2
    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    #@0
    .prologue
    .line 804
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
    .line 1026
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    #@3
    .line 1025
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .param p1, "completion"    # Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 876
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 877
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@8
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->performItemClick(I)Z

    #@f
    .line 875
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 1031
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    #@3
    .line 1032
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    #@6
    .line 1030
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    #@0
    .prologue
    .line 996
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDisplayHint(I)V

    #@3
    .line 997
    packed-switch p1, :pswitch_data_0

    #@6
    .line 995
    :cond_0
    :goto_0
    return-void

    #@7
    .line 999
    :pswitch_0
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@9
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 1000
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    #@12
    goto :goto_0

    #@13
    .line 997
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
    .line 957
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    #@3
    .line 956
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1008
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@3
    .line 1010
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mTemporaryDetach:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1012
    return-void

    #@8
    .line 1016
    :cond_0
    if-nez p1, :cond_1

    #@a
    .line 1017
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    #@d
    .line 1019
    :cond_1
    if-nez p1, :cond_2

    #@f
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@11
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_3

    #@17
    .line 1007
    :cond_2
    :goto_0
    return-void

    #@18
    .line 1020
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    #@1b
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
    .line 702
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@3
    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 703
    return v2

    #@a
    .line 706
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 707
    packed-switch p1, :pswitch_data_0

    #@13
    .line 715
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
    .line 716
    return v2

    #@24
    .line 709
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 710
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    #@2d
    goto :goto_0

    #@2e
    .line 719
    :cond_2
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    #@30
    .line 720
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@33
    move-result v0

    #@34
    .line 721
    .local v0, "handled":Z
    const/4 v1, 0x0

    #@35
    iput v1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    #@37
    .line 723
    if-eqz v0, :cond_3

    #@39
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_3

    #@3f
    .line 724
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    #@42
    .line 727
    :cond_3
    return v0

    #@43
    .line 707
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
    .line 650
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
    .line 651
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@c
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 671
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 654
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
    .line 655
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@26
    move-result-object v0

    #@27
    .line 656
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    #@29
    .line 657
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@2c
    .line 659
    :cond_2
    return v2

    #@2d
    .line 660
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@30
    move-result v1

    #@31
    if-ne v1, v2, :cond_0

    #@33
    .line 661
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@36
    move-result-object v0

    #@37
    .line 662
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    #@39
    .line 663
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    #@3c
    .line 665
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
    .line 666
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    #@4b
    .line 667
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
    .line 676
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@3
    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@6
    move-result v0

    #@7
    .line 677
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    #@9
    .line 678
    sparse-switch p1, :sswitch_data_0

    #@c
    .line 692
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
    .line 693
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    #@1f
    .line 694
    return v2

    #@20
    .line 685
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_1

    #@26
    .line 686
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    #@29
    .line 688
    :cond_1
    return v2

    #@2a
    .line 697
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@2d
    move-result v1

    #@2e
    return v1

    #@2f
    .line 678
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
    .line 988
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    #@3
    .line 989
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
    .line 987
    :cond_0
    :goto_0
    return-void

    #@e
    .line 990
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    #@11
    goto :goto_0
.end method

.method public performCompletion()V
    .locals 4

    #@0
    .prologue
    .line 871
    const-wide/16 v0, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, -0x1

    #@4
    invoke-direct {p0, v2, v3, v0, v1}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    #@7
    .line 870
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    #@0
    .prologue
    .line 862
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    #@2
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    #@5
    .line 861
    return-void
.end method

.method public performValidation()V
    .locals 2

    #@0
    .prologue
    .line 1182
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 1184
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    #@8
    move-result-object v0

    #@9
    .line 1186
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
    .line 1181
    :cond_1
    :goto_0
    return-void

    #@18
    .line 1187
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
    .line 947
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearComposingText()V

    #@3
    .line 949
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    #@6
    .line 951
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    #@9
    move-result-object v0

    #@a
    .line 952
    .local v0, "spannable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    #@d
    move-result v1

    #@e
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@11
    .line 946
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
    .line 631
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    #@3
    if-nez v0, :cond_1

    #@5
    .line 632
    new-instance v0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    #@7
    invoke-direct {v0, p0, v2}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)V

    #@a
    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    #@c
    .line 636
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@e
    .line 637
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 639
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
    .line 640
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    #@1e
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@21
    .line 645
    :goto_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@23
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@25
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    #@28
    .line 630
    return-void

    #@29
    .line 633
    :cond_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 634
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    #@2f
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    #@31
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@34
    goto :goto_0

    #@35
    .line 642
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
    .line 222
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    #@3
    .line 223
    if-eqz p1, :cond_1

    #@5
    .line 224
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 225
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    #@c
    move-result-object v1

    #@d
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@10
    move-result-object v1

    #@11
    .line 226
    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    #@13
    .line 225
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@16
    move-result-object v1

    #@17
    .line 226
    const v2, 0x1020014

    #@1a
    .line 225
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/widget/TextView;

    #@20
    .line 227
    .local v0, "hintView":Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    #@22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@25
    .line 228
    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    #@27
    .line 229
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@29
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    #@2c
    .line 221
    .end local v0    # "hintView":Landroid/widget/TextView;
    :goto_0
    return-void

    #@2d
    .line 231
    :cond_0
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    #@2f
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@32
    goto :goto_0

    #@33
    .line 234
    :cond_1
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@35
    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    #@38
    .line 235
    iput-object v3, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    #@3a
    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 1
    .param p1, "dropDownAlwaysVisible"    # Z

    #@0
    .prologue
    .line 459
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setDropDownAlwaysVisible(Z)V

    #@5
    .line 458
    return-void
.end method

.method public setDropDownAnchor(I)V
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 327
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    #@2
    .line 328
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    #@8
    .line 326
    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    #@0
    .prologue
    .line 421
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnimationStyle(I)V

    #@5
    .line 420
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 349
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 361
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
    .line 360
    return-void
.end method

.method public setDropDownDismissedOnCompletion(Z)V
    .locals 0
    .param p1, "dropDownDismissedOnCompletion"    # Z

    #@0
    .prologue
    .line 480
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    #@2
    .line 479
    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 1
    .param p1, "height"    # I

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    #@5
    .line 302
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    #@5
    .line 393
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    #@5
    .line 371
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1
    .param p1, "width"    # I

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    #@5
    .line 274
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 1
    .param p1, "forceIgnoreOutsideTouch"    # Z

    #@0
    .prologue
    .line 1118
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setForceIgnoreOutsideTouch(Z)V

    #@5
    .line 1117
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
    .line 1049
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    #@3
    move-result v0

    #@4
    .line 1051
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1052
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    #@d
    .line 1055
    :cond_0
    return v0
.end method

.method public setListSelection(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 833
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    #@5
    .line 832
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    #@2
    invoke-static {v0, p1}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->-set0(Landroid/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    #@5
    .line 195
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V
    .locals 2
    .param p1, "dismissListener"    # Landroid/widget/AutoCompleteTextView$OnDismissListener;

    #@0
    .prologue
    .line 591
    const/4 v0, 0x0

    #@1
    .line 592
    .local v0, "wrappedListener":Landroid/widget/PopupWindow$OnDismissListener;
    if-eqz p1, :cond_0

    #@3
    .line 593
    new-instance v0, Landroid/widget/AutoCompleteTextView$1;

    #@5
    .end local v0    # "wrappedListener":Landroid/widget/PopupWindow$OnDismissListener;
    invoke-direct {v0, p0, p1}, Landroid/widget/AutoCompleteTextView$1;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    #@8
    .line 599
    :cond_0
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@a
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    #@d
    .line 590
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    #@0
    .prologue
    .line 526
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@2
    .line 525
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    #@0
    .prologue
    .line 536
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@2
    .line 535
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filter"    # Z

    #@0
    .prologue
    .line 930
    if-eqz p2, :cond_0

    #@2
    .line 931
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    #@5
    .line 929
    :goto_0
    return-void

    #@6
    .line 933
    :cond_0
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    #@9
    .line 934
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    #@c
    .line 935
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
    .line 512
    if-gtz p1, :cond_0

    #@2
    .line 513
    const/4 p1, 0x1

    #@3
    .line 516
    :cond_0
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    #@5
    .line 511
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .param p1, "validator"    # Landroid/widget/AutoCompleteTextView$Validator;

    #@0
    .prologue
    .line 1160
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    #@2
    .line 1159
    return-void
.end method

.method public showDropDown()V
    .locals 3

    #@0
    .prologue
    .line 1092
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->buildImeCompletions()V

    #@3
    .line 1094
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@5
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1095
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    #@d
    const/4 v1, -0x1

    #@e
    if-eq v0, v1, :cond_2

    #@10
    .line 1096
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
    .line 1101
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_1

    #@25
    .line 1103
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@27
    const/4 v1, 0x1

    #@28
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    #@2b
    .line 1104
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2d
    const/4 v1, 0x3

    #@2e
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setListItemExpandMax(I)V

    #@31
    .line 1106
    :cond_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@33
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    #@36
    .line 1107
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
    .line 1091
    return-void

    #@41
    .line 1098
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
    .line 1064
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->postShow()V

    #@5
    .line 1063
    return-void
.end method
