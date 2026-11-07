.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "RelativeLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$DependencyGraph;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;
    }
.end annotation


# static fields
.field public static final whitelist ABOVE:I = 0x2

.field public static final whitelist ALIGN_BASELINE:I = 0x4

.field public static final whitelist ALIGN_BOTTOM:I = 0x8

.field public static final whitelist ALIGN_END:I = 0x13

.field public static final whitelist ALIGN_LEFT:I = 0x5

.field public static final whitelist ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final whitelist ALIGN_PARENT_END:I = 0x15

.field public static final whitelist ALIGN_PARENT_LEFT:I = 0x9

.field public static final whitelist ALIGN_PARENT_RIGHT:I = 0xb

.field public static final whitelist ALIGN_PARENT_START:I = 0x14

.field public static final whitelist ALIGN_PARENT_TOP:I = 0xa

.field public static final whitelist ALIGN_RIGHT:I = 0x7

.field public static final whitelist ALIGN_START:I = 0x12

.field public static final whitelist ALIGN_TOP:I = 0x6

.field public static final whitelist BELOW:I = 0x3

.field public static final whitelist CENTER_HORIZONTAL:I = 0xe

.field public static final whitelist CENTER_IN_PARENT:I = 0xd

.field public static final whitelist CENTER_VERTICAL:I = 0xf

.field private static final greylist-max-o DEFAULT_WIDTH:I = 0x10000

.field public static final whitelist END_OF:I = 0x11

.field public static final whitelist LEFT_OF:I = 0x0

.field public static final whitelist RIGHT_OF:I = 0x1

