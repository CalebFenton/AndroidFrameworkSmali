.class public Landroid/widget/ExpandableListView;
.super Landroid/widget/ListView;
.source "ExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListView$OnGroupCollapseListener;,
        Landroid/widget/ExpandableListView$OnGroupExpandListener;,
        Landroid/widget/ExpandableListView$OnGroupClickListener;,
        Landroid/widget/ExpandableListView$OnChildClickListener;,
        Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/ExpandableListView$SavedState;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I

.field private static final INDICATOR_UNDEFINED:I = -0x2

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorEnd:I

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mChildIndicatorStart:I

.field private mConnector:Landroid/widget/ExpandableListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorEnd:I

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mIndicatorStart:I

.field private mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const v2, 0x10100a9

    #@3
    const v1, 0x10100a8

    #@6
    const/4 v4, 0x1

    #@7
    const/4 v3, 0x0

    #@8
    .line 188
    new-array v0, v3, [I

    #@a
    sput-object v0, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    #@c
    .line 192
    new-array v0, v4, [I

    #@e
    aput v1, v0, v3

    #@10
    .line 191
    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    #@12
    .line 196
    new-array v0, v4, [I

    #@14
    aput v2, v0, v3

    #@16
    .line 195
    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    #@18
    .line 200
    filled-new-array {v1, v2}, [I

    #@1b
    move-result-object v0

    #@1c
    .line 199
    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    #@1e
    .line 203
    const/4 v0, 0x4

    #@1f
    new-array v0, v0, [[I

    #@21
    .line 204
    sget-object v1, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    #@23
    aput-object v1, v0, v3

    #@25
    .line 205
    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    #@27
    aput-object v1, v0, v4

    #@29
    .line 206
    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    #@2b
    const/4 v2, 0x2

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 207
    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    #@30
    const/4 v2, 0x3

    #@31
    aput-object v1, v0, v2

    #@33
    .line 203
    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    #@35
    .line 212
    new-array v0, v4, [I

    #@37
    const v1, 0x10100a6

    #@3a
    aput v1, v0, v3

    #@3c
    .line 211
    sput-object v0, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    #@3e
    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 221
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 225
    const v0, 0x101006f

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 229
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 228
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
    const/4 v4, -0x2

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    .line 234
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6
    .line 218
    new-instance v1, Landroid/graphics/Rect;

    #@8
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    #@d
    .line 237
    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    #@f
    .line 236
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@12
    move-result-object v0

    #@13
    .line 239
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@16
    move-result-object v1

    #@17
    iput-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    #@19
    .line 242
    const/4 v1, 0x1

    #@1a
    .line 241
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    #@20
    .line 244
    const/4 v1, 0x2

    #@21
    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@24
    move-result v1

    #@25
    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    #@27
    .line 246
    const/4 v1, 0x3

    #@28
    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2b
    move-result v1

    #@2c
    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    #@2e
    .line 247
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    #@30
    if-nez v1, :cond_0

    #@32
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    #@34
    if-eqz v1, :cond_0

    #@36
    .line 248
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    #@38
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    #@3a
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@3d
    move-result v2

    #@3e
    add-int/2addr v1, v2

    #@3f
    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    #@41
    .line 251
    :cond_0
    const/4 v1, 0x4

    #@42
    .line 250
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@45
    move-result v1

    #@46
    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    #@48
    .line 254
    const/4 v1, 0x5

    #@49
    .line 253
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@4c
    move-result v1

    #@4d
    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    #@4f
    .line 257
    const/4 v1, 0x6

    #@50
    .line 256
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@53
    move-result-object v1

    #@54
    iput-object v1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    #@56
    .line 259
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->isRtlCompatibilityMode()Z

    #@59
    move-result v1

    #@5a
    if-nez v1, :cond_1

    #@5c
    .line 261
    const/4 v1, 0x7

    #@5d
    .line 260
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@60
    move-result v1

    #@61
    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    #@63
    .line 264
    const/16 v1, 0x8

    #@65
    .line 263
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@68
    move-result v1

    #@69
    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    #@6b
    .line 268
    const/16 v1, 0x9

    #@6d
    .line 267
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@70
    move-result v1

    #@71
    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    #@73
    .line 271
    const/16 v1, 0xa

    #@75
    .line 270
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@78
    move-result v1

    #@79
    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    #@7b
    .line 275
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@7e
    .line 233
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    #@0
    .prologue
    .line 640
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    #@3
    move-result v0

    #@4
    add-int/2addr v0, p1

    #@5
    return v0
.end method

.method private getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J
    .locals 3
    .param p1, "position"    # Landroid/widget/ExpandableListPosition;

    #@0
    .prologue
    .line 1143
    iget v0, p1, Landroid/widget/ExpandableListPosition;->type:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1144
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    #@7
    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@9
    iget v2, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    #@b
    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    #@e
    move-result-wide v0

    #@f
    return-wide v0

    #@10
    .line 1146
    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    #@12
    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@14
    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    #@17
    move-result-wide v0

    #@18
    return-wide v0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    #@0
    .prologue
    .line 629
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    #@3
    move-result v0

    #@4
    sub-int v0, p1, v0

    #@6
    return v0
.end method

.method private getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "pos"    # Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v5, 0x0

    #@2
    .line 479
    iget-object v6, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@4
    iget v6, v6, Landroid/widget/ExpandableListPosition;->type:I

    #@6
    if-ne v6, v4, :cond_5

    #@8
    .line 480
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    #@a
    .line 482
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_0

    #@12
    .line 486
    iget-object v6, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@14
    if-eqz v6, :cond_1

    #@16
    .line 487
    iget-object v6, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@18
    iget v6, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    #@1a
    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@1c
    iget v7, v7, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    #@1e
    if-ne v6, v7, :cond_2

    #@20
    const/4 v1, 0x1

    #@21
    .line 490
    .local v1, "isEmpty":Z
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_3

    #@27
    const/4 v6, 0x1

    #@28
    .line 491
    :goto_1
    if-eqz v1, :cond_4

    #@2a
    .line 490
    :goto_2
    or-int v3, v6, v4

    #@2c
    .line 492
    .local v3, "stateSetIndex":I
    sget-object v4, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    #@2e
    aget-object v4, v4, v3

    #@30
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@33
    .line 506
    .end local v1    # "isEmpty":Z
    .end local v3    # "stateSetIndex":I
    :cond_0
    :goto_3
    return-object v0

    #@34
    .line 486
    :cond_1
    const/4 v1, 0x1

    #@35
    .restart local v1    # "isEmpty":Z
    goto :goto_0

    #@36
    .line 487
    .end local v1    # "isEmpty":Z
    :cond_2
    const/4 v1, 0x0

    #@37
    .restart local v1    # "isEmpty":Z
    goto :goto_0

    #@38
    :cond_3
    move v6, v5

    #@39
    .line 490
    goto :goto_1

    #@3a
    :cond_4
    move v4, v5

    #@3b
    .line 491
    goto :goto_2

    #@3c
    .line 495
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v1    # "isEmpty":Z
    :cond_5
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    #@3e
    .line 497
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@40
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@43
    move-result v4

    #@44
    if-eqz v4, :cond_0

    #@46
    .line 499
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@48
    iget v4, v4, Landroid/widget/ExpandableListPosition;->flatListPos:I

    #@4a
    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@4c
    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    #@4e
    if-ne v4, v5, :cond_6

    #@50
    .line 500
    sget-object v2, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    #@52
    .line 502
    .local v2, "stateSet":[I
    :goto_4
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@55
    goto :goto_3

    #@56
    .line 501
    .end local v2    # "stateSet":[I
    :cond_6
    sget-object v2, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    #@58
    .restart local v2    # "stateSet":[I
    goto :goto_4
.end method

.method public static getPackedPositionChild(J)I
    .locals 8
    .param p0, "packedPosition"    # J

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    const-wide/high16 v4, -0x8000000000000000L

    #@7
    const/4 v2, -0x1

    #@8
    .line 1071
    cmp-long v0, p0, v6

    #@a
    if-nez v0, :cond_0

    #@c
    return v2

    #@d
    .line 1074
    :cond_0
    and-long v0, p0, v4

    #@f
    cmp-long v0, v0, v4

    #@11
    if-eqz v0, :cond_1

    #@13
    return v2

    #@14
    .line 1076
    :cond_1
    and-long v0, p0, v6

    #@16
    long-to-int v0, v0

    #@17
    return v0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    #@0
    .prologue
    .line 1097
    int-to-long v0, p0

    #@1
    const-wide/32 v2, 0x7fffffff

    #@4
    and-long/2addr v0, v2

    #@5
    .line 1098
    const/16 v2, 0x20

    #@7
    .line 1097
    shl-long/2addr v0, v2

    #@8
    .line 1096
    const-wide/high16 v2, -0x8000000000000000L

    #@a
    or-long/2addr v0, v2

    #@b
    .line 1099
    int-to-long v2, p1

    #@c
    const-wide/16 v4, -0x1

    #@e
    and-long/2addr v2, v4

    #@f
    .line 1096
    or-long/2addr v0, v2

    #@10
    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .param p0, "groupPosition"    # I

    #@0
    .prologue
    .line 1111
    int-to-long v0, p0

    #@1
    const-wide/32 v2, 0x7fffffff

    #@4
    and-long/2addr v0, v2

    #@5
    .line 1112
    const/16 v2, 0x20

    #@7
    .line 1111
    shl-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    #@0
    .prologue
    .line 1052
    const-wide v0, 0xffffffffL

    #@5
    cmp-long v0, p0, v0

    #@7
    if-nez v0, :cond_0

    #@9
    const/4 v0, -0x1

    #@a
    return v0

    #@b
    .line 1054
    :cond_0
    const-wide v0, 0x7fffffff00000000L

    #@10
    and-long/2addr v0, p0

    #@11
    const/16 v2, 0x20

    #@13
    shr-long/2addr v0, v2

    #@14
    long-to-int v0, v0

    #@15
    return v0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    #@0
    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    #@2
    .line 1032
    const-wide v0, 0xffffffffL

    #@7
    cmp-long v0, p0, v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1033
    const/4 v0, 0x2

    #@c
    return v0

    #@d
    .line 1036
    :cond_0
    and-long v0, p0, v2

    #@f
    cmp-long v0, v0, v2

    #@11
    if-nez v0, :cond_1

    #@13
    .line 1037
    const/4 v0, 0x1

    #@14
    .line 1036
    :goto_0
    return v0

    #@15
    .line 1038
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method private hasRtlSupport()Z
    .locals 1

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 617
    iget v2, p0, Landroid/widget/ExpandableListView;->mItemCount:I

    #@3
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    #@6
    move-result v3

    #@7
    sub-int v0, v2, v3

    #@9
    .line 618
    .local v0, "footerViewsStart":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    #@c
    move-result v2

    #@d
    if-lt p1, v2, :cond_0

    #@f
    if-lt p1, v0, :cond_1

    #@11
    :cond_0
    :goto_0
    return v1

    #@12
    :cond_1
    const/4 v1, 0x0

    #@13
    goto :goto_0
.end method

.method private isRtlCompatibilityMode()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 283
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@6
    move-result-object v2

    #@7
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@9
    .line 284
    .local v0, "targetSdkVersion":I
    const/16 v2, 0x11

    #@b
    if-lt v0, v2, :cond_0

    #@d
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->hasRtlSupport()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    const/4 v1, 0x0

    #@14
    :cond_0
    return v1
.end method

.method private resolveChildIndicator()V
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 330
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    #@4
    move-result v0

    #@5
    .line 331
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_2

    #@7
    .line 332
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    #@9
    if-lt v1, v2, :cond_0

    #@b
    .line 333
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    #@d
    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    #@f
    .line 335
    :cond_0
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    #@11
    if-lt v1, v2, :cond_1

    #@13
    .line 336
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    #@15
    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    #@17
    .line 329
    :cond_1
    :goto_0
    return-void

    #@18
    .line 339
    :cond_2
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    #@1a
    if-lt v1, v2, :cond_3

    #@1c
    .line 340
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    #@1e
    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    #@20
    .line 342
    :cond_3
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    #@22
    if-lt v1, v2, :cond_1

    #@24
    .line 343
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    #@26
    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    #@28
    goto :goto_0
.end method

.method private resolveIndicator()V
    .locals 3

    #@0
    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    #@3
    move-result v0

    #@4
    .line 305
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_3

    #@6
    .line 306
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    #@8
    if-ltz v1, :cond_0

    #@a
    .line 307
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    #@c
    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    #@e
    .line 309
    :cond_0
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    #@10
    if-ltz v1, :cond_1

    #@12
    .line 310
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    #@14
    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    #@16
    .line 320
    :cond_1
    :goto_0
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    #@18
    if-nez v1, :cond_2

    #@1a
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 321
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    #@20
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    #@22
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@25
    move-result v2

    #@26
    add-int/2addr v1, v2

    #@27
    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    #@29
    .line 303
    :cond_2
    return-void

    #@2a
    .line 313
    :cond_3
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    #@2c
    if-ltz v1, :cond_4

    #@2e
    .line 314
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    #@30
    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    #@32
    .line 316
    :cond_4
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    #@34
    if-ltz v1, :cond_1

    #@36
    .line 317
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    #@38
    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    #@3a
    goto :goto_0
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    #@0
    .prologue
    .line 776
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@2
    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    #@5
    move-result v0

    #@6
    .line 778
    .local v0, "retValue":Z
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 779
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    #@c
    invoke-interface {v1, p1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    #@f
    .line 782
    :cond_0
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flatListPosition"    # I
    .param p3, "id"    # J

    #@0
    .prologue
    .line 1117
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1119
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    #@8
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    #@b
    return-object v0

    #@c
    .line 1122
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    #@f
    move-result v6

    #@10
    .line 1123
    .local v6, "adjustedPosition":I
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@12
    invoke-virtual {v0, v6}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@15
    move-result-object v7

    #@16
    .line 1124
    .local v7, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v8, v7, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@18
    .line 1126
    .local v8, "pos":Landroid/widget/ExpandableListPosition;
    invoke-direct {p0, v8}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    #@1b
    move-result-wide p3

    #@1c
    .line 1127
    invoke-virtual {v8}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    #@1f
    move-result-wide v2

    #@20
    .line 1129
    .local v2, "packedPosition":J
    invoke-virtual {v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@23
    .line 1131
    new-instance v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    #@25
    move-object v1, p1

    #@26
    move-wide v4, p3

    #@27
    invoke-direct/range {v0 .. v5}, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    #@2a
    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 351
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 354
    move-object/from16 v0, p0

    #@5
    iget-object v0, v0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    #@7
    move-object/from16 v25, v0

    #@9
    if-nez v25, :cond_0

    #@b
    move-object/from16 v0, p0

    #@d
    iget-object v0, v0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    #@f
    move-object/from16 v25, v0

    #@11
    if-nez v25, :cond_0

    #@13
    .line 355
    return-void

    #@14
    .line 358
    :cond_0
    const/16 v19, 0x0

    #@16
    .line 359
    .local v19, "saveCount":I
    move-object/from16 v0, p0

    #@18
    iget v0, v0, Landroid/widget/ExpandableListView;->mGroupFlags:I

    #@1a
    move/from16 v25, v0

    #@1c
    and-int/lit8 v25, v25, 0x22

    #@1e
    const/16 v26, 0x22

    #@20
    move/from16 v0, v25

    #@22
    move/from16 v1, v26

    #@24
    if-ne v0, v1, :cond_3

    #@26
    const/4 v8, 0x1

    #@27
    .line 360
    .local v8, "clipToPadding":Z
    :goto_0
    if-eqz v8, :cond_1

    #@29
    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@2c
    move-result v19

    #@2d
    .line 362
    move-object/from16 v0, p0

    #@2f
    iget v0, v0, Landroid/widget/ExpandableListView;->mScrollX:I

    #@31
    move/from16 v20, v0

    #@33
    .line 363
    .local v20, "scrollX":I
    move-object/from16 v0, p0

    #@35
    iget v0, v0, Landroid/widget/ExpandableListView;->mScrollY:I

    #@37
    move/from16 v21, v0

    #@39
    .line 364
    .local v21, "scrollY":I
    move-object/from16 v0, p0

    #@3b
    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    #@3d
    move/from16 v25, v0

    #@3f
    add-int v25, v25, v20

    #@41
    move-object/from16 v0, p0

    #@43
    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingTop:I

    #@45
    move/from16 v26, v0

    #@47
    add-int v26, v26, v21

    #@49
    .line 365
    move-object/from16 v0, p0

    #@4b
    iget v0, v0, Landroid/widget/ExpandableListView;->mRight:I

    #@4d
    move/from16 v27, v0

    #@4f
    add-int v27, v27, v20

    #@51
    move-object/from16 v0, p0

    #@53
    iget v0, v0, Landroid/widget/ExpandableListView;->mLeft:I

    #@55
    move/from16 v28, v0

    #@57
    sub-int v27, v27, v28

    #@59
    move-object/from16 v0, p0

    #@5b
    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    #@5d
    move/from16 v28, v0

    #@5f
    sub-int v27, v27, v28

    #@61
    .line 366
    move-object/from16 v0, p0

    #@63
    iget v0, v0, Landroid/widget/ExpandableListView;->mBottom:I

    #@65
    move/from16 v28, v0

    #@67
    add-int v28, v28, v21

    #@69
    move-object/from16 v0, p0

    #@6b
    iget v0, v0, Landroid/widget/ExpandableListView;->mTop:I

    #@6d
    move/from16 v29, v0

    #@6f
    sub-int v28, v28, v29

    #@71
    move-object/from16 v0, p0

    #@73
    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingBottom:I

    #@75
    move/from16 v29, v0

    #@77
    sub-int v28, v28, v29

    #@79
    .line 364
    move-object/from16 v0, p1

    #@7b
    move/from16 v1, v25

    #@7d
    move/from16 v2, v26

    #@7f
    move/from16 v3, v27

    #@81
    move/from16 v4, v28

    #@83
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@86
    .line 369
    .end local v20    # "scrollX":I
    .end local v21    # "scrollY":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    #@89
    move-result v9

    #@8a
    .line 371
    .local v9, "headerViewsCount":I
    move-object/from16 v0, p0

    #@8c
    iget v0, v0, Landroid/widget/ExpandableListView;->mItemCount:I

    #@8e
    move/from16 v25, v0

    #@90
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    #@93
    move-result v26

    #@94
    sub-int v25, v25, v26

    #@96
    sub-int v25, v25, v9

    #@98
    add-int/lit8 v15, v25, -0x1

    #@9a
    .line 373
    .local v15, "lastChildFlPos":I
    move-object/from16 v0, p0

    #@9c
    iget v0, v0, Landroid/widget/ExpandableListView;->mBottom:I

    #@9e
    move/from16 v17, v0

    #@a0
    .line 381
    .local v17, "myB":I
    const/16 v16, -0x4

    #@a2
    .line 383
    .local v16, "lastItemType":I
    move-object/from16 v0, p0

    #@a4
    iget-object v12, v0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    #@a6
    .line 388
    .local v12, "indicatorRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getChildCount()I

    #@a9
    move-result v6

    #@aa
    .line 389
    .local v6, "childCount":I
    const/4 v10, 0x0

    #@ab
    .local v10, "i":I
    move-object/from16 v0, p0

    #@ad
    iget v0, v0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    #@af
    move/from16 v25, v0

    #@b1
    sub-int v7, v25, v9

    #@b3
    .local v7, "childFlPos":I
    :goto_1
    if-ge v10, v6, :cond_5

    #@b5
    .line 392
    if-gez v7, :cond_4

    #@b7
    .line 390
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    #@b9
    add-int/lit8 v7, v7, 0x1

    #@bb
    goto :goto_1

    #@bc
    .line 359
    .end local v6    # "childCount":I
    .end local v7    # "childFlPos":I
    .end local v8    # "clipToPadding":Z
    .end local v9    # "headerViewsCount":I
    .end local v10    # "i":I
    .end local v12    # "indicatorRect":Landroid/graphics/Rect;
    .end local v15    # "lastChildFlPos":I
    .end local v16    # "lastItemType":I
    .end local v17    # "myB":I
    :cond_3
    const/4 v8, 0x0

    #@bd
    .restart local v8    # "clipToPadding":Z
    goto/16 :goto_0

    #@bf
    .line 395
    .restart local v6    # "childCount":I
    .restart local v7    # "childFlPos":I
    .restart local v9    # "headerViewsCount":I
    .restart local v10    # "i":I
    .restart local v12    # "indicatorRect":Landroid/graphics/Rect;
    .restart local v15    # "lastChildFlPos":I
    .restart local v16    # "lastItemType":I
    .restart local v17    # "myB":I
    :cond_4
    if-le v7, v15, :cond_7

    #@c1
    .line 463
    :cond_5
    if-eqz v8, :cond_6

    #@c3
    .line 464
    move-object/from16 v0, p1

    #@c5
    move/from16 v1, v19

    #@c7
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@ca
    .line 349
    :cond_6
    return-void

    #@cb
    .line 400
    :cond_7
    move-object/from16 v0, p0

    #@cd
    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    #@d0
    move-result-object v14

    #@d1
    .line 401
    .local v14, "item":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    #@d4
    move-result v22

    #@d5
    .line 402
    .local v22, "t":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    #@d8
    move-result v5

    #@d9
    .line 405
    .local v5, "b":I
    if-ltz v5, :cond_2

    #@db
    move/from16 v0, v22

    #@dd
    move/from16 v1, v17

    #@df
    if-gt v0, v1, :cond_2

    #@e1
    .line 408
    move-object/from16 v0, p0

    #@e3
    iget-object v0, v0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@e5
    move-object/from16 v25, v0

    #@e7
    move-object/from16 v0, v25

    #@e9
    invoke-virtual {v0, v7}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@ec
    move-result-object v18

    #@ed
    .line 410
    .local v18, "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    #@f0
    move-result v13

    #@f1
    .line 411
    .local v13, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getWidth()I

    #@f4
    move-result v24

    #@f5
    .line 415
    .local v24, "width":I
    move-object/from16 v0, v18

    #@f7
    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@f9
    move-object/from16 v25, v0

    #@fb
    move-object/from16 v0, v25

    #@fd
    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@ff
    move/from16 v25, v0

    #@101
    move/from16 v0, v25

    #@103
    move/from16 v1, v16

    #@105
    if-eq v0, v1, :cond_8

    #@107
    .line 416
    move-object/from16 v0, v18

    #@109
    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@10b
    move-object/from16 v25, v0

    #@10d
    move-object/from16 v0, v25

    #@10f
    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@111
    move/from16 v25, v0

    #@113
    const/16 v26, 0x1

    #@115
    move/from16 v0, v25

    #@117
    move/from16 v1, v26

    #@119
    if-ne v0, v1, :cond_c

    #@11b
    .line 417
    move-object/from16 v0, p0

    #@11d
    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    #@11f
    move/from16 v25, v0

    #@121
    const/16 v26, -0x1

    #@123
    move/from16 v0, v25

    #@125
    move/from16 v1, v26

    #@127
    if-ne v0, v1, :cond_a

    #@129
    .line 418
    move-object/from16 v0, p0

    #@12b
    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    #@12d
    move/from16 v25, v0

    #@12f
    .line 417
    :goto_3
    move/from16 v0, v25

    #@131
    iput v0, v12, Landroid/graphics/Rect;->left:I

    #@133
    .line 419
    move-object/from16 v0, p0

    #@135
    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    #@137
    move/from16 v25, v0

    #@139
    const/16 v26, -0x1

    #@13b
    move/from16 v0, v25

    #@13d
    move/from16 v1, v26

    #@13f
    if-ne v0, v1, :cond_b

    #@141
    .line 420
    move-object/from16 v0, p0

    #@143
    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    #@145
    move/from16 v25, v0

    #@147
    .line 419
    :goto_4
    move/from16 v0, v25

    #@149
    iput v0, v12, Landroid/graphics/Rect;->right:I

    #@14b
    .line 426
    :goto_5
    if-eqz v13, :cond_d

    #@14d
    .line 427
    iget v0, v12, Landroid/graphics/Rect;->left:I

    #@14f
    move/from16 v23, v0

    #@151
    .line 428
    .local v23, "temp":I
    iget v0, v12, Landroid/graphics/Rect;->right:I

    #@153
    move/from16 v25, v0

    #@155
    sub-int v25, v24, v25

    #@157
    move/from16 v0, v25

    #@159
    iput v0, v12, Landroid/graphics/Rect;->left:I

    #@15b
    .line 429
    sub-int v25, v24, v23

    #@15d
    move/from16 v0, v25

    #@15f
    iput v0, v12, Landroid/graphics/Rect;->right:I

    #@161
    .line 431
    iget v0, v12, Landroid/graphics/Rect;->left:I

    #@163
    move/from16 v25, v0

    #@165
    move-object/from16 v0, p0

    #@167
    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    #@169
    move/from16 v26, v0

    #@16b
    sub-int v25, v25, v26

    #@16d
    move/from16 v0, v25

    #@16f
    iput v0, v12, Landroid/graphics/Rect;->left:I

    #@171
    .line 432
    iget v0, v12, Landroid/graphics/Rect;->right:I

    #@173
    move/from16 v25, v0

    #@175
    move-object/from16 v0, p0

    #@177
    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    #@179
    move/from16 v26, v0

    #@17b
    sub-int v25, v25, v26

    #@17d
    move/from16 v0, v25

    #@17f
    iput v0, v12, Landroid/graphics/Rect;->right:I

    #@181
    .line 438
    .end local v23    # "temp":I
    :goto_6
    move-object/from16 v0, v18

    #@183
    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@185
    move-object/from16 v25, v0

    #@187
    move-object/from16 v0, v25

    #@189
    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@18b
    move/from16 v16, v0

    #@18d
    .line 441
    :cond_8
    iget v0, v12, Landroid/graphics/Rect;->left:I

    #@18f
    move/from16 v25, v0

    #@191
    iget v0, v12, Landroid/graphics/Rect;->right:I

    #@193
    move/from16 v26, v0

    #@195
    move/from16 v0, v25

    #@197
    move/from16 v1, v26

    #@199
    if-eq v0, v1, :cond_9

    #@19b
    .line 443
    move-object/from16 v0, p0

    #@19d
    iget-boolean v0, v0, Landroid/widget/ExpandableListView;->mStackFromBottom:Z

    #@19f
    move/from16 v25, v0

    #@1a1
    if-eqz v25, :cond_e

    #@1a3
    .line 445
    move/from16 v0, v22

    #@1a5
    iput v0, v12, Landroid/graphics/Rect;->top:I

    #@1a7
    .line 446
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    #@1a9
    .line 453
    :goto_7
    move-object/from16 v0, p0

    #@1ab
    move-object/from16 v1, v18

    #@1ad
    invoke-direct {v0, v1}, Landroid/widget/ExpandableListView;->getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    #@1b0
    move-result-object v11

    #@1b1
    .line 454
    .local v11, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_9

    #@1b3
    .line 456
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@1b6
    .line 457
    move-object/from16 v0, p1

    #@1b8
    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@1bb
    .line 460
    .end local v11    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@1be
    goto/16 :goto_2

    #@1c0
    .line 418
    :cond_a
    move-object/from16 v0, p0

    #@1c2
    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    #@1c4
    move/from16 v25, v0

    #@1c6
    goto/16 :goto_3

    #@1c8
    .line 420
    :cond_b
    move-object/from16 v0, p0

    #@1ca
    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    #@1cc
    move/from16 v25, v0

    #@1ce
    goto/16 :goto_4

    #@1d0
    .line 422
    :cond_c
    move-object/from16 v0, p0

    #@1d2
    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    #@1d4
    move/from16 v25, v0

    #@1d6
    move/from16 v0, v25

    #@1d8
    iput v0, v12, Landroid/graphics/Rect;->left:I

    #@1da
    .line 423
    move-object/from16 v0, p0

    #@1dc
    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    #@1de
    move/from16 v25, v0

    #@1e0
    move/from16 v0, v25

    #@1e2
    iput v0, v12, Landroid/graphics/Rect;->right:I

    #@1e4
    goto/16 :goto_5

    #@1e6
    .line 434
    :cond_d
    iget v0, v12, Landroid/graphics/Rect;->left:I

    #@1e8
    move/from16 v25, v0

    #@1ea
    move-object/from16 v0, p0

    #@1ec
    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    #@1ee
    move/from16 v26, v0

    #@1f0
    add-int v25, v25, v26

    #@1f2
    move/from16 v0, v25

    #@1f4
    iput v0, v12, Landroid/graphics/Rect;->left:I

    #@1f6
    .line 435
    iget v0, v12, Landroid/graphics/Rect;->right:I

    #@1f8
    move/from16 v25, v0

    #@1fa
    move-object/from16 v0, p0

    #@1fc
    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    #@1fe
    move/from16 v26, v0

    #@200
    add-int v25, v25, v26

    #@202
    move/from16 v0, v25

    #@204
    iput v0, v12, Landroid/graphics/Rect;->right:I

    #@206
    goto/16 :goto_6

    #@208
    .line 448
    :cond_e
    move/from16 v0, v22

    #@20a
    iput v0, v12, Landroid/graphics/Rect;->top:I

    #@20c
    .line 449
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    #@20e
    goto :goto_7
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    #@0
    .prologue
    .line 522
    iget v4, p0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    #@2
    add-int v2, p3, v4

    #@4
    .line 526
    .local v2, "flatListPosition":I
    if-ltz v2, :cond_2

    #@6
    .line 527
    invoke-direct {p0, v2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    #@9
    move-result v0

    #@a
    .line 528
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@c
    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@f
    move-result-object v3

    #@10
    .line 530
    .local v3, "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@12
    iget v4, v4, Landroid/widget/ExpandableListPosition;->type:I

    #@14
    const/4 v5, 0x1

    #@15
    if-eq v4, v5, :cond_0

    #@17
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 531
    iget-object v4, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@1f
    iget v4, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    #@21
    iget-object v5, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@23
    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    #@25
    if-eq v4, v5, :cond_1

    #@27
    .line 533
    :cond_0
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    #@29
    .line 534
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@2c
    .line 535
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@2f
    .line 536
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@32
    .line 537
    return-void

    #@33
    .line 539
    .end local v1    # "divider":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@36
    .line 543
    .end local v0    # "adjustedPosition":I
    .end local v3    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_2
    invoke-super {p0, p1, p2, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    #@39
    .line 521
    return-void
.end method

.method public expandGroup(I)Z
    .locals 1
    .param p1, "groupPos"    # I

    #@0
    .prologue
    .line 734
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public expandGroup(IZ)Z
    .locals 7
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 747
    const/4 v5, 0x2

    #@2
    .line 746
    invoke-static {v5, p1, v6, v6}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    #@5
    move-result-object v0

    #@6
    .line 748
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@8
    invoke-virtual {v5, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@b
    move-result-object v2

    #@c
    .line 749
    .local v2, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    #@f
    .line 750
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@11
    invoke-virtual {v5, v2}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    #@14
    move-result v3

    #@15
    .line 752
    .local v3, "retValue":Z
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    #@17
    if-eqz v5, :cond_0

    #@19
    .line 753
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    #@1b
    invoke-interface {v5, p1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    #@1e
    .line 756
    :cond_0
    if-eqz p2, :cond_1

    #@20
    .line 757
    iget-object v5, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@22
    iget v1, v5, Landroid/widget/ExpandableListPosition;->flatListPos:I

    #@24
    .line 759
    .local v1, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    #@27
    move-result v5

    #@28
    add-int v4, v1, v5

    #@2a
    .line 760
    .local v4, "shiftedGroupPosition":I
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    #@2c
    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    #@2f
    move-result v5

    #@30
    add-int/2addr v5, v4

    #@31
    invoke-virtual {p0, v5, v4}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    #@34
    .line 763
    .end local v1    # "groupFlatPos":I
    .end local v4    # "shiftedGroupPosition":I
    :cond_1
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@37
    .line 765
    return v3
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1344
    const-class v0, Landroid/widget/ExpandableListView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    #@0
    .prologue
    .line 569
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    #@0
    .prologue
    .line 609
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    #@2
    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 6
    .param p1, "flatListPosition"    # I

    #@0
    .prologue
    .line 888
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 889
    const-wide v4, 0xffffffffL

    #@b
    return-wide v4

    #@c
    .line 892
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    #@f
    move-result v0

    #@10
    .line 893
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@12
    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@15
    move-result-object v1

    #@16
    .line 894
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@18
    invoke-virtual {v4}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    #@1b
    move-result-wide v2

    #@1c
    .line 895
    .local v2, "packedPos":J
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@1f
    .line 896
    return-wide v2
.end method

.method public getFlatListPosition(J)I
    .locals 5
    .param p1, "packedPosition"    # J

    #@0
    .prologue
    .line 911
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainPosition(J)Landroid/widget/ExpandableListPosition;

    #@3
    move-result-object v0

    #@4
    .line 913
    .local v0, "elPackedPos":Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@6
    invoke-virtual {v3, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@9
    move-result-object v2

    #@a
    .line 914
    .local v2, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    #@d
    .line 915
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@f
    iget v1, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    #@11
    .line 916
    .local v1, "flatListPosition":I
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@14
    .line 917
    invoke-direct {p0, v1}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    #@17
    move-result v3

    #@18
    return v3
.end method

.method public getSelectedId()J
    .locals 6

    #@0
    .prologue
    .line 943
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    #@3
    move-result-wide v2

    #@4
    .line 944
    .local v2, "packedPos":J
    const-wide v4, 0xffffffffL

    #@9
    cmp-long v1, v2, v4

    #@b
    if-nez v1, :cond_0

    #@d
    const-wide/16 v4, -0x1

    #@f
    return-wide v4

    #@10
    .line 946
    :cond_0
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    #@13
    move-result v0

    #@14
    .line 948
    .local v0, "groupPos":I
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 950
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    #@1c
    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    #@1f
    move-result-wide v4

    #@20
    return-wide v4

    #@21
    .line 953
    :cond_1
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    #@23
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    #@26
    move-result v4

    #@27
    invoke-interface {v1, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    #@2a
    move-result-wide v4

    #@2b
    return-wide v4
.end method

.method public getSelectedPosition()J
    .locals 4

    #@0
    .prologue
    .line 929
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedItemPosition()I

    #@3
    move-result v0

    #@4
    .line 932
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    #@7
    move-result-wide v2

    #@8
    return-wide v2
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    #@0
    .prologue
    .line 665
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@2
    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@5
    move-result-object v10

    #@6
    .line 667
    .local v10, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@8
    invoke-direct {p0, v0}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    #@b
    move-result-wide p3

    #@c
    .line 670
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@e
    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@10
    const/4 v1, 0x2

    #@11
    if-ne v0, v1, :cond_4

    #@13
    .line 674
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 675
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    #@19
    .line 676
    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@1b
    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@1d
    move-object v1, p0

    #@1e
    move-object v2, p1

    #@1f
    move-wide/from16 v4, p3

    #@21
    .line 675
    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 677
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@2a
    .line 678
    const/4 v0, 0x1

    #@2b
    return v0

    #@2c
    .line 682
    :cond_0
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_2

    #@32
    .line 684
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@34
    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    #@37
    .line 686
    const/4 v0, 0x0

    #@38
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    #@3b
    .line 688
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    #@3d
    if-eqz v0, :cond_1

    #@3f
    .line 689
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    #@41
    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@43
    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@45
    invoke-interface {v0, v1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    #@48
    .line 709
    :cond_1
    :goto_0
    const/4 v11, 0x1

    #@49
    .line 721
    .local v11, "returnValue":Z
    :goto_1
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@4c
    .line 723
    return v11

    #@4d
    .line 693
    .end local v11    # "returnValue":Z
    :cond_2
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@4f
    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    #@52
    .line 695
    const/4 v0, 0x0

    #@53
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    #@56
    .line 697
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    #@58
    if-eqz v0, :cond_3

    #@5a
    .line 698
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    #@5c
    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@5e
    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@60
    invoke-interface {v0, v1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    #@63
    .line 701
    :cond_3
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@65
    iget v9, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@67
    .line 702
    .local v9, "groupPos":I
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@69
    iget v8, v0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    #@6b
    .line 704
    .local v8, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    #@6e
    move-result v0

    #@6f
    add-int v12, v8, v0

    #@71
    .line 705
    .local v12, "shiftedGroupPosition":I
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    #@73
    invoke-interface {v0, v9}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    #@76
    move-result v0

    #@77
    add-int/2addr v0, v12

    #@78
    invoke-virtual {p0, v0, v12}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    #@7b
    goto :goto_0

    #@7c
    .line 712
    .end local v8    # "groupFlatPos":I
    .end local v9    # "groupPos":I
    .end local v12    # "shiftedGroupPosition":I
    :cond_4
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    #@7e
    if-eqz v0, :cond_5

    #@80
    .line 713
    const/4 v0, 0x0

    #@81
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    #@84
    .line 714
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    #@86
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@88
    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@8a
    .line 715
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@8c
    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    #@8e
    move-object v2, p0

    #@8f
    move-object v3, p1

    #@90
    move-wide/from16 v6, p3

    #@92
    .line 714
    invoke-interface/range {v1 .. v7}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    #@95
    move-result v0

    #@96
    return v0

    #@97
    .line 718
    :cond_5
    const/4 v11, 0x0

    #@98
    .restart local v11    # "returnValue":Z
    goto :goto_1
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .param p1, "groupPosition"    # I

    #@0
    .prologue
    .line 1019
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->isGroupExpanded(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 1329
    instance-of v1, p1, Landroid/widget/ExpandableListView$SavedState;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1330
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    .line 1331
    return-void

    #@8
    :cond_0
    move-object v0, p1

    #@9
    .line 1334
    check-cast v0, Landroid/widget/ExpandableListView$SavedState;

    #@b
    .line 1335
    .local v0, "ss":Landroid/widget/ExpandableListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@e
    move-result-object v1

    #@f
    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@12
    .line 1337
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@14
    if-eqz v1, :cond_1

    #@16
    iget-object v1, v0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1338
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@1c
    iget-object v2, v0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    #@21
    .line 1328
    :cond_1
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 295
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    #@3
    .line 296
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    #@6
    .line 294
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1322
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    #@4
    move-result-object v0

    #@5
    .line 1323
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v2, Landroid/widget/ExpandableListView$SavedState;

    #@7
    .line 1324
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@9
    if-eqz v3, :cond_0

    #@b
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@d
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    #@10
    move-result-object v1

    #@11
    .line 1323
    :cond_0
    invoke-direct {v2, v0, v1}, Landroid/widget/ExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    #@14
    return-object v2
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    #@0
    .prologue
    .line 646
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 648
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 652
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    #@e
    move-result v0

    #@f
    .line 653
    .local v0, "adjustedPosition":I
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/widget/ExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    #@12
    move-result v1

    #@13
    return v1
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 591
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    #@3
    .line 593
    if-eqz p1, :cond_0

    #@5
    .line 595
    new-instance v0, Landroid/widget/ExpandableListConnector;

    #@7
    invoke-direct {v0, p1}, Landroid/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    #@a
    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@c
    .line 601
    :goto_0
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@e
    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@11
    .line 589
    return-void

    #@12
    .line 597
    :cond_0
    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@14
    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    #@0
    .prologue
    .line 554
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    .line 555
    const-string/jumbo v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    #@5
    .line 554
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 517
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    #@2
    .line 516
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1158
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    #@2
    .line 1157
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 1173
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    #@2
    .line 1174
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    #@4
    .line 1175
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    #@7
    .line 1172
    return-void
.end method

.method public setChildIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1190
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    #@2
    .line 1191
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    #@4
    .line 1192
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    #@7
    .line 1189
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1204
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    #@2
    .line 1205
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1206
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    #@c
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@11
    move-result v1

    #@12
    add-int/2addr v0, v1

    #@13
    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    #@15
    .line 1203
    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    #@0
    .prologue
    .line 1222
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    #@2
    .line 1223
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    #@4
    .line 1224
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    #@7
    .line 1221
    return-void
.end method

.method public setIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1239
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    #@2
    .line 1240
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    #@4
    .line 1241
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    #@7
    .line 1238
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Landroid/widget/ExpandableListView$OnChildClickListener;

    #@0
    .prologue
    .line 870
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    #@2
    .line 869
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Landroid/widget/ExpandableListView$OnGroupClickListener;

    #@0
    .prologue
    .line 843
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    #@2
    .line 842
    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .param p1, "onGroupCollapseListener"    # Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    #@0
    .prologue
    .line 800
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    #@2
    .line 799
    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .param p1, "onGroupExpandListener"    # Landroid/widget/ExpandableListView$OnGroupExpandListener;

    #@0
    .prologue
    .line 818
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    #@2
    .line 817
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    #@0
    .prologue
    .line 582
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@3
    .line 581
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    #@0
    .prologue
    .line 983
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainChildPosition(II)Landroid/widget/ExpandableListPosition;

    #@3
    move-result-object v1

    #@4
    .line 985
    .local v1, "elChildPos":Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@6
    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@9
    move-result-object v2

    #@a
    .line 987
    .local v2, "flatChildPos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_1

    #@c
    .line 991
    if-nez p3, :cond_0

    #@e
    const/4 v3, 0x0

    #@f
    return v3

    #@10
    .line 993
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    #@13
    .line 995
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@15
    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@18
    move-result-object v2

    #@19
    .line 998
    if-nez v2, :cond_1

    #@1b
    .line 999
    new-instance v3, Ljava/lang/IllegalStateException;

    #@1d
    const-string/jumbo v4, "Could not find child"

    #@20
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v3

    #@24
    .line 1003
    :cond_1
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@26
    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    #@28
    invoke-direct {p0, v3}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    #@2b
    move-result v0

    #@2c
    .line 1004
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    #@2f
    .line 1006
    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    #@32
    .line 1007
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@35
    .line 1009
    const/4 v3, 0x1

    #@36
    return v3
.end method

.method public setSelectedGroup(I)V
    .locals 4
    .param p1, "groupPosition"    # I

    #@0
    .prologue
    .line 962
    invoke-static {p1}, Landroid/widget/ExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;

    #@3
    move-result-object v1

    #@4
    .line 964
    .local v1, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    #@6
    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@9
    move-result-object v2

    #@a
    .line 965
    .local v2, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    #@d
    .line 966
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@f
    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    #@11
    invoke-direct {p0, v3}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    #@14
    move-result v0

    #@15
    .line 967
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    #@18
    .line 968
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    #@1b
    .line 961
    return-void
.end method
