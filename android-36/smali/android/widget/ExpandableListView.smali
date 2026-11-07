.class public Landroid/widget/ExpandableListView;
.super Landroid/widget/ListView;
.source "ExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListView$OnGroupClickListener;,
        Landroid/widget/ExpandableListView$OnGroupCollapseListener;,
        Landroid/widget/ExpandableListView$OnGroupExpandListener;,
        Landroid/widget/ExpandableListView$OnChildClickListener;,
        Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/ExpandableListView$SavedState;
    }
.end annotation


# static fields
.field public static final whitelist CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final greylist-max-o CHILD_LAST_STATE_SET:[I

.field private static final greylist-max-o EMPTY_STATE_SET:[I

.field private static final greylist-max-o GROUP_EMPTY_STATE_SET:[I

.field private static final greylist-max-o GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final greylist-max-o GROUP_EXPANDED_STATE_SET:[I

.field private static final greylist GROUP_STATE_SETS:[[I

.field private static final greylist-max-o INDICATOR_UNDEFINED:I = -0x2

.field private static final greylist-max-o PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final greylist-max-o PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final greylist-max-o PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final greylist-max-o PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final greylist-max-o PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final greylist-max-o PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final greylist-max-o PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final whitelist PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final whitelist PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final whitelist PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final whitelist PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private greylist-max-o mAdapter:Landroid/widget/ExpandableListAdapter;

.field private greylist mChildDivider:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mChildIndicatorEnd:I

.field private greylist-max-o mChildIndicatorLeft:I

.field private greylist-max-o mChildIndicatorRight:I

.field private greylist-max-o mChildIndicatorStart:I

.field private greylist mConnector:Landroid/widget/ExpandableListConnector;

.field private greylist mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mIndicatorEnd:I

.field private greylist mIndicatorLeft:I

.field private final greylist-max-o mIndicatorRect:Landroid/graphics/Rect;

.field private greylist mIndicatorRight:I

.field private greylist-max-o mIndicatorStart:I

.field private greylist mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private greylist mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private greylist mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

.field private greylist mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 195
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    .line 198
    const v0, 0x10100a8

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 202
    const v1, 0x10100a9

    filled-new-array {v1}, [I

    move-result-object v2

    sput-object v2, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 206
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 211
    sget-object v0, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    sget-object v2, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    sget-object v3, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    filled-new-array {v0, v1, v2, v3}, [[I

    move-result-object v0

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    .line 219
    const v0, 0x10100a6

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 231
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 234
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 235
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 239
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 243
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 227
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 245
    sget-object v0, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 247
    .local v5, "a":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v2, "context":Landroid/content/Context;
    .local v4, "attrs":Landroid/util/AttributeSet;
    .local v6, "defStyleAttr":I
    .local v7, "defStyleRes":I
    invoke-virtual/range {v1 .. v7}, Landroid/widget/ExpandableListView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 250
    const/4 p1, 0x0

    invoke-virtual {v5, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, v1, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 252
    const/4 p2, 0x1

    invoke-virtual {v5, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, v1, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 254
    const/4 p2, 0x2

    invoke-virtual {v5, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, v1, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 256
    const/4 p2, 0x3

    invoke-virtual {v5, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 258
    iget p1, v1, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez p1, :cond_49

    iget-object p1, v1, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_49

    .line 259
    iget p1, v1, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object p2, v1, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v1, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 261
    :cond_49
    const/4 p1, 0x4

    const/4 p2, -0x1

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 264
    const/4 p1, 0x5

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 267
    const/4 p1, 0x6

    invoke-virtual {v5, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 270
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->isRtlCompatibilityMode()Z

    move-result p1

    if-nez p1, :cond_85

    .line 271
    const/4 p1, 0x7

    const/4 p3, -0x2

    invoke-virtual {v5, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    .line 274
    const/16 p1, 0x8

    invoke-virtual {v5, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    .line 278
    const/16 p1, 0x9

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    .line 281
    const/16 p1, 0xa

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 286
    :cond_85
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 287
    return-void
.end method

.method private greylist-max-o getAbsoluteFlatPosition(I)I
    .registers 3
    .param p1, "flatListPosition"    # I

    .line 651
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private greylist-max-o getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J
    .registers 5
    .param p1, "position"    # Landroid/widget/ExpandableListPosition;

    .line 1183
    iget v0, p1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1184
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0

    .line 1186
    :cond_10
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getFlatPositionForConnector(I)I
    .registers 3
    .param p1, "flatListPosition"    # I

    .line 640
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private greylist-max-o getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "pos"    # Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 490
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    .line 491
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 493
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 497
    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v2, v4, :cond_21

    goto :goto_23

    :cond_21
    move v2, v3

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v2, 0x1

    .line 501
    .local v2, "isEmpty":Z
    :goto_24
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    .line 502
    if-eqz v2, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v3

    :goto_2c
    or-int/2addr v1, v4

    .line 503
    .local v1, "stateSetIndex":I
    sget-object v3, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 504
    .end local v1    # "stateSetIndex":I
    .end local v2    # "isEmpty":Z
    goto :goto_52

    .line 506
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_35
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 508
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 510
    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->flatListPos:I

    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v1, v2, :cond_4c

    .line 511
    sget-object v1, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    goto :goto_4e

    .line 512
    :cond_4c
    sget-object v1, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    :goto_4e
    nop

    .line 513
    .local v1, "stateSet":[I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 517
    .end local v1    # "stateSet":[I
    :cond_52
    :goto_52
    return-object v0
.end method

.method public static whitelist getPackedPositionChild(J)I
    .registers 10
    .param p0, "packedPosition"    # J

    .line 1090
    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    const/4 v3, -0x1

    if-nez v2, :cond_b

    return v3

    .line 1093
    :cond_b
    const-wide/high16 v4, -0x8000000000000000L

    and-long v6, p0, v4

    cmp-long v2, v6, v4

    if-eqz v2, :cond_14

    return v3

    .line 1095
    :cond_14
    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist getPackedPositionForChild(II)J
    .registers 8
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .line 1115
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist getPackedPositionForGroup(I)J
    .registers 5
    .param p0, "groupPosition"    # I

    .line 1130
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist getPackedPositionGroup(J)I
    .registers 5
    .param p0, "packedPosition"    # J

    .line 1071
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    const/4 v0, -0x1

    return v0

    .line 1073
    :cond_b
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist getPackedPositionType(J)I
    .registers 6
    .param p0, "packedPosition"    # J

    .line 1051
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    .line 1052
    const/4 v0, 0x2

    return v0

    .line 1055
    :cond_b
    const-wide/high16 v0, -0x8000000000000000L

    and-long v2, p0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_15

    .line 1056
    const/4 v0, 0x1

    goto :goto_16

    .line 1057
    :cond_15
    const/4 v0, 0x0

    .line 1055
    :goto_16
    return v0
.end method

.method private greylist-max-o hasRtlSupport()Z
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o isHeaderOrFooterPosition(I)Z
    .registers 4
    .param p1, "position"    # I

    .line 628
    iget v0, p0, Landroid/widget/ExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 629
    .local v0, "footerViewsStart":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_12

    if-lt p1, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v1, 0x1

    :goto_13
    return v1
.end method

.method private greylist-max-o isRtlCompatibilityMode()Z
    .registers 3

    .line 294
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 295
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_15

    invoke-direct {p0}, Landroid/widget/ExpandableListView;->hasRtlSupport()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    :goto_16
    return v1
.end method

.method private greylist-max-o resolveChildIndicator()V
    .registers 4

    .line 341
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 342
    .local v0, "isLayoutRtl":Z
    const/4 v1, -0x1

    if-eqz v0, :cond_18

    .line 343
    iget v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    if-lt v2, v1, :cond_f

    .line 344
    iget v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    iput v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 346
    :cond_f
    iget v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    if-lt v2, v1, :cond_28

    .line 347
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    goto :goto_28

    .line 350
    :cond_18
    iget v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    if-lt v2, v1, :cond_20

    .line 351
    iget v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    iput v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 353
    :cond_20
    iget v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    if-lt v2, v1, :cond_28

    .line 354
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 357
    :cond_28
    :goto_28
    return-void
.end method

.method private greylist-max-o resolveIndicator()V
    .registers 4

    .line 315
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 316
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_17

    .line 317
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_e

    .line 318
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 320
    :cond_e
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_27

    .line 321
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    goto :goto_27

    .line 324
    :cond_17
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_1f

    .line 325
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 327
    :cond_1f
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_27

    .line 328
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 331
    :cond_27
    :goto_27
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_3a

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3a

    .line 332
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 334
    :cond_3a
    return-void
.end method


# virtual methods
.method public whitelist collapseGroup(I)Z
    .registers 4
    .param p1, "groupPos"    # I

    .line 791
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 793
    .local v0, "retValue":Z
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_f

    .line 794
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 797
    :cond_f
    return v0
.end method

.method greylist-max-o createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flatListPosition"    # I
    .param p3, "id"    # J

    .line 1136
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1138
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0

    .line 1141
    :cond_c
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 1142
    .local v0, "adjustedPosition":I
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 1143
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1145
    .local v2, "pos":Landroid/widget/ExpandableListPosition;
    invoke-direct {p0, v2}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide v7

    .line 1146
    .end local p3    # "id":J
    .local v7, "id":J
    invoke-virtual {v2}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v5

    .line 1148
    .local v5, "packedPosition":J
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1150
    new-instance v3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v4, p1

    .end local p1    # "view":Landroid/view/View;
    .local v4, "view":Landroid/view/View;
    invoke-direct/range {v3 .. v8}, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    return-object v3
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 365
    iget-object v2, v0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_10

    iget-object v2, v0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_10

    .line 366
    return-void

    .line 369
    :cond_10
    const/4 v2, 0x0

    .line 370
    .local v2, "saveCount":I
    iget v3, v0, Landroid/widget/ExpandableListView;->mGroupFlags:I

    const/16 v4, 0x22

    and-int/2addr v3, v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1b

    move v3, v5

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    .line 371
    .local v3, "clipToPadding":Z
    :goto_1c
    if-eqz v3, :cond_41

    .line 372
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 373
    iget v4, v0, Landroid/widget/ExpandableListView;->mScrollX:I

    .line 374
    .local v4, "scrollX":I
    iget v6, v0, Landroid/widget/ExpandableListView;->mScrollY:I

    .line 375
    .local v6, "scrollY":I
    iget v7, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    add-int/2addr v7, v4

    iget v8, v0, Landroid/widget/ExpandableListView;->mPaddingTop:I

    add-int/2addr v8, v6

    iget v9, v0, Landroid/widget/ExpandableListView;->mRight:I

    add-int/2addr v9, v4

    iget v10, v0, Landroid/widget/ExpandableListView;->mLeft:I

    sub-int/2addr v9, v10

    iget v10, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, v0, Landroid/widget/ExpandableListView;->mBottom:I

    add-int/2addr v10, v6

    iget v11, v0, Landroid/widget/ExpandableListView;->mTop:I

    sub-int/2addr v10, v11

    iget v11, v0, Landroid/widget/ExpandableListView;->mPaddingBottom:I

    sub-int/2addr v10, v11

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 380
    .end local v4    # "scrollX":I
    .end local v6    # "scrollY":I
    :cond_41
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v4

    .line 382
    .local v4, "headerViewsCount":I
    iget v6, v0, Landroid/widget/ExpandableListView;->mItemCount:I

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v4

    sub-int/2addr v6, v5

    .line 384
    .local v6, "lastChildFlPos":I
    iget v7, v0, Landroid/widget/ExpandableListView;->mBottom:I

    .line 392
    .local v7, "myB":I
    const/4 v8, -0x4

    .line 394
    .local v8, "lastItemType":I
    iget-object v9, v0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 399
    .local v9, "indicatorRect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v10

    .line 400
    .local v10, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    iget v12, v0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    sub-int/2addr v12, v4

    .local v12, "childFlPos":I
    :goto_5b
    if-ge v11, v10, :cond_128

    .line 403
    if-gez v12, :cond_65

    .line 405
    move/from16 v18, v3

    move/from16 v19, v4

    goto/16 :goto_11d

    .line 406
    :cond_65
    if-le v12, v6, :cond_6d

    .line 408
    move/from16 v18, v3

    move/from16 v19, v4

    goto/16 :goto_12c

    .line 411
    :cond_6d
    invoke-virtual {v0, v11}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 412
    .local v13, "item":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    .line 413
    .local v14, "t":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 416
    .local v15, "b":I
    if-ltz v15, :cond_119

    if-le v14, v7, :cond_83

    move/from16 v18, v3

    move/from16 v19, v4

    goto/16 :goto_11d

    .line 419
    :cond_83
    iget-object v5, v0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v5, v12}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v5

    .line 421
    .local v5, "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v16

    .line 422
    .local v16, "isLayoutRtl":Z
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getWidth()I

    move-result v17

    .line 426
    .local v17, "width":I
    move/from16 v18, v3

    .end local v3    # "clipToPadding":Z
    .local v18, "clipToPadding":Z
    iget-object v3, v5, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->type:I

    if-eq v3, v8, :cond_f4

    .line 427
    iget-object v3, v5, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v19, v4

    const/4 v4, 0x1

    .end local v4    # "headerViewsCount":I
    .local v19, "headerViewsCount":I
    if-ne v3, v4, :cond_ba

    .line 428
    iget v3, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_aa

    .line 429
    iget v3, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    goto :goto_ac

    :cond_aa
    iget v3, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    :goto_ac
    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 430
    iget v3, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    if-ne v3, v4, :cond_b5

    .line 431
    iget v3, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    goto :goto_b7

    :cond_b5
    iget v3, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    :goto_b7
    iput v3, v9, Landroid/graphics/Rect;->right:I

    goto :goto_c2

    .line 433
    :cond_ba
    iget v3, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 434
    iget v3, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 437
    :goto_c2
    if-eqz v16, :cond_e1

    .line 438
    iget v3, v9, Landroid/graphics/Rect;->left:I

    .line 439
    .local v3, "temp":I
    iget v4, v9, Landroid/graphics/Rect;->right:I

    sub-int v4, v17, v4

    iput v4, v9, Landroid/graphics/Rect;->left:I

    .line 440
    sub-int v4, v17, v3

    iput v4, v9, Landroid/graphics/Rect;->right:I

    .line 442
    iget v4, v9, Landroid/graphics/Rect;->left:I

    move/from16 v20, v3

    .end local v3    # "temp":I
    .local v20, "temp":I
    iget v3, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    sub-int/2addr v4, v3

    iput v4, v9, Landroid/graphics/Rect;->left:I

    .line 443
    iget v3, v9, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    sub-int/2addr v3, v4

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 444
    .end local v20    # "temp":I
    goto :goto_ef

    .line 445
    :cond_e1
    iget v3, v9, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    add-int/2addr v3, v4

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 446
    iget v3, v9, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    add-int/2addr v3, v4

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 449
    :goto_ef
    iget-object v3, v5, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v3, Landroid/widget/ExpandableListPosition;->type:I

    goto :goto_f6

    .line 426
    .end local v19    # "headerViewsCount":I
    .restart local v4    # "headerViewsCount":I
    :cond_f4
    move/from16 v19, v4

    .line 452
    .end local v4    # "headerViewsCount":I
    .restart local v19    # "headerViewsCount":I
    :goto_f6
    iget v3, v9, Landroid/graphics/Rect;->left:I

    iget v4, v9, Landroid/graphics/Rect;->right:I

    if-eq v3, v4, :cond_115

    .line 454
    iget-boolean v3, v0, Landroid/widget/ExpandableListView;->mStackFromBottom:Z

    if-eqz v3, :cond_105

    .line 456
    iput v14, v9, Landroid/graphics/Rect;->top:I

    .line 457
    iput v15, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_109

    .line 459
    :cond_105
    iput v14, v9, Landroid/graphics/Rect;->top:I

    .line 460
    iput v15, v9, Landroid/graphics/Rect;->bottom:I

    .line 464
    :goto_109
    invoke-direct {v0, v5}, Landroid/widget/ExpandableListView;->getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 465
    .local v3, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_115

    .line 467
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 468
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 471
    .end local v3    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_115
    invoke-virtual {v5}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_11d

    .line 416
    .end local v5    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    .end local v16    # "isLayoutRtl":Z
    .end local v17    # "width":I
    .end local v18    # "clipToPadding":Z
    .end local v19    # "headerViewsCount":I
    .local v3, "clipToPadding":Z
    .restart local v4    # "headerViewsCount":I
    :cond_119
    move/from16 v18, v3

    move/from16 v19, v4

    .line 401
    .end local v3    # "clipToPadding":Z
    .end local v4    # "headerViewsCount":I
    .end local v13    # "item":Landroid/view/View;
    .end local v14    # "t":I
    .end local v15    # "b":I
    .restart local v18    # "clipToPadding":Z
    .restart local v19    # "headerViewsCount":I
    :goto_11d
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v18

    move/from16 v4, v19

    const/4 v5, 0x1

    goto/16 :goto_5b

    .line 400
    .end local v18    # "clipToPadding":Z
    .end local v19    # "headerViewsCount":I
    .restart local v3    # "clipToPadding":Z
    .restart local v4    # "headerViewsCount":I
    :cond_128
    move/from16 v18, v3

    move/from16 v19, v4

    .line 474
    .end local v3    # "clipToPadding":Z
    .end local v4    # "headerViewsCount":I
    .end local v11    # "i":I
    .end local v12    # "childFlPos":I
    .restart local v18    # "clipToPadding":Z
    .restart local v19    # "headerViewsCount":I
    :goto_12c
    if-eqz v18, :cond_131

    .line 475
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 477
    :cond_131
    return-void
.end method

.method greylist-max-o drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .line 533
    iget v0, p0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    add-int/2addr v0, p3

    .line 537
    .local v0, "flatListPosition":I
    if-ltz v0, :cond_37

    .line 538
    invoke-direct {p0, v0}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v1

    .line 539
    .local v1, "adjustedPosition":I
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 541
    .local v2, "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2b

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v3, v3, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v4, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v3, v4, :cond_27

    goto :goto_2b

    .line 550
    :cond_27
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_37

    .line 544
    :cond_2b
    :goto_2b
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 545
    .local v3, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 546
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 547
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 548
    return-void

    .line 554
    .end local v1    # "adjustedPosition":I
    .end local v2    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    .end local v3    # "divider":Landroid/graphics/drawable/Drawable;
    :cond_37
    :goto_37
    invoke-super {p0, p1, p2, v0}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 555
    return-void
.end method

.method public whitelist expandGroup(I)Z
    .registers 3
    .param p1, "groupPos"    # I

    .line 749
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public whitelist expandGroup(IZ)Z
    .registers 9
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    .line 761
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, v1}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 763
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 764
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 765
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 767
    .local v2, "retValue":Z
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v3, :cond_1e

    .line 768
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    invoke-interface {v3, p1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 771
    :cond_1e
    if-eqz p2, :cond_33

    .line 772
    iget-object v3, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 774
    .local v3, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    .line 775
    .local v4, "shiftedGroupPosition":I
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    .line 778
    .end local v3    # "groupFlatPos":I
    .end local v4    # "shiftedGroupPosition":I
    :cond_33
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 780
    return v2
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1384
    const-class v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getAdapter()Landroid/widget/Adapter;
    .registers 2

    .line 87
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 580
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .registers 2

    .line 620
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public whitelist getExpandableListPosition(I)J
    .registers 6
    .param p1, "flatListPosition"    # I

    .line 907
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 908
    const-wide v0, 0xffffffffL

    return-wide v0

    .line 911
    :cond_c
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 912
    .local v0, "adjustedPosition":I
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 913
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {v2}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 914
    .local v2, "packedPos":J
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 915
    return-wide v2
.end method

.method public whitelist getFlatListPosition(J)I
    .registers 7
    .param p1, "packedPosition"    # J

    .line 930
    nop

    .line 931
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainPosition(J)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 932
    .local v0, "elPackedPos":Landroid/widget/ExpandableListPosition;
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 933
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 934
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 935
    .local v2, "flatListPosition":I
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 936
    invoke-direct {p0, v2}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    return v3
.end method

.method public whitelist getSelectedId()J
    .registers 6

    .line 962
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    .line 963
    .local v0, "packedPos":J
    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const-wide/16 v2, -0x1

    return-wide v2

    .line 965
    :cond_10
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 967
    .local v2, "groupPos":I
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_21

    .line 969
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    return-wide v3

    .line 972
    :cond_21
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v2, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    return-wide v3
.end method

.method public whitelist getSelectedPosition()J
    .registers 4

    .line 948
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 951
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method greylist-max-o handleItemClick(Landroid/view/View;IJ)Z
    .registers 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 680
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 682
    .local v0, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-direct {p0, v1}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide v6

    .line 685
    .end local p3    # "id":J
    .local v6, "id":J
    iget-object p3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p3, p3, Landroid/widget/ExpandableListPosition;->type:I

    const/4 p4, 0x2

    const/4 v1, 0x0

    if-ne p3, p4, :cond_77

    .line 689
    iget-object p3, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    if-eqz p3, :cond_2b

    .line 690
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iget-object p3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, p3, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object v3, p0

    move-object v4, p1

    .end local p1    # "v":Landroid/view/View;
    .local v4, "v":Landroid/view/View;
    invoke-interface/range {v2 .. v7}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 692
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 693
    const/4 p1, 0x1

    return p1

    .line 689
    .end local v4    # "v":Landroid/view/View;
    .restart local p1    # "v":Landroid/view/View;
    :cond_2b
    move-object v3, p0

    move-object v4, p1

    .line 697
    .end local p1    # "v":Landroid/view/View;
    .restart local v4    # "v":Landroid/view/View;
    :cond_2d
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 699
    iget-object p1, v3, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 701
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 703
    iget-object p1, v3, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz p1, :cond_75

    .line 704
    iget-object p1, v3, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    iget-object p3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p3, p3, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {p1, p3}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    goto :goto_75

    .line 708
    :cond_49
    iget-object p1, v3, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 710
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 712
    iget-object p1, v3, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz p1, :cond_5e

    .line 713
    iget-object p1, v3, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    iget-object p3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p3, p3, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {p1, p3}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 716
    :cond_5e
    iget-object p1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 717
    .local p1, "groupPos":I
    iget-object p3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p3, p3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 719
    .local p3, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result p4

    add-int/2addr p4, p3

    .line 720
    .local p4, "shiftedGroupPosition":I
    iget-object v1, v3, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v1

    add-int/2addr v1, p4

    invoke-virtual {p0, v1, p4}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    .line 724
    .end local p1    # "groupPos":I
    .end local p3    # "groupFlatPos":I
    .end local p4    # "shiftedGroupPosition":I
    :cond_75
    :goto_75
    const/4 p1, 0x1

    .local p1, "returnValue":Z
    goto :goto_93

    .line 727
    .end local v4    # "v":Landroid/view/View;
    .local p1, "v":Landroid/view/View;
    :cond_77
    move-object v3, p0

    move-object v4, p1

    .end local p1    # "v":Landroid/view/View;
    .restart local v4    # "v":Landroid/view/View;
    iget-object p1, v3, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    if-eqz p1, :cond_92

    .line 728
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 729
    iget-object v2, v3, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    iget-object p1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object p1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p1, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    move-wide v7, v6

    move v6, p1

    .end local v6    # "id":J
    .local v7, "id":J
    invoke-interface/range {v2 .. v8}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result p1

    move-wide v6, v7

    .end local v7    # "id":J
    .restart local v6    # "id":J
    return p1

    .line 733
    :cond_92
    const/4 p1, 0x0

    .line 736
    .local p1, "returnValue":Z
    :goto_93
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 738
    return p1
.end method

.method public whitelist isGroupExpanded(I)Z
    .registers 3
    .param p1, "groupPosition"    # I

    .line 1038
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1157
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1158
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 1159
    .local v0, "metadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_36

    .line 1160
    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1161
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1162
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1163
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1164
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_36

    .line 1166
    :cond_31
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1171
    :cond_36
    :goto_36
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1172
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1369
    instance-of v0, p1, Landroid/widget/ExpandableListView$SavedState;

    if-nez v0, :cond_8

    .line 1370
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1371
    return-void

    .line 1374
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/widget/ExpandableListView$SavedState;

    .line 1375
    .local v0, "ss":Landroid/widget/ExpandableListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1377
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v1, :cond_21

    iget-object v1, v0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_21

    .line 1378
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    iget-object v2, v0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    .line 1380
    :cond_21
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .line 306
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 307
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 308
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1362
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1363
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/ExpandableListView$SavedState;

    .line 1364
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_11

    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    invoke-direct {v1, v0, v2}, Landroid/widget/ExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 1363
    return-object v1
.end method

.method public whitelist performItemClick(Landroid/view/View;IJ)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 657
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 659
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0

    .line 663
    :cond_b
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 664
    .local v0, "adjustedPosition":I
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/widget/ExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    .line 665
    .local v1, "clicked":Z
    if-eqz p1, :cond_19

    .line 666
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 668
    :cond_19
    return v1
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 87
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .line 602
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 604
    if-eqz p1, :cond_c

    .line 606
    new-instance v0, Landroid/widget/ExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    goto :goto_f

    .line 608
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 612
    :goto_f
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 613
    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 565
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .line 528
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 529
    return-void
.end method

.method public whitelist setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 1198
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1199
    return-void
.end method

.method public whitelist setChildIndicatorBounds(II)V
    .registers 3
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 1213
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 1214
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 1215
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 1216
    return-void
.end method

.method public whitelist setChildIndicatorBoundsRelative(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1230
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    .line 1231
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 1232
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 1233
    return-void
.end method

.method public whitelist setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 1244
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1245
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 1246
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 1248
    :cond_15
    return-void
.end method

.method public whitelist setIndicatorBounds(II)V
    .registers 3
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 1262
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 1263
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 1264
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 1265
    return-void
.end method

.method public whitelist setIndicatorBoundsRelative(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1279
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    .line 1280
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    .line 1281
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 1282
    return-void
.end method

.method public whitelist setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .registers 2
    .param p1, "onChildClickListener"    # Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 889
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 890
    return-void
.end method

.method public whitelist setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .registers 2
    .param p1, "onGroupClickListener"    # Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 861
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 862
    return-void
.end method

.method public whitelist setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V
    .registers 2
    .param p1, "onGroupCollapseListener"    # Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .line 816
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .line 817
    return-void
.end method

.method public whitelist setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V
    .registers 2
    .param p1, "onGroupExpandListener"    # Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .line 835
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .line 836
    return-void
.end method

.method public whitelist setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 593
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 594
    return-void
.end method

.method public whitelist setSelectedChild(IIZ)Z
    .registers 8
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .line 1002
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainChildPosition(II)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 1004
    .local v0, "elChildPos":Landroid/widget/ExpandableListPosition;
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 1006
    .local v1, "flatChildPos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    if-nez v1, :cond_24

    .line 1010
    if-nez p3, :cond_10

    const/4 v2, 0x0

    return v2

    .line 1012
    :cond_10
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 1014
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 1017
    if-eqz v1, :cond_1c

    goto :goto_24

    .line 1018
    :cond_1c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not find child"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1022
    :cond_24
    :goto_24
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v2}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    .line 1023
    .local v2, "absoluteFlatPosition":I
    invoke-super {p0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1025
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1026
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1028
    const/4 v3, 0x1

    return v3
.end method

.method public whitelist setSelectedGroup(I)V
    .registers 5
    .param p1, "groupPosition"    # I

    .line 981
    nop

    .line 982
    invoke-static {p1}, Landroid/widget/ExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 983
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 984
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 985
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v2}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    .line 986
    .local v2, "absoluteFlatPosition":I
    invoke-super {p0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 987
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 988
    return-void
.end method
