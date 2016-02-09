.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "RelativeLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$DependencyGraph;
    }
.end annotation


# static fields
.field public static final ABOVE:I = 0x2

.field public static final ALIGN_BASELINE:I = 0x4

.field public static final ALIGN_BOTTOM:I = 0x8

.field public static final ALIGN_END:I = 0x13

.field public static final ALIGN_LEFT:I = 0x5

.field public static final ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final ALIGN_PARENT_END:I = 0x15

.field public static final ALIGN_PARENT_LEFT:I = 0x9

.field public static final ALIGN_PARENT_RIGHT:I = 0xb

.field public static final ALIGN_PARENT_START:I = 0x14

.field public static final ALIGN_PARENT_TOP:I = 0xa

.field public static final ALIGN_RIGHT:I = 0x7

.field public static final ALIGN_START:I = 0x12

.field public static final ALIGN_TOP:I = 0x6

.field public static final BELOW:I = 0x3

.field public static final CENTER_HORIZONTAL:I = 0xe

.field public static final CENTER_IN_PARENT:I = 0xd

.field public static final CENTER_VERTICAL:I = 0xf

.field private static final DEFAULT_WIDTH:I = 0x10000

.field public static final END_OF:I = 0x11

.field public static final LEFT_OF:I = 0x0

.field public static final RIGHT_OF:I = 0x1

