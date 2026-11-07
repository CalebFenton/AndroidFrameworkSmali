.class public final Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionItemInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;
    }
.end annotation


# instance fields
.field private greylist-max-o mColumnIndex:I

.field private greylist-max-o mColumnSpan:I

.field private blacklist mColumnTitle:Ljava/lang/String;

.field private greylist-max-o mHeading:Z

.field private greylist-max-o mRowIndex:I

.field private greylist-max-o mRowSpan:I

.field private blacklist mRowTitle:Ljava/lang/String;

.field private greylist-max-o mSelected:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmColumnIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmColumnSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmColumnTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeading(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRowIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRowSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRowTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelected(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmColumnIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmColumnSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmColumnTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHeading(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRowIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRowSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRowTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelected(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 7535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7537
    return-void
.end method

.method public constructor whitelist <init>(IIIIZ)V
    .registers 13
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnIndex"    # I
    .param p4, "columnSpan"    # I
    .param p5, "heading"    # Z

    .line 7550
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "rowIndex":I
    .end local p2    # "rowSpan":I
    .end local p3    # "columnIndex":I
    .end local p4    # "columnSpan":I
    .end local p5    # "heading":Z
    .local v1, "rowIndex":I
    .local v2, "rowSpan":I
    .local v3, "columnIndex":I
    .local v4, "columnSpan":I
    .local v5, "heading":Z
    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZZ)V

    .line 7551
    return-void
.end method

.method public constructor whitelist <init>(IIIIZZ)V
    .registers 16
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnIndex"    # I
    .param p4, "columnSpan"    # I
    .param p5, "heading"    # Z
    .param p6, "selected"    # Z

    .line 7565
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .end local p1    # "rowIndex":I
    .end local p2    # "rowSpan":I
    .end local p3    # "columnIndex":I
    .end local p4    # "columnSpan":I
    .end local p5    # "heading":Z
    .end local p6    # "selected":Z
    .local v2, "rowIndex":I
    .local v3, "rowSpan":I
    .local v5, "columnIndex":I
    .local v6, "columnSpan":I
    .local v7, "heading":Z
    .local v8, "selected":Z
    invoke-direct/range {v0 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZ)V

    .line 7567
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/accessibility/AccessibilityNodeInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;IIZZ)V
    .registers 9
    .param p1, "rowTitle"    # Ljava/lang/String;
    .param p2, "rowIndex"    # I
    .param p3, "rowSpan"    # I
    .param p4, "columnTitle"    # Ljava/lang/String;
    .param p5, "columnIndex"    # I
    .param p6, "columnSpan"    # I
    .param p7, "heading"    # Z
    .param p8, "selected"    # Z

    .line 7584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7585
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    .line 7586
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    .line 7587
    iput p5, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    .line 7588
    iput p6, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    .line 7589
    iput-boolean p7, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    .line 7590
    iput-boolean p8, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    .line 7591
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    .line 7592
    iput-object p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    .line 7593
    return-void
.end method

.method private greylist-max-o clear()V
    .registers 2

    .line 7681
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    .line 7682
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    .line 7683
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    .line 7684
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    .line 7685
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    .line 7686
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    .line 7687
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    .line 7688
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    .line 7689
    return-void
.end method

.method public static whitelist obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 12
    .param p0, "rowIndex"    # I
    .param p1, "rowSpan"    # I
    .param p2, "columnIndex"    # I
    .param p3, "columnSpan"    # I
    .param p4, "heading"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7472
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    const/4 v6, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p0    # "rowIndex":I
    .end local p1    # "rowSpan":I
    .end local p2    # "columnIndex":I
    .end local p3    # "columnSpan":I
    .end local p4    # "heading":Z
    .local v1, "rowIndex":I
    .local v2, "rowSpan":I
    .local v3, "columnIndex":I
    .local v4, "columnSpan":I
    .local v5, "heading":Z
    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZZ)V

    return-object v0
.end method

.method public static whitelist obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 13
    .param p0, "rowIndex"    # I
    .param p1, "rowSpan"    # I
    .param p2, "columnIndex"    # I
    .param p3, "columnSpan"    # I
    .param p4, "heading"    # Z
    .param p5, "selected"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7494
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p0    # "rowIndex":I
    .end local p1    # "rowSpan":I
    .end local p2    # "columnIndex":I
    .end local p3    # "columnSpan":I
    .end local p4    # "heading":Z
    .end local p5    # "selected":Z
    .local v1, "rowIndex":I
    .local v2, "rowSpan":I
    .local v3, "columnIndex":I
    .local v4, "columnSpan":I
    .local v5, "heading":Z
    .local v6, "selected":Z
    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZZ)V

    return-object v0
.end method

.method public static greylist-max-o obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 10
    .param p0, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7450
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    iget v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    iget-boolean v7, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    iget-boolean v8, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    invoke-direct/range {v0 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZ)V

    return-object v0
.end method

.method public static greylist obtain(Ljava/lang/String;IILjava/lang/String;IIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 17
    .param p0, "rowTitle"    # Ljava/lang/String;
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnTitle"    # Ljava/lang/String;
    .param p4, "columnIndex"    # I
    .param p5, "columnSpan"    # I
    .param p6, "heading"    # Z
    .param p7, "selected"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7522
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZ)V

    return-object v0
.end method


# virtual methods
.method public whitelist getColumnIndex()I
    .registers 2

    .line 7601
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    return v0
.end method

.method public whitelist getColumnSpan()I
    .registers 2

    .line 7619
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    return v0
.end method

.method public whitelist getColumnTitle()Ljava/lang/String;
    .registers 2

    .line 7668
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRowIndex()I
    .registers 2

    .line 7610
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    return v0
.end method

.method public whitelist getRowSpan()I
    .registers 2

    .line 7628
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    return v0
.end method

.method public whitelist getRowTitle()Ljava/lang/String;
    .registers 2

    .line 7658
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isHeading()Z
    .registers 2

    .line 7639
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    return v0
.end method

.method public whitelist isSelected()Z
    .registers 2

    .line 7648
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    return v0
.end method

.method greylist-max-o recycle()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7678
    return-void
.end method
