.class public Landroid/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$ForwardingListener;,
        Landroid/widget/ListPopupWindow$DropDownListView;,
        Landroid/widget/ListPopupWindow$PopupDataSetObserver;,
        Landroid/widget/ListPopupWindow$ListSelectorHider;,
        Landroid/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroid/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroid/widget/ListPopupWindow$PopupScrollListener;
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

.field private mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mForceIgnoreOutsideTouch:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLayoutDirection:I

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static synthetic -get0(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$DropDownListView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

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

.method static synthetic -get2(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;
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
    .line 178
    const/4 v0, 0x0

    #@1
    const v1, 0x10102ff

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@8
    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 189
    const v0, 0x10102ff

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@7
    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 201
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 200
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
    const/4 v2, -0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 77
    iput v2, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@9
    .line 78
    iput v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@b
    .line 81
    const/16 v2, 0x3ea

    #@d
    iput v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    #@f
    .line 84
    iput v4, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    #@11
    .line 86
    iput-boolean v4, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    #@13
    .line 87
    iput-boolean v4, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    #@15
    .line 88
    const v2, 0x7fffffff

    #@18
    iput v2, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    #@1a
    .line 91
    iput v4, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    #@1c
    .line 102
    new-instance v2, Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    #@1e
    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$ResizePopupRunnable;)V

    #@21
    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    #@23
    .line 103
    new-instance v2, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    #@25
    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupTouchInterceptor;)V

    #@28
    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    #@2a
    .line 104
    new-instance v2, Landroid/widget/ListPopupWindow$PopupScrollListener;

    #@2c
    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupScrollListener;)V

    #@2f
    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    #@31
    .line 105
    new-instance v2, Landroid/widget/ListPopupWindow$ListSelectorHider;

    #@33
    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$ListSelectorHider;)V

    #@36
    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    #@38
    .line 110
    new-instance v2, Landroid/graphics/Rect;

    #@3a
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@3d
    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@3f
    .line 214
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    #@41
    .line 215
    new-instance v2, Landroid/os/Handler;

    #@43
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@46
    move-result-object v3

    #@47
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@4a
    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    #@4c
    .line 217
    sget-object v2, Lcom/android/internal/R$styleable;->ListPopupWindow:[I

    #@4e
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@51
    move-result-object v0

    #@52
    .line 219
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@55
    move-result v2

    #@56
    iput v2, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    #@58
    .line 221
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@5b
    move-result v2

    #@5c
    iput v2, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@5e
    .line 223
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@60
    if-eqz v2, :cond_0

    #@62
    .line 224
    iput-boolean v5, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    #@64
    .line 226
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@67
    .line 228
    new-instance v2, Landroid/widget/PopupWindow;

    #@69
    invoke-direct {v2, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6c
    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@6e
    .line 229
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@70
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@73
    .line 231
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    #@75
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7c
    move-result-object v2

    #@7d
    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@7f
    .line 232
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    #@82
    move-result v2

    #@83
    iput v2, p0, Landroid/widget/ListPopupWindow;->mLayoutDirection:I

    #@85
    .line 213
    return-void
.end method

.method private buildDropDown()I
    .locals 24

    #@0
    .prologue
    .line 1050
    const/16 v18, 0x0

    #@2
    .line 1052
    .local v18, "otherHeights":I
    move-object/from16 v0, p0

    #@4
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@6
    if-nez v2, :cond_8

    #@8
    .line 1053
    move-object/from16 v0, p0

    #@a
    iget-object v9, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    #@c
    .line 1061
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
    .line 1071
    new-instance v4, Landroid/widget/ListPopupWindow$DropDownListView;

    #@19
    move-object/from16 v0, p0

    #@1b
    iget-boolean v2, v0, Landroid/widget/ListPopupWindow;->mModal:Z

    #@1d
    if-eqz v2, :cond_6

    #@1f
    const/4 v2, 0x0

    #@20
    :goto_0
    invoke-direct {v4, v9, v2}, Landroid/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    #@23
    move-object/from16 v0, p0

    #@25
    iput-object v4, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@27
    .line 1072
    move-object/from16 v0, p0

    #@29
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    #@2b
    if-eqz v2, :cond_0

    #@2d
    .line 1073
    move-object/from16 v0, p0

    #@2f
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    #@35
    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    #@38
    .line 1075
    :cond_0
    move-object/from16 v0, p0

    #@3a
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    #@40
    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@43
    .line 1076
    move-object/from16 v0, p0

    #@45
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@4b
    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@4e
    .line 1077
    move-object/from16 v0, p0

    #@50
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@52
    const/4 v4, 0x1

    #@53
    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    #@56
    .line 1078
    move-object/from16 v0, p0

    #@58
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@5a
    const/4 v4, 0x1

    #@5b
    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    #@5e
    .line 1079
    move-object/from16 v0, p0

    #@60
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@62
    new-instance v4, Landroid/widget/ListPopupWindow$3;

    #@64
    move-object/from16 v0, p0

    #@66
    invoke-direct {v4, v0}, Landroid/widget/ListPopupWindow$3;-><init>(Landroid/widget/ListPopupWindow;)V

    #@69
    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@6c
    .line 1095
    move-object/from16 v0, p0

    #@6e
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@70
    move-object/from16 v0, p0

    #@72
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    #@74
    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    #@77
    .line 1097
    move-object/from16 v0, p0

    #@79
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@7b
    if-eqz v2, :cond_1

    #@7d
    .line 1098
    move-object/from16 v0, p0

    #@7f
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@81
    move-object/from16 v0, p0

    #@83
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@85
    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@88
    .line 1101
    :cond_1
    move-object/from16 v0, p0

    #@8a
    iget-object v10, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@8c
    .line 1103
    .local v10, "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    #@8e
    iget-object v14, v0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@90
    .line 1104
    .local v14, "hintView":Landroid/view/View;
    if-eqz v14, :cond_2

    #@92
    .line 1107
    new-instance v12, Landroid/widget/LinearLayout;

    #@94
    invoke-direct {v12, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@97
    .line 1108
    .local v12, "hintContainer":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    #@98
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@9b
    .line 1110
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    #@9d
    .line 1111
    const/4 v2, -0x1

    #@9e
    const/4 v4, 0x0

    #@9f
    const/high16 v5, 0x3f800000    # 1.0f

    #@a1
    .line 1110
    invoke-direct {v13, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@a4
    .line 1114
    .local v13, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    #@a6
    iget v2, v0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    #@a8
    packed-switch v2, :pswitch_data_0

    #@ab
    .line 1126
    const-string/jumbo v2, "ListPopupWindow"

    #@ae
    new-instance v4, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v5, "Invalid hint position "

    #@b6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v4

    #@ba
    move-object/from16 v0, p0

    #@bc
    iget v5, v0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    #@be
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v4

    #@c2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v4

    #@c6
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c9
    .line 1134
    :goto_1
    move-object/from16 v0, p0

    #@cb
    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@cd
    if-ltz v2, :cond_7

    #@cf
    .line 1135
    const/high16 v21, -0x80000000

    #@d1
    .line 1136
    .local v21, "widthMode":I
    move-object/from16 v0, p0

    #@d3
    iget v0, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@d5
    move/from16 v22, v0

    #@d7
    .line 1141
    .local v22, "widthSize":I
    :goto_2
    move/from16 v0, v22

    #@d9
    move/from16 v1, v21

    #@db
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@de
    move-result v23

    #@df
    .line 1142
    .local v23, "widthSpec":I
    const/4 v11, 0x0

    #@e0
    .line 1143
    .local v11, "heightSpec":I
    const/4 v2, 0x0

    #@e1
    move/from16 v0, v23

    #@e3
    invoke-virtual {v14, v0, v2}, Landroid/view/View;->measure(II)V

    #@e6
    .line 1145
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e9
    move-result-object v13

    #@ea
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    #@ec
    .line 1146
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    #@ef
    move-result v2

    #@f0
    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@f2
    add-int/2addr v2, v4

    #@f3
    .line 1147
    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@f5
    .line 1146
    add-int v18, v2, v4

    #@f7
    .line 1149
    move-object v10, v12

    #@f8
    .line 1152
    .end local v11    # "heightSpec":I
    .end local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "widthMode":I
    .end local v22    # "widthSize":I
    .end local v23    # "widthSpec":I
    :cond_2
    move-object/from16 v0, p0

    #@fa
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@fc
    invoke-virtual {v2, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@ff
    .line 1166
    .end local v9    # "context":Landroid/content/Context;
    .end local v14    # "hintView":Landroid/view/View;
    :cond_3
    :goto_3
    const/16 v19, 0x0

    #@101
    .line 1167
    .local v19, "padding":I
    move-object/from16 v0, p0

    #@103
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@105
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    #@108
    move-result-object v8

    #@109
    .line 1168
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_9

    #@10b
    .line 1169
    move-object/from16 v0, p0

    #@10d
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@10f
    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@112
    .line 1170
    move-object/from16 v0, p0

    #@114
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@116
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@118
    move-object/from16 v0, p0

    #@11a
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@11c
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@11e
    add-int v19, v2, v4

    #@120
    .line 1174
    move-object/from16 v0, p0

    #@122
    iget-boolean v2, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    #@124
    if-nez v2, :cond_4

    #@126
    .line 1175
    move-object/from16 v0, p0

    #@128
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@12a
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@12c
    neg-int v2, v2

    #@12d
    move-object/from16 v0, p0

    #@12f
    iput v2, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@131
    .line 1183
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    #@133
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@135
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    #@138
    move-result v2

    #@139
    const/4 v4, 0x2

    #@13a
    if-ne v2, v4, :cond_a

    #@13c
    const/4 v15, 0x1

    #@13d
    .line 1184
    .local v15, "ignoreBottomDecorations":Z
    :goto_5
    move-object/from16 v0, p0

    #@13f
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@141
    .line 1185
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@144
    move-result-object v4

    #@145
    move-object/from16 v0, p0

    #@147
    iget v5, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@149
    .line 1184
    invoke-virtual {v2, v4, v5, v15}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    #@14c
    move-result v17

    #@14d
    .line 1187
    .local v17, "maxHeight":I
    move-object/from16 v0, p0

    #@14f
    iget-boolean v2, v0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    #@151
    if-nez v2, :cond_5

    #@153
    move-object/from16 v0, p0

    #@155
    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@157
    const/4 v4, -0x1

    #@158
    if-ne v2, v4, :cond_b

    #@15a
    .line 1188
    :cond_5
    add-int v2, v17, v19

    #@15c
    return v2

    #@15d
    .line 1071
    .end local v8    # "background":Landroid/graphics/drawable/Drawable;
    .end local v10    # "dropDownView":Landroid/view/ViewGroup;
    .end local v15    # "ignoreBottomDecorations":Z
    .end local v17    # "maxHeight":I
    .end local v19    # "padding":I
    .restart local v9    # "context":Landroid/content/Context;
    :cond_6
    const/4 v2, 0x1

    #@15e
    goto/16 :goto_0

    #@160
    .line 1116
    .restart local v10    # "dropDownView":Landroid/view/ViewGroup;
    .restart local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v14    # "hintView":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@163
    .line 1117
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@166
    goto/16 :goto_1

    #@168
    .line 1121
    :pswitch_1
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@16b
    .line 1122
    invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@16e
    goto/16 :goto_1

    #@170
    .line 1138
    :cond_7
    const/16 v21, 0x0

    #@172
    .line 1139
    .restart local v21    # "widthMode":I
    const/16 v22, 0x0

    #@174
    .restart local v22    # "widthSize":I
    goto/16 :goto_2

    #@176
    .line 1154
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "dropDownView":Landroid/view/ViewGroup;
    .end local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "hintView":Landroid/view/View;
    .end local v21    # "widthMode":I
    .end local v22    # "widthSize":I
    :cond_8
    move-object/from16 v0, p0

    #@178
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@17a
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    #@17d
    move-result-object v10

    #@17e
    check-cast v10, Landroid/view/ViewGroup;

    #@180
    .line 1155
    .restart local v10    # "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    #@182
    iget-object v0, v0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@184
    move-object/from16 v20, v0

    #@186
    .line 1156
    .local v20, "view":Landroid/view/View;
    if-eqz v20, :cond_3

    #@188
    .line 1158
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@18b
    move-result-object v13

    #@18c
    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    #@18e
    .line 1159
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    #@191
    move-result v2

    #@192
    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@194
    add-int/2addr v2, v4

    #@195
    .line 1160
    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@197
    .line 1159
    add-int v18, v2, v4

    #@199
    goto/16 :goto_3

    #@19b
    .line 1178
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "view":Landroid/view/View;
    .restart local v8    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v19    # "padding":I
    :cond_9
    move-object/from16 v0, p0

    #@19d
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@19f
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    #@1a2
    goto :goto_4

    #@1a3
    .line 1183
    :cond_a
    const/4 v15, 0x0

    #@1a4
    .restart local v15    # "ignoreBottomDecorations":Z
    goto :goto_5

    #@1a5
    .line 1192
    .restart local v17    # "maxHeight":I
    :cond_b
    move-object/from16 v0, p0

    #@1a7
    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@1a9
    packed-switch v2, :pswitch_data_1

    #@1ac
    .line 1206
    move-object/from16 v0, p0

    #@1ae
    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@1b0
    const/high16 v4, 0x40000000    # 2.0f

    #@1b2
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1b5
    move-result v3

    #@1b6
    .line 1209
    .local v3, "childWidthSpec":I
    :goto_6
    move-object/from16 v0, p0

    #@1b8
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@1ba
    .line 1210
    sub-int v6, v17, v18

    #@1bc
    const/4 v4, 0x0

    #@1bd
    const/4 v5, -0x1

    #@1be
    const/4 v7, -0x1

    #@1bf
    .line 1209
    invoke-virtual/range {v2 .. v7}, Landroid/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildren(IIIII)I

    #@1c2
    move-result v16

    #@1c3
    .line 1213
    .local v16, "listContent":I
    if-lez v16, :cond_c

    #@1c5
    add-int v18, v18, v19

    #@1c7
    .line 1215
    :cond_c
    add-int v2, v16, v18

    #@1c9
    return v2

    #@1ca
    .line 1195
    .end local v3    # "childWidthSpec":I
    .end local v16    # "listContent":I
    :pswitch_2
    move-object/from16 v0, p0

    #@1cc
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    #@1ce
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1d1
    move-result-object v2

    #@1d2
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1d5
    move-result-object v2

    #@1d6
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@1d8
    .line 1196
    move-object/from16 v0, p0

    #@1da
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@1dc
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@1de
    move-object/from16 v0, p0

    #@1e0
    iget-object v5, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@1e2
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@1e4
    add-int/2addr v4, v5

    #@1e5
    .line 1195
    sub-int/2addr v2, v4

    #@1e6
    .line 1197
    const/high16 v4, -0x80000000

    #@1e8
    .line 1194
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1eb
    move-result v3

    #@1ec
    .restart local v3    # "childWidthSpec":I
    goto :goto_6

    #@1ed
    .line 1201
    .end local v3    # "childWidthSpec":I
    :pswitch_3
    move-object/from16 v0, p0

    #@1ef
    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    #@1f1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1f4
    move-result-object v2

    #@1f5
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1f8
    move-result-object v2

    #@1f9
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@1fb
    .line 1202
    move-object/from16 v0, p0

    #@1fd
    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@1ff
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@201
    move-object/from16 v0, p0

    #@203
    iget-object v5, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@205
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@207
    add-int/2addr v4, v5

    #@208
    .line 1201
    sub-int/2addr v2, v4

    #@209
    .line 1203
    const/high16 v4, 0x40000000    # 2.0f

    #@20b
    .line 1200
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@20e
    move-result v3

    #@20f
    .restart local v3    # "childWidthSpec":I
    goto :goto_6

    #@210
    .line 1114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    #@218
    .line 1192
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
    .line 692
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 693
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@6
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@9
    move-result-object v1

    #@a
    .line 694
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    #@c
    if-eqz v2, :cond_0

    #@e
    move-object v0, v1

    #@f
    .line 695
    check-cast v0, Landroid/view/ViewGroup;

    #@11
    .line 696
    .local v0, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@13
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@16
    .line 691
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
    .line 748
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@2
    .line 749
    .local v0, "list":Landroid/widget/ListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    #@4
    .line 751
    const/4 v1, 0x1

    #@5
    invoke-static {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->-set0(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z

    #@8
    .line 752
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->hideSelector()V

    #@b
    .line 753
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    #@e
    .line 747
    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p1, "src"    # Landroid/view/View;

    #@0
    .prologue
    .line 1034
    new-instance v0, Landroid/widget/ListPopupWindow$1;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/widget/ListPopupWindow$1;-><init>(Landroid/widget/ListPopupWindow;Landroid/view/View;)V

    #@5
    return-object v0
.end method

.method public dismiss()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 675
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    #@6
    .line 676
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    #@9
    .line 677
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@b
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@e
    .line 678
    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@10
    .line 679
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    #@12
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@17
    .line 674
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
    .line 508
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
    .line 723
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
    .line 846
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

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
    .line 796
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 797
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 799
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@a
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    #@0
    .prologue
    .line 822
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 823
    const-wide/high16 v0, -0x8000000000000000L

    #@8
    return-wide v0

    #@9
    .line 825
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@b
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemId()J

    #@e
    move-result-wide v0

    #@f
    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    #@0
    .prologue
    .line 809
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 810
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 812
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@a
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 835
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 836
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 838
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@a
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

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
    .line 475
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
    .line 769
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
    .line 761
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
    .line 871
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@9
    move-result v7

    #@a
    if-eqz v7, :cond_0

    #@c
    .line 877
    const/16 v7, 0x3e

    #@e
    if-eq p1, v7, :cond_0

    #@10
    .line 878
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@12
    invoke-virtual {v7}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    #@15
    move-result v7

    #@16
    if-gez v7, :cond_1

    #@18
    .line 879
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_1

    #@1e
    .line 951
    :cond_0
    :goto_0
    return v10

    #@1f
    .line 880
    :cond_1
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@21
    invoke-virtual {v7}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    #@24
    move-result v4

    #@25
    .line 883
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
    .line 885
    .local v2, "below":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    #@30
    .line 888
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    #@33
    .line 889
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    #@35
    .line 891
    .local v6, "lastItem":I
    if-eqz v0, :cond_2

    #@37
    .line 892
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    #@3a
    move-result v1

    #@3b
    .line 893
    .local v1, "allEnabled":Z
    if-eqz v1, :cond_5

    #@3d
    const/4 v5, 0x0

    #@3e
    .line 895
    :goto_2
    if-eqz v1, :cond_6

    #@40
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@43
    move-result v7

    #@44
    add-int/lit8 v6, v7, -0x1

    #@46
    .line 899
    .end local v1    # "allEnabled":Z
    :cond_2
    :goto_3
    if-eqz v2, :cond_7

    #@48
    if-ne p1, v11, :cond_7

    #@4a
    if-gt v4, v5, :cond_7

    #@4c
    .line 903
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    #@4f
    .line 904
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@51
    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@54
    .line 905
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    #@57
    .line 906
    return v9

    #@58
    .line 883
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
    .line 894
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "allEnabled":Z
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_5
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@5c
    invoke-virtual {v7, v10, v9}, Landroid/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    #@5f
    move-result v5

    #@60
    goto :goto_2

    #@61
    .line 896
    :cond_6
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@63
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@66
    move-result v8

    #@67
    add-int/lit8 v8, v8, -0x1

    #@69
    invoke-virtual {v7, v8, v10}, Landroid/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    #@6c
    move-result v6

    #@6d
    goto :goto_3

    #@6e
    .line 900
    .end local v1    # "allEnabled":Z
    :cond_7
    if-nez v2, :cond_8

    #@70
    if-ne p1, v12, :cond_8

    #@72
    if-ge v4, v6, :cond_3

    #@74
    .line 910
    :cond_8
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@76
    invoke-static {v7, v10}, Landroid/widget/ListPopupWindow$DropDownListView;->-set0(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z

    #@79
    .line 913
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@7b
    invoke-virtual {v7, p1, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@7e
    move-result v3

    #@7f
    .line 916
    .local v3, "consumed":Z
    if-eqz v3, :cond_9

    #@81
    .line 919
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@83
    const/4 v8, 0x2

    #@84
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@87
    .line 924
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@89
    invoke-virtual {v7}, Landroid/widget/ListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    #@8c
    .line 925
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    #@8f
    .line 927
    sparse-switch p1, :sswitch_data_0

    #@92
    goto :goto_0

    #@93
    .line 934
    :sswitch_0
    return v9

    #@94
    .line 937
    :cond_9
    if-eqz v2, :cond_a

    #@96
    if-ne p1, v12, :cond_a

    #@98
    .line 940
    if-ne v4, v6, :cond_0

    #@9a
    .line 941
    return v9

    #@9b
    .line 943
    :cond_a
    if-nez v2, :cond_0

    #@9d
    if-ne p1, v11, :cond_0

    #@9f
    .line 944
    if-ne v4, v5, :cond_0

    #@a1
    .line 945
    return v9

    #@a2
    .line 927
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
    .line 989
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
    .line 992
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    #@d
    .line 993
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
    .line 994
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@1c
    move-result-object v1

    #@1d
    .line 995
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    #@1f
    .line 996
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@22
    .line 998
    :cond_0
    return v4

    #@23
    .line 999
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@26
    move-result v2

    #@27
    if-ne v2, v4, :cond_3

    #@29
    .line 1000
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@2c
    move-result-object v1

    #@2d
    .line 1001
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    #@2f
    .line 1002
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    #@32
    .line 1004
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
    .line 1010
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    return v3

    #@3f
    .line 1005
    .restart local v0    # "anchorView":Landroid/view/View;
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    #@42
    .line 1006
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
    .line 965
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@9
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    #@c
    move-result v1

    #@d
    if-ltz v1, :cond_1

    #@f
    .line 966
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@11
    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@14
    move-result v0

    #@15
    .line 967
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    #@17
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 970
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    #@20
    .line 972
    :cond_0
    return v0

    #@21
    .line 974
    .end local v0    # "consumed":Z
    :cond_1
    return v2
.end method

.method public performItemClick(I)Z
    .locals 7
    .param p1, "position"    # I

    #@0
    .prologue
    .line 780
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 781
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 782
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@c
    .line 783
    .local v1, "list":Landroid/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    #@f
    move-result v0

    #@10
    sub-int v0, p1, v0

    #@12
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v2

    #@16
    .line 784
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    #@19
    move-result-object v6

    #@1a
    .line 785
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
    .line 787
    .end local v1    # "list":Landroid/widget/ListPopupWindow$DropDownListView;
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    #@25
    return v0

    #@26
    .line 789
    :cond_1
    const/4 v0, 0x0

    #@27
    return v0
.end method

.method public postShow()V
    .locals 2

    #@0
    .prologue
    .line 576
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@7
    .line 575
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
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 253
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@1d
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    #@1f
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

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
    .line 495
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    .line 496
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@8
    .line 497
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@d
    .line 498
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
    .line 494
    :goto_0
    return-void

    #@1a
    .line 500
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
    .line 468
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    #@2
    .line 467
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
    .line 517
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@2
    .line 516
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
    .line 714
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@5
    .line 713
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    #@0
    .prologue
    .line 856
    iput p1, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    #@2
    .line 855
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
    .line 688
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    #@5
    .line 687
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    #@0
    .prologue
    .line 541
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@2
    .line 540
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    #@0
    .prologue
    .line 552
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@2
    .line 551
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
    .line 562
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    .line 563
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    #@6
    .line 564
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    #@9
    .line 566
    :cond_0
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    #@b
    .line 567
    if-eqz v0, :cond_1

    #@d
    .line 568
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    #@10
    .line 561
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
    .line 733
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@3
    .line 734
    .local v0, "list":Landroid/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 735
    invoke-static {v0, v2}, Landroid/widget/ListPopupWindow$DropDownListView;->-set0(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z

    #@e
    .line 736
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    #@11
    .line 737
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getChoiceMode()I

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 738
    const/4 v1, 0x1

    #@18
    invoke-virtual {v0, p1, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    #@1b
    .line 732
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
    .line 485
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@2
    .line 484
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    #@0
    .prologue
    .line 530
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    #@2
    .line 529
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
    .line 584
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->buildDropDown()I

    #@7
    move-result v6

    #@8
    .line 586
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    #@b
    move-result v8

    #@c
    .line 587
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
    .line 588
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@16
    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    #@18
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    #@1b
    .line 590
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@1d
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_e

    #@23
    .line 592
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@25
    if-ne v0, v5, :cond_3

    #@27
    .line 595
    const/4 v9, -0x1

    #@28
    .line 603
    .local v9, "widthSpec":I
    :goto_1
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@2a
    if-ne v0, v5, :cond_9

    #@2c
    .line 606
    if-eqz v8, :cond_5

    #@2e
    move v7, v6

    #@2f
    .line 607
    .local v7, "heightSpec":I
    :goto_2
    if-eqz v8, :cond_7

    #@31
    .line 608
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
    .line 610
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@3d
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@40
    .line 622
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
    .line 624
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@4f
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@52
    move-result-object v1

    #@53
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    #@55
    .line 625
    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@57
    if-gez v9, :cond_c

    #@59
    move v4, v5

    #@5a
    .line 626
    :goto_6
    if-gez v7, :cond_d

    #@5c
    .line 624
    :goto_7
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    #@5f
    .line 583
    :cond_1
    :goto_8
    return-void

    #@60
    .end local v7    # "heightSpec":I
    .end local v9    # "widthSpec":I
    :cond_2
    move v0, v2

    #@61
    .line 587
    goto :goto_0

    #@62
    .line 596
    :cond_3
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@64
    if-ne v0, v4, :cond_4

    #@66
    .line 597
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
    .line 599
    .end local v9    # "widthSpec":I
    :cond_4
    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@71
    .restart local v9    # "widthSpec":I
    goto :goto_1

    #@72
    .line 606
    :cond_5
    const/4 v7, -0x1

    #@73
    .restart local v7    # "heightSpec":I
    goto :goto_2

    #@74
    :cond_6
    move v0, v1

    #@75
    .line 609
    goto :goto_3

    #@76
    .line 612
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
    .line 614
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@82
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@85
    goto :goto_4

    #@86
    :cond_8
    move v0, v1

    #@87
    .line 613
    goto :goto_9

    #@88
    .line 616
    .end local v7    # "heightSpec":I
    :cond_9
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@8a
    if-ne v0, v4, :cond_a

    #@8c
    .line 617
    move v7, v6

    #@8d
    .restart local v7    # "heightSpec":I
    goto :goto_4

    #@8e
    .line 619
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
    .line 622
    goto :goto_5

    #@93
    :cond_c
    move v4, v9

    #@94
    .line 625
    goto :goto_6

    #@95
    :cond_d
    move v5, v7

    #@96
    .line 626
    goto :goto_7

    #@97
    .line 629
    .end local v7    # "heightSpec":I
    .end local v9    # "widthSpec":I
    :cond_e
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@99
    if-ne v0, v5, :cond_12

    #@9b
    .line 630
    const/4 v9, -0x1

    #@9c
    .line 640
    .restart local v9    # "widthSpec":I
    :goto_a
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@9e
    if-ne v0, v5, :cond_14

    #@a0
    .line 641
    const/4 v7, -0x1

    #@a1
    .line 650
    .restart local v7    # "heightSpec":I
    :goto_b
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@a3
    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@a6
    .line 651
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@a8
    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@ab
    .line 652
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@ad
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClipToScreenEnabled(Z)V

    #@b0
    .line 656
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
    .line 657
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@bf
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    #@c1
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    #@c4
    .line 658
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@c6
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@c9
    move-result-object v1

    #@ca
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    #@cc
    .line 659
    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    #@ce
    iget v4, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    #@d0
    .line 658
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    #@d3
    .line 660
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@d5
    invoke-virtual {v0, v5}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    #@d8
    .line 662
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    #@da
    if-eqz v0, :cond_10

    #@dc
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #@de
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    #@e1
    move-result v0

    #@e2
    if-eqz v0, :cond_11

    #@e4
    .line 663
    :cond_10
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    #@e7
    .line 665
    :cond_11
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    #@e9
    if-nez v0, :cond_1

    #@eb
    .line 666
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    #@ed
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    #@ef
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@f2
    goto/16 :goto_8

    #@f4
    .line 632
    .end local v7    # "heightSpec":I
    .end local v9    # "widthSpec":I
    :cond_12
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@f6
    if-ne v0, v4, :cond_13

    #@f8
    .line 633
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    #@fb
    move-result-object v0

    #@fc
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@ff
    move-result v9

    #@100
    .restart local v9    # "widthSpec":I
    goto :goto_a

    #@101
    .line 635
    .end local v9    # "widthSpec":I
    :cond_13
    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    #@103
    .restart local v9    # "widthSpec":I
    goto :goto_a

    #@104
    .line 643
    :cond_14
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@106
    if-ne v0, v4, :cond_15

    #@108
    .line 644
    move v7, v6

    #@109
    .restart local v7    # "heightSpec":I
    goto :goto_b

    #@10a
    .line 646
    .end local v7    # "heightSpec":I
    :cond_15
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    #@10c
    .restart local v7    # "heightSpec":I
    goto :goto_b

    #@10d
    :cond_16
    move v1, v2

    #@10e
    .line 656
    goto :goto_c
.end method
