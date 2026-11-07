.class public Landroid/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/ShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroid/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroid/widget/ListPopupWindow$PopupScrollListener;,
        Landroid/widget/ListPopupWindow$ListSelectorHider;,
        Landroid/widget/ListPopupWindow$PopupDataSetObserver;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final whitelist INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final whitelist INPUT_METHOD_NEEDED:I = 0x1

.field public static final whitelist INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final whitelist MATCH_PARENT:I = -0x1

.field public static final whitelist POSITION_PROMPT_ABOVE:I = 0x0

.field public static final whitelist POSITION_PROMPT_BELOW:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final whitelist WRAP_CONTENT:I = -0x2


# instance fields
.field private greylist-max-o mAdapter:Landroid/widget/ListAdapter;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDropDownAlwaysVisible:Z

.field private greylist-max-o mDropDownAnchorView:Landroid/view/View;

.field private greylist-max-o mDropDownGravity:I

.field private greylist-max-o mDropDownHeight:I

.field private greylist-max-o mDropDownHorizontalOffset:I

.field private greylist mDropDownList:Landroid/widget/DropDownListView;

.field private greylist-max-o mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mDropDownVerticalOffset:I

.field private greylist-max-o mDropDownVerticalOffsetSet:Z

.field private greylist-max-o mDropDownWidth:I

.field private greylist-max-o mDropDownWindowLayoutType:I

.field private greylist-max-o mEpicenterBounds:Landroid/graphics/Rect;

.field private greylist-max-o mForceIgnoreOutsideTouch:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

.field private greylist-max-o mIsAnimatedFromAnchor:Z

.field private greylist-max-o mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private greylist-max-o mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field greylist-max-o mListItemExpandMaximum:I

.field private greylist-max-o mModal:Z

.field private greylist-max-o mObserver:Landroid/database/DataSetObserver;

.field private greylist-max-o mOverlapAnchor:Z

.field private greylist-max-o mOverlapAnchorSet:Z

.field greylist mPopup:Landroid/widget/PopupWindow;

.field private greylist-max-o mPromptPosition:I

.field private greylist-max-o mPromptView:Landroid/view/View;

.field private final greylist-max-o mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

.field private final greylist-max-o mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