.field private static final greylist-max-o RULES_HORIZONTAL:[I

.field private static final greylist-max-o RULES_VERTICAL:[I

.field public static final whitelist START_OF:I = 0x10

.field public static final whitelist TRUE:I = -0x1

.field private static final greylist-max-o VALUE_NOT_SET:I = -0x80000000

.field private static final greylist-max-o VERB_COUNT:I = 0x16


# instance fields
.field private greylist-max-o mAllowBrokenMeasureSpecs:Z

.field private greylist-max-o mBaselineView:Landroid/view/View;

.field private final greylist-max-o mContentBounds:Landroid/graphics/Rect;

.field private greylist-max-o mDirtyHierarchy:Z

.field private final greylist-max-o mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private greylist-max-p mGravity:I

.field private greylist-max-o mIgnoreGravity:I

.field private greylist-max-o mMeasureVerticalWithPaddingMargin:Z

.field private final greylist-max-o mSelfBounds:Landroid/graphics/Rect;

.field private greylist-max-o mSortedHorizontalChildren:[Landroid/view/View;

.field private greylist-max-o mSortedVerticalChildren:[Landroid/view/View;

.field private greylist-max-o mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 197
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/16 v4, 0x8

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    .line 201
    new-array v0, v4, [I

    fill-array-data v0, :array_14

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    return-void

    :array_14
    .array-data 4
        0x0
        0x1
        0x5
        0x7
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 244
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 248
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 252
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 255
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 212
    const v1, 0x800033

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 214
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 215
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 218
    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 223
    new-instance v1, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout-IA;)V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 232
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 256
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 257
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;->queryCompatibilityModes(Landroid/content/Context;)V

    .line 258
    return-void
.end method

.method private greylist-max-o applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V
    .registers 8
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I
    .param p3, "rules"    # [I

    .line 916
    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 917
    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 919
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 920
    .local v1, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_1d

    .line 921
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_31

    .line 923
    :cond_1d
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_31

    aget v0, p3, v0

    if-eqz v0, :cond_31

    .line 924
    if-ltz p2, :cond_31

    .line 925
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 929
    :cond_31
    :goto_31
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 930
    if-eqz v1, :cond_46

    .line 931
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_56

    .line 933
    :cond_46
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_56

    aget v0, p3, v0

    if-eqz v0, :cond_56

    .line 934
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 937
    :cond_56
    :goto_56
    const/4 v0, 0x5

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 938
    if-eqz v1, :cond_68

    .line 939
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_78

    .line 940
    :cond_68
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_78

    aget v0, p3, v0

    if-eqz v0, :cond_78

    .line 941
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 944
    :cond_78
    :goto_78
    const/4 v0, 0x7

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 945
    if-eqz v1, :cond_8a

    .line 946
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_9e

    .line 947
    :cond_8a
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_9e

    aget v0, p3, v0

    if-eqz v0, :cond_9e

    .line 948
    if-ltz p2, :cond_9e

    .line 949
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 953
    :cond_9e
    :goto_9e
    const/16 v0, 0x9

    aget v0, p3, v0

    if-eqz v0, :cond_ac

    .line 954
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 957
    :cond_ac
    const/16 v0, 0xb

    aget v0, p3, v0

    if-eqz v0, :cond_be

    .line 958
    if-ltz p2, :cond_be

    .line 959
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 962
    :cond_be
    return-void
.end method

.method private greylist-max-o applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V
    .registers 10
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I
    .param p3, "myBaseline"    # I

    .line 965
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 968
    .local v0, "rules":[I
    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;->getRelatedViewBaselineOffset([I)I

    move-result v1

    .line 969
    .local v1, "baselineOffset":I
    const/high16 v2, -0x80000000

    const/4 v3, -0x1

    if-eq v1, v3, :cond_17

    .line 970
    if-eq p3, v3, :cond_10

    .line 971
    sub-int/2addr v1, p3

    .line 973
    :cond_10
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 974
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 975
    return-void

    .line 980
    :cond_17
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 981
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 983
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 984
    .local v3, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v3, :cond_32

    .line 985
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_46

    .line 987
    :cond_32
    iget-boolean v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v4, :cond_46

    aget v2, v0, v2

    if-eqz v2, :cond_46

    .line 988
    if-ltz p2, :cond_46

    .line 989
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 993
    :cond_46
    :goto_46
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 994
    if-eqz v3, :cond_5b

    .line 995
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_6b

    .line 997
    :cond_5b
    iget-boolean v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v4, :cond_6b

    aget v2, v0, v2

    if-eqz v2, :cond_6b

    .line 998
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1001
    :cond_6b
    :goto_6b
    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 1002
    if-eqz v3, :cond_7d

    .line 1003
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_8d

    .line 1004
    :cond_7d
    iget-boolean v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v4, :cond_8d

    aget v2, v0, v2

    if-eqz v2, :cond_8d

    .line 1005
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1008
    :cond_8d
    :goto_8d
    const/16 v2, 0x8

    invoke-direct {p0, v0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 1009
    if-eqz v3, :cond_a0

    .line 1010
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_b4

    .line 1011
    :cond_a0
    iget-boolean v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v4, :cond_b4

    aget v2, v0, v2

    if-eqz v2, :cond_b4

    .line 1012
    if-ltz p2, :cond_b4

    .line 1013
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1017
    :cond_b4
    :goto_b4
    const/16 v2, 0xa

    aget v2, v0, v2

    if-eqz v2, :cond_c2

    .line 1018
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1021
    :cond_c2
    const/16 v2, 0xc

    aget v2, v0, v2

    if-eqz v2, :cond_d4

    .line 1022
    if-ltz p2, :cond_d4

    .line 1023
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1026
    :cond_d4
    return-void
.end method

.method private static greylist-max-o centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 6
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I

    .line 1077
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1078
    .local v0, "childWidth":I
    sub-int v1, p2, v0

    div-int/lit8 v1, v1, 0x2

    .line 1080
    .local v1, "left":I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1081
    add-int v2, v1, v0

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1082
    return-void
.end method

.method private static greylist-max-o centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 6
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I

    .line 1085
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1086
    .local v0, "childHeight":I
    sub-int v1, p2, v0

    div-int/lit8 v1, v1, 0x2

    .line 1088
    .local v1, "top":I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1089
    add-int v2, v1, v0

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1090
    return-void
.end method

.method private greylist-max-o compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 6
    .param p1, "p1"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "p2"    # Landroid/widget/RelativeLayout$LayoutParams;

    .line 668
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 669
    .local v0, "topDiff":I
    if-eqz v0, :cond_c

    .line 670
    return v0

    .line 672
    :cond_c
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method private greylist-max-o getChildMeasureSpec(IIIIIIII)I
    .registers 18
    .param p1, "childStart"    # I
    .param p2, "childEnd"    # I
    .param p3, "childSize"    # I
    .param p4, "startMargin"    # I
    .param p5, "endMargin"    # I
    .param p6, "startPadding"    # I
    .param p7, "endPadding"    # I
    .param p8, "mySize"    # I

    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "childSpecMode":I
    const/4 v1, 0x0

    .line 763
    .local v1, "childSpecSize":I
    const/4 v2, 0x0

    if-gez p8, :cond_7

    const/4 v3, 0x1

    goto :goto_8

    :cond_7
    move v3, v2

    .line 764
    .local v3, "isUnspecified":Z
    :goto_8
    const/high16 v4, -0x80000000

    if-eqz v3, :cond_2a

    iget-boolean v5, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez v5, :cond_2a

    .line 765
    if-eq p1, v4, :cond_1d

    if-eq p2, v4, :cond_1d

    .line 767
    sub-int v4, p2, p1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 768
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_25

    .line 769
    :cond_1d
    if-ltz p3, :cond_23

    .line 771
    move v1, p3

    .line 772
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_25

    .line 775
    :cond_23
    const/4 v1, 0x0

    .line 776
    const/4 v0, 0x0

    .line 779
    :goto_25
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 783
    :cond_2a
    move v5, p1

    .line 784
    .local v5, "tempStart":I
    move v6, p2

    .line 788
    .local v6, "tempEnd":I
    if-ne v5, v4, :cond_30

    .line 789
    add-int v5, p6, p4

    .line 791
    :cond_30
    if-ne v6, v4, :cond_36

    .line 792
    sub-int v7, p8, p7

    sub-int v6, v7, p5

    .line 796
    :cond_36
    sub-int v7, v6, v5

    .line 798
    .local v7, "maxAvailable":I
    const/high16 v8, 0x40000000    # 2.0f

    if-eq p1, v4, :cond_47

    if-eq p2, v4, :cond_47

    .line 800
    if-eqz v3, :cond_41

    move v8, v2

    :cond_41
    move v0, v8

    .line 801
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_6b

    .line 803
    :cond_47
    if-ltz p3, :cond_54

    .line 805
    const/high16 v0, 0x40000000    # 2.0f

    .line 807
    if-ltz v7, :cond_52

    .line 809
    invoke-static {v7, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_6b

    .line 812
    :cond_52
    move v1, p3

    goto :goto_6b

    .line 814
    :cond_54
    const/4 v4, -0x1

    if-ne p3, v4, :cond_60

    .line 817
    if-eqz v3, :cond_5a

    move v8, v2

    :cond_5a
    move v0, v8

    .line 818
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_6b

    .line 819
    :cond_60
    const/4 v2, -0x2

    if-ne p3, v2, :cond_6b

    .line 822
    if-ltz v7, :cond_69

    .line 824
    const/high16 v0, -0x80000000

    .line 825
    move v1, v7

    goto :goto_6b

    .line 829
    :cond_69
    const/4 v0, 0x0

    .line 830
    const/4 v1, 0x0

    .line 835
    :cond_6b
    :goto_6b
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2
.end method

.method private greylist-max-o getRelatedView([II)Landroid/view/View;
    .registers 9
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .line 1029
    aget v0, p1, p2

    .line 1030
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz v0, :cond_47

    .line 1031
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v2}, Landroid/widget/RelativeLayout$DependencyGraph;->-$$Nest$fgetmKeyNodes(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1032
    .local v2, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v2, :cond_14

    return-object v1

    .line 1033
    :cond_14
    iget-object v3, v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1036
    .local v3, "v":Landroid/view/View;
    :goto_16
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_46

    .line 1037
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object p1

    .line 1038
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v4}, Landroid/widget/RelativeLayout$DependencyGraph;->-$$Nest$fgetmKeyNodes(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v4

    aget v5, p1, p2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1040
    if-eqz v2, :cond_45

    iget-object v4, v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    if-ne v3, v4, :cond_42

    goto :goto_45

    .line 1041
    :cond_42
    iget-object v3, v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    goto :goto_16

    .line 1040
    :cond_45
    :goto_45
    return-object v1

    .line 1044
    :cond_46
    return-object v3

    .line 1047
    .end local v2    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v3    # "v":Landroid/view/View;
    :cond_47
    return-object v1
.end method

.method private greylist-max-o getRelatedViewBaselineOffset([I)I
    .registers 7
    .param p1, "rules"    # [I

    .line 1062
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v0

    .line 1063
    .local v0, "v":Landroid/view/View;
    const/4 v1, -0x1

    if-eqz v0, :cond_22

    .line 1064
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 1065
    .local v2, "baseline":I
    if-eq v2, v1, :cond_22

    .line 1066
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1067
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_22

    .line 1068
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1069
    .local v1, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v2

    return v4

    .line 1073
    .end local v1    # "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "baseline":I
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_22
    return v1
.end method

.method private greylist-max-o getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 6
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .line 1051
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v0

    .line 1052
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_15

    .line 1053
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1054
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_15

    .line 1055
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    return-object v2

    .line 1058
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 262
    sget-object v0, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 264
    .local v5, "a":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->RelativeLayout:[I

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
    invoke-virtual/range {v1 .. v7}, Landroid/widget/RelativeLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 266
    const/4 p1, 0x1

    const/4 p2, -0x1

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 267
    const/4 p1, 0x0

    iget p2, v1, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout;->mGravity:I

    .line 268
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 269
    return-void
.end method

.method private greylist-max-o measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .registers 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    .line 686
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    .end local p3    # "myWidth":I
    .local v8, "myWidth":I
    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result p3

    .line 691
    move v9, v8

    .end local v8    # "myWidth":I
    .local v9, "myWidth":I
    .local p3, "childWidthMeasureSpec":I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v6, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v7, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move v8, p4

    .end local p4    # "myHeight":I
    .local v8, "myHeight":I
    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result p4

    .line 696
    .local p4, "childHeightMeasureSpec":I
    invoke-virtual {p1, p3, p4}, Landroid/view/View;->measure(II)V

    .line 697
    return-void
.end method

.method private greylist-max-o measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .registers 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    .line 701
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    .end local p3    # "myWidth":I
    .local v8, "myWidth":I
    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result p3

    .line 706
    .local p3, "childWidthMeasureSpec":I
    const/4 v1, 0x0

    if-gez p4, :cond_31

    iget-boolean v2, v0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez v2, :cond_31

    .line 707
    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-ltz v2, :cond_2c

    .line 708
    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "childHeightMeasureSpec":I
    goto :goto_5a

    .line 715
    .end local v1    # "childHeightMeasureSpec":I
    :cond_2c
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childHeightMeasureSpec":I
    goto :goto_5a

    .line 719
    .end local v1    # "childHeightMeasureSpec":I
    :cond_31
    iget-boolean v2, v0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    if-eqz v2, :cond_47

    .line 720
    iget v2, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    sub-int v2, p4, v2

    iget v3, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "maxHeight":I
    goto :goto_4b

    .line 723
    .end local v1    # "maxHeight":I
    :cond_47
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 727
    .restart local v1    # "maxHeight":I
    :goto_4b
    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_53

    .line 728
    const/high16 v2, 0x40000000    # 2.0f

    .local v2, "heightMode":I
    goto :goto_55

    .line 730
    .end local v2    # "heightMode":I
    :cond_53
    const/high16 v2, -0x80000000

    .line 732
    .restart local v2    # "heightMode":I
    :goto_55
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move v1, v3

    .line 735
    .end local v2    # "heightMode":I
    .local v1, "childHeightMeasureSpec":I
    :goto_5a
    invoke-virtual {p1, p3, v1}, Landroid/view/View;->measure(II)V

    .line 736
    return-void
.end method

.method private greylist-max-o positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I

    .line 869
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 870
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p3, v0

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 871
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_31

    .line 873
    :cond_1d
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 874
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 876
    :goto_31
    return-void
.end method

.method private greylist-max-o positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "wrapContent"    # Z

    .line 841
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v0

    .line 842
    .local v0, "layoutDirection":I
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v1

    .line 844
    .local v1, "rules":[I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_24

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-eq v2, v4, :cond_24

    .line 846
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_64

    .line 847
    :cond_24
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-eq v2, v4, :cond_3d

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v4, :cond_3d

    .line 849
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_64

    .line 850
    :cond_3d
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v4, :cond_64

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v4, :cond_64

    .line 852
    const/16 v2, 0xd

    aget v2, v1, v2

    if-nez v2, :cond_5a

    const/16 v2, 0xe

    aget v2, v1, v2

    if-eqz v2, :cond_56

    goto :goto_5a

    .line 862
    :cond_56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_64

    .line 853
    :cond_5a
    :goto_5a
    if-nez p4, :cond_60

    .line 854
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_63

    .line 856
    :cond_60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 858
    :goto_63
    return v3

    .line 865
    :cond_64
    :goto_64
    const/16 v2, 0x15

    aget v2, v1, v2

    if-eqz v2, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v3, 0x0

    :goto_6c
    return v3
.end method

.method private greylist-max-o positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myHeight"    # I
    .param p4, "wrapContent"    # Z

    .line 881
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 883
    .local v0, "rules":[I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_20

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-eq v1, v3, :cond_20

    .line 885
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_82

    .line 886
    :cond_20
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-eq v1, v3, :cond_39

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_39

    .line 888
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_82

    .line 889
    :cond_39
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_82

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_82

    .line 891
    const/16 v1, 0xd

    aget v1, v0, v1

    if-nez v1, :cond_67

    const/16 v1, 0xf

    aget v1, v0, v1

    if-eqz v1, :cond_52

    goto :goto_67

    .line 900
    :cond_52
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 901
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_82

    .line 892
    :cond_67
    :goto_67
    if-nez p4, :cond_6d

    .line 893
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_81

    .line 895
    :cond_6d
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 896
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 898
    :goto_81
    return v2

    .line 904
    :cond_82
    :goto_82
    const/16 v1, 0xc

    aget v1, v0, v1

    if-eqz v1, :cond_89

    goto :goto_8a

    :cond_89
    const/4 v2, 0x0

    :goto_8a
    return v2
.end method

.method private greylist-max-o queryCompatibilityModes(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 273
    .local v0, "version":I
    const/16 v1, 0x11

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    iput-boolean v1, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 274
    const/16 v1, 0x12

    if-lt v0, v1, :cond_16

    goto :goto_17

    :cond_16
    move v2, v3

    :goto_17
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 275
    return-void
.end method

.method private greylist-max-o sortChildren()V
    .registers 5

    .line 385
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 386
    .local v0, "count":I
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    array-length v1, v1

    if-eq v1, v0, :cond_11

    .line 387
    :cond_d
    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 390
    :cond_11
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    array-length v1, v1

    if-eq v1, v0, :cond_1e

    .line 391
    :cond_1a
    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 394
    :cond_1e
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 395
    .local v1, "graph":Landroid/widget/RelativeLayout$DependencyGraph;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    .line 397
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    if-ge v2, v0, :cond_30

    .line 398
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 401
    .end local v2    # "i":I
    :cond_30
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    sget-object v3, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 402
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    sget-object v3, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 403
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1126
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return v0
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1144
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    if-nez v0, :cond_11

    .line 1145
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout-IA;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 1149
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_16
    if-ge v0, v1, :cond_24

    .line 1150
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1149
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1153
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_24
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1154
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_49

    .line 1155
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1156
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 1157
    const/4 v0, 0x1

    return v0

    .line 1159
    .end local v1    # "view":Landroid/view/View;
    :cond_49
    goto :goto_2a

    .line 1161
    :cond_4a
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 1162
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 1120
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1131
    sget-boolean v0, Landroid/widget/RelativeLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1e

    .line 1132
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_11

    .line 1133
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    return-object v0

    .line 1134
    :cond_11
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1e

    .line 1135
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1138
    :cond_1e
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1110
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1167
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBaseline()I
    .registers 2

    .line 375
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    goto :goto_f

    :cond_b
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    :goto_f
    return v0
.end method

.method public whitelist getGravity()I
    .registers 2

    .line 320
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    return v0
.end method

.method public whitelist getIgnoreGravity()I
    .registers 2

    .line 305
    iget v0, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    return v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1096
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 1098
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_30

    .line 1099
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1100
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2d

    .line 1101
    nop

    .line 1102
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1103
    .local v3, "st":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1098
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "st":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1106
    .end local v1    # "i":I
    :cond_30
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 42
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 407
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 408
    iput-boolean v2, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 409
    invoke-direct {v0}, Landroid/widget/RelativeLayout;->sortChildren()V

    .line 412
    :cond_c
    const/4 v1, -0x1

    .line 413
    .local v1, "myWidth":I
    const/4 v3, -0x1

    .line 415
    .local v3, "myHeight":I
    const/4 v4, 0x0

    .line 416
    .local v4, "width":I
    const/4 v5, 0x0

    .line 418
    .local v5, "height":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 419
    .local v6, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 420
    .local v7, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 421
    .local v8, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 424
    .local v9, "heightSize":I
    if-eqz v6, :cond_23

    .line 425
    move v1, v8

    .line 428
    :cond_23
    if-eqz v7, :cond_26

    .line 429
    move v3, v9

    .line 432
    :cond_26
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v6, v10, :cond_2b

    .line 433
    move v4, v1

    .line 436
    :cond_2b
    if-ne v7, v10, :cond_2e

    .line 437
    move v5, v3

    .line 440
    :cond_2e
    const/4 v11, 0x0

    .line 441
    .local v11, "ignore":Landroid/view/View;
    iget v12, v0, Landroid/widget/RelativeLayout;->mGravity:I

    const v13, 0x800007

    and-int/2addr v12, v13

    .line 442
    .local v12, "gravity":I
    const v13, 0x800003

    if-eq v12, v13, :cond_3e

    if-eqz v12, :cond_3e

    const/4 v13, 0x1

    goto :goto_3f

    :cond_3e
    move v13, v2

    .line 443
    .local v13, "horizontalGravity":Z
    :goto_3f
    iget v15, v0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v12, v15, 0x70

    .line 444
    const/16 v15, 0x30

    if-eq v12, v15, :cond_4b

    if-eqz v12, :cond_4b

    const/4 v15, 0x1

    goto :goto_4c

    :cond_4b
    move v15, v2

    .line 446
    .local v15, "verticalGravity":Z
    :goto_4c
    const v16, 0x7fffffff

    .line 447
    .local v16, "left":I
    const v17, 0x7fffffff

    .line 448
    .local v17, "top":I
    const/high16 v18, -0x80000000

    .line 449
    .local v18, "right":I
    const/high16 v19, -0x80000000

    .line 451
    .local v19, "bottom":I
    const/16 v20, 0x0

    .line 452
    .local v20, "offsetHorizontalAxis":Z
    const/16 v21, 0x0

    .line 454
    .local v21, "offsetVerticalAxis":Z
    const/4 v2, -0x1

    if-nez v13, :cond_5f

    if-eqz v15, :cond_69

    :cond_5f
    iget v14, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    if-eq v14, v2, :cond_69

    .line 455
    iget v14, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 458
    :cond_69
    if-eq v6, v10, :cond_6d

    const/4 v14, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v14, 0x0

    .line 459
    .local v14, "isWrapContentWidth":Z
    :goto_6e
    if-eq v7, v10, :cond_73

    const/16 v22, 0x1

    goto :goto_75

    :cond_73
    const/16 v22, 0x0

    :goto_75
    move/from16 v10, v22

    .line 466
    .local v10, "isWrapContentHeight":Z
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v2

    .line 467
    .local v2, "layoutDirection":I
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v23

    if-eqz v23, :cond_89

    move/from16 v23, v4

    const/4 v4, -0x1

    .end local v4    # "width":I
    .local v23, "width":I
    if-ne v1, v4, :cond_8b

    .line 468
    const/high16 v1, 0x10000

    goto :goto_8b

    .line 467
    .end local v23    # "width":I
    .restart local v4    # "width":I
    :cond_89
    move/from16 v23, v4

    .line 471
    .end local v4    # "width":I
    .restart local v23    # "width":I
    :cond_8b
    :goto_8b
    iget-object v4, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 472
    .local v4, "views":[Landroid/view/View;
    move/from16 v22, v5

    .end local v5    # "height":I
    .local v22, "height":I
    array-length v5, v4

    .line 474
    .local v5, "count":I
    const/16 v24, 0x0

    move/from16 v38, v24

    move-object/from16 v24, v4

    move/from16 v4, v38

    .local v4, "i":I
    .local v24, "views":[Landroid/view/View;
    :goto_98
    move/from16 v28, v6

    .end local v6    # "widthMode":I
    .local v28, "widthMode":I
    if-ge v4, v5, :cond_c9

    .line 475
    aget-object v6, v24, v4

    .line 476
    .local v6, "child":Landroid/view/View;
    move/from16 v25, v4

    .end local v4    # "i":I
    .local v25, "i":I
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v26, v5

    const/16 v5, 0x8

    .end local v5    # "count":I
    .local v26, "count":I
    if-eq v4, v5, :cond_c2

    .line 477
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 478
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v5

    .line 480
    .local v5, "rules":[I
    invoke-direct {v0, v4, v1, v5}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V

    .line 481
    invoke-direct {v0, v6, v4, v1, v3}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 483
    invoke-direct {v0, v6, v4, v1, v14}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v27

    if-eqz v27, :cond_c2

    .line 484
    const/16 v20, 0x1

    .line 474
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "rules":[I
    .end local v6    # "child":Landroid/view/View;
    :cond_c2
    add-int/lit8 v4, v25, 0x1

    move/from16 v5, v26

    move/from16 v6, v28

    .end local v25    # "i":I
    .local v4, "i":I
    goto :goto_98

    .end local v26    # "count":I
    .local v5, "count":I
    :cond_c9
    move/from16 v25, v4

    move/from16 v26, v5

    .line 489
    .end local v4    # "i":I
    .end local v5    # "count":I
    .restart local v26    # "count":I
    iget-object v4, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 490
    .end local v24    # "views":[Landroid/view/View;
    .local v4, "views":[Landroid/view/View;
    array-length v5, v4

    .line 491
    .end local v26    # "count":I
    .restart local v5    # "count":I
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 493
    .local v6, "targetSdkVersion":I
    const/16 v24, 0x0

    move-object/from16 v29, v4

    move/from16 v31, v14

    move/from16 v30, v21

    move/from16 v4, v23

    move/from16 v14, v24

    move/from16 v21, v13

    move/from16 v13, v19

    move/from16 v19, v12

    move/from16 v12, v18

    move/from16 v18, v9

    move/from16 v9, v17

    move/from16 v17, v8

    move/from16 v8, v16

    move/from16 v16, v7

    move/from16 v7, v22

    .end local v22    # "height":I
    .end local v23    # "width":I
    .local v4, "width":I
    .local v7, "height":I
    .local v8, "left":I
    .local v9, "top":I
    .local v12, "right":I
    .local v13, "bottom":I
    .local v14, "i":I
    .local v16, "heightMode":I
    .local v17, "widthSize":I
    .local v18, "heightSize":I
    .local v19, "gravity":I
    .local v21, "horizontalGravity":Z
    .local v29, "views":[Landroid/view/View;
    .local v30, "offsetVerticalAxis":Z
    .local v31, "isWrapContentWidth":Z
    :goto_fa
    if-ge v14, v5, :cond_1c7

    .line 494
    move/from16 v22, v14

    .end local v14    # "i":I
    .local v22, "i":I
    aget-object v14, v29, v22

    .line 495
    .local v14, "child":Landroid/view/View;
    move/from16 v32, v15

    .end local v15    # "verticalGravity":Z
    .local v32, "verticalGravity":Z
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    move/from16 v27, v2

    const/16 v2, 0x8

    .end local v2    # "layoutDirection":I
    .local v27, "layoutDirection":I
    if-eq v15, v2, :cond_1bb

    .line 496
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 498
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v15

    invoke-direct {v0, v2, v3, v15}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 499
    invoke-direct {v0, v14, v2, v1, v3}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 500
    invoke-direct {v0, v14, v2, v3, v10}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v15

    if-eqz v15, :cond_124

    .line 501
    const/16 v30, 0x1

    .line 504
    :cond_124
    const/16 v15, 0x13

    if-eqz v31, :cond_168

    .line 505
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v23

    if-eqz v23, :cond_14d

    .line 506
    if-ge v6, v15, :cond_13d

    .line 507
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v23

    sub-int v15, v1, v23

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v33, v1

    goto :goto_16a

    .line 509
    :cond_13d
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v15

    sub-int v15, v1, v15

    move/from16 v33, v1

    .end local v1    # "myWidth":I
    .local v33, "myWidth":I
    iget v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v15, v1

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_16a

    .line 512
    .end local v33    # "myWidth":I
    .restart local v1    # "myWidth":I
    :cond_14d
    move/from16 v33, v1

    .end local v1    # "myWidth":I
    .restart local v33    # "myWidth":I
    const/16 v1, 0x13

    if-ge v6, v1, :cond_15c

    .line 513
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_16a

    .line 515
    :cond_15c
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v15, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v15

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_16a

    .line 504
    .end local v33    # "myWidth":I
    .restart local v1    # "myWidth":I
    :cond_168
    move/from16 v33, v1

    .line 520
    .end local v1    # "myWidth":I
    .restart local v33    # "myWidth":I
    :goto_16a
    if-eqz v10, :cond_184

    .line 521
    const/16 v1, 0x13

    if-ge v6, v1, :cond_179

    .line 522
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_184

    .line 524
    :cond_179
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v15, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v15

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 528
    :cond_184
    :goto_184
    if-ne v14, v11, :cond_188

    if-eqz v32, :cond_19e

    .line 529
    :cond_188
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v15, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v15

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 530
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v15, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, v15

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 533
    :cond_19e
    if-ne v14, v11, :cond_1a2

    if-eqz v21, :cond_1bd

    .line 534
    :cond_1a2
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v15, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v15

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 535
    .end local v12    # "right":I
    .local v1, "right":I
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v12

    iget v15, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v15

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v13, v12

    move v12, v1

    .end local v13    # "bottom":I
    .local v12, "bottom":I
    goto :goto_1bd

    .line 495
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v33    # "myWidth":I
    .local v1, "myWidth":I
    .local v12, "right":I
    .restart local v13    # "bottom":I
    :cond_1bb
    move/from16 v33, v1

    .line 493
    .end local v1    # "myWidth":I
    .end local v14    # "child":Landroid/view/View;
    .restart local v33    # "myWidth":I
    :cond_1bd
    :goto_1bd
    add-int/lit8 v14, v22, 0x1

    move/from16 v2, v27

    move/from16 v15, v32

    move/from16 v1, v33

    .end local v22    # "i":I
    .local v14, "i":I
    goto/16 :goto_fa

    .end local v27    # "layoutDirection":I
    .end local v32    # "verticalGravity":Z
    .end local v33    # "myWidth":I
    .restart local v1    # "myWidth":I
    .local v2, "layoutDirection":I
    .restart local v15    # "verticalGravity":Z
    :cond_1c7
    move/from16 v33, v1

    move/from16 v27, v2

    move/from16 v22, v14

    move/from16 v32, v15

    .line 542
    .end local v1    # "myWidth":I
    .end local v2    # "layoutDirection":I
    .end local v14    # "i":I
    .end local v15    # "verticalGravity":Z
    .restart local v27    # "layoutDirection":I
    .restart local v32    # "verticalGravity":Z
    .restart local v33    # "myWidth":I
    const/4 v1, 0x0

    .line 543
    .local v1, "baselineView":Landroid/view/View;
    const/4 v2, 0x0

    .line 544
    .local v2, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_1d2
    if-ge v14, v5, :cond_1fb

    .line 545
    aget-object v15, v29, v14

    .line 546
    .local v15, "child":Landroid/view/View;
    move/from16 v34, v3

    .end local v3    # "myHeight":I
    .local v34, "myHeight":I
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v3

    move/from16 v22, v4

    const/16 v4, 0x8

    .end local v4    # "width":I
    .local v22, "width":I
    if-eq v3, v4, :cond_1f4

    .line 547
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 548
    .local v3, "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_1f2

    if-eqz v2, :cond_1f2

    .line 549
    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout;->compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-gez v4, :cond_1f4

    .line 550
    :cond_1f2
    move-object v1, v15

    .line 551
    move-object v2, v3

    .line 544
    .end local v3    # "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "child":Landroid/view/View;
    :cond_1f4
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v22

    move/from16 v3, v34

    goto :goto_1d2

    .end local v22    # "width":I
    .end local v34    # "myHeight":I
    .local v3, "myHeight":I
    .restart local v4    # "width":I
    :cond_1fb
    move/from16 v34, v3

    move/from16 v22, v4

    .line 555
    .end local v3    # "myHeight":I
    .end local v4    # "width":I
    .end local v14    # "i":I
    .restart local v22    # "width":I
    .restart local v34    # "myHeight":I
    iput-object v1, v0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 557
    if-eqz v31, :cond_2a2

    .line 560
    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    add-int v4, v22, v4

    .line 562
    .end local v22    # "width":I
    .restart local v4    # "width":I
    iget-object v14, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v14, :cond_219

    iget-object v14, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v14, :cond_219

    .line 563
    iget-object v14, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 566
    :cond_219
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    move-result v14

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 567
    move/from16 v14, p1

    invoke-static {v4, v14}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v4

    .line 569
    if-eqz v20, :cond_297

    .line 570
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_22a
    if-ge v15, v5, :cond_28c

    .line 571
    const/16 v23, 0xd

    aget-object v3, v29, v15

    .line 572
    .local v3, "child":Landroid/view/View;
    move-object/from16 v35, v1

    .end local v1    # "baselineView":Landroid/view/View;
    .local v35, "baselineView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    move-object/from16 v36, v2

    const/16 v2, 0x8

    .end local v2    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v36, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eq v1, v2, :cond_27d

    .line 573
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 574
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v2, v27

    .end local v27    # "layoutDirection":I
    .local v2, "layoutDirection":I
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v22

    .line 575
    .local v22, "rules":[I
    aget v24, v22, v23

    if-nez v24, :cond_277

    const/16 v24, 0xe

    aget v24, v22, v24

    if-eqz v24, :cond_255

    move/from16 v37, v6

    goto :goto_279

    .line 577
    :cond_255
    const/16 v24, 0xb

    aget v24, v22, v24

    if-eqz v24, :cond_274

    .line 578
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 579
    .local v24, "childWidth":I
    move/from16 v37, v6

    .end local v6    # "targetSdkVersion":I
    .local v37, "targetSdkVersion":I
    iget v6, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v6, v4, v6

    sub-int v6, v6, v24

    invoke-static {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 580
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    add-int v6, v6, v24

    invoke-static {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_281

    .line 577
    .end local v24    # "childWidth":I
    .end local v37    # "targetSdkVersion":I
    .restart local v6    # "targetSdkVersion":I
    :cond_274
    move/from16 v37, v6

    .end local v6    # "targetSdkVersion":I
    .restart local v37    # "targetSdkVersion":I
    goto :goto_281

    .line 575
    .end local v37    # "targetSdkVersion":I
    .restart local v6    # "targetSdkVersion":I
    :cond_277
    move/from16 v37, v6

    .line 576
    .end local v6    # "targetSdkVersion":I
    .restart local v37    # "targetSdkVersion":I
    :goto_279
    invoke-static {v3, v1, v4}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_281

    .line 572
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "layoutDirection":I
    .end local v22    # "rules":[I
    .end local v37    # "targetSdkVersion":I
    .restart local v6    # "targetSdkVersion":I
    .restart local v27    # "layoutDirection":I
    :cond_27d
    move/from16 v37, v6

    move/from16 v2, v27

    .line 570
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "targetSdkVersion":I
    .end local v27    # "layoutDirection":I
    .restart local v2    # "layoutDirection":I
    .restart local v37    # "targetSdkVersion":I
    :goto_281
    add-int/lit8 v15, v15, 0x1

    move/from16 v27, v2

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move/from16 v6, v37

    goto :goto_22a

    .end local v35    # "baselineView":Landroid/view/View;
    .end local v36    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v37    # "targetSdkVersion":I
    .local v1, "baselineView":Landroid/view/View;
    .local v2, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v6    # "targetSdkVersion":I
    .restart local v27    # "layoutDirection":I
    :cond_28c
    move-object/from16 v35, v1

    move-object/from16 v36, v2

    move/from16 v37, v6

    move/from16 v2, v27

    const/16 v23, 0xd

    .end local v1    # "baselineView":Landroid/view/View;
    .end local v6    # "targetSdkVersion":I
    .end local v27    # "layoutDirection":I
    .local v2, "layoutDirection":I
    .restart local v35    # "baselineView":Landroid/view/View;
    .restart local v36    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v37    # "targetSdkVersion":I
    goto :goto_2b0

    .line 569
    .end local v15    # "i":I
    .end local v35    # "baselineView":Landroid/view/View;
    .end local v36    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v37    # "targetSdkVersion":I
    .restart local v1    # "baselineView":Landroid/view/View;
    .local v2, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v6    # "targetSdkVersion":I
    .restart local v27    # "layoutDirection":I
    :cond_297
    move-object/from16 v35, v1

    move-object/from16 v36, v2

    move/from16 v37, v6

    move/from16 v2, v27

    const/16 v23, 0xd

    .end local v1    # "baselineView":Landroid/view/View;
    .end local v6    # "targetSdkVersion":I
    .end local v27    # "layoutDirection":I
    .local v2, "layoutDirection":I
    .restart local v35    # "baselineView":Landroid/view/View;
    .restart local v36    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v37    # "targetSdkVersion":I
    goto :goto_2b0

    .line 557
    .end local v4    # "width":I
    .end local v35    # "baselineView":Landroid/view/View;
    .end local v36    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v37    # "targetSdkVersion":I
    .restart local v1    # "baselineView":Landroid/view/View;
    .local v2, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v6    # "targetSdkVersion":I
    .local v22, "width":I
    .restart local v27    # "layoutDirection":I
    :cond_2a2
    move/from16 v14, p1

    move-object/from16 v35, v1

    move-object/from16 v36, v2

    move/from16 v37, v6

    move/from16 v2, v27

    const/16 v23, 0xd

    .end local v1    # "baselineView":Landroid/view/View;
    .end local v6    # "targetSdkVersion":I
    .end local v27    # "layoutDirection":I
    .local v2, "layoutDirection":I
    .restart local v35    # "baselineView":Landroid/view/View;
    .restart local v36    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v37    # "targetSdkVersion":I
    move/from16 v4, v22

    .line 587
    .end local v22    # "width":I
    .restart local v4    # "width":I
    :goto_2b0
    if-eqz v10, :cond_334

    .line 590
    iget v1, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    add-int/2addr v7, v1

    .line 592
    iget-object v1, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_2c7

    iget-object v1, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_2c7

    .line 593
    iget-object v1, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 596
    :cond_2c7
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 597
    .end local v7    # "height":I
    .local v1, "height":I
    move/from16 v3, p2

    invoke-static {v1, v3}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v7

    .line 599
    .end local v1    # "height":I
    .restart local v7    # "height":I
    if-eqz v30, :cond_331

    .line 600
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d8
    if-ge v1, v5, :cond_32c

    .line 601
    aget-object v6, v29, v1

    .line 602
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v15

    move/from16 v22, v1

    const/16 v1, 0x8

    .end local v1    # "i":I
    .local v22, "i":I
    if-eq v15, v1, :cond_325

    .line 603
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 604
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v15

    .line 605
    .local v15, "rules":[I
    aget v24, v15, v23

    if-nez v24, :cond_31f

    const/16 v24, 0xf

    aget v24, v15, v24

    if-eqz v24, :cond_2fd

    move/from16 v27, v2

    goto :goto_321

    .line 607
    :cond_2fd
    const/16 v24, 0xc

    aget v24, v15, v24

    if-eqz v24, :cond_31c

    .line 608
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    .line 609
    .local v24, "childHeight":I
    move/from16 v27, v2

    .end local v2    # "layoutDirection":I
    .restart local v27    # "layoutDirection":I
    iget v2, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, v7, v2

    sub-int v2, v2, v24

    invoke-static {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 610
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    add-int v2, v2, v24

    invoke-static {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_327

    .line 607
    .end local v24    # "childHeight":I
    .end local v27    # "layoutDirection":I
    .restart local v2    # "layoutDirection":I
    :cond_31c
    move/from16 v27, v2

    .end local v2    # "layoutDirection":I
    .restart local v27    # "layoutDirection":I
    goto :goto_327

    .line 605
    .end local v27    # "layoutDirection":I
    .restart local v2    # "layoutDirection":I
    :cond_31f
    move/from16 v27, v2

    .line 606
    .end local v2    # "layoutDirection":I
    .restart local v27    # "layoutDirection":I
    :goto_321
    invoke-static {v6, v1, v7}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_327

    .line 602
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "rules":[I
    .end local v27    # "layoutDirection":I
    .restart local v2    # "layoutDirection":I
    :cond_325
    move/from16 v27, v2

    .line 600
    .end local v2    # "layoutDirection":I
    .end local v6    # "child":Landroid/view/View;
    .restart local v27    # "layoutDirection":I
    :goto_327
    add-int/lit8 v1, v22, 0x1

    move/from16 v2, v27

    .end local v22    # "i":I
    .local v1, "i":I
    goto :goto_2d8

    .end local v27    # "layoutDirection":I
    .restart local v2    # "layoutDirection":I
    :cond_32c
    move/from16 v22, v1

    move/from16 v27, v2

    .end local v1    # "i":I
    .end local v2    # "layoutDirection":I
    .restart local v22    # "i":I
    .restart local v27    # "layoutDirection":I
    goto :goto_338

    .line 599
    .end local v22    # "i":I
    .end local v27    # "layoutDirection":I
    .restart local v2    # "layoutDirection":I
    :cond_331
    move/from16 v27, v2

    .end local v2    # "layoutDirection":I
    .restart local v27    # "layoutDirection":I
    goto :goto_338

    .line 587
    .end local v27    # "layoutDirection":I
    .restart local v2    # "layoutDirection":I
    :cond_334
    move/from16 v3, p2

    move/from16 v27, v2

    .line 617
    .end local v2    # "layoutDirection":I
    .restart local v27    # "layoutDirection":I
    :goto_338
    if-nez v21, :cond_33c

    if-eqz v32, :cond_3b4

    .line 618
    :cond_33c
    iget-object v1, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 619
    .local v1, "selfBounds":Landroid/graphics/Rect;
    iget v2, v0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v6, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v15, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v15, v4, v15

    iget v3, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v3, v7, v3

    invoke-virtual {v1, v2, v6, v15, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 622
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 623
    .local v2, "contentBounds":Landroid/graphics/Rect;
    iget v3, v0, Landroid/widget/RelativeLayout;->mGravity:I

    sub-int v23, v12, v8

    sub-int v24, v13, v9

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move/from16 v22, v3

    .end local v1    # "selfBounds":Landroid/graphics/Rect;
    .end local v2    # "contentBounds":Landroid/graphics/Rect;
    .local v25, "selfBounds":Landroid/graphics/Rect;
    .local v26, "contentBounds":Landroid/graphics/Rect;
    invoke-static/range {v22 .. v27}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 626
    move-object/from16 v1, v26

    .end local v26    # "contentBounds":Landroid/graphics/Rect;
    .local v1, "contentBounds":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v8

    .line 627
    .local v2, "horizontalOffset":I
    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v9

    .line 628
    .local v3, "verticalOffset":I
    if-nez v2, :cond_36a

    if-eqz v3, :cond_3b4

    .line 629
    :cond_36a
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_36b
    if-ge v6, v5, :cond_3b0

    .line 630
    aget-object v15, v29, v6

    .line 631
    .local v15, "child":Landroid/view/View;
    move-object/from16 v26, v1

    .end local v1    # "contentBounds":Landroid/graphics/Rect;
    .restart local v26    # "contentBounds":Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v22, v2

    const/16 v2, 0x8

    .end local v2    # "horizontalOffset":I
    .local v22, "horizontalOffset":I
    if-eq v1, v2, :cond_3a9

    if-eq v15, v11, :cond_3a9

    .line 632
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 633
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v21, :cond_397

    .line 634
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    add-int v2, v2, v22

    invoke-static {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 635
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    add-int v2, v2, v22

    invoke-static {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 637
    :cond_397
    if-eqz v32, :cond_3a9

    .line 638
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 639
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 629
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "child":Landroid/view/View;
    :cond_3a9
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v22

    move-object/from16 v1, v26

    goto :goto_36b

    .end local v22    # "horizontalOffset":I
    .end local v26    # "contentBounds":Landroid/graphics/Rect;
    .local v1, "contentBounds":Landroid/graphics/Rect;
    .restart local v2    # "horizontalOffset":I
    :cond_3b0
    move-object/from16 v26, v1

    move/from16 v22, v2

    .line 646
    .end local v1    # "contentBounds":Landroid/graphics/Rect;
    .end local v2    # "horizontalOffset":I
    .end local v3    # "verticalOffset":I
    .end local v6    # "i":I
    .end local v25    # "selfBounds":Landroid/graphics/Rect;
    :cond_3b4
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3e3

    .line 647
    sub-int v1, v33, v4

    .line 648
    .local v1, "offsetWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3bd
    if-ge v2, v5, :cond_3e3

    .line 649
    aget-object v3, v29, v2

    .line 650
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v15, 0x8

    if-eq v6, v15, :cond_3e0

    .line 651
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 652
    .local v6, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v6}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v22

    sub-int v15, v22, v1

    invoke-static {v6, v15}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 653
    invoke-static {v6}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v15

    sub-int/2addr v15, v1

    invoke-static {v6, v15}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 648
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3e0
    add-int/lit8 v2, v2, 0x1

    goto :goto_3bd

    .line 658
    .end local v1    # "offsetWidth":I
    .end local v2    # "i":I
    :cond_3e3
    invoke-virtual {v0, v4, v7}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 659
    return-void
.end method

.method public whitelist requestLayout()V
    .registers 2

    .line 380
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 382
    return-void
.end method

.method public whitelist setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 341
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    if-eq v0, p1, :cond_19

    .line 342
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    .line 343
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 346
    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    .line 347
    or-int/lit8 p1, p1, 0x30

    .line 350
    :cond_14
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 351
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 353
    :cond_19
    return-void
.end method

.method public whitelist setHorizontalGravity(I)V
    .registers 5
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 357
    const v0, 0x800007

    and-int v1, p1, v0

    .line 358
    .local v1, "gravity":I
    iget v2, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_16

    .line 359
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 360
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 362
    :cond_16
    return-void
.end method

.method public whitelist setIgnoreGravity(I)V
    .registers 2
    .param p1, "viewId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 295
    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 296
    return-void
.end method

.method public whitelist setVerticalGravity(I)V
    .registers 4
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 366
    and-int/lit8 v0, p1, 0x70

    .line 367
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_12

    .line 368
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 369
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 371
    :cond_12
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 279
    const/4 v0, 0x0

    return v0
.end method
