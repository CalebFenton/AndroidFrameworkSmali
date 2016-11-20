.class public Landroid/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/ShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$ListSelectorHider;,
        Landroid/widget/ListPopupWindow$PopupDataSetObserver;,
        Landroid/widget/ListPopupWindow$PopupScrollListener;,
        Landroid/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroid/widget/ListPopupWindow$ResizePopupRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Landroid/widget/DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mForceIgnoreOutsideTouch:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

.field private mIsAnimatedFromAnchor:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static synthetic -get0(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 179
    const/4 v0, 0x0

    #@1
    const v1, 0x10102ff

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@8
    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 190
    const v0, 0x10102ff

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@7
    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 203
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v1, -0x2

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 71
    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@9
    .line 72
    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@b
    .line 75
    const/16 v1, 0x3ea

    #@d
    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    #@f
    .line 77
    iput-boolean v4, p0, Landroid/widget/ListPopupWindow;->mIsAnimatedFromAnchor:Z

    #@11
    .line 79
    iput v3, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    #@13
    .line 81
    iput-boolean v3, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    #@15
    .line 82
    iput-boolean v3, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    #@17
    .line 83
    const v1, 0x7fffffff

    #@1a
    iput v1, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    #@1c
    .line 86
    iput v3, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    #@1e
    .line 97
    new-instance v1, Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    #@20
    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$ResizePopupRunnable;)V

    #@23
    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    #@25
    .line 98
    new-instance v1, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    #@27
    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupTouchInterceptor;)V

    #@2a
    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    #@2c
    .line 99
    new-instance v1, Landroid/widget/ListPopupWindow$PopupScrollListener;

    #@2e
    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupScrollListener;)V

    #@31
    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    #@33
    .line 100
    new-instance v1, Landroid/widget/ListPopupWindow$ListSelectorHider;

    #@35
    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$ListSelectorHider;)V

    #@38
    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    #@3a
    .line 105
    new-instance v1, Landroid/graphics/Rect;

    #@3c
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@3f
    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@41
    .line 217
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    #@43
    .line 218
    new-instance v1, Landroid/os/Handler;

    #@45
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@48
    move-result-object v2

    #@49
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@4c
    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    #@4e
    .line 220
    sget-object v1, Lcom/android/internal/R$styleable;->ListPopupWindow:[I

    #@50
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@53
    move-result-object v0

    #@54
    .line 222
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@57
    move-result v1

    #@58
    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    #@5a
    .line 224
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@5d
    move-result v1

    #@5e
    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@60
    .line 226
    iget v1, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@62
    if-eqz v1, :cond_0

    #@64
    .line 227
    iput-boolean v4, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    #@66
    .line 229
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@69
    .line 231
    new-instance v1, Landroid/widget/PopupWindow;

    #@6b
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6e
    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@70
    .line 232
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@72
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@75
    .line 216
    return-void
.end method

.method private buildDropDown()I
    .locals 25

    #@0
    .prologue
    .line 1072
    const/16 v19, 0x0

    #@2
    .line 1074
    .local v19, "otherHeights":I
    move-object/from16 v0, p0

    #@4
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@6
    if-nez v2, :cond_8

    #@8
    .line 1075
    move-object/from16 v0, p0

    #@a
    iget-object v9, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    #@c
    .line 1083
    .local v9, "context":Landroid/content/Context;
    new-instance v2, Landroid/widget/ListPopupWindow$2;

    #@e
    move-object/from16 v0, p0

    #@10
    invoke-direct {v2, v0}, Landroid/widget/ListPopupWindow$2;-><init>(Landroid/widget/ListPopupWindow;)V

    #@13
    move-object/from16 v0, p0

    #@15
    iput-object v2, v0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    #@17
    .line 1093
    move-object/from16 v0, p0

    #@19
    iget-boolean v2, v0, Landroid/widget/ListPopupWindow;->mModal:Z

    #@1b
    if-eqz v2, :cond_6

    #@1d
    const/4 v2, 0x0

    #@1e
    :goto_0
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v9, v2}, Landroid/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroid/widget/DropDownListView;

    #@23
    move-result-object v2

    #@24
    move-object/from16 v0, p0

    #@26
    iput-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@28
    .line 1094
    move-object/from16 v0, p0

    #@2a
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    #@2c
    if-eqz v2, :cond_0

    #@2e
    .line 1095
    move-object/from16 v0, p0

    #@30
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@32
    move-object/from16 v0, p0

    #@34
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    #@36
    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    #@39
    .line 1097
    :cond_0
    move-object/from16 v0, p0

    #@3b
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    #@41
    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@44
    .line 1098
    move-object/from16 v0, p0

    #@46
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@48
    move-object/from16 v0, p0

    #@4a
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@4c
    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@4f
    .line 1099
    move-object/from16 v0, p0

    #@51
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@53
    const/4 v4, 0x1

    #@54
    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setFocusable(Z)V

    #@57
    .line 1100
    move-object/from16 v0, p0

    #@59
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@5b
    const/4 v4, 0x1

    #@5c
    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    #@5f
    .line 1101
    move-object/from16 v0, p0

    #@61
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@63
    new-instance v4, Landroid/widget/ListPopupWindow$3;

    #@65
    move-object/from16 v0, p0

    #@67
    invoke-direct {v4, v0}, Landroid/widget/ListPopupWindow$3;-><init>(Landroid/widget/ListPopupWindow;)V

    #@6a
    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@6d
    .line 1117
    move-object/from16 v0, p0

    #@6f
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@71
    move-object/from16 v0, p0

    #@73
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    #@75
    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    #@78
    .line 1119
    move-object/from16 v0, p0

    #@7a
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@7c
    if-eqz v2, :cond_1

    #@7e
    .line 1120
    move-object/from16 v0, p0

    #@80
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@82
    move-object/from16 v0, p0

    #@84
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@86
    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@89
    .line 1123
    :cond_1
    move-object/from16 v0, p0

    #@8b
    iget-object v10, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@8d
    .line 1125
    .local v10, "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    #@8f
    iget-object v14, v0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@91
    .line 1126
    .local v14, "hintView":Landroid/view/View;
    if-eqz v14, :cond_2

    #@93
    .line 1129
    new-instance v12, Landroid/widget/LinearLayout;

    #@95
    invoke-direct {v12, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@98
    .line 1130
    .local v12, "hintContainer":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    #@99
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@9c
    .line 1132
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    #@9e
    .line 1133
    const/4 v2, -0x1

    #@9f
    const/4 v4, 0x0

    #@a0
    const/high16 v5, 0x3f800000    # 1.0f

    #@a2
    .line 1132
    invoke-direct {v13, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@a5
    .line 1136
    .local v13, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    #@a7
    iget v2, v0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    #@a9
    packed-switch v2, :pswitch_data_0

    #@ac
    .line 1148
    const-string/jumbo v2, "ListPopupWindow"

    #@af
    new-instance v4, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v5, "Invalid hint position "

    #@b7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v4

    #@bb
    move-object/from16 v0, p0

    #@bd
    iget v5, v0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    #@bf
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v4

    #@c3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v4

    #@c7
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ca
    .line 1156
    :goto_1
    move-object/from16 v0, p0

    #@cc
    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@ce
    if-ltz v2, :cond_7

    #@d0
    .line 1157
    const/high16 v22, -0x80000000

    #@d2
    .line 1158
    .local v22, "widthMode":I
    move-object/from16 v0, p0

    #@d4
    iget v0, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@d6
    move/from16 v23, v0

    #@d8
    .line 1163
    .local v23, "widthSize":I
    :goto_2
    move/from16 v0, v23

    #@da
    move/from16 v1, v22

    #@dc
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@df
    move-result v24

    #@e0
    .line 1164
    .local v24, "widthSpec":I
    const/4 v11, 0x0

    #@e1
    .line 1165
    .local v11, "heightSpec":I
    const/4 v2, 0x0

    #@e2
    move/from16 v0, v24

    #@e4
    invoke-virtual {v14, v0, v2}, Landroid/view/View;->measure(II)V

    #@e7
    .line 1167
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@ea
    move-result-object v13

    #@eb
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    #@ed
    .line 1168
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    #@f0
    move-result v2

    #@f1
    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@f3
    add-int/2addr v2, v4

    #@f4
    .line 1169
    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@f6
    .line 1168
    add-int v19, v2, v4

    #@f8
    .line 1171
    move-object v10, v12

    #@f9
    .line 1174
    .end local v11    # "heightSpec":I
    .end local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v22    # "widthMode":I
    .end local v23    # "widthSize":I
    .end local v24    # "widthSpec":I
    :cond_2
    move-object/from16 v0, p0

    #@fb
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@fd
    invoke-virtual {v2, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@100
    .line 1188
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "dropDownView":Landroid/view/ViewGroup;
    .end local v14    # "hintView":Landroid/view/View;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    #@102
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@104
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    #@107
    move-result-object v8

    #@108
    .line 1189
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_9

    #@10a
    .line 1190
    move-object/from16 v0, p0

    #@10c
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@10e
    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@111
    .line 1191
    move-object/from16 v0, p0

    #@113
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@115
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@117
    move-object/from16 v0, p0

    #@119
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@11b
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@11d
    add-int v20, v2, v4

    #@11f
    .line 1195
    .local v20, "padding":I
    move-object/from16 v0, p0

    #@121
    iget-boolean v2, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    #@123
    if-nez v2, :cond_4

    #@125
    .line 1196
    move-object/from16 v0, p0

    #@127
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@129
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@12b
    neg-int v2, v2

    #@12c
    move-object/from16 v0, p0

    #@12e
    iput v2, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@130
    .line 1205
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    #@132
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@134
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    #@137
    move-result v2

    #@138
    const/4 v4, 0x2

    #@139
    if-ne v2, v4, :cond_a

    #@13b
    const/4 v15, 0x1

    #@13c
    .line 1206
    .local v15, "ignoreBottomDecorations":Z
    :goto_5
    move-object/from16 v0, p0

    #@13e
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@140
    .line 1207
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@143
    move-result-object v4

    #@144
    move-object/from16 v0, p0

    #@146
    iget v5, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@148
    .line 1206
    invoke-virtual {v2, v4, v5, v15}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    #@14b
    move-result v18

    #@14c
    .line 1208
    .local v18, "maxHeight":I
    move-object/from16 v0, p0

    #@14e
    iget-boolean v2, v0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    #@150
    if-nez v2, :cond_5

    #@152
    move-object/from16 v0, p0

    #@154
    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@156
    const/4 v4, -0x1

    #@157
    if-ne v2, v4, :cond_b

    #@159
    .line 1209
    :cond_5
    add-int v2, v18, v20

    #@15b
    return v2

    #@15c
    .line 1093
    .end local v8    # "background":Landroid/graphics/drawable/Drawable;
    .end local v15    # "ignoreBottomDecorations":Z
    .end local v18    # "maxHeight":I
    .end local v20    # "padding":I
    .restart local v9    # "context":Landroid/content/Context;
    :cond_6
    const/4 v2, 0x1

    #@15d
    goto/16 :goto_0

    #@15f
    .line 1138
    .restart local v10    # "dropDownView":Landroid/view/ViewGroup;
    .restart local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v14    # "hintView":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@162
    .line 1139
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@165
    goto/16 :goto_1

    #@167
    .line 1143
    :pswitch_1
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@16a
    .line 1144
    invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@16d
    goto/16 :goto_1

    #@16f
    .line 1160
    :cond_7
    const/16 v22, 0x0

    #@171
    .line 1161
    .restart local v22    # "widthMode":I
    const/16 v23, 0x0

    #@173
    .restart local v23    # "widthSize":I
    goto/16 :goto_2

    #@175
    .line 1176
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "dropDownView":Landroid/view/ViewGroup;
    .end local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "hintView":Landroid/view/View;
    .end local v22    # "widthMode":I
    .end local v23    # "widthSize":I
    :cond_8
    move-object/from16 v0, p0

    #@177
    iget-object v0, v0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@179
    move-object/from16 v21, v0

    #@17b
    .line 1177
    .local v21, "view":Landroid/view/View;
    if-eqz v21, :cond_3

    #@17d
    .line 1179
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@180
    move-result-object v13

    #@181
    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    #@183
    .line 1180
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    #@186
    move-result v2

    #@187
    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@189
    add-int/2addr v2, v4

    #@18a
    .line 1181
    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@18c
    .line 1180
    add-int v19, v2, v4

    #@18e
    goto/16 :goto_3

    #@190
    .line 1199
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "view":Landroid/view/View;
    .restart local v8    # "background":Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object/from16 v0, p0

    #@192
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@194
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    #@197
    .line 1200
    const/16 v20, 0x0

    #@199
    .restart local v20    # "padding":I
    goto :goto_4

    #@19a
    .line 1205
    :cond_a
    const/4 v15, 0x0

    #@19b
    .restart local v15    # "ignoreBottomDecorations":Z
    goto :goto_5

    #@19c
    .line 1213
    .restart local v18    # "maxHeight":I
    :cond_b
    move-object/from16 v0, p0

    #@19e
    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@1a0
    packed-switch v2, :pswitch_data_1

    #@1a3
    .line 1227
    move-object/from16 v0, p0

    #@1a5
    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@1a7
    const/high16 v4, 0x40000000    # 2.0f

    #@1a9
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1ac
    move-result v3

    #@1ad
    .line 1233
    .local v3, "childWidthSpec":I
    :goto_6
    move-object/from16 v0, p0

    #@1af
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@1b1
    .line 1234
    sub-int v6, v18, v19

    #@1b3
    const/4 v4, 0x0

    #@1b4
    const/4 v5, -0x1

    #@1b5
    const/4 v7, -0x1

    #@1b6
    .line 1233
    invoke-virtual/range {v2 .. v7}, Landroid/widget/DropDownListView;->measureHeightOfChildren(IIIII)I

    #@1b9
    move-result v16

    #@1ba
    .line 1235
    .local v16, "listContent":I
    if-lez v16, :cond_c

    #@1bc
    .line 1236
    move-object/from16 v0, p0

    #@1be
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@1c0
    invoke-virtual {v2}, Landroid/widget/DropDownListView;->getPaddingTop()I

    #@1c3
    move-result v2

    #@1c4
    .line 1237
    move-object/from16 v0, p0

    #@1c6
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@1c8
    invoke-virtual {v4}, Landroid/widget/DropDownListView;->getPaddingBottom()I

    #@1cb
    move-result v4

    #@1cc
    .line 1236
    add-int v17, v2, v4

    #@1ce
    .line 1238
    .local v17, "listPadding":I
    add-int v2, v20, v17

    #@1d0
    add-int v19, v19, v2

    #@1d2
    .line 1241
    .end local v17    # "listPadding":I
    :cond_c
    add-int v2, v16, v19

    #@1d4
    return v2

    #@1d5
    .line 1216
    .end local v3    # "childWidthSpec":I
    .end local v16    # "listContent":I
    :pswitch_2
    move-object/from16 v0, p0

    #@1d7
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    #@1d9
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1dc
    move-result-object v2

    #@1dd
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1e0
    move-result-object v2

    #@1e1
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@1e3
    .line 1217
    move-object/from16 v0, p0

    #@1e5
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@1e7
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@1e9
    move-object/from16 v0, p0

    #@1eb
    iget-object v5, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@1ed
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@1ef
    add-int/2addr v4, v5

    #@1f0
    .line 1216
    sub-int/2addr v2, v4

    #@1f1
    .line 1218
    const/high16 v4, -0x80000000

    #@1f3
    .line 1215
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1f6
    move-result v3

    #@1f7
    .restart local v3    # "childWidthSpec":I
    goto :goto_6

    #@1f8
    .line 1222
    .end local v3    # "childWidthSpec":I
    :pswitch_3
    move-object/from16 v0, p0

    #@1fa
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    #@1fc
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1ff
    move-result-object v2

    #@200
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@203
    move-result-object v2

    #@204
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@206
    .line 1223
    move-object/from16 v0, p0

    #@208
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@20a
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@20c
    move-object/from16 v0, p0

    #@20e
    iget-object v5, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@210
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@212
    add-int/2addr v4, v5

    #@213
    .line 1222
    sub-int/2addr v2, v4

    #@214
    .line 1224
    const/high16 v4, 0x40000000    # 2.0f

    #@216
    .line 1221
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@219
    move-result v3

    #@21a
    .restart local v3    # "childWidthSpec":I
    goto :goto_6

    #@21b
    .line 1136
    nop

    #@21c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    #@224
    .line 1213
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removePromptView()V
    .locals 3

    #@0
    .prologue
    .line 706
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 707
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@6
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@9
    move-result-object v1

    #@a
    .line 708
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    #@c
    if-eqz v2, :cond_0

    #@e
    move-object v0, v1

    #@f
    .line 709
    check-cast v0, Landroid/view/ViewGroup;

    #@11
    .line 710
    .local v0, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@13
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@16
    .line 705
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    #@0
    .prologue
    .line 762
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@2
    .line 763
    .local v0, "list":Landroid/widget/DropDownListView;
    if-eqz v0, :cond_0

    #@4
    .line 765
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    #@8
    .line 766
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->hideSelector()V

    #@b
    .line 767
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->requestLayout()V

    #@e
    .line 761
    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p1, "src"    # Landroid/view/View;

    #@0
    .prologue
    .line 1056
    new-instance v0, Landroid/widget/ListPopupWindow$1;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/widget/ListPopupWindow$1;-><init>(Landroid/widget/ListPopupWindow;Landroid/view/View;)V

    #@5
    return-object v0
.end method

.method createDropDownListView(Landroid/content/Context;Z)Landroid/widget/DropDownListView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    #@0
    .prologue
    .line 866
    new-instance v0, Landroid/widget/DropDownListView;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    #@5
    return-object v0
.end method

.method public dismiss()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 689
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    #@6
    .line 690
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    #@9
    .line 691
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@b
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@e
    .line 692
    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@10
    .line 693
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    #@12
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@17
    .line 688
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 412
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 519
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@2
    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    #@0
    .prologue
    .line 429
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    #@2
    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    #@0
    .prologue
    .line 737
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    #@0
    .prologue
    .line 862
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@2
    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    #@0
    .prologue
    .line 277
    iget v0, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    #@2
    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 811
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 812
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 814
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@a
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    #@0
    .prologue
    .line 837
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 838
    const-wide/high16 v0, -0x8000000000000000L

    #@8
    return-wide v0

    #@9
    .line 840
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@b
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemId()J

    #@e
    move-result-wide v0

    #@f
    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    #@0
    .prologue
    .line 824
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 825
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 827
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@a
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 850
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 851
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 853
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@a
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedView()Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getSoftInputMode()I
    .locals 1

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    #@0
    .prologue
    .line 445
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 446
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 448
    :cond_0
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@8
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 486
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@2
    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    #@0
    .prologue
    .line 335
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    #@2
    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    #@0
    .prologue
    .line 784
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

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

.method public isModal()Z
    .locals 1

    #@0
    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    #@2
    return v0
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 776
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/16 v12, 0x14

    #@2
    const/16 v11, 0x13

    #@4
    const/4 v10, 0x0

    #@5
    const/4 v9, 0x1

    #@6
    .line 892
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@9
    move-result v7

    #@a
    if-eqz v7, :cond_0

    #@c
    .line 898
    const/16 v7, 0x3e

    #@e
    if-eq p1, v7, :cond_0

    #@10
    .line 899
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@12
    invoke-virtual {v7}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    #@15
    move-result v7

    #@16
    if-gez v7, :cond_1

    #@18
    .line 900
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_1

    #@1e
    .line 972
    :cond_0
    :goto_0
    return v10

    #@1f
    .line 901
    :cond_1
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@21
    invoke-virtual {v7}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    #@24
    move-result v4

    #@25
    .line 904
    .local v4, "curIndex":I
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@27
    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    #@2a
    move-result v7

    #@2b
    if-eqz v7, :cond_4

    #@2d
    const/4 v2, 0x0

    #@2e
    .line 906
    .local v2, "below":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    #@30
    .line 909
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    #@33
    .line 910
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    #@35
    .line 912
    .local v6, "lastItem":I
    if-eqz v0, :cond_2

    #@37
    .line 913
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    #@3a
    move-result v1

    #@3b
    .line 914
    .local v1, "allEnabled":Z
    if-eqz v1, :cond_5

    #@3d
    const/4 v5, 0x0

    #@3e
    .line 916
    :goto_2
    if-eqz v1, :cond_6

    #@40
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@43
    move-result v7

    #@44
    add-int/lit8 v6, v7, -0x1

    #@46
    .line 920
    .end local v1    # "allEnabled":Z
    :cond_2
    :goto_3
    if-eqz v2, :cond_7

    #@48
    if-ne p1, v11, :cond_7

    #@4a
    if-gt v4, v5, :cond_7

    #@4c
    .line 924
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    #@4f
    .line 925
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@51
    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@54
    .line 926
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    #@57
    .line 927
    return v9

    #@58
    .line 904
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :cond_4
    const/4 v2, 0x1

    #@59
    .restart local v2    # "below":Z
    goto :goto_1

    #@5a
    .line 915
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "allEnabled":Z
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_5
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@5c
    invoke-virtual {v7, v10, v9}, Landroid/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    #@5f
    move-result v5

    #@60
    goto :goto_2

    #@61
    .line 917
    :cond_6
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@63
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@66
    move-result v8

    #@67
    add-int/lit8 v8, v8, -0x1

    #@69
    invoke-virtual {v7, v8, v10}, Landroid/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    #@6c
    move-result v6

    #@6d
    goto :goto_3

    #@6e
    .line 921
    .end local v1    # "allEnabled":Z
    :cond_7
    if-nez v2, :cond_8

    #@70
    if-ne p1, v12, :cond_8

    #@72
    if-ge v4, v6, :cond_3

    #@74
    .line 931
    :cond_8
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@76
    invoke-virtual {v7, v10}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    #@79
    .line 934
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@7b
    invoke-virtual {v7, p1, p2}, Landroid/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@7e
    move-result v3

    #@7f
    .line 937
    .local v3, "consumed":Z
    if-eqz v3, :cond_9

    #@81
    .line 940
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@83
    const/4 v8, 0x2

    #@84
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@87
    .line 945
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@89
    invoke-virtual {v7}, Landroid/widget/DropDownListView;->requestFocusFromTouch()Z

    #@8c
    .line 946
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    #@8f
    .line 948
    sparse-switch p1, :sswitch_data_0

    #@92
    goto :goto_0

    #@93
    .line 955
    :sswitch_0
    return v9

    #@94
    .line 958
    :cond_9
    if-eqz v2, :cond_a

    #@96
    if-ne p1, v12, :cond_a

    #@98
    .line 961
    if-ne v4, v6, :cond_0

    #@9a
    .line 962
    return v9

    #@9b
    .line 964
    :cond_a
    if-nez v2, :cond_0

    #@9d
    if-ne p1, v11, :cond_0

    #@9f
    .line 965
    if-ne v4, v5, :cond_0

    #@a1
    .line 966
    return v9

    #@a2
    .line 948
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1011
    const/4 v2, 0x4

    #@3
    if-ne p1, v2, :cond_3

    #@5
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_3

    #@b
    .line 1014
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    #@d
    .line 1015
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_1

    #@13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_1

    #@19
    .line 1016
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@1c
    move-result-object v1

    #@1d
    .line 1017
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    #@1f
    .line 1018
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@22
    .line 1020
    :cond_0
    return v4

    #@23
    .line 1021
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@26
    move-result v2

    #@27
    if-ne v2, v4, :cond_3

    #@29
    .line 1022
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@2c
    move-result-object v1

    #@2d
    .line 1023
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    #@2f
    .line 1024
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    #@32
    .line 1026
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_3

    #@38
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_4

    #@3e
    .line 1032
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    return v3

    #@3f
    .line 1027
    .restart local v0    # "anchorView":Landroid/view/View;
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    #@42
    .line 1028
    return v4
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 987
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@9
    invoke-virtual {v1}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    #@c
    move-result v1

    #@d
    if-ltz v1, :cond_1

    #@f
    .line 988
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@11
    invoke-virtual {v1, p1, p2}, Landroid/widget/DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@14
    move-result v0

    #@15
    .line 989
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    #@17
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 992
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    #@20
    .line 994
    :cond_0
    return v0

    #@21
    .line 996
    .end local v0    # "consumed":Z
    :cond_1
    return v2
.end method

.method public performItemClick(I)Z
    .locals 7
    .param p1, "position"    # I

    #@0
    .prologue
    .line 795
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 796
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 797
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@c
    .line 798
    .local v1, "list":Landroid/widget/DropDownListView;
    invoke-virtual {v1}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    #@f
    move-result v0

    #@10
    sub-int v0, p1, v0

    #@12
    invoke-virtual {v1, v0}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v2

    #@16
    .line 799
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    #@19
    move-result-object v6

    #@1a
    .line 800
    .local v6, "adapter":Landroid/widget/ListAdapter;
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@1c
    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@1f
    move-result-wide v4

    #@20
    move v3, p1

    #@21
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    #@24
    .line 802
    .end local v1    # "list":Landroid/widget/DropDownListView;
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    #@25
    return v0

    #@26
    .line 804
    :cond_1
    const/4 v0, 0x0

    #@27
    return v0
.end method

.method public postShow()V
    .locals 2

    #@0
    .prologue
    .line 587
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@7
    .line 586
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 242
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    #@3
    if-nez v0, :cond_3

    #@5
    .line 243
    new-instance v0, Landroid/widget/ListPopupWindow$PopupDataSetObserver;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupDataSetObserver;)V

    #@a
    iput-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    #@c
    .line 247
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    #@e
    .line 248
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 249
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    #@14
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@17
    .line 252
    :cond_1
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 253
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@1d
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    #@1f
    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@22
    .line 241
    :cond_2
    return-void

    #@23
    .line 244
    :cond_3
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 245
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    #@29
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    #@2b
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@2e
    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    #@0
    .prologue
    .line 422
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    #@2
    .line 421
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    #@5
    .line 392
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 383
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    #@0
    .prologue
    .line 506
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    .line 507
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@8
    .line 508
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@d
    .line 509
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@f
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@11
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@13
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@15
    add-int/2addr v1, v2

    #@16
    add-int/2addr v1, p1

    #@17
    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@19
    .line 505
    :goto_0
    return-void

    #@1a
    .line 511
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    #@1d
    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .param p1, "dropDownAlwaysVisible"    # Z

    #@0
    .prologue
    .line 326
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    #@2
    .line 325
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 479
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    #@2
    .line 478
    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 469
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    #@2
    .line 468
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z

    #@0
    .prologue
    .line 311
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    #@2
    .line 310
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    #@0
    .prologue
    .line 528
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@2
    .line 527
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 438
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    #@2
    .line 437
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 728
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@5
    .line 727
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    #@0
    .prologue
    .line 876
    iput p1, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    #@2
    .line 875
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 368
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    #@2
    .line 367
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    #@0
    .prologue
    .line 290
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    #@2
    .line 291
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    #@7
    .line 289
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    #@0
    .prologue
    .line 702
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    #@5
    .line 701
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    #@0
    .prologue
    .line 552
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@2
    .line 551
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    #@0
    .prologue
    .line 563
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@2
    .line 562
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    #@0
    .prologue
    .line 267
    iput p1, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    #@2
    .line 266
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;

    #@0
    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    .line 574
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    #@6
    .line 575
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    #@9
    .line 577
    :cond_0
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@b
    .line 578
    if-eqz v0, :cond_1

    #@d
    .line 579
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    #@10
    .line 572
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 747
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@3
    .line 748
    .local v0, "list":Landroid/widget/DropDownListView;
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 749
    invoke-virtual {v0, v2}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    #@e
    .line 750
    invoke-virtual {v0, p1}, Landroid/widget/DropDownListView;->setSelection(I)V

    #@11
    .line 751
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getChoiceMode()I

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 752
    const/4 v1, 0x1

    #@18
    invoke-virtual {v0, p1, v1}, Landroid/widget/DropDownListView;->setItemChecked(IZ)V

    #@1b
    .line 746
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    #@5
    .line 348
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 457
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@2
    .line 458
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    #@5
    .line 456
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    #@0
    .prologue
    .line 496
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@2
    .line 495
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    #@0
    .prologue
    .line 541
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    #@2
    .line 540
    return-void
.end method

.method public show()V
    .locals 10

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, -0x2

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v5, -0x1

    #@4
    .line 596
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->buildDropDown()I

    #@7
    move-result v6

    #@8
    .line 598
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    #@b
    move-result v8

    #@c
    .line 599
    .local v8, "noInputMethod":Z
    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@e
    if-eqz v8, :cond_2

    #@10
    move v0, v1

    #@11
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setAllowScrollingAnchorParent(Z)V

    #@14
    .line 600
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@16
    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    #@18
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    #@1b
    .line 602
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@1d
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_e

    #@23
    .line 604
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@25
    if-ne v0, v5, :cond_3

    #@27
    .line 607
    const/4 v9, -0x1

    #@28
    .line 615
    .local v9, "widthSpec":I
    :goto_1
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@2a
    if-ne v0, v5, :cond_9

    #@2c
    .line 618
    if-eqz v8, :cond_5

    #@2e
    move v7, v6

    #@2f
    .line 619
    .local v7, "heightSpec":I
    :goto_2
    if-eqz v8, :cond_7

    #@31
    .line 620
    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@33
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@35
    if-ne v0, v5, :cond_6

    #@37
    move v0, v5

    #@38
    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@3b
    .line 622
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@3d
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@40
    .line 634
    :goto_4
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@42
    iget-boolean v3, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    #@44
    if-nez v3, :cond_0

    #@46
    iget-boolean v3, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    #@48
    if-eqz v3, :cond_b

    #@4a
    :cond_0
    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    #@4d
    .line 636
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@4f
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@52
    move-result-object v1

    #@53
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    #@55
    .line 637
    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@57
    if-gez v9, :cond_c

    #@59
    move v4, v5

    #@5a
    .line 638
    :goto_6
    if-gez v7, :cond_d

    #@5c
    .line 636
    :goto_7
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    #@5f
    .line 595
    :cond_1
    :goto_8
    return-void

    #@60
    .end local v7    # "heightSpec":I
    .end local v9    # "widthSpec":I
    :cond_2
    move v0, v2

    #@61
    .line 599
    goto :goto_0

    #@62
    .line 608
    :cond_3
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@64
    if-ne v0, v4, :cond_4

    #@66
    .line 609
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@6d
    move-result v9

    #@6e
    .restart local v9    # "widthSpec":I
    goto :goto_1

    #@6f
    .line 611
    .end local v9    # "widthSpec":I
    :cond_4
    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@71
    .restart local v9    # "widthSpec":I
    goto :goto_1

    #@72
    .line 618
    :cond_5
    const/4 v7, -0x1

    #@73
    .restart local v7    # "heightSpec":I
    goto :goto_2

    #@74
    :cond_6
    move v0, v1

    #@75
    .line 621
    goto :goto_3

    #@76
    .line 624
    :cond_7
    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@78
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@7a
    if-ne v0, v5, :cond_8

    #@7c
    move v0, v5

    #@7d
    :goto_9
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@80
    .line 626
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@82
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@85
    goto :goto_4

    #@86
    :cond_8
    move v0, v1

    #@87
    .line 625
    goto :goto_9

    #@88
    .line 628
    .end local v7    # "heightSpec":I
    :cond_9
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@8a
    if-ne v0, v4, :cond_a

    #@8c
    .line 629
    move v7, v6

    #@8d
    .restart local v7    # "heightSpec":I
    goto :goto_4

    #@8e
    .line 631
    .end local v7    # "heightSpec":I
    :cond_a
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@90
    .restart local v7    # "heightSpec":I
    goto :goto_4

    #@91
    :cond_b
    move v1, v2

    #@92
    .line 634
    goto :goto_5

    #@93
    :cond_c
    move v4, v9

    #@94
    .line 637
    goto :goto_6

    #@95
    :cond_d
    move v5, v7

    #@96
    .line 638
    goto :goto_7

    #@97
    .line 641
    .end local v7    # "heightSpec":I
    .end local v9    # "widthSpec":I
    :cond_e
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@99
    if-ne v0, v5, :cond_12

    #@9b
    .line 642
    const/4 v9, -0x1

    #@9c
    .line 652
    .restart local v9    # "widthSpec":I
    :goto_a
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@9e
    if-ne v0, v5, :cond_14

    #@a0
    .line 653
    const/4 v7, -0x1

    #@a1
    .line 662
    .restart local v7    # "heightSpec":I
    :goto_b
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@a3
    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@a6
    .line 663
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@a8
    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@ab
    .line 664
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@ad
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClipToScreenEnabled(Z)V

    #@b0
    .line 668
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@b2
    iget-boolean v3, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    #@b4
    if-nez v3, :cond_f

    #@b6
    iget-boolean v3, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    #@b8
    if-eqz v3, :cond_16

    #@ba
    :cond_f
    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    #@bd
    .line 669
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@bf
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    #@c1
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    #@c4
    .line 670
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@c6
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    #@c8
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    #@cb
    .line 671
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@cd
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@d0
    move-result-object v1

    #@d1
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    #@d3
    .line 672
    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@d5
    iget v4, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    #@d7
    .line 671
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    #@da
    .line 673
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@dc
    invoke-virtual {v0, v5}, Landroid/widget/DropDownListView;->setSelection(I)V

    #@df
    .line 675
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    #@e1
    if-eqz v0, :cond_10

    #@e3
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    #@e5
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->isInTouchMode()Z

    #@e8
    move-result v0

    #@e9
    if-eqz v0, :cond_11

    #@eb
    .line 676
    :cond_10
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    #@ee
    .line 678
    :cond_11
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    #@f0
    if-nez v0, :cond_1

    #@f2
    .line 679
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    #@f4
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    #@f6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@f9
    goto/16 :goto_8

    #@fb
    .line 644
    .end local v7    # "heightSpec":I
    .end local v9    # "widthSpec":I
    :cond_12
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@fd
    if-ne v0, v4, :cond_13

    #@ff
    .line 645
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@102
    move-result-object v0

    #@103
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@106
    move-result v9

    #@107
    .restart local v9    # "widthSpec":I
    goto :goto_a

    #@108
    .line 647
    .end local v9    # "widthSpec":I
    :cond_13
    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@10a
    .restart local v9    # "widthSpec":I
    goto :goto_a

    #@10b
    .line 655
    :cond_14
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@10d
    if-ne v0, v4, :cond_15

    #@10f
    .line 656
    move v7, v6

    #@110
    .restart local v7    # "heightSpec":I
    goto :goto_b

    #@111
    .line 658
    .end local v7    # "heightSpec":I
    :cond_15
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@113
    .restart local v7    # "heightSpec":I
    goto :goto_b

    #@114
    :cond_16
    move v1, v2

    #@115
    .line 668
    goto :goto_c
.end method