.field private greylist-max-o mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDropDownList(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;
    .registers 1

    iget-object p0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResizePopupRunnable(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 188
    const v0, 0x10102ff

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 189
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 199
    const v0, 0x10102ff

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 200
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 213
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, -0x2

    iput v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .line 78
    iput v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 81
    const/16 v0, 0x3ea

    iput v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mIsAnimatedFromAnchor:Z

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    .line 89
    iput-boolean v1, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 90
    iput-boolean v1, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 91
    const v2, 0x7fffffff

    iput v2, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 94
    iput v1, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    .line 105
    new-instance v2, Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow-IA;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    .line 106
    new-instance v2, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow-IA;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 107
    new-instance v2, Landroid/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow-IA;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    .line 108
    new-instance v2, Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow-IA;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    .line 113
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 226
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 227
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 229
    sget-object v2, Lcom/android/internal/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 231
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 233
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 235
    iget v1, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v1, :cond_66

    .line 236
    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 238
    :cond_66
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 241
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 242
    return-void
.end method

.method private greylist-max-r buildDropDown()I
    .registers 16

    .line 1137
    const/4 v0, 0x0

    .line 1139
    .local v0, "otherHeights":I
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_c8

    .line 1140
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1148
    .local v1, "context":Landroid/content/Context;
    new-instance v5, Landroid/widget/ListPopupWindow$2;

    invoke-direct {v5, p0}, Landroid/widget/ListPopupWindow$2;-><init>(Landroid/widget/ListPopupWindow;)V

    iput-object v5, p0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1158
    iget-boolean v5, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    xor-int/2addr v5, v4

    invoke-virtual {p0, v1, v5}, Landroid/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroid/widget/DropDownListView;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 1159
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_25

    .line 1160
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1162
    :cond_25
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1163
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1164
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v5, v4}, Landroid/widget/DropDownListView;->setFocusable(Z)V

    .line 1165
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v5, v4}, Landroid/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1166
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    new-instance v6, Landroid/widget/ListPopupWindow$3;

    invoke-direct {v6, p0}, Landroid/widget/ListPopupWindow$3;-><init>(Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1182
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1184
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_59

    .line 1185
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1188
    :cond_59
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 1190
    .local v5, "dropDownView":Landroid/view/ViewGroup;
    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1191
    .local v6, "hintView":Landroid/view/View;
    if-eqz v6, :cond_c2

    .line 1194
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1195
    .local v7, "hintContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1197
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v2, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1201
    .local v8, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v9, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v9, :pswitch_data_190

    .line 1213
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid hint position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ListPopupWindow"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 1203
    :pswitch_8e
    invoke-virtual {v7, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1204
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1205
    goto :goto_9c

    .line 1208
    :pswitch_95
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1209
    invoke-virtual {v7, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1210
    nop

    .line 1221
    :goto_9c
    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ltz v9, :cond_a5

    .line 1222
    const/high16 v9, -0x80000000

    .line 1223
    .local v9, "widthMode":I
    iget v10, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .local v10, "widthSize":I
    goto :goto_a7

    .line 1225
    .end local v9    # "widthMode":I
    .end local v10    # "widthSize":I
    :cond_a5
    const/4 v9, 0x0

    .line 1226
    .restart local v9    # "widthMode":I
    const/4 v10, 0x0

    .line 1228
    .restart local v10    # "widthSize":I
    :goto_a7
    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1229
    .local v11, "widthSpec":I
    const/4 v12, 0x0

    .line 1230
    .local v12, "heightSpec":I
    invoke-virtual {v6, v11, v3}, Landroid/view/View;->measure(II)V

    .line 1232
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    move-object v8, v13

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1233
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    iget v14, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    iget v14, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    .line 1236
    .end local v0    # "otherHeights":I
    .local v13, "otherHeights":I
    move-object v5, v7

    move v0, v13

    .line 1239
    .end local v7    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v8    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "widthMode":I
    .end local v10    # "widthSize":I
    .end local v11    # "widthSpec":I
    .end local v12    # "heightSpec":I
    .end local v13    # "otherHeights":I
    .restart local v0    # "otherHeights":I
    :cond_c2
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1240
    .end local v1    # "context":Landroid/content/Context;
    .end local v6    # "hintView":Landroid/view/View;
    goto :goto_de

    .line 1241
    .end local v5    # "dropDownView":Landroid/view/ViewGroup;
    :cond_c8
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1242
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_de

    .line 1243
    nop

    .line 1244
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1245
    .local v5, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    .line 1253
    .end local v1    # "view":Landroid/view/View;
    .end local v5    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_de
    :goto_de
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1254
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_100

    .line 1255
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1256
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    .line 1260
    .local v5, "padding":I
    iget-boolean v6, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v6, :cond_106

    .line 1261
    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    iput v6, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_106

    .line 1264
    .end local v5    # "padding":I
    :cond_100
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 1265
    const/4 v5, 0x0

    .line 1269
    .restart local v5    # "padding":I
    :cond_106
    :goto_106
    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1270
    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_110

    move v3, v4

    .line 1271
    .local v3, "ignoreBottomDecorations":Z
    :cond_110
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1272
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1271
    invoke-virtual {v4, v6, v7, v3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v4

    .line 1273
    .local v4, "maxHeight":I
    iget-boolean v6, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v6, :cond_18d

    iget v6, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v6, v2, :cond_125

    goto :goto_18d

    .line 1278
    :cond_125
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v6, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_198

    .line 1292
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v7, v2

    .local v2, "childWidthSpec":I
    goto :goto_16d

    .line 1286
    .end local v2    # "childWidthSpec":I
    :pswitch_134
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1287
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v2, v7

    .line 1286
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1290
    .restart local v2    # "childWidthSpec":I
    move v7, v2

    goto :goto_16d

    .line 1280
    .end local v2    # "childWidthSpec":I
    :pswitch_150
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1281
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    sub-int/2addr v2, v6

    .line 1280
    const/high16 v6, -0x80000000

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1284
    .restart local v2    # "childWidthSpec":I
    move v7, v2

    .line 1298
    .end local v2    # "childWidthSpec":I
    .local v7, "childWidthSpec":I
    :goto_16d
    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    sub-int v10, v4, v0

    const/4 v11, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual/range {v6 .. v11}, Landroid/widget/DropDownListView;->measureHeightOfChildren(IIIII)I

    move-result v2

    .line 1300
    .local v2, "listContent":I
    if-lez v2, :cond_18a

    .line 1301
    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v6}, Landroid/widget/DropDownListView;->getPaddingTop()I

    move-result v6

    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 1302
    invoke-virtual {v8}, Landroid/widget/DropDownListView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v6, v8

    .line 1303
    .local v6, "listPadding":I
    add-int v8, v5, v6

    add-int/2addr v0, v8

    .line 1306
    .end local v6    # "listPadding":I
    :cond_18a
    add-int v6, v2, v0

    return v6

    .line 1274
    .end local v2    # "listContent":I
    .end local v7    # "childWidthSpec":I
    :cond_18d
    :goto_18d
    add-int v2, v4, v5

    return v2

    :pswitch_data_190
    .packed-switch 0x0
        :pswitch_95
        :pswitch_8e
    .end packed-switch

    :pswitch_data_198
    .packed-switch -0x2
        :pswitch_150
        :pswitch_134
    .end packed-switch
.end method

.method private greylist-max-o removePromptView()V
    .registers 4

    .line 767
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 768
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 769
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_16

    .line 770
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 771
    .local v1, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 774
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "group":Landroid/view/ViewGroup;
    :cond_16
    return-void
.end method


# virtual methods
.method public whitelist clearListSelection()V
    .registers 3

    .line 823
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 824
    .local v0, "list":Landroid/widget/DropDownListView;
    if-eqz v0, :cond_e

    .line 826
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 827
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->hideSelector()V

    .line 828
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->requestLayout()V

    .line 830
    :cond_e
    return-void
.end method

.method public whitelist createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .registers 3
    .param p1, "src"    # Landroid/view/View;

    .line 1120
    new-instance v0, Landroid/widget/ListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/ListPopupWindow$1;-><init>(Landroid/widget/ListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method greylist-max-o createDropDownListView(Landroid/content/Context;Z)Landroid/widget/DropDownListView;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .line 927
    new-instance v0, Landroid/widget/DropDownListView;

    invoke-direct {v0, p1, p2}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public whitelist dismiss()V
    .registers 3

    .line 741
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 742
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    .line 743
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 744
    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 745
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 746
    return-void
.end method

.method public blacklist dismissImmediate()V
    .registers 3

    .line 753
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 754
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 755
    return-void
.end method

.method public whitelist getAnchorView()Landroid/view/View;
    .registers 2

    .line 424
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getAnimationStyle()I
    .registers 2

    .line 415
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 387
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEpicenterBounds()Landroid/graphics/Rect;
    .registers 3

    .line 498
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 548
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public whitelist getHorizontalOffset()I
    .registers 2

    .line 442
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public whitelist getInputMethodMode()I
    .registers 2

    .line 798
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public whitelist getListView()Landroid/widget/ListView;
    .registers 2

    .line 923
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    return-object v0
.end method

.method public whitelist getPromptPosition()I
    .registers 2

    .line 286
    iget v0, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public whitelist getSelectedItem()Ljava/lang/Object;
    .registers 2

    .line 872
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 873
    const/4 v0, 0x0

    return-object v0

    .line 875
    :cond_8
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSelectedItemId()J
    .registers 3

    .line 898
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 899
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 901
    :cond_9
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSelectedItemPosition()I
    .registers 2

    .line 885
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 886
    const/4 v0, -0x1

    return v0

    .line 888
    :cond_8
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public whitelist getSelectedView()Landroid/view/View;
    .registers 2

    .line 911
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 912
    const/4 v0, 0x0

    return-object v0

    .line 914
    :cond_8
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSoftInputMode()I
    .registers 2

    .line 371
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public whitelist getVerticalOffset()I
    .registers 2

    .line 460
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_6

    .line 461
    const/4 v0, 0x0

    return v0

    .line 463
    :cond_6
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 515
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public greylist-max-r isDropDownAlwaysVisible()Z
    .registers 2

    .line 347
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public whitelist isInputMethodNotNeeded()Z
    .registers 3

    .line 845
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

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

.method public whitelist isModal()Z
    .registers 2

    .line 309
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public whitelist isShowing()Z
    .registers 2

    .line 837
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 954
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9d

    .line 960
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_9d

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 961
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_19

    .line 962
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 963
    :cond_19
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    .line 966
    .local v0, "curIndex":I
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 968
    .local v2, "below":Z
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 971
    .local v4, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 972
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    .line 974
    .local v6, "lastItem":I
    if-eqz v4, :cond_53

    .line 975
    invoke-interface {v4}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    .line 976
    .local v7, "allEnabled":Z
    if-eqz v7, :cond_38

    move v8, v1

    goto :goto_3e

    .line 977
    :cond_38
    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v8, v1, v3}, Landroid/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    :goto_3e
    move v5, v8

    .line 978
    if-eqz v7, :cond_47

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v3

    goto :goto_52

    .line 979
    :cond_47
    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v8, v9, v1}, Landroid/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    :goto_52
    move v6, v8

    .line 982
    .end local v7    # "allEnabled":Z
    :cond_53
    const/16 v7, 0x13

    if-eqz v2, :cond_5b

    if-ne p1, v7, :cond_5b

    if-le v0, v5, :cond_63

    :cond_5b
    const/16 v8, 0x14

    if-nez v2, :cond_6f

    if-ne p1, v8, :cond_6f

    if-lt v0, v6, :cond_6f

    .line 986
    :cond_63
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 987
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 988
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 989
    return v3

    .line 993
    :cond_6f
    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v9, v1}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 996
    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v9, p1, p2}, Landroid/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    .line 999
    .local v9, "consumed":Z
    if-eqz v9, :cond_8f

    .line 1002
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1007
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7}, Landroid/widget/DropDownListView;->requestFocusFromTouch()Z

    .line 1008
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1010
    sparse-switch p1, :sswitch_data_9e

    .line 1018
    goto :goto_9d

    :sswitch_8e
    return v3

    .line 1021
    :cond_8f
    if-eqz v2, :cond_96

    if-ne p1, v8, :cond_96

    .line 1024
    if-ne v0, v6, :cond_9d

    .line 1025
    return v3

    .line 1027
    :cond_96
    if-nez v2, :cond_9d

    if-ne p1, v7, :cond_9d

    if-ne v0, v5, :cond_9d

    .line 1029
    return v3

    .line 1035
    .end local v0    # "curIndex":I
    .end local v2    # "below":Z
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    .end local v9    # "consumed":Z
    :cond_9d
    :goto_9d
    return v1

    :sswitch_data_9e
    .sparse-switch
        0x13 -> :sswitch_8e
        0x14 -> :sswitch_8e
        0x17 -> :sswitch_8e
        0x42 -> :sswitch_8e
        0xa0 -> :sswitch_8e
    .end sparse-switch
