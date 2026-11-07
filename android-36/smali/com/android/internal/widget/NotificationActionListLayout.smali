.class public Lcom/android/internal/widget/NotificationActionListLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationActionListLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;
    }
.end annotation


# static fields
.field public static final blacklist MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "NotificationActionListLayout"


# instance fields
.field private blacklist mCollapsibleIndentDimen:I

.field private blacklist mDefaultPaddingBottom:I

.field private blacklist mDefaultPaddingTop:I

.field private blacklist mEmphasizedHeight:I

.field private blacklist mEmphasizedMode:Z

.field private blacklist mEmphasizedPaddingBottom:I

.field private blacklist mEmphasizedPaddingTop:I

.field private blacklist mEvenlyDividedMode:Z

.field private blacklist mExtraStartPadding:I

.field private final blacklist mGravity:I

.field private blacklist mMeasureOrderOther:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMeasureOrderTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mNumNotGoneChildren:I

.field blacklist mNumPriorityChildren:I

.field private blacklist mRegularHeight:I

.field private blacklist mTotalWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisPriority(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->isPriority(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 482
    new-instance v0, Lcom/android/internal/widget/NotificationActionListLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/NotificationActionListLayout$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/NotificationActionListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationActionListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    .line 52
    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 78
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 79
    const v1, 0x1050273

    goto :goto_23

    .line 80
    :cond_20
    const v1, 0x105029d

    :goto_23
    iput v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    .line 82
    const v1, 0x10100af

    filled-new-array {v1}, [I

    move-result-object v1

    .line 83
    .local v1, "attrIds":[I
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 84
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mGravity:I

    .line 85
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    return-void
.end method

.method private blacklist clearMeasureOrder()V
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 293
    return-void
.end method

.method private blacklist countAndRebuildMeasureOrder()V
    .registers 8

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v0

    .line 95
    .local v0, "numChildren":I
    const/4 v1, 0x0

    .line 96
    .local v1, "textViews":I
    const/4 v2, 0x0

    .line 97
    .local v2, "otherViews":I
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    .line 98
    iput v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    .line 100
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v0, :cond_38

    .line 101
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 102
    .local v4, "c":Landroid/view/View;
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_19

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 105
    :cond_19
    add-int/lit8 v2, v2, 0x1

    .line 107
    :goto_1b
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_35

    .line 108
    iget v5, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    .line 109
    invoke-static {v4}, Lcom/android/internal/widget/NotificationActionListLayout;->isPriority(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 110
    iget v5, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    .line 100
    .end local v4    # "c":Landroid/view/View;
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 117
    .end local v3    # "i":I
    :cond_38
    const/4 v3, 0x0

    .line 118
    .local v3, "needRebuild":Z
    iget-object v4, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v1, v4, :cond_49

    iget-object v4, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v2, v4, :cond_4a

    .line 120
    :cond_49
    const/4 v3, 0x1

    .line 122
    :cond_4a
    if-nez v3, :cond_68

    .line 123
    iget-object v4, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 124
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_53
    if-ge v5, v4, :cond_68

    .line 125
    iget-object v6, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;

    invoke-virtual {v6}, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->needsRebuild()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 126
    const/4 v3, 0x1

    .line 127
    goto :goto_68

    .line 124
    :cond_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    .line 132
    .end local v4    # "size":I
    .end local v5    # "i":I
    :cond_68
    :goto_68
    if-eqz v3, :cond_6d

    .line 133
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->rebuildMeasureOrder(II)V

    .line 135
    :cond_6d
    return-void
.end method

.method private static blacklist isPriority(Landroid/view/View;)Z
    .registers 2
    .param p0, "actionView"    # Landroid/view/View;

    .line 89
    instance-of v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/EmphasizedNotificationButton;

    .line 90
    invoke-virtual {v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->isPriority()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 89
    :goto_10
    return v0
.end method

.method static synthetic blacklist lambda$static$0(Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;)I
    .registers 5
    .param p0, "a"    # Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;
    .param p1, "b"    # Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;

    .line 483
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mIsPriority:Z

    iget-boolean v1, p1, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mIsPriority:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    neg-int v0, v0

    .line 484
    .local v0, "priorityComparison":I
    if-eqz v0, :cond_d

    .line 485
    move v1, v0

    goto :goto_15

    .line 486
    :cond_d
    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextLength:I

    iget v2, p1, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextLength:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    .line 484
    :goto_15
    return v1
.end method

.method private blacklist measureAndGetUsedWidth(IIIZ)I
    .registers 25
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "innerWidth"    # I
    .param p4, "collapsePriorityActions"    # Z

    .line 175
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v6

    .line 176
    .local v6, "numChildren":I
    nop

    .line 177
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    move v8, v1

    .line 178
    .local v8, "constrained":Z
    iget-object v1, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 179
    .local v9, "otherSize":I
    const/4 v1, 0x0

    .line 181
    .local v1, "usedWidth":I
    const/4 v2, 0x0

    .line 182
    .local v2, "maxPriorityWidth":I
    const/4 v3, 0x0

    .line 183
    .local v3, "measuredChildren":I
    const/4 v4, 0x0

    .line 184
    .local v4, "measuredPriorityChildren":I
    const/4 v5, 0x0

    move v10, v1

    move v11, v3

    move v12, v4

    move v13, v5

    .end local v1    # "usedWidth":I
    .end local v3    # "measuredChildren":I
    .end local v4    # "measuredPriorityChildren":I
    .local v10, "usedWidth":I
    .local v11, "measuredChildren":I
    .local v12, "measuredPriorityChildren":I
    .local v13, "i":I
    :goto_20
    if-ge v13, v6, :cond_b2

    .line 189
    if-ge v13, v9, :cond_2f

    .line 190
    iget-object v1, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 191
    .local v1, "c":Landroid/view/View;
    const/4 v3, 0x0

    move v14, v3

    .local v3, "isPriority":Z
    goto :goto_3f

    .line 193
    .end local v1    # "c":Landroid/view/View;
    .end local v3    # "isPriority":Z
    :cond_2f
    iget-object v1, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sub-int v3, v13, v9

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;

    .line 194
    .local v1, "info":Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;
    iget-object v3, v1, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextView:Landroid/widget/TextView;

    .line 195
    .local v3, "c":Landroid/view/View;
    iget-boolean v4, v1, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mIsPriority:Z

    move-object v1, v3

    move v14, v4

    .line 197
    .end local v3    # "c":Landroid/view/View;
    .local v1, "c":Landroid/view/View;
    .local v14, "isPriority":Z
    :goto_3f
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_49

    .line 198
    goto/16 :goto_ae

    .line 200
    :cond_49
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 202
    .local v15, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move v3, v10

    .line 203
    .local v3, "usedWidthForChild":I
    if-eqz v8, :cond_8d

    .line 208
    sub-int v4, p3, v10

    .line 209
    .local v4, "availableWidth":I
    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    sub-int/2addr v5, v11

    .line 210
    .local v5, "unmeasuredChildren":I
    div-int v16, v4, v5

    .line 211
    .local v16, "maxWidthForChild":I
    if-eqz v14, :cond_78

    if-eqz p4, :cond_78

    .line 213
    if-nez v2, :cond_6e

    .line 214
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v17, v1

    .end local v1    # "c":Landroid/view/View;
    .local v17, "c":Landroid/view/View;
    const v1, 0x105029a

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_70

    .line 213
    .end local v17    # "c":Landroid/view/View;
    .restart local v1    # "c":Landroid/view/View;
    :cond_6e
    move-object/from16 v17, v1

    .line 217
    .end local v1    # "c":Landroid/view/View;
    .restart local v17    # "c":Landroid/view/View;
    :goto_70
    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v16, v1, v7

    goto :goto_89

    .line 211
    .end local v17    # "c":Landroid/view/View;
    .restart local v1    # "c":Landroid/view/View;
    :cond_78
    move-object/from16 v17, v1

    .line 218
    .end local v1    # "c":Landroid/view/View;
    .restart local v17    # "c":Landroid/view/View;
    if-eqz v14, :cond_89

    .line 221
    iget v1, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    sub-int/2addr v1, v12

    .line 223
    .local v1, "unmeasuredPriorityChildren":I
    sub-int v7, v5, v1

    .line 224
    .local v7, "unmeasuredOtherChildren":I
    mul-int v18, p3, v7

    div-int/lit8 v18, v18, 0x4

    .line 226
    .local v18, "widthReservedForOtherChildren":I
    sub-int v19, v4, v18

    .line 227
    .local v19, "widthAvailableForPriority":I
    div-int v16, v19, v1

    .line 230
    .end local v1    # "unmeasuredPriorityChildren":I
    .end local v7    # "unmeasuredOtherChildren":I
    .end local v18    # "widthReservedForOtherChildren":I
    .end local v19    # "widthAvailableForPriority":I
    :cond_89
    :goto_89
    sub-int v3, p3, v16

    move v7, v2

    goto :goto_90

    .line 203
    .end local v4    # "availableWidth":I
    .end local v5    # "unmeasuredChildren":I
    .end local v16    # "maxWidthForChild":I
    .end local v17    # "c":Landroid/view/View;
    .local v1, "c":Landroid/view/View;
    :cond_8d
    move-object/from16 v17, v1

    .end local v1    # "c":Landroid/view/View;
    .restart local v17    # "c":Landroid/view/View;
    move v7, v2

    .line 233
    .end local v2    # "maxPriorityWidth":I
    .local v7, "maxPriorityWidth":I
    :goto_90
    const/4 v5, 0x0

    move/from16 v2, p1

    move/from16 v4, p2

    move-object/from16 v1, v17

    .end local v17    # "c":Landroid/view/View;
    .restart local v1    # "c":Landroid/view/View;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/NotificationActionListLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 236
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    add-int/2addr v10, v2

    .line 237
    add-int/lit8 v11, v11, 0x1

    .line 238
    if-eqz v14, :cond_ad

    .line 239
    add-int/lit8 v12, v12, 0x1

    move v2, v7

    goto :goto_ae

    .line 238
    :cond_ad
    move v2, v7

    .line 184
    .end local v1    # "c":Landroid/view/View;
    .end local v3    # "usedWidthForChild":I
    .end local v7    # "maxPriorityWidth":I
    .end local v14    # "isPriority":Z
    .end local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "maxPriorityWidth":I
    :goto_ae
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_20

    .line 243
    .end local v13    # "i":I
    :cond_b2
    iget v1, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    if-nez v1, :cond_b8

    const/4 v1, 0x0

    goto :goto_c2

    .line 244
    :cond_b8
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_c2
    nop

    .line 245
    .local v1, "collapsibleIndent":I
    sub-int v3, p3, v10

    if-le v3, v1, :cond_ca

    .line 246
    iput v1, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    goto :goto_cd

    .line 248
    :cond_ca
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    .line 250
    :goto_cd
    return v10
.end method

.method private blacklist measureAndReturnEvenlyDividedWidth(II)I
    .registers 12
    .param p1, "heightMeasureSpec"    # I
    .param p2, "innerWidth"    # I

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v0

    .line 139
    .local v0, "numChildren":I
    const/4 v1, 0x0

    .line 140
    .local v1, "childMarginSum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    const/16 v3, 0x8

    if-ge v2, v0, :cond_23

    .line 141
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 142
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_20

    .line 143
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 144
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 140
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "child":Landroid/view/View;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 148
    .end local v2    # "i":I
    :cond_23
    sub-int v2, p2, v1

    .line 149
    .local v2, "innerWidthMinusChildMargins":I
    iget v4, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    div-int v4, v2, v4

    .line 150
    .local v4, "childWidth":I
    nop

    .line 151
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 154
    .local v5, "childWidthMeasureSpec":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "measuring evenly divided width: numChildren = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", innerWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "px, childMarginSum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "px, innerWidthMinusChildMargins = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "px, childWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "px, childWidthMeasureSpec = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 160
    invoke-static {v5}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 154
    const-string v7, "NotificationActionListLayout"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_83
    if-ge v6, v0, :cond_95

    .line 164
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 165
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v3, :cond_92

    .line 166
    invoke-virtual {v7, v5, p1}, Landroid/view/View;->measure(II)V

    .line 163
    .end local v7    # "child":Landroid/view/View;
    :cond_92
    add-int/lit8 v6, v6, 0x1

    goto :goto_83

    .line 170
    .end local v6    # "i":I
    :cond_95
    return p2
.end method

.method private blacklist rebuildMeasureOrder(II)V
    .registers 9
    .param p1, "capacityText"    # I
    .param p2, "capacityOther"    # I

    .line 275
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 276
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v0

    .line 279
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_3f

    .line 280
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 281
    .local v2, "c":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_37

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_37

    .line 282
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 284
    :cond_37
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v2    # "c":Landroid/view/View;
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 287
    .end local v1    # "i":I
    :cond_3f
    iget-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 288
    return-void
.end method

.method private blacklist updateHeights()V
    .registers 5

    .line 380
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 381
    return-void

    .line 383
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 385
    .local v0, "inset":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingTop:I

    .line 388
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingBottom:I

    .line 390
    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingTop:I

    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingBottom:I

    add-int/2addr v1, v2

    .line 391
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050297

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    .line 393
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050298

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    .line 395
    return-void
.end method


# virtual methods
.method public blacklist getExtraMeasureHeight()I
    .registers 3

    .line 476
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    if-eqz v0, :cond_10

    .line 477
    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    sub-int/2addr v0, v1

    return v0

    .line 479
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onFinishInflate()V
    .registers 2

    .line 371
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 372
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-nez v0, :cond_18

    .line 373
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingBottom:I

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingTop:I

    .line 375
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->updateHeights()V

    .line 377
    :cond_18
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 24
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 314
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->isLayoutRtl()Z

    move-result v1

    .line 315
    .local v1, "isLayoutRtl":Z
    iget v2, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingTop:I

    .line 316
    .local v2, "paddingTop":I
    iget v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mGravity:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_f

    goto :goto_10

    :cond_f
    const/4 v4, 0x0

    .line 320
    .local v4, "centerAligned":Z
    :goto_10
    if-eqz v4, :cond_21

    .line 321
    iget v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    add-int v3, v3, p2

    sub-int v5, p4, p2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .local v3, "childLeft":I
    goto :goto_3b

    .line 323
    .end local v3    # "childLeft":I
    :cond_21
    iget v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    .line 324
    .restart local v3    # "childLeft":I
    const v5, 0x800003

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutDirection()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    .line 325
    .local v5, "absoluteGravity":I
    const/4 v6, 0x5

    if-ne v5, v6, :cond_38

    .line 326
    sub-int v6, p4, p2

    iget v7, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    sub-int/2addr v6, v7

    add-int/2addr v3, v6

    goto :goto_3b

    .line 329
    :cond_38
    iget v6, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    add-int/2addr v3, v6

    .line 335
    .end local v5    # "absoluteGravity":I
    :goto_3b
    sub-int v5, p5, p3

    .line 338
    .local v5, "height":I
    sub-int v6, v5, v2

    iget v7, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingBottom:I

    sub-int/2addr v6, v7

    .line 340
    .local v6, "innerHeight":I
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v7

    .line 342
    .local v7, "count":I
    const/4 v8, 0x0

    .line 343
    .local v8, "start":I
    const/4 v9, 0x1

    .line 345
    .local v9, "dir":I
    if-eqz v1, :cond_4d

    .line 346
    add-int/lit8 v8, v7, -0x1

    .line 347
    const/4 v9, -0x1

    .line 350
    :cond_4d
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4e
    if-ge v10, v7, :cond_9b

    .line 351
    mul-int v11, v9, v10

    add-int/2addr v11, v8

    .line 352
    .local v11, "childIndex":I
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 353
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_8e

    .line 354
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 355
    .local v13, "childWidth":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 357
    .local v14, "childHeight":I
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 359
    .local v15, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    sub-int v16, v6, v14

    div-int/lit8 v16, v16, 0x2

    add-int v16, v2, v16

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v16, v16, v0

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v0, v16, v0

    .line 362
    .local v0, "childTop":I
    move/from16 v16, v1

    .end local v1    # "isLayoutRtl":Z
    .local v16, "isLayoutRtl":Z
    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    .line 363
    add-int v1, v3, v13

    move/from16 v17, v2

    .end local v2    # "paddingTop":I
    .local v17, "paddingTop":I
    add-int v2, v0, v14

    invoke-virtual {v12, v3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 364
    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v13

    add-int/2addr v3, v1

    goto :goto_92

    .line 353
    .end local v0    # "childTop":I
    .end local v13    # "childWidth":I
    .end local v14    # "childHeight":I
    .end local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v16    # "isLayoutRtl":Z
    .end local v17    # "paddingTop":I
    .restart local v1    # "isLayoutRtl":Z
    .restart local v2    # "paddingTop":I
    :cond_8e
    move/from16 v16, v1

    move/from16 v17, v2

    .line 350
    .end local v1    # "isLayoutRtl":Z
    .end local v2    # "paddingTop":I
    .end local v11    # "childIndex":I
    .end local v12    # "child":Landroid/view/View;
    .restart local v16    # "isLayoutRtl":Z
    .restart local v17    # "paddingTop":I
    :goto_92
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_4e

    .line 367
    .end local v10    # "i":I
    .end local v16    # "isLayoutRtl":Z
    .end local v17    # "paddingTop":I
    .restart local v1    # "isLayoutRtl":Z
    .restart local v2    # "paddingTop":I
    :cond_9b
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 255
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->countAndRebuildMeasureOrder()V

    .line 256
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 258
    .local v0, "innerWidth":I
    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEvenlyDividedMode:Z

    if-eqz v1, :cond_16

    .line 259
    invoke-direct {p0, p2, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->measureAndReturnEvenlyDividedWidth(II)I

    move-result v1

    .local v1, "usedWidth":I
    goto :goto_26

    .line 261
    .end local v1    # "usedWidth":I
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->measureAndGetUsedWidth(IIIZ)I

    move-result v1

    .line 263
    .restart local v1    # "usedWidth":I
    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    if-eqz v2, :cond_26

    if-lt v1, v0, :cond_26

    .line 264
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->measureAndGetUsedWidth(IIIZ)I

    move-result v1

    .line 269
    :cond_26
    :goto_26
    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v2, p1}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result v2

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v3, p2}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result v3

    .line 270
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->setMeasuredDimension(II)V

    .line 272
    return-void
.end method

.method public whitelist onViewAdded(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 297
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 298
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_18

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 304
    :cond_18
    return-void
.end method

.method public whitelist onViewRemoved(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .line 308
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 309
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 310
    return-void
.end method

.method public blacklist setCollapsibleIndentDimen(I)V
    .registers 3
    .param p1, "collapsibleIndentDimen"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 404
    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    if-eq v0, p1, :cond_9

    .line 405
    iput p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    .line 406
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->requestLayout()V

    .line 408
    :cond_9
    return-void
.end method

.method public blacklist setEmphasizedMode(Z)V
    .registers 6
    .param p1, "emphasizedMode"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 449
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 450
    return-void

    .line 452
    :cond_7
    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    .line 454
    if-eqz p1, :cond_21

    .line 455
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingTop:I

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingEnd()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingBottom:I

    .line 455
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->setPaddingRelative(IIII)V

    .line 459
    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->setMinimumHeight(I)V

    .line 460
    const/4 v0, -0x2

    .local v0, "height":I
    goto :goto_32

    .line 462
    .end local v0    # "height":I
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingTop:I

    .line 464
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingEnd()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingBottom:I

    .line 462
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->setPaddingRelative(IIII)V

    .line 466
    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    .line 468
    .restart local v0    # "height":I
    :goto_32
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 469
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 470
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    return-void
.end method

.method public blacklist setEvenlyDividedMode(Z)V
    .registers 5
    .param p1, "evenlyDividedMode"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 424
    const-string v0, "NotificationActionListLayout"

    if-eqz p1, :cond_11

    invoke-static {}, Landroid/app/Flags;->evenlyDividedCallStyleActionLayout()Z

    move-result v1

    if-nez v1, :cond_11

    .line 425
    const-string/jumbo v1, "setEvenlyDividedMode(true) called with new action layout disabled; leaving evenly divided mode disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void

    .line 430
    :cond_11
    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEvenlyDividedMode:Z

    if-ne p1, v1, :cond_16

    .line 431
    return-void

    .line 435
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evenlyDividedMode changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; requesting layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEvenlyDividedMode:Z

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->requestLayout()V

    .line 440
    return-void
.end method