.field private static final RULES_HORIZONTAL:[I

.field private static final RULES_VERTICAL:[I

.field public static final START_OF:I = 0x10

.field public static final TRUE:I = -0x1

.field private static final VALUE_NOT_SET:I = -0x80000000

.field private static final VERB_COUNT:I = 0x16


# instance fields
.field private mAllowBrokenMeasureSpecs:Z

.field private mBaselineView:Landroid/view/View;

.field private final mContentBounds:Landroid/graphics/Rect;

.field private mDirtyHierarchy:Z

.field private final mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private mGravity:I

.field private mIgnoreGravity:I

.field private mMeasureVerticalWithPaddingMargin:Z

.field private final mSelfBounds:Landroid/graphics/Rect;

.field private mSortedHorizontalChildren:[Landroid/view/View;

.field private mSortedVerticalChildren:[Landroid/view/View;

.field private mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 192
    const/4 v0, 0x2

    #@3
    const/4 v1, 0x3

    #@4
    const/4 v2, 0x4

    #@5
    const/4 v3, 0x6

    #@6
    .line 191
    filled-new-array {v0, v1, v2, v3, v4}, [I

    #@9
    move-result-object v0

    #@a
    sput-object v0, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    #@c
    .line 195
    new-array v0, v4, [I

    #@e
    fill-array-data v0, :array_0

    #@11
    sput-object v0, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    #@13
    .line 84
    return-void

    #@14
    .line 195
    :array_0
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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 236
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 240
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 244
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 248
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 204
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    #@7
    .line 206
    const v0, 0x800033

    #@a
    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    #@c
    .line 207
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    #@13
    .line 208
    new-instance v0, Landroid/graphics/Rect;

    #@15
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@18
    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    #@1a
    .line 211
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    #@1c
    .line 216
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    #@1e
    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$DependencyGraph;)V

    #@21
    iput-object v0, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    #@23
    .line 221
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    #@25
    .line 225
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    #@27
    .line 249
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@2a
    .line 250
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;->queryCompatibilityModes(Landroid/content/Context;)V

    #@2d
    .line 247
    return-void
.end method

.method private applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V
    .locals 6
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I
    .param p3, "rules"    # [I

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    const/4 v4, 0x1

    #@2
    const/high16 v1, -0x80000000

    #@4
    const/4 v2, 0x0

    #@5
    .line 893
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@8
    .line 894
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@b
    .line 896
    invoke-direct {p0, p3, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    #@e
    move-result-object v0

    #@f
    .line 897
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_6

    #@11
    .line 898
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@14
    move-result v1

    #@15
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@17
    .line 899
    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    #@19
    .line 898
    add-int/2addr v2, v3

    #@1a
    sub-int/2addr v1, v2

    #@1b
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@1e
    .line 906
    :cond_0
    :goto_0
    invoke-direct {p0, p3, v4}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    #@21
    move-result-object v0

    #@22
    .line 907
    if-eqz v0, :cond_7

    #@24
    .line 908
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@27
    move-result v1

    #@28
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    #@2a
    .line 909
    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@2c
    .line 908
    add-int/2addr v2, v3

    #@2d
    add-int/2addr v1, v2

    #@2e
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@31
    .line 914
    :cond_1
    :goto_1
    invoke-direct {p0, p3, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    #@34
    move-result-object v0

    #@35
    .line 915
    if-eqz v0, :cond_8

    #@37
    .line 916
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@3a
    move-result v1

    #@3b
    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@3d
    add-int/2addr v1, v2

    #@3e
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@41
    .line 921
    :cond_2
    :goto_2
    const/4 v1, 0x7

    #@42
    invoke-direct {p0, p3, v1}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    #@45
    move-result-object v0

    #@46
    .line 922
    if-eqz v0, :cond_9

    #@48
    .line 923
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@4b
    move-result v1

    #@4c
    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    #@4e
    sub-int/2addr v1, v2

    #@4f
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@52
    .line 930
    :cond_3
    :goto_3
    const/16 v1, 0x9

    #@54
    aget v1, p3, v1

    #@56
    if-eqz v1, :cond_4

    #@58
    .line 931
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    #@5a
    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@5c
    add-int/2addr v1, v2

    #@5d
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@60
    .line 934
    :cond_4
    const/16 v1, 0xb

    #@62
    aget v1, p3, v1

    #@64
    if-eqz v1, :cond_5

    #@66
    .line 935
    if-ltz p2, :cond_5

    #@68
    .line 936
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    #@6a
    sub-int v1, p2, v1

    #@6c
    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    #@6e
    sub-int/2addr v1, v2

    #@6f
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@72
    .line 884
    :cond_5
    return-void

    #@73
    .line 900
    :cond_6
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    #@75
    if-eqz v1, :cond_0

    #@77
    aget v1, p3, v2

    #@79
    if-eqz v1, :cond_0

    #@7b
    .line 901
    if-ltz p2, :cond_0

    #@7d
    .line 902
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    #@7f
    sub-int v1, p2, v1

    #@81
    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    #@83
    sub-int/2addr v1, v2

    #@84
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@87
    goto :goto_0

    #@88
    .line 910
    :cond_7
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    #@8a
    if-eqz v1, :cond_1

    #@8c
    aget v1, p3, v4

    #@8e
    if-eqz v1, :cond_1

    #@90
    .line 911
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    #@92
    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@94
    add-int/2addr v1, v2

    #@95
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@98
    goto :goto_1

    #@99
    .line 917
    :cond_8
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    #@9b
    if-eqz v1, :cond_2

    #@9d
    aget v1, p3, v5

    #@9f
    if-eqz v1, :cond_2

    #@a1
    .line 918
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    #@a3
    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@a5
    add-int/2addr v1, v2

    #@a6
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@a9
    goto :goto_2

    #@aa
    .line 924
    :cond_9
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    #@ac
    if-eqz v1, :cond_3

    #@ae
    const/4 v1, 0x7

    #@af
    aget v1, p3, v1

    #@b1
    if-eqz v1, :cond_3

    #@b3
    .line 925
    if-ltz p2, :cond_3

    #@b5
    .line 926
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    #@b7
    sub-int v1, p2, v1

    #@b9
    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    #@bb
    sub-int/2addr v1, v2

    #@bc
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@bf
    goto :goto_3
.end method

.method private applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 6
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I
    .param p3, "myBaseline"    # I

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, -0x1

    #@2
    const/high16 v3, -0x80000000

    #@4
    .line 942
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    #@7
    move-result-object v2

    #@8
    .line 945
    .local v2, "rules":[I
    invoke-direct {p0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewBaselineOffset([I)I

    #@b
    move-result v1

    #@c
    .line 946
    .local v1, "baselineOffset":I
    if-eq v1, v4, :cond_1

    #@e
    .line 947
    if-eq p3, v4, :cond_0

    #@10
    .line 948
    sub-int/2addr v1, p3

    #@11
    .line 950
    :cond_0
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@14
    .line 951
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@17
    .line 952
    return-void

    #@18
    .line 957
    :cond_1
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@1b
    .line 958
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@1e
    .line 960
    invoke-direct {p0, v2, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    #@21
    move-result-object v0

    #@22
    .line 961
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_8

    #@24
    .line 962
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@27
    move-result v3

    #@28
    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    #@2a
    .line 963
    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    #@2c
    .line 962
    add-int/2addr v4, v5

    #@2d
    sub-int/2addr v3, v4

    #@2e
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@31
    .line 970
    :cond_2
    :goto_0
    const/4 v3, 0x3

    #@32
    invoke-direct {p0, v2, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    #@35
    move-result-object v0

    #@36
    .line 971
    if-eqz v0, :cond_9

    #@38
    .line 972
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@3b
    move-result v3

    #@3c
    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    #@3e
    .line 973
    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    #@40
    .line 972
    add-int/2addr v4, v5

    #@41
    add-int/2addr v3, v4

    #@42
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@45
    .line 978
    :cond_3
    :goto_1
    const/4 v3, 0x6

    #@46
    invoke-direct {p0, v2, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    #@49
    move-result-object v0

    #@4a
    .line 979
    if-eqz v0, :cond_a

    #@4c
    .line 980
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@4f
    move-result v3

    #@50
    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    #@52
    add-int/2addr v3, v4

    #@53
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@56
    .line 985
    :cond_4
    :goto_2
    const/16 v3, 0x8

    #@58
    invoke-direct {p0, v2, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    #@5b
    move-result-object v0

    #@5c
    .line 986
    if-eqz v0, :cond_b

    #@5e
    .line 987
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@61
    move-result v3

    #@62
    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    #@64
    sub-int/2addr v3, v4

    #@65
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@68
    .line 994
    :cond_5
    :goto_3
    const/16 v3, 0xa

    #@6a
    aget v3, v2, v3

    #@6c
    if-eqz v3, :cond_6

    #@6e
    .line 995
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    #@70
    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    #@72
    add-int/2addr v3, v4

    #@73
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@76
    .line 998
    :cond_6
    const/16 v3, 0xc

    #@78
    aget v3, v2, v3

    #@7a
    if-eqz v3, :cond_7

    #@7c
    .line 999
    if-ltz p2, :cond_7

    #@7e
    .line 1000
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    #@80
    sub-int v3, p2, v3

    #@82
    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    #@84
    sub-int/2addr v3, v4

    #@85
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@88
    .line 941
    :cond_7
    return-void

    #@89
    .line 964
    :cond_8
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    #@8b
    if-eqz v3, :cond_2

    #@8d
    aget v3, v2, v5

    #@8f
    if-eqz v3, :cond_2

    #@91
    .line 965
    if-ltz p2, :cond_2

    #@93
    .line 966
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    #@95
    sub-int v3, p2, v3

    #@97
    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    #@99
    sub-int/2addr v3, v4

    #@9a
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@9d
    goto :goto_0

    #@9e
    .line 974
    :cond_9
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    #@a0
    if-eqz v3, :cond_3

    #@a2
    const/4 v3, 0x3

    #@a3
    aget v3, v2, v3

    #@a5
    if-eqz v3, :cond_3

    #@a7
    .line 975
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    #@a9
    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    #@ab
    add-int/2addr v3, v4

    #@ac
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@af
    goto :goto_1

    #@b0
    .line 981
    :cond_a
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    #@b2
    if-eqz v3, :cond_4

    #@b4
    const/4 v3, 0x6

    #@b5
    aget v3, v2, v3

    #@b7
    if-eqz v3, :cond_4

    #@b9
    .line 982
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    #@bb
    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    #@bd
    add-int/2addr v3, v4

    #@be
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@c1
    goto :goto_2

    #@c2
    .line 988
    :cond_b
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    #@c4
    if-eqz v3, :cond_5

    #@c6
    const/16 v3, 0x8

    #@c8
    aget v3, v2, v3

    #@ca
    if-eqz v3, :cond_5

    #@cc
    .line 989
    if-ltz p2, :cond_5

    #@ce
    .line 990
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    #@d0
    sub-int v3, p2, v3

    #@d2
    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    #@d4
    sub-int/2addr v3, v4

    #@d5
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@d8
    goto :goto_3
.end method

.method private static centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I

    #@0
    .prologue
    .line 1053
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    #@3
    move-result v0

    #@4
    .line 1054
    .local v0, "childWidth":I
    sub-int v2, p2, v0

    #@6
    div-int/lit8 v1, v2, 0x2

    #@8
    .line 1056
    .local v1, "left":I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@b
    .line 1057
    add-int v2, v1, v0

    #@d
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@10
    .line 1052
    return-void
.end method

.method private static centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I

    #@0
    .prologue
    .line 1061
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    #@3
    move-result v0

    #@4
    .line 1062
    .local v0, "childHeight":I
    sub-int v2, p2, v0

    #@6
    div-int/lit8 v1, v2, 0x2

    #@8
    .line 1064
    .local v1, "top":I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@b
    .line 1065
    add-int v2, v1, v0

    #@d
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@10
    .line 1060
    return-void
.end method

.method private compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 3
    .param p1, "p1"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "p2"    # Landroid/widget/RelativeLayout$LayoutParams;

    #@0
    .prologue
    .line 648
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@3
    move-result v1

    #@4
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@7
    move-result v2

    #@8
    sub-int v0, v1, v2

    #@a
    .line 649
    .local v0, "topDiff":I
    if-eqz v0, :cond_0

    #@c
    .line 650
    return v0

    #@d
    .line 652
    :cond_0
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@10
    move-result v1

    #@11
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@14
    move-result v2

    #@15
    sub-int/2addr v1, v2

    #@16
    return v1
.end method

.method private getChildMeasureSpec(IIIIIIII)I
    .locals 8
    .param p1, "childStart"    # I
    .param p2, "childEnd"    # I
    .param p3, "childSize"    # I
    .param p4, "startMargin"    # I
    .param p5, "endMargin"    # I
    .param p6, "startPadding"    # I
    .param p7, "endPadding"    # I
    .param p8, "mySize"    # I

    #@0
    .prologue
    .line 737
    const/4 v0, 0x0

    #@1
    .line 738
    .local v0, "childSpecMode":I
    const/4 v1, 0x0

    #@2
    .line 743
    .local v1, "childSpecSize":I
    if-gez p8, :cond_4

    #@4
    const/4 v2, 0x1

    #@5
    .line 744
    .local v2, "isUnspecified":Z
    :goto_0
    if-eqz v2, :cond_0

    #@7
    iget-boolean v6, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    #@9
    if-eqz v6, :cond_5

    #@b
    .line 763
    :cond_0
    move v5, p1

    #@c
    .line 764
    .local v5, "tempStart":I
    move v4, p2

    #@d
    .line 768
    .local v4, "tempEnd":I
    const/high16 v6, -0x80000000

    #@f
    if-ne v5, v6, :cond_1

    #@11
    .line 769
    add-int v5, p6, p4

    #@13
    .line 771
    :cond_1
    const/high16 v6, -0x80000000

    #@15
    if-ne v4, v6, :cond_2

    #@17
    .line 772
    sub-int v6, p8, p7

    #@19
    sub-int v4, v6, p5

    #@1b
    .line 776
    :cond_2
    sub-int v3, v4, v5

    #@1d
    .line 778
    .local v3, "maxAvailable":I
    const/high16 v6, -0x80000000

    #@1f
    if-eq p1, v6, :cond_9

    #@21
    const/high16 v6, -0x80000000

    #@23
    if-eq p2, v6, :cond_9

    #@25
    .line 780
    if-eqz v2, :cond_8

    #@27
    const/4 v0, 0x0

    #@28
    .line 781
    :goto_1
    const/4 v6, 0x0

    #@29
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    #@2c
    move-result v1

    #@2d
    .line 815
    :cond_3
    :goto_2
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@30
    move-result v6

    #@31
    return v6

    #@32
    .line 743
    .end local v2    # "isUnspecified":Z
    .end local v3    # "maxAvailable":I
    .end local v4    # "tempEnd":I
    .end local v5    # "tempStart":I
    :cond_4
    const/4 v2, 0x0

    #@33
    .restart local v2    # "isUnspecified":Z
    goto :goto_0

    #@34
    .line 745
    :cond_5
    const/high16 v6, -0x80000000

    #@36
    if-eq p1, v6, :cond_6

    #@38
    const/high16 v6, -0x80000000

    #@3a
    if-eq p2, v6, :cond_6

    #@3c
    .line 747
    sub-int v6, p2, p1

    #@3e
    const/4 v7, 0x0

    #@3f
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    #@42
    move-result v1

    #@43
    .line 748
    const/high16 v0, 0x40000000    # 2.0f

    #@45
    .line 759
    :goto_3
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@48
    move-result v6

    #@49
    return v6

    #@4a
    .line 749
    :cond_6
    if-ltz p3, :cond_7

    #@4c
    .line 751
    move v1, p3

    #@4d
    .line 752
    const/high16 v0, 0x40000000    # 2.0f

    #@4f
    goto :goto_3

    #@50
    .line 755
    :cond_7
    const/4 v1, 0x0

    #@51
    .line 756
    const/4 v0, 0x0

    #@52
    goto :goto_3

    #@53
    .line 780
    .restart local v3    # "maxAvailable":I
    .restart local v4    # "tempEnd":I
    .restart local v5    # "tempStart":I
    :cond_8
    const/high16 v0, 0x40000000    # 2.0f

    #@55
    goto :goto_1

    #@56
    .line 783
    :cond_9
    if-ltz p3, :cond_b

    #@58
    .line 785
    const/high16 v0, 0x40000000    # 2.0f

    #@5a
    .line 787
    if-ltz v3, :cond_a

    #@5c
    .line 789
    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    #@5f
    move-result v1

    #@60
    goto :goto_2

    #@61
    .line 792
    :cond_a
    move v1, p3

    #@62
    goto :goto_2

    #@63
    .line 794
    :cond_b
    const/4 v6, -0x1

    #@64
    if-ne p3, v6, :cond_d

    #@66
    .line 797
    if-eqz v2, :cond_c

    #@68
    const/4 v0, 0x0

    #@69
    .line 798
    :goto_4
    const/4 v6, 0x0

    #@6a
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    #@6d
    move-result v1

    #@6e
    goto :goto_2

    #@6f
    .line 797
    :cond_c
    const/high16 v0, 0x40000000    # 2.0f

    #@71
    goto :goto_4

    #@72
    .line 799
    :cond_d
    const/4 v6, -0x2

    #@73
    if-ne p3, v6, :cond_3

    #@75
    .line 802
    if-ltz v3, :cond_e

    #@77
    .line 804
    const/high16 v0, -0x80000000

    #@79
    .line 805
    move v1, v3

    #@7a
    goto :goto_2

    #@7b
    .line 809
    :cond_e
    const/4 v0, 0x0

    #@7c
    .line 810
    const/4 v1, 0x0

    #@7d
    goto :goto_2
.end method

.method private getRelatedView([II)Landroid/view/View;
    .locals 6
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1006
    aget v0, p1, p2

    #@3
    .line 1007
    .local v0, "id":I
    if-eqz v0, :cond_3

    #@5
    .line 1008
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    #@7
    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->-get0(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    #@11
    .line 1009
    .local v1, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_0

    #@13
    return-object v5

    #@14
    .line 1010
    :cond_0
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    #@16
    .line 1013
    .local v2, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@19
    move-result v3

    #@1a
    const/16 v4, 0x8

    #@1c
    if-ne v3, v4, :cond_2

    #@1e
    .line 1014
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    #@24
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    #@27
    move-result v4

    #@28
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    #@2b
    move-result-object p1

    #@2c
    .line 1015
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    #@2e
    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->-get0(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    #@31
    move-result-object v3

    #@32
    aget v4, p1, p2

    #@34
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    .end local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    #@3a
    .line 1016
    .restart local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_1

    #@3c
    return-object v5

    #@3d
    .line 1017
    :cond_1
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    #@3f
    goto :goto_0

    #@40
    .line 1020
    :cond_2
    return-object v2

    #@41
    .line 1023
    .end local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    return-object v5
.end method

.method private getRelatedViewBaselineOffset([I)I
    .locals 6
    .param p1, "rules"    # [I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 1038
    const/4 v4, 0x4

    #@2
    invoke-direct {p0, p1, v4}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    #@5
    move-result-object v3

    #@6
    .line 1039
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    #@8
    .line 1040
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    #@b
    move-result v1

    #@c
    .line 1041
    .local v1, "baseline":I
    if-eq v1, v5, :cond_0

    #@e
    .line 1042
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@11
    move-result-object v2

    #@12
    .line 1043
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Landroid/widget/RelativeLayout$LayoutParams;

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 1044
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    #@1c
    .line 1045
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@1f
    move-result v4

    #@20
    add-int/2addr v4, v1

    #@21
    return v4

    #@22
    .line 1049
    .end local v0    # "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "baseline":I
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return v5
.end method

.method private getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1027
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    #@4
    move-result-object v1

    #@5
    .line 1028
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    #@7
    .line 1029
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@a
    move-result-object v0

    #@b
    .line 1030
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/RelativeLayout$LayoutParams;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1031
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    #@15
    return-object v2

    #@16
    .line 1034
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-object v3
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 256
    sget-object v1, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    #@2
    .line 255
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 257
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    #@7
    const/4 v2, -0x1

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@b
    move-result v1

    #@c
    iput v1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    #@e
    .line 258
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@14
    move-result v1

    #@15
    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    #@17
    .line 259
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 254
    return-void
.end method

.method private measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    #@0
    .prologue
    .line 666
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@3
    move-result v1

    #@4
    .line 667
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@7
    move-result v2

    #@8
    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    #@a
    .line 668
    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@c
    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    #@e
    .line 669
    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    #@10
    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    #@12
    move-object v0, p0

    #@13
    move v8, p3

    #@14
    .line 666
    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    #@17
    move-result v10

    #@18
    .line 671
    .local v10, "childWidthMeasureSpec":I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@1b
    move-result v1

    #@1c
    .line 672
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@1f
    move-result v2

    #@20
    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    #@22
    .line 673
    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    #@24
    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    #@26
    .line 674
    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    #@28
    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    #@2a
    move-object v0, p0

    #@2b
    move v8, p4

    #@2c
    .line 671
    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    #@2f
    move-result v9

    #@30
    .line 676
    .local v9, "childHeightMeasureSpec":I
    invoke-virtual {p1, v10, v9}, Landroid/view/View;->measure(II)V

    #@33
    .line 665
    return-void
.end method

.method private measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    #@0
    .prologue
    .line 681
    invoke-static/range {p2 .. p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@3
    move-result v2

    #@4
    invoke-static/range {p2 .. p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@7
    move-result v3

    #@8
    .line 682
    move-object/from16 v0, p2

    #@a
    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    #@c
    move-object/from16 v0, p2

    #@e
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@10
    move-object/from16 v0, p2

    #@12
    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    #@14
    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    #@16
    iget v8, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    #@18
    move-object v1, p0

    #@19
    move/from16 v9, p3

    #@1b
    .line 681
    invoke-direct/range {v1 .. v9}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    #@1e
    move-result v11

    #@1f
    .line 686
    .local v11, "childWidthMeasureSpec":I
    if-gez p4, :cond_0

    #@21
    iget-boolean v1, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 699
    :cond_0
    iget-boolean v1, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    #@27
    if-eqz v1, :cond_3

    #@29
    .line 700
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    #@2b
    sub-int v1, p4, v1

    #@2d
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    #@2f
    sub-int/2addr v1, v2

    #@30
    .line 701
    move-object/from16 v0, p2

    #@32
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    #@34
    .line 700
    sub-int/2addr v1, v2

    #@35
    .line 701
    move-object/from16 v0, p2

    #@37
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    #@39
    .line 700
    sub-int/2addr v1, v2

    #@3a
    const/4 v2, 0x0

    #@3b
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@3e
    move-result v13

    #@3f
    .line 707
    .local v13, "maxHeight":I
    :goto_0
    move-object/from16 v0, p2

    #@41
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    #@43
    const/4 v2, -0x1

    #@44
    if-ne v1, v2, :cond_4

    #@46
    .line 708
    const/high16 v12, 0x40000000    # 2.0f

    #@48
    .line 712
    .local v12, "heightMode":I
    :goto_1
    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@4b
    move-result v10

    #@4c
    .line 715
    .end local v12    # "heightMode":I
    .end local v13    # "maxHeight":I
    .local v10, "childHeightMeasureSpec":I
    :goto_2
    invoke-virtual {p1, v11, v10}, Landroid/view/View;->measure(II)V

    #@4f
    .line 680
    return-void

    #@50
    .line 687
    .end local v10    # "childHeightMeasureSpec":I
    :cond_1
    move-object/from16 v0, p2

    #@52
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    #@54
    if-ltz v1, :cond_2

    #@56
    .line 689
    move-object/from16 v0, p2

    #@58
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    #@5a
    const/high16 v2, 0x40000000    # 2.0f

    #@5c
    .line 688
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@5f
    move-result v10

    #@60
    .restart local v10    # "childHeightMeasureSpec":I
    goto :goto_2

    #@61
    .line 695
    .end local v10    # "childHeightMeasureSpec":I
    :cond_2
    const/4 v1, 0x0

    #@62
    const/4 v2, 0x0

    #@63
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@66
    move-result v10

    #@67
    .restart local v10    # "childHeightMeasureSpec":I
    goto :goto_2

    #@68
    .line 703
    .end local v10    # "childHeightMeasureSpec":I
    :cond_3
    const/4 v1, 0x0

    #@69
    move/from16 v0, p4

    #@6b
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@6e
    move-result v13

    #@6f
    .restart local v13    # "maxHeight":I
    goto :goto_0

    #@70
    .line 710
    :cond_4
    const/high16 v12, -0x80000000

    #@72
    .restart local v12    # "heightMode":I
    goto :goto_1
.end method

.method private positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "wrapContent"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/high16 v5, -0x80000000

    #@4
    .line 821
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    #@7
    move-result v0

    #@8
    .line 822
    .local v0, "layoutDirection":I
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    #@b
    move-result-object v1

    #@c
    .line 824
    .local v1, "rules":[I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@f
    move-result v4

    #@10
    if-ne v4, v5, :cond_1

    #@12
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@15
    move-result v4

    #@16
    if-eq v4, v5, :cond_1

    #@18
    .line 826
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@1b
    move-result v4

    #@1c
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@1f
    move-result v5

    #@20
    sub-int/2addr v4, v5

    #@21
    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@24
    .line 852
    :cond_0
    :goto_0
    const/16 v4, 0x15

    #@26
    aget v4, v1, v4

    #@28
    if-eqz v4, :cond_7

    #@2a
    :goto_1
    return v2

    #@2b
    .line 827
    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@2e
    move-result v4

    #@2f
    if-eq v4, v5, :cond_2

    #@31
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@34
    move-result v4

    #@35
    if-ne v4, v5, :cond_2

    #@37
    .line 829
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@3a
    move-result v4

    #@3b
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@3e
    move-result v5

    #@3f
    add-int/2addr v4, v5

    #@40
    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@43
    goto :goto_0

    #@44
    .line 830
    :cond_2
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@47
    move-result v4

    #@48
    if-ne v4, v5, :cond_0

    #@4a
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@4d
    move-result v4

    #@4e
    if-ne v4, v5, :cond_0

    #@50
    .line 832
    const/16 v4, 0xd

    #@52
    aget v4, v1, v4

    #@54
    if-nez v4, :cond_3

    #@56
    const/16 v4, 0xe

    #@58
    aget v4, v1, v4

    #@5a
    if-eqz v4, :cond_5

    #@5c
    .line 833
    :cond_3
    if-nez p4, :cond_4

    #@5e
    .line 834
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    #@61
    .line 839
    :goto_2
    return v2

    #@62
    .line 836
    :cond_4
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    #@64
    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@66
    add-int/2addr v3, v4

    #@67
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@6a
    .line 837
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@6d
    move-result v3

    #@6e
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@71
    move-result v4

    #@72
    add-int/2addr v3, v4

    #@73
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@76
    goto :goto_2

    #@77
    .line 843
    :cond_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    #@7a
    move-result v4

    #@7b
    if-eqz v4, :cond_6

    #@7d
    .line 844
    iget v4, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    #@7f
    sub-int v4, p3, v4

    #@81
    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    #@83
    sub-int/2addr v4, v5

    #@84
    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@87
    .line 845
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@8a
    move-result v4

    #@8b
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@8e
    move-result v5

    #@8f
    sub-int/2addr v4, v5

    #@90
    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@93
    goto :goto_0

    #@94
    .line 847
    :cond_6
    iget v4, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    #@96
    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@98
    add-int/2addr v4, v5

    #@99
    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@9c
    .line 848
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@9f
    move-result v4

    #@a0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@a3
    move-result v5

    #@a4
    add-int/2addr v4, v5

    #@a5
    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@a8
    goto/16 :goto_0

    #@aa
    :cond_7
    move v2, v3

    #@ab
    .line 852
    goto/16 :goto_1
.end method

.method private positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myHeight"    # I
    .param p4, "wrapContent"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/high16 v4, -0x80000000

    #@4
    .line 858
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    #@7
    move-result-object v0

    #@8
    .line 860
    .local v0, "rules":[I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@b
    move-result v3

    #@c
    if-ne v3, v4, :cond_1

    #@e
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@11
    move-result v3

    #@12
    if-eq v3, v4, :cond_1

    #@14
    .line 862
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@17
    move-result v3

    #@18
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@1b
    move-result v4

    #@1c
    sub-int/2addr v3, v4

    #@1d
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@20
    .line 881
    :cond_0
    :goto_0
    const/16 v3, 0xc

    #@22
    aget v3, v0, v3

    #@24
    if-eqz v3, :cond_6

    #@26
    :goto_1
    return v1

    #@27
    .line 863
    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@2a
    move-result v3

    #@2b
    if-eq v3, v4, :cond_2

    #@2d
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@30
    move-result v3

    #@31
    if-ne v3, v4, :cond_2

    #@33
    .line 865
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@36
    move-result v3

    #@37
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@3a
    move-result v4

    #@3b
    add-int/2addr v3, v4

    #@3c
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@3f
    goto :goto_0

    #@40
    .line 866
    :cond_2
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@43
    move-result v3

    #@44
    if-ne v3, v4, :cond_0

    #@46
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@49
    move-result v3

    #@4a
    if-ne v3, v4, :cond_0

    #@4c
    .line 868
    const/16 v3, 0xd

    #@4e
    aget v3, v0, v3

    #@50
    if-nez v3, :cond_3

    #@52
    const/16 v3, 0xf

    #@54
    aget v3, v0, v3

    #@56
    if-eqz v3, :cond_5

    #@58
    .line 869
    :cond_3
    if-nez p4, :cond_4

    #@5a
    .line 870
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    #@5d
    .line 875
    :goto_2
    return v1

    #@5e
    .line 872
    :cond_4
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    #@60
    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    #@62
    add-int/2addr v2, v3

    #@63
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@66
    .line 873
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@69
    move-result v2

    #@6a
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@6d
    move-result v3

    #@6e
    add-int/2addr v2, v3

    #@6f
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@72
    goto :goto_2

    #@73
    .line 877
    :cond_5
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    #@75
    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    #@77
    add-int/2addr v3, v4

    #@78
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@7b
    .line 878
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@7e
    move-result v3

    #@7f
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@82
    move-result v4

    #@83
    add-int/2addr v3, v4

    #@84
    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@87
    goto :goto_0

    #@88
    :cond_6
    move v1, v2

    #@89
    .line 881
    goto :goto_1
.end method

.method private queryCompatibilityModes(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v1

    #@6
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8
    .line 264
    .local v0, "version":I
    const/16 v1, 0x11

    #@a
    if-gt v0, v1, :cond_0

    #@c
    move v1, v2

    #@d
    :goto_0
    iput-boolean v1, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    #@f
    .line 265
    const/16 v1, 0x12

    #@11
    if-lt v0, v1, :cond_1

    #@13
    :goto_1
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    #@15
    .line 262
    return-void

    #@16
    :cond_0
    move v1, v3

    #@17
    .line 264
    goto :goto_0

    #@18
    :cond_1
    move v2, v3

    #@19
    .line 265
    goto :goto_1
.end method

.method private sortChildren()V
    .locals 5

    #@0
    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    .line 366
    .local v0, "count":I
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    #@6
    if-eqz v3, :cond_0

    #@8
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    #@a
    array-length v3, v3

    #@b
    if-eq v3, v0, :cond_1

    #@d
    .line 367
    :cond_0
    new-array v3, v0, [Landroid/view/View;

    #@f
    iput-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    #@11
    .line 370
    :cond_1
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    #@13
    if-eqz v3, :cond_2

    #@15
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    #@17
    array-length v3, v3

    #@18
    if-eq v3, v0, :cond_3

    #@1a
    .line 371
    :cond_2
    new-array v3, v0, [Landroid/view/View;

    #@1c
    iput-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    #@1e
    .line 374
    :cond_3
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    #@20
    .line 375
    .local v1, "graph":Landroid/widget/RelativeLayout$DependencyGraph;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    #@23
    .line 377
    const/4 v2, 0x0

    #@24
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    #@26
    .line 378
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    #@2d
    .line 377
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 381
    :cond_4
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    #@32
    sget-object v4, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    #@34
    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    #@37
    .line 382
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    #@39
    sget-object v4, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    #@3b
    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    #@3e
    .line 364
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1102
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    #@2
    return v0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 1113
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    #@4
    if-nez v4, :cond_0

    #@6
    .line 1114
    new-instance v4, Ljava/util/TreeSet;

    #@8
    new-instance v5, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    #@a
    invoke-direct {v5, p0, v7}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;)V

    #@d
    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    #@10
    iput-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    #@12
    .line 1118
    :cond_0
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    #@16
    move-result v0

    #@17
    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@19
    .line 1119
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    #@1b
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v5

    #@1f
    invoke-interface {v4, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    #@22
    .line 1118
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1122
    :cond_1
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    #@27
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v3

    #@2b
    .local v3, "view$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_3

    #@31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Landroid/view/View;

    #@37
    .line 1123
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@3a
    move-result v4

    #@3b
    if-nez v4, :cond_2

    #@3d
    .line 1124
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@40
    move-result v4

    #@41
    .line 1123
    if-eqz v4, :cond_2

    #@43
    .line 1125
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    #@45
    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    #@48
    .line 1126
    const/4 v4, 0x1

    #@49
    return v4

    #@4a
    .line 1130
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    #@4c
    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    #@4f
    .line 1131
    return v6
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x2

    #@1
    .line 1096
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1085
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1107
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #@2
    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1086
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1136
    const-class v0, Landroid/widget/RelativeLayout;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    #@0
    .prologue
    .line 355
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    #@6
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method public getGravity()I
    .locals 1

    #@0
    .prologue
    .line 300
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    #@2
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 1072
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    #@3
    move-result v1

    #@4
    .line 1074
    .local v1, "count":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@7
    .line 1075
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 1076
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@e
    move-result v4

    #@f
    const/16 v5, 0x8

    #@11
    if-eq v4, v5, :cond_0

    #@13
    .line 1078
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    #@19
    .line 1079
    .local v3, "st":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@1c
    move-result v4

    #@1d
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@20
    move-result v5

    #@21
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@24
    move-result v6

    #@25
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@28
    move-result v7

    #@29
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    #@2c
    .line 1074
    .end local v3    # "st":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 1069
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 46
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 387
    move-object/from16 v0, p0

    #@2
    iget-boolean v4, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 388
    const/4 v4, 0x0

    #@7
    move-object/from16 v0, p0

    #@9
    iput-boolean v4, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    #@b
    .line 389
    invoke-direct/range {p0 .. p0}, Landroid/widget/RelativeLayout;->sortChildren()V

    #@e
    .line 392
    :cond_0
    const/16 v30, -0x1

    #@10
    .line 393
    .local v30, "myWidth":I
    const/16 v29, -0x1

    #@12
    .line 395
    .local v29, "myHeight":I
    const/16 v42, 0x0

    #@14
    .line 396
    .local v42, "width":I
    const/16 v19, 0x0

    #@16
    .line 398
    .local v19, "height":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@19
    move-result v43

    #@1a
    .line 399
    .local v43, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@1d
    move-result v20

    #@1e
    .line 400
    .local v20, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@21
    move-result v44

    #@22
    .line 401
    .local v44, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@25
    move-result v21

    #@26
    .line 404
    .local v21, "heightSize":I
    if-eqz v43, :cond_1

    #@28
    .line 405
    move/from16 v30, v44

    #@2a
    .line 408
    :cond_1
    if-eqz v20, :cond_2

    #@2c
    .line 409
    move/from16 v29, v21

    #@2e
    .line 412
    :cond_2
    const/high16 v4, 0x40000000    # 2.0f

    #@30
    move/from16 v0, v43

    #@32
    if-ne v0, v4, :cond_3

    #@34
    .line 413
    move/from16 v42, v30

    #@36
    .line 416
    :cond_3
    const/high16 v4, 0x40000000    # 2.0f

    #@38
    move/from16 v0, v20

    #@3a
    if-ne v0, v4, :cond_4

    #@3c
    .line 417
    move/from16 v19, v29

    #@3e
    .line 420
    :cond_4
    const/16 v25, 0x0

    #@40
    .line 421
    .local v25, "ignore":Landroid/view/View;
    move-object/from16 v0, p0

    #@42
    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    #@44
    const v5, 0x800007

    #@47
    and-int v18, v4, v5

    #@49
    .line 422
    .local v18, "gravity":I
    const v4, 0x800003

    #@4c
    move/from16 v0, v18

    #@4e
    if-eq v0, v4, :cond_9

    #@50
    if-eqz v18, :cond_9

    #@52
    const/16 v22, 0x1

    #@54
    .line 423
    .local v22, "horizontalGravity":Z
    :goto_0
    move-object/from16 v0, p0

    #@56
    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    #@58
    and-int/lit8 v18, v4, 0x70

    #@5a
    .line 424
    const/16 v4, 0x30

    #@5c
    move/from16 v0, v18

    #@5e
    if-eq v0, v4, :cond_a

    #@60
    if-eqz v18, :cond_a

    #@62
    const/16 v39, 0x1

    #@64
    .line 426
    .local v39, "verticalGravity":Z
    :goto_1
    const v28, 0x7fffffff

    #@67
    .line 427
    .local v28, "left":I
    const v38, 0x7fffffff

    #@6a
    .line 428
    .local v38, "top":I
    const/high16 v35, -0x80000000

    #@6c
    .line 429
    .local v35, "right":I
    const/high16 v12, -0x80000000

    #@6e
    .line 431
    .local v12, "bottom":I
    const/16 v31, 0x0

    #@70
    .line 432
    .local v31, "offsetHorizontalAxis":Z
    const/16 v32, 0x0

    #@72
    .line 434
    .local v32, "offsetVerticalAxis":Z
    if-nez v22, :cond_5

    #@74
    if-eqz v39, :cond_6

    #@76
    :cond_5
    move-object/from16 v0, p0

    #@78
    iget v4, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    #@7a
    const/4 v5, -0x1

    #@7b
    if-eq v4, v5, :cond_6

    #@7d
    .line 435
    move-object/from16 v0, p0

    #@7f
    iget v4, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    #@81
    move-object/from16 v0, p0

    #@83
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    #@86
    move-result-object v25

    #@87
    .line 438
    .end local v25    # "ignore":Landroid/view/View;
    :cond_6
    const/high16 v4, 0x40000000    # 2.0f

    #@89
    move/from16 v0, v43

    #@8b
    if-eq v0, v4, :cond_b

    #@8d
    const/16 v27, 0x1

    #@8f
    .line 439
    .local v27, "isWrapContentWidth":Z
    :goto_2
    const/high16 v4, 0x40000000    # 2.0f

    #@91
    move/from16 v0, v20

    #@93
    if-eq v0, v4, :cond_c

    #@95
    const/16 v26, 0x1

    #@97
    .line 446
    .local v26, "isWrapContentHeight":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    #@9a
    move-result v9

    #@9b
    .line 447
    .local v9, "layoutDirection":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    #@9e
    move-result v4

    #@9f
    if-eqz v4, :cond_7

    #@a1
    const/4 v4, -0x1

    #@a2
    move/from16 v0, v30

    #@a4
    if-ne v0, v4, :cond_7

    #@a6
    .line 448
    const/high16 v30, 0x10000

    #@a8
    .line 451
    :cond_7
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    #@ac
    move-object/from16 v41, v0

    #@ae
    .line 452
    .local v41, "views":[Landroid/view/View;
    move-object/from16 v0, v41

    #@b0
    array-length v0, v0

    #@b1
    move/from16 v17, v0

    #@b3
    .line 454
    .local v17, "count":I
    const/16 v24, 0x0

    #@b5
    .local v24, "i":I
    :goto_4
    move/from16 v0, v24

    #@b7
    move/from16 v1, v17

    #@b9
    if-ge v0, v1, :cond_d

    #@bb
    .line 455
    aget-object v13, v41, v24

    #@bd
    .line 456
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    #@c0
    move-result v4

    #@c1
    const/16 v5, 0x8

    #@c3
    if-eq v4, v5, :cond_8

    #@c5
    .line 457
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@c8
    move-result-object v34

    #@c9
    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    #@cb
    .line 458
    .local v34, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    #@cd
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    #@d0
    move-result-object v36

    #@d1
    .line 460
    .local v36, "rules":[I
    move-object/from16 v0, p0

    #@d3
    move-object/from16 v1, v34

    #@d5
    move/from16 v2, v30

    #@d7
    move-object/from16 v3, v36

    #@d9
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V

    #@dc
    .line 461
    move-object/from16 v0, p0

    #@de
    move-object/from16 v1, v34

    #@e0
    move/from16 v2, v30

    #@e2
    move/from16 v3, v29

    #@e4
    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    #@e7
    .line 463
    move-object/from16 v0, p0

    #@e9
    move-object/from16 v1, v34

    #@eb
    move/from16 v2, v30

    #@ed
    move/from16 v3, v27

    #@ef
    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    #@f2
    move-result v4

    #@f3
    if-eqz v4, :cond_8

    #@f5
    .line 464
    const/16 v31, 0x1

    #@f7
    .line 454
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_8
    add-int/lit8 v24, v24, 0x1

    #@f9
    goto :goto_4

    #@fa
    .line 422
    .end local v9    # "layoutDirection":I
    .end local v12    # "bottom":I
    .end local v13    # "child":Landroid/view/View;
    .end local v17    # "count":I
    .end local v22    # "horizontalGravity":Z
    .end local v24    # "i":I
    .end local v26    # "isWrapContentHeight":Z
    .end local v27    # "isWrapContentWidth":Z
    .end local v28    # "left":I
    .end local v31    # "offsetHorizontalAxis":Z
    .end local v32    # "offsetVerticalAxis":Z
    .end local v35    # "right":I
    .end local v38    # "top":I
    .end local v39    # "verticalGravity":Z
    .end local v41    # "views":[Landroid/view/View;
    .restart local v25    # "ignore":Landroid/view/View;
    :cond_9
    const/16 v22, 0x0

    #@fc
    .restart local v22    # "horizontalGravity":Z
    goto/16 :goto_0

    #@fe
    .line 424
    :cond_a
    const/16 v39, 0x0

    #@100
    .restart local v39    # "verticalGravity":Z
    goto/16 :goto_1

    #@102
    .line 438
    .end local v25    # "ignore":Landroid/view/View;
    .restart local v12    # "bottom":I
    .restart local v28    # "left":I
    .restart local v31    # "offsetHorizontalAxis":Z
    .restart local v32    # "offsetVerticalAxis":Z
    .restart local v35    # "right":I
    .restart local v38    # "top":I
    :cond_b
    const/16 v27, 0x0

    #@104
    .restart local v27    # "isWrapContentWidth":Z
    goto :goto_2

    #@105
    .line 439
    :cond_c
    const/16 v26, 0x0

    #@107
    .restart local v26    # "isWrapContentHeight":Z
    goto :goto_3

    #@108
    .line 469
    .restart local v9    # "layoutDirection":I
    .restart local v17    # "count":I
    .restart local v24    # "i":I
    .restart local v41    # "views":[Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    #@10a
    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    #@10c
    move-object/from16 v41, v0

    #@10e
    .line 470
    move-object/from16 v0, v41

    #@110
    array-length v0, v0

    #@111
    move/from16 v17, v0

    #@113
    .line 471
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    #@116
    move-result-object v4

    #@117
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@11a
    move-result-object v4

    #@11b
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@11d
    move/from16 v37, v0

    #@11f
    .line 473
    .local v37, "targetSdkVersion":I
    const/16 v24, 0x0

    #@121
    :goto_5
    move/from16 v0, v24

    #@123
    move/from16 v1, v17

    #@125
    if-ge v0, v1, :cond_19

    #@127
    .line 474
    aget-object v13, v41, v24

    #@129
    .line 475
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    #@12c
    move-result v4

    #@12d
    const/16 v5, 0x8

    #@12f
    if-eq v4, v5, :cond_14

    #@131
    .line 476
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@134
    move-result-object v34

    #@135
    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    #@137
    .line 478
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    #@13a
    move-result v4

    #@13b
    move-object/from16 v0, p0

    #@13d
    move-object/from16 v1, v34

    #@13f
    move/from16 v2, v29

    #@141
    invoke-direct {v0, v1, v2, v4}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V

    #@144
    .line 479
    move-object/from16 v0, p0

    #@146
    move-object/from16 v1, v34

    #@148
    move/from16 v2, v30

    #@14a
    move/from16 v3, v29

    #@14c
    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    #@14f
    .line 480
    move-object/from16 v0, p0

    #@151
    move-object/from16 v1, v34

    #@153
    move/from16 v2, v29

    #@155
    move/from16 v3, v26

    #@157
    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    #@15a
    move-result v4

    #@15b
    if-eqz v4, :cond_e

    #@15d
    .line 481
    const/16 v32, 0x1

    #@15f
    .line 484
    :cond_e
    if-eqz v27, :cond_f

    #@161
    .line 485
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    #@164
    move-result v4

    #@165
    if-eqz v4, :cond_16

    #@167
    .line 486
    const/16 v4, 0x13

    #@169
    move/from16 v0, v37

    #@16b
    if-ge v0, v4, :cond_15

    #@16d
    .line 487
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@170
    move-result v4

    #@171
    sub-int v4, v30, v4

    #@173
    move/from16 v0, v42

    #@175
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@178
    move-result v42

    #@179
    .line 500
    :cond_f
    :goto_6
    if-eqz v26, :cond_10

    #@17b
    .line 501
    const/16 v4, 0x13

    #@17d
    move/from16 v0, v37

    #@17f
    if-ge v0, v4, :cond_18

    #@181
    .line 502
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@184
    move-result v4

    #@185
    move/from16 v0, v19

    #@187
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@18a
    move-result v19

    #@18b
    .line 508
    :cond_10
    :goto_7
    move-object/from16 v0, v25

    #@18d
    if-ne v13, v0, :cond_11

    #@18f
    if-eqz v39, :cond_12

    #@191
    .line 509
    :cond_11
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@194
    move-result v4

    #@195
    move-object/from16 v0, v34

    #@197
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@199
    sub-int/2addr v4, v5

    #@19a
    move/from16 v0, v28

    #@19c
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    #@19f
    move-result v28

    #@1a0
    .line 510
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@1a3
    move-result v4

    #@1a4
    move-object/from16 v0, v34

    #@1a6
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    #@1a8
    sub-int/2addr v4, v5

    #@1a9
    move/from16 v0, v38

    #@1ab
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    #@1ae
    move-result v38

    #@1af
    .line 513
    :cond_12
    move-object/from16 v0, v25

    #@1b1
    if-ne v13, v0, :cond_13

    #@1b3
    if-eqz v22, :cond_14

    #@1b5
    .line 514
    :cond_13
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@1b8
    move-result v4

    #@1b9
    move-object/from16 v0, v34

    #@1bb
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    #@1bd
    add-int/2addr v4, v5

    #@1be
    move/from16 v0, v35

    #@1c0
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@1c3
    move-result v35

    #@1c4
    .line 515
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@1c7
    move-result v4

    #@1c8
    move-object/from16 v0, v34

    #@1ca
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    #@1cc
    add-int/2addr v4, v5

    #@1cd
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    #@1d0
    move-result v12

    #@1d1
    .line 473
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_14
    add-int/lit8 v24, v24, 0x1

    #@1d3
    goto/16 :goto_5

    #@1d5
    .line 489
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_15
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@1d8
    move-result v4

    #@1d9
    sub-int v4, v30, v4

    #@1db
    move-object/from16 v0, v34

    #@1dd
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    #@1df
    sub-int/2addr v4, v5

    #@1e0
    move/from16 v0, v42

    #@1e2
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@1e5
    move-result v42

    #@1e6
    goto :goto_6

    #@1e7
    .line 492
    :cond_16
    const/16 v4, 0x13

    #@1e9
    move/from16 v0, v37

    #@1eb
    if-ge v0, v4, :cond_17

    #@1ed
    .line 493
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@1f0
    move-result v4

    #@1f1
    move/from16 v0, v42

    #@1f3
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@1f6
    move-result v42

    #@1f7
    goto :goto_6

    #@1f8
    .line 495
    :cond_17
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@1fb
    move-result v4

    #@1fc
    move-object/from16 v0, v34

    #@1fe
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    #@200
    add-int/2addr v4, v5

    #@201
    move/from16 v0, v42

    #@203
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@206
    move-result v42

    #@207
    goto/16 :goto_6

    #@209
    .line 504
    :cond_18
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@20c
    move-result v4

    #@20d
    move-object/from16 v0, v34

    #@20f
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    #@211
    add-int/2addr v4, v5

    #@212
    move/from16 v0, v19

    #@214
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@217
    move-result v19

    #@218
    goto/16 :goto_7

    #@21a
    .line 522
    .end local v13    # "child":Landroid/view/View;
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_19
    const/4 v11, 0x0

    #@21b
    .line 523
    .local v11, "baselineView":Landroid/view/View;
    const/4 v10, 0x0

    #@21c
    .line 524
    .local v10, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0x0

    #@21e
    .end local v10    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "baselineView":Landroid/view/View;
    :goto_8
    move/from16 v0, v24

    #@220
    move/from16 v1, v17

    #@222
    if-ge v0, v1, :cond_1d

    #@224
    .line 525
    aget-object v13, v41, v24

    #@226
    .line 526
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    #@229
    move-result v4

    #@22a
    const/16 v5, 0x8

    #@22c
    if-eq v4, v5, :cond_1b

    #@22e
    .line 527
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@231
    move-result-object v15

    #@232
    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    #@234
    .line 528
    .local v15, "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v11, :cond_1a

    #@236
    if-nez v10, :cond_1c

    #@238
    .line 530
    :cond_1a
    :goto_9
    move-object v11, v13

    #@239
    .line 531
    .local v11, "baselineView":Landroid/view/View;
    move-object v10, v15

    #@23a
    .line 524
    .end local v11    # "baselineView":Landroid/view/View;
    .end local v15    # "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1b
    add-int/lit8 v24, v24, 0x1

    #@23c
    goto :goto_8

    #@23d
    .line 529
    .restart local v15    # "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1c
    move-object/from16 v0, p0

    #@23f
    invoke-direct {v0, v15, v10}, Landroid/widget/RelativeLayout;->compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I

    #@242
    move-result v4

    #@243
    if-gez v4, :cond_1b

    #@245
    goto :goto_9

    #@246
    .line 535
    .end local v13    # "child":Landroid/view/View;
    .end local v15    # "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1d
    move-object/from16 v0, p0

    #@248
    iput-object v11, v0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    #@24a
    .line 537
    if-eqz v27, :cond_22

    #@24c
    .line 540
    move-object/from16 v0, p0

    #@24e
    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    #@250
    add-int v42, v42, v4

    #@252
    .line 542
    move-object/from16 v0, p0

    #@254
    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@256
    if-eqz v4, :cond_1e

    #@258
    move-object/from16 v0, p0

    #@25a
    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@25c
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@25e
    if-ltz v4, :cond_1e

    #@260
    .line 543
    move-object/from16 v0, p0

    #@262
    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@264
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@266
    move/from16 v0, v42

    #@268
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@26b
    move-result v42

    #@26c
    .line 546
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    #@26f
    move-result v4

    #@270
    move/from16 v0, v42

    #@272
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@275
    move-result v42

    #@276
    .line 547
    move/from16 v0, v42

    #@278
    move/from16 v1, p1

    #@27a
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    #@27d
    move-result v42

    #@27e
    .line 549
    if-eqz v31, :cond_22

    #@280
    .line 550
    const/16 v24, 0x0

    #@282
    :goto_a
    move/from16 v0, v24

    #@284
    move/from16 v1, v17

    #@286
    if-ge v0, v1, :cond_22

    #@288
    .line 551
    aget-object v13, v41, v24

    #@28a
    .line 552
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    #@28d
    move-result v4

    #@28e
    const/16 v5, 0x8

    #@290
    if-eq v4, v5, :cond_20

    #@292
    .line 553
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@295
    move-result-object v34

    #@296
    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    #@298
    .line 554
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    #@29a
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    #@29d
    move-result-object v36

    #@29e
    .line 555
    .restart local v36    # "rules":[I
    const/16 v4, 0xd

    #@2a0
    aget v4, v36, v4

    #@2a2
    if-nez v4, :cond_1f

    #@2a4
    const/16 v4, 0xe

    #@2a6
    aget v4, v36, v4

    #@2a8
    if-eqz v4, :cond_21

    #@2aa
    .line 556
    :cond_1f
    move-object/from16 v0, v34

    #@2ac
    move/from16 v1, v42

    #@2ae
    invoke-static {v13, v0, v1}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    #@2b1
    .line 550
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_20
    :goto_b
    add-int/lit8 v24, v24, 0x1

    #@2b3
    goto :goto_a

    #@2b4
    .line 557
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v36    # "rules":[I
    :cond_21
    const/16 v4, 0xb

    #@2b6
    aget v4, v36, v4

    #@2b8
    if-eqz v4, :cond_20

    #@2ba
    .line 558
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    #@2bd
    move-result v16

    #@2be
    .line 559
    .local v16, "childWidth":I
    move-object/from16 v0, p0

    #@2c0
    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    #@2c2
    sub-int v4, v42, v4

    #@2c4
    sub-int v4, v4, v16

    #@2c6
    move-object/from16 v0, v34

    #@2c8
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@2cb
    .line 560
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@2ce
    move-result v4

    #@2cf
    add-int v4, v4, v16

    #@2d1
    move-object/from16 v0, v34

    #@2d3
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@2d6
    goto :goto_b

    #@2d7
    .line 567
    .end local v13    # "child":Landroid/view/View;
    .end local v16    # "childWidth":I
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_22
    if-eqz v26, :cond_27

    #@2d9
    .line 570
    move-object/from16 v0, p0

    #@2db
    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    #@2dd
    add-int v19, v19, v4

    #@2df
    .line 572
    move-object/from16 v0, p0

    #@2e1
    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@2e3
    if-eqz v4, :cond_23

    #@2e5
    move-object/from16 v0, p0

    #@2e7
    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@2e9
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@2eb
    if-ltz v4, :cond_23

    #@2ed
    .line 573
    move-object/from16 v0, p0

    #@2ef
    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@2f1
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@2f3
    move/from16 v0, v19

    #@2f5
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@2f8
    move-result v19

    #@2f9
    .line 576
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumHeight()I

    #@2fc
    move-result v4

    #@2fd
    move/from16 v0, v19

    #@2ff
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@302
    move-result v19

    #@303
    .line 577
    move/from16 v0, v19

    #@305
    move/from16 v1, p2

    #@307
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    #@30a
    move-result v19

    #@30b
    .line 579
    if-eqz v32, :cond_27

    #@30d
    .line 580
    const/16 v24, 0x0

    #@30f
    :goto_c
    move/from16 v0, v24

    #@311
    move/from16 v1, v17

    #@313
    if-ge v0, v1, :cond_27

    #@315
    .line 581
    aget-object v13, v41, v24

    #@317
    .line 582
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    #@31a
    move-result v4

    #@31b
    const/16 v5, 0x8

    #@31d
    if-eq v4, v5, :cond_25

    #@31f
    .line 583
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@322
    move-result-object v34

    #@323
    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    #@325
    .line 584
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    #@327
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    #@32a
    move-result-object v36

    #@32b
    .line 585
    .restart local v36    # "rules":[I
    const/16 v4, 0xd

    #@32d
    aget v4, v36, v4

    #@32f
    if-nez v4, :cond_24

    #@331
    const/16 v4, 0xf

    #@333
    aget v4, v36, v4

    #@335
    if-eqz v4, :cond_26

    #@337
    .line 586
    :cond_24
    move-object/from16 v0, v34

    #@339
    move/from16 v1, v19

    #@33b
    invoke-static {v13, v0, v1}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    #@33e
    .line 580
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_25
    :goto_d
    add-int/lit8 v24, v24, 0x1

    #@340
    goto :goto_c

    #@341
    .line 587
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v36    # "rules":[I
    :cond_26
    const/16 v4, 0xc

    #@343
    aget v4, v36, v4

    #@345
    if-eqz v4, :cond_25

    #@347
    .line 588
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    #@34a
    move-result v14

    #@34b
    .line 589
    .local v14, "childHeight":I
    move-object/from16 v0, p0

    #@34d
    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    #@34f
    sub-int v4, v19, v4

    #@351
    sub-int/2addr v4, v14

    #@352
    move-object/from16 v0, v34

    #@354
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@357
    .line 590
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@35a
    move-result v4

    #@35b
    add-int/2addr v4, v14

    #@35c
    move-object/from16 v0, v34

    #@35e
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@361
    goto :goto_d

    #@362
    .line 597
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "childHeight":I
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_27
    if-nez v22, :cond_28

    #@364
    if-eqz v39, :cond_2c

    #@366
    .line 598
    :cond_28
    move-object/from16 v0, p0

    #@368
    iget-object v7, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    #@36a
    .line 599
    .local v7, "selfBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@36c
    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    #@36e
    move-object/from16 v0, p0

    #@370
    iget v5, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    #@372
    move-object/from16 v0, p0

    #@374
    iget v6, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    #@376
    sub-int v6, v42, v6

    #@378
    .line 600
    move-object/from16 v0, p0

    #@37a
    iget v0, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    #@37c
    move/from16 v45, v0

    #@37e
    sub-int v45, v19, v45

    #@380
    .line 599
    move/from16 v0, v45

    #@382
    invoke-virtual {v7, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@385
    .line 602
    move-object/from16 v0, p0

    #@387
    iget-object v8, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    #@389
    .line 603
    .local v8, "contentBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@38b
    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    #@38d
    sub-int v5, v35, v28

    #@38f
    sub-int v6, v12, v38

    #@391
    invoke-static/range {v4 .. v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@394
    .line 606
    iget v4, v8, Landroid/graphics/Rect;->left:I

    #@396
    sub-int v23, v4, v28

    #@398
    .line 607
    .local v23, "horizontalOffset":I
    iget v4, v8, Landroid/graphics/Rect;->top:I

    #@39a
    sub-int v40, v4, v38

    #@39c
    .line 608
    .local v40, "verticalOffset":I
    if-nez v23, :cond_29

    #@39e
    if-eqz v40, :cond_2c

    #@3a0
    .line 609
    :cond_29
    const/16 v24, 0x0

    #@3a2
    :goto_e
    move/from16 v0, v24

    #@3a4
    move/from16 v1, v17

    #@3a6
    if-ge v0, v1, :cond_2c

    #@3a8
    .line 610
    aget-object v13, v41, v24

    #@3aa
    .line 611
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    #@3ad
    move-result v4

    #@3ae
    const/16 v5, 0x8

    #@3b0
    if-eq v4, v5, :cond_2b

    #@3b2
    move-object/from16 v0, v25

    #@3b4
    if-eq v13, v0, :cond_2b

    #@3b6
    .line 612
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3b9
    move-result-object v34

    #@3ba
    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    #@3bc
    .line 613
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v22, :cond_2a

    #@3be
    .line 614
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@3c1
    move-result v4

    #@3c2
    add-int v4, v4, v23

    #@3c4
    move-object/from16 v0, v34

    #@3c6
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@3c9
    .line 615
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@3cc
    move-result v4

    #@3cd
    add-int v4, v4, v23

    #@3cf
    move-object/from16 v0, v34

    #@3d1
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@3d4
    .line 617
    :cond_2a
    if-eqz v39, :cond_2b

    #@3d6
    .line 618
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@3d9
    move-result v4

    #@3da
    add-int v4, v4, v40

    #@3dc
    move-object/from16 v0, v34

    #@3de
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@3e1
    .line 619
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@3e4
    move-result v4

    #@3e5
    add-int v4, v4, v40

    #@3e7
    move-object/from16 v0, v34

    #@3e9
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@3ec
    .line 609
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2b
    add-int/lit8 v24, v24, 0x1

    #@3ee
    goto :goto_e

    #@3ef
    .line 626
    .end local v7    # "selfBounds":Landroid/graphics/Rect;
    .end local v8    # "contentBounds":Landroid/graphics/Rect;
    .end local v13    # "child":Landroid/view/View;
    .end local v23    # "horizontalOffset":I
    .end local v40    # "verticalOffset":I
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    #@3f2
    move-result v4

    #@3f3
    if-eqz v4, :cond_2e

    #@3f5
    .line 627
    sub-int v33, v30, v42

    #@3f7
    .line 628
    .local v33, "offsetWidth":I
    const/16 v24, 0x0

    #@3f9
    :goto_f
    move/from16 v0, v24

    #@3fb
    move/from16 v1, v17

    #@3fd
    if-ge v0, v1, :cond_2e

    #@3ff
    .line 629
    aget-object v13, v41, v24

    #@401
    .line 630
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    #@404
    move-result v4

    #@405
    const/16 v5, 0x8

    #@407
    if-eq v4, v5, :cond_2d

    #@409
    .line 631
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@40c
    move-result-object v34

    #@40d
    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    #@40f
    .line 632
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@412
    move-result v4

    #@413
    sub-int v4, v4, v33

    #@415
    move-object/from16 v0, v34

    #@417
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@41a
    .line 633
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    #@41d
    move-result v4

    #@41e
    sub-int v4, v4, v33

    #@420
    move-object/from16 v0, v34

    #@422
    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    #@425
    .line 628
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2d
    add-int/lit8 v24, v24, 0x1

    #@427
    goto :goto_f

    #@428
    .line 638
    .end local v13    # "child":Landroid/view/View;
    .end local v33    # "offsetWidth":I
    :cond_2e
    move-object/from16 v0, p0

    #@42a
    move/from16 v1, v42

    #@42c
    move/from16 v2, v19

    #@42e
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    #@431
    .line 386
    return-void
.end method

.method public requestLayout()V
    .locals 1

    #@0
    .prologue
    .line 360
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@3
    .line 361
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    #@6
    .line 359
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 321
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    #@2
    if-eq v0, p1, :cond_2

    #@4
    .line 322
    const v0, 0x800007

    #@7
    and-int/2addr v0, p1

    #@8
    if-nez v0, :cond_0

    #@a
    .line 323
    const v0, 0x800003

    #@d
    or-int/2addr p1, v0

    #@e
    .line 326
    :cond_0
    and-int/lit8 v0, p1, 0x70

    #@10
    if-nez v0, :cond_1

    #@12
    .line 327
    or-int/lit8 p1, p1, 0x30

    #@14
    .line 330
    :cond_1
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    #@16
    .line 331
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    #@19
    .line 320
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const v2, 0x800007

    #@3
    .line 337
    and-int v0, p1, v2

    #@5
    .line 338
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    #@7
    and-int/2addr v1, v2

    #@8
    if-eq v1, v0, :cond_0

    #@a
    .line 339
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    #@c
    const v2, -0x800008

    #@f
    and-int/2addr v1, v2

    #@10
    or-int/2addr v1, v0

    #@11
    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    #@13
    .line 340
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    #@16
    .line 336
    :cond_0
    return-void
.end method

.method public setIgnoreGravity(I)V
    .locals 0
    .param p1, "viewId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 286
    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    #@2
    .line 285
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 346
    and-int/lit8 v0, p1, 0x70

    #@2
    .line 347
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    #@4
    and-int/lit8 v1, v1, 0x70

    #@6
    if-eq v1, v0, :cond_0

    #@8
    .line 348
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    #@a
    and-int/lit8 v1, v1, -0x71

    #@c
    or-int/2addr v1, v0

    #@d
    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    #@f
    .line 349
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    #@12
    .line 345
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    #@0
    .prologue
    .line 270
    const/4 v0, 0x0

    #@1
    return v0
.end method