.end method

.method public whitelist onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1074
    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_45

    .line 1075
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1078
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 1079
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_26

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_26

    .line 1080
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1081
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_25

    .line 1082
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1084
    :cond_25
    return v2

    .line 1085
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_26
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_45

    .line 1086
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1087
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_35

    .line 1088
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1090
    :cond_35
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_45

    .line 1091
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1092
    return v2

    .line 1096
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_45
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1050
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_20

    .line 1051
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1052
    .local v0, "consumed":Z
    if-eqz v0, :cond_1f

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1055
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1057
    :cond_1f
    return v0

    .line 1059
    .end local v0    # "consumed":Z
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist performItemClick(I)Z
    .registers 9
    .param p1, "position"    # I

    .line 856
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 857
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_25

    .line 858
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 859
    .local v2, "list":Landroid/widget/DropDownListView;
    invoke-virtual {v2}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v2, v0}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 860
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 861
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    move v4, p1

    .end local p1    # "position":I
    .local v4, "position":I
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_26

    .line 857
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "list":Landroid/widget/DropDownListView;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "position":I
    .restart local p1    # "position":I
    :cond_25
    move v4, p1

    .line 863
    .end local p1    # "position":I
    .restart local v4    # "position":I
    :goto_26
    const/4 p1, 0x1

    return p1

    .line 865
    .end local v4    # "position":I
    .restart local p1    # "position":I
    :cond_28
    move v4, p1

    .end local p1    # "position":I
    .restart local v4    # "position":I
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist postShow()V
    .registers 3

    .line 630
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 631
    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 251
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_d

    .line 252
    new-instance v0, Landroid/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow-IA;)V

    iput-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    goto :goto_18

    .line 253
    :cond_d
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_18

    .line 254
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 256
    :cond_18
    :goto_18
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 257
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_23

    .line 258
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 261
    :cond_23
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    if-eqz v0, :cond_2e

    .line 262
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 264
    :cond_2e
    return-void
.end method

.method public whitelist setAnchorView(Landroid/view/View;)V
    .registers 2
    .param p1, "anchor"    # Landroid/view/View;

    .line 434
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 435
    return-void
.end method

.method public whitelist setAnimationStyle(I)V
    .registers 3
    .param p1, "animationStyle"    # I

    .line 405
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 406
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 396
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    return-void
.end method

.method public whitelist setContentWidth(I)V
    .registers 5
    .param p1, "width"    # I

    .line 535
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 536
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1a

    .line 537
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 538
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_1d

    .line 540
    :cond_1a
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 542
    :goto_1d
    return-void
.end method

.method public greylist-max-r setDropDownAlwaysVisible(Z)V
    .registers 2
    .param p1, "dropDownAlwaysVisible"    # Z

    .line 337
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 338
    return-void
.end method

.method public whitelist setDropDownGravity(I)V
    .registers 2
    .param p1, "gravity"    # I

    .line 508
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    .line 509
    return-void
.end method

.method public whitelist setEpicenterBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 486
    if-eqz p1, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 487
    return-void
.end method

.method public greylist setForceIgnoreOutsideTouch(Z)V
    .registers 2
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .line 321
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 322
    return-void
.end method

.method public whitelist setHeight(I)V
    .registers 4
    .param p1, "height"    # I

    .line 560
    if-gez p1, :cond_3b

    const/4 v0, -0x2

    if-eq v0, p1, :cond_3b

    const/4 v0, -0x1

    if-eq v0, p1, :cond_3b

    .line 562
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_33

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " passed to ListPopupWindow#setHeight produces undefined results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListPopupWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 567
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_3b
    :goto_3b
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .line 572
    return-void
.end method

.method public whitelist setHorizontalOffset(I)V
    .registers 2
    .param p1, "offset"    # I

    .line 452
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 453
    return-void
.end method

.method public whitelist setInputMethodMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 789
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 790
    return-void
.end method

.method greylist-max-r setListItemExpandMax(I)V
    .registers 2
    .param p1, "max"    # I

    .line 938
    iput p1, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 939
    return-void
.end method

.method public whitelist setListSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .line 380
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 381
    return-void
.end method

.method public whitelist setModal(Z)V
    .registers 3
    .param p1, "modal"    # Z

    .line 299
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    .line 300
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 301
    return-void
.end method

.method public whitelist setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 763
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 764
    return-void
.end method

.method public whitelist setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 595
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 596
    return-void
.end method

.method public whitelist setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 606
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 607
    return-void
.end method

.method public greylist-max-o setOverlapAnchor(Z)V
    .registers 3
    .param p1, "overlap"    # Z

    .line 1313
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    .line 1314
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mOverlapAnchor:Z

    .line 1315
    return-void
.end method

.method public whitelist setPromptPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .line 276
    iput p1, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    .line 277
    return-void
.end method

.method public whitelist setPromptView(Landroid/view/View;)V
    .registers 3
    .param p1, "prompt"    # Landroid/view/View;

    .line 616
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 617
    .local v0, "showing":Z
    if-eqz v0, :cond_9

    .line 618
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    .line 620
    :cond_9
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 621
    if-eqz v0, :cond_10

    .line 622
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 624
    :cond_10
    return-void
.end method

.method public whitelist setSelection(I)V
    .registers 4
    .param p1, "position"    # I

    .line 808
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    .line 809
    .local v0, "list":Landroid/widget/DropDownListView;
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    .line 810
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 811
    invoke-virtual {v0, p1}, Landroid/widget/DropDownListView;->setSelection(I)V

    .line 812
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 813
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/DropDownListView;->setItemChecked(IZ)V

    .line 816
    :cond_1b
    return-void
.end method

.method public whitelist setSoftInputMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 361
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 362
    return-void
.end method

.method public whitelist setVerticalOffset(I)V
    .registers 3
    .param p1, "offset"    # I

    .line 473
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 475
    return-void
.end method

.method public whitelist setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .line 525
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 526
    return-void
.end method

.method public whitelist setWindowLayoutType(I)V
    .registers 2
    .param p1, "layoutType"    # I

    .line 584
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 585
    return-void
.end method

.method public whitelist show()V
    .registers 15

    .line 639
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->buildDropDown()I

    move-result v0

    .line 641
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v1

    .line 642
    .local v1, "noInputMethod":Z
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAllowScrollingAnchorParent(Z)V

    .line 643
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 645
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v2, :cond_aa

    .line 646
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 648
    return-void

    .line 651
    :cond_2d
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_33

    .line 654
    const/4 v2, -0x1

    .local v2, "widthSpec":I
    goto :goto_42

    .line 655
    .end local v2    # "widthSpec":I
    :cond_33
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v3, :cond_40

    .line 656
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .restart local v2    # "widthSpec":I
    goto :goto_42

    .line 658
    .end local v2    # "widthSpec":I
    :cond_40
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 662
    .restart local v2    # "widthSpec":I
    :goto_42
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v6, :cond_71

    .line 665
    if-eqz v1, :cond_4a

    move v3, v0

    goto :goto_4b

    :cond_4a
    move v3, v6

    .line 666
    .local v3, "heightSpec":I
    :goto_4b
    if-eqz v1, :cond_5f

    .line 667
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v8, v6, :cond_55

    .line 668
    move v8, v6

    goto :goto_56

    :cond_55
    move v8, v5

    .line 667
    :goto_56
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 669
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_79

    .line 671
    :cond_5f
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v8, v6, :cond_67

    .line 672
    move v8, v6

    goto :goto_68

    :cond_67
    move v8, v5

    .line 671
    :goto_68
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 673
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_79

    .line 675
    .end local v3    # "heightSpec":I
    :cond_71
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v3, :cond_77

    .line 676
    move v3, v0

    .restart local v3    # "heightSpec":I
    goto :goto_79

    .line 678
    .end local v3    # "heightSpec":I
    :cond_77
    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .line 681
    .restart local v3    # "heightSpec":I
    :goto_79
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_84

    iget-boolean v8, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_84

    goto :goto_85

    :cond_84
    move v4, v5

    :goto_85
    invoke-virtual {v7, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 683
    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v9

    iget v10, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v11, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 684
    if-gez v2, :cond_96

    move v12, v6

    goto :goto_97

    :cond_96
    move v12, v2

    .line 685
    :goto_97
    if-gez v3, :cond_9b

    move v13, v6

    goto :goto_9c

    :cond_9b
    move v13, v3

    .line 683
    :goto_9c
    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 686
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->restoreDefaultFocus()Z

    .line 687
    .end local v2    # "widthSpec":I
    .end local v3    # "heightSpec":I
    goto/16 :goto_13b

    .line 689
    :cond_aa
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_b0

    .line 690
    const/4 v2, -0x1

    .restart local v2    # "widthSpec":I
    goto :goto_bf

    .line 692
    .end local v2    # "widthSpec":I
    :cond_b0
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v3, :cond_bd

    .line 693
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .restart local v2    # "widthSpec":I
    goto :goto_bf

    .line 695
    .end local v2    # "widthSpec":I
    :cond_bd
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 700
    .restart local v2    # "widthSpec":I
    :goto_bf
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v6, :cond_c5

    .line 701
    const/4 v3, -0x1

    .restart local v3    # "heightSpec":I
    goto :goto_cd

    .line 703
    .end local v3    # "heightSpec":I
    :cond_c5
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v3, :cond_cb

    .line 704
    move v3, v0

    .restart local v3    # "heightSpec":I
    goto :goto_cd

    .line 706
    .end local v3    # "heightSpec":I
    :cond_cb
    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .line 710
    .restart local v3    # "heightSpec":I
    :goto_cd
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 711
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 712
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v4}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    .line 716
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_e7

    iget-boolean v8, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_e7

    goto :goto_e8

    :cond_e7
    move v4, v5

    :goto_e8
    invoke-virtual {v7, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 717
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 718
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 719
    iget-boolean v4, p0, Landroid/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    if-eqz v4, :cond_104

    .line 720
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v5, p0, Landroid/widget/ListPopupWindow;->mOverlapAnchor:Z

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 722
    :cond_104
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v5

    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 724
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v4, v6}, Landroid/widget/DropDownListView;->setSelection(I)V

    .line 725
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->restoreDefaultFocus()Z

    .line 727
    iget-boolean v4, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-eqz v4, :cond_12d

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v4}, Landroid/widget/DropDownListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_130

    .line 728
    :cond_12d
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 730
    :cond_130
    iget-boolean v4, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-nez v4, :cond_13b

    .line 731
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 734
    .end local v2    # "widthSpec":I
    .end local v3    # "heightSpec":I
    :cond_13b
    :goto_13b
    return-void
.end method
