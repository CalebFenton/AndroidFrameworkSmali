.class final Landroid/widget/GridLayout$Axis;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Axis"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final COMPLETE:I = 0x2

.field private static final NEW:I = 0x0

.field private static final PENDING:I = 0x1


# instance fields
.field final synthetic $assertionsDisabled:Z

.field public arcs:[Landroid/widget/GridLayout$Arc;

.field public arcsValid:Z

.field backwardLinks:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public backwardLinksValid:Z

.field public definedCount:I

.field public deltas:[I

.field forwardLinks:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public forwardLinksValid:Z

.field groupBounds:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation
.end field

.field public groupBoundsValid:Z

.field public hasWeights:Z

.field public hasWeightsValid:Z

.field public final horizontal:Z

.field public leadingMargins:[I

.field public leadingMarginsValid:Z

.field public locations:[I

.field public locationsValid:Z

.field private maxIndex:I

.field orderPreserved:Z

.field private parentMax:Landroid/widget/GridLayout$MutableInt;

.field private parentMin:Landroid/widget/GridLayout$MutableInt;

.field final synthetic this$0:Landroid/widget/GridLayout;

.field public trailingMargins:[I

.field public trailingMarginsValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/widget/GridLayout$Axis;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/widget/GridLayout$Axis;->-assertionsDisabled:Z

    #@b
    .line 1198
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>(Landroid/widget/GridLayout;Z)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/GridLayout;
    .param p2, "horizontal"    # Z

    #@0
    .prologue
    const/high16 v0, -0x80000000

    #@2
    const/4 v1, 0x0

    #@3
    .line 1238
    iput-object p1, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 1205
    iput v0, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    #@a
    .line 1206
    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    #@c
    .line 1209
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    #@e
    .line 1212
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    #@10
    .line 1215
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    #@12
    .line 1218
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    #@14
    .line 1221
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    #@16
    .line 1224
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    #@18
    .line 1227
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    #@1a
    .line 1230
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->hasWeightsValid:Z

    #@1c
    .line 1233
    const/4 v0, 0x1

    #@1d
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    #@1f
    .line 1235
    new-instance v0, Landroid/widget/GridLayout$MutableInt;

    #@21
    invoke-direct {v0, v1}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    #@24
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    #@26
    .line 1236
    new-instance v0, Landroid/widget/GridLayout$MutableInt;

    #@28
    const v1, -0x186a0

    #@2b
    invoke-direct {v0, v1}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    #@2e
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    #@30
    .line 1239
    iput-boolean p2, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    #@32
    .line 1238
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$Axis;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/GridLayout;
    .param p2, "horizontal"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;Z)V

    #@3
    return-void
.end method

.method private addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1469
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    .local p2, "links":Landroid/widget/GridLayout$PackedMap;, "Landroid/widget/GridLayout$PackedMap<Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    #@3
    check-cast v2, [Landroid/widget/GridLayout$Interval;

    #@5
    array-length v2, v2

    #@6
    if-ge v0, v2, :cond_0

    #@8
    .line 1470
    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    #@a
    check-cast v2, [Landroid/widget/GridLayout$Interval;

    #@c
    aget-object v1, v2, v0

    #@e
    .line 1471
    .local v1, "key":Landroid/widget/GridLayout$Interval;
    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    #@10
    check-cast v2, [Landroid/widget/GridLayout$MutableInt;

    #@12
    aget-object v2, v2, v0

    #@14
    const/4 v3, 0x0

    #@15
    invoke-direct {p0, p1, v1, v2, v3}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    #@18
    .line 1469
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1468
    .end local v1    # "key":Landroid/widget/GridLayout$Interval;
    :cond_0
    return-void
.end method

.method private arcsToString(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 1543
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    iget-boolean v8, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    #@2
    if-eqz v8, :cond_0

    #@4
    const-string/jumbo v7, "x"

    #@7
    .line 1544
    .local v7, "var":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    .line 1545
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    #@d
    .line 1546
    .local v3, "first":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "arc$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v8

    #@15
    if-eqz v8, :cond_3

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/widget/GridLayout$Arc;

    #@1d
    .line 1547
    .local v0, "arc":Landroid/widget/GridLayout$Arc;
    if-eqz v3, :cond_1

    #@1f
    .line 1548
    const/4 v3, 0x0

    #@20
    .line 1552
    :goto_2
    iget-object v8, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    #@22
    iget v5, v8, Landroid/widget/GridLayout$Interval;->min:I

    #@24
    .line 1553
    .local v5, "src":I
    iget-object v8, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    #@26
    iget v2, v8, Landroid/widget/GridLayout$Interval;->max:I

    #@28
    .line 1554
    .local v2, "dst":I
    iget-object v8, v0, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    #@2a
    iget v6, v8, Landroid/widget/GridLayout$MutableInt;->value:I

    #@2c
    .line 1555
    .local v6, "value":I
    if-ge v5, v2, :cond_2

    #@2e
    .line 1556
    new-instance v8, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v8

    #@37
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v8

    #@3b
    const-string/jumbo v9, "-"

    #@3e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v8

    #@42
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v8

    #@46
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v8

    #@4a
    const-string/jumbo v9, ">="

    #@4d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v8

    #@51
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v8

    #@55
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v8

    #@59
    .line 1555
    :goto_3
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    goto :goto_1

    #@5d
    .line 1543
    .end local v0    # "arc":Landroid/widget/GridLayout$Arc;
    .end local v1    # "arc$iterator":Ljava/util/Iterator;
    .end local v2    # "dst":I
    .end local v3    # "first":Z
    .end local v4    # "result":Ljava/lang/StringBuilder;
    .end local v5    # "src":I
    .end local v6    # "value":I
    .end local v7    # "var":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "y"

    #@60
    .restart local v7    # "var":Ljava/lang/String;
    goto :goto_0

    #@61
    .line 1550
    .restart local v0    # "arc":Landroid/widget/GridLayout$Arc;
    .restart local v1    # "arc$iterator":Ljava/util/Iterator;
    .restart local v3    # "first":Z
    .restart local v4    # "result":Ljava/lang/StringBuilder;
    :cond_1
    const-string/jumbo v8, ", "

    #@64
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    goto :goto_2

    #@69
    .line 1557
    .restart local v2    # "dst":I
    .restart local v5    # "src":I
    .restart local v6    # "value":I
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v8

    #@72
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v8

    #@76
    const-string/jumbo v9, "-"

    #@79
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v8

    #@7d
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v8

    #@81
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v8

    #@85
    const-string/jumbo v9, "<="

    #@88
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v8

    #@8c
    neg-int v9, v6

    #@8d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    move-result-object v8

    #@91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v8

    #@95
    goto :goto_3

    #@96
    .line 1560
    .end local v0    # "arc":Landroid/widget/GridLayout$Arc;
    .end local v2    # "dst":I
    .end local v5    # "src":I
    .end local v6    # "value":I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v8

    #@9a
    return-object v8
.end method

.method private calculateMaxIndex()I
    .locals 8

    #@0
    .prologue
    .line 1244
    const/4 v4, -0x1

    #@1
    .line 1245
    .local v4, "result":I
    const/4 v2, 0x0

    #@2
    .local v2, "i":I
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@4
    invoke-virtual {v7}, Landroid/widget/GridLayout;->getChildCount()I

    #@7
    move-result v0

    #@8
    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@a
    .line 1246
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@c
    invoke-virtual {v7, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v1

    #@10
    .line 1247
    .local v1, "c":Landroid/view/View;
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@12
    invoke-virtual {v7, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    #@15
    move-result-object v3

    #@16
    .line 1248
    .local v3, "params":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v7, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    #@18
    if-eqz v7, :cond_0

    #@1a
    iget-object v6, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@1c
    .line 1249
    .local v6, "spec":Landroid/widget/GridLayout$Spec;
    :goto_1
    iget-object v5, v6, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@1e
    .line 1250
    .local v5, "span":Landroid/widget/GridLayout$Interval;
    iget v7, v5, Landroid/widget/GridLayout$Interval;->min:I

    #@20
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    #@23
    move-result v4

    #@24
    .line 1251
    iget v7, v5, Landroid/widget/GridLayout$Interval;->max:I

    #@26
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    #@29
    move-result v4

    #@2a
    .line 1252
    invoke-virtual {v5}, Landroid/widget/GridLayout$Interval;->size()I

    #@2d
    move-result v7

    #@2e
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    #@31
    move-result v4

    #@32
    .line 1245
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_0

    #@35
    .line 1248
    .end local v5    # "span":Landroid/widget/GridLayout$Interval;
    .end local v6    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_0
    iget-object v6, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@37
    goto :goto_1

    #@38
    .line 1254
    .end local v1    # "c":Landroid/view/View;
    .end local v3    # "params":Landroid/widget/GridLayout$LayoutParams;
    :cond_1
    const/4 v7, -0x1

    #@39
    if-ne v4, v7, :cond_2

    #@3b
    const/high16 v4, -0x80000000

    #@3d
    .end local v4    # "result":I
    :cond_2
    return v4
.end method

.method private calculateTotalWeight()F
    .locals 8

    #@0
    .prologue
    .line 1783
    const/4 v5, 0x0

    #@1
    .line 1784
    .local v5, "totalWeight":F
    const/4 v2, 0x0

    #@2
    .local v2, "i":I
    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@4
    invoke-virtual {v6}, Landroid/widget/GridLayout;->getChildCount()I

    #@7
    move-result v0

    #@8
    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@a
    .line 1785
    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@c
    invoke-virtual {v6, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v1

    #@10
    .line 1786
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@13
    move-result v6

    #@14
    const/16 v7, 0x8

    #@16
    if-ne v6, v7, :cond_0

    #@18
    .line 1784
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1789
    :cond_0
    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@1d
    invoke-virtual {v6, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    #@20
    move-result-object v3

    #@21
    .line 1790
    .local v3, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v6, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    #@23
    if-eqz v6, :cond_1

    #@25
    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@27
    .line 1791
    .local v4, "spec":Landroid/widget/GridLayout$Spec;
    :goto_2
    iget v6, v4, Landroid/widget/GridLayout$Spec;->weight:F

    #@29
    add-float/2addr v5, v6

    #@2a
    goto :goto_1

    #@2b
    .line 1790
    .end local v4    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_1
    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@2d
    goto :goto_2

    #@2e
    .line 1793
    .end local v1    # "c":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_2
    return v5
.end method

.method private computeArcs()V
    .locals 0

    #@0
    .prologue
    .line 1507
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getForwardLinks()Landroid/widget/GridLayout$PackedMap;

    #@3
    .line 1508
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getBackwardLinks()Landroid/widget/GridLayout$PackedMap;

    #@6
    .line 1505
    return-void
.end method

.method private computeGroupBounds()V
    .locals 10

    #@0
    .prologue
    .line 1300
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    #@2
    iget-object v9, v0, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    #@4
    check-cast v9, [Landroid/widget/GridLayout$Bounds;

    #@6
    .line 1301
    .local v9, "values":[Landroid/widget/GridLayout$Bounds;
    const/4 v7, 0x0

    #@7
    .local v7, "i":I
    :goto_0
    array-length v0, v9

    #@8
    if-ge v7, v0, :cond_0

    #@a
    .line 1302
    aget-object v0, v9, v7

    #@c
    invoke-virtual {v0}, Landroid/widget/GridLayout$Bounds;->reset()V

    #@f
    .line 1301
    add-int/lit8 v7, v7, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1304
    :cond_0
    const/4 v7, 0x0

    #@13
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@15
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    #@18
    move-result v6

    #@19
    .local v6, "N":I
    :goto_1
    if-ge v7, v6, :cond_3

    #@1b
    .line 1305
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@1d
    invoke-virtual {v0, v7}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v2

    #@21
    .line 1307
    .local v2, "c":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@23
    invoke-virtual {v0, v2}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    #@26
    move-result-object v8

    #@27
    .line 1308
    .local v8, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    #@29
    if-eqz v0, :cond_1

    #@2b
    iget-object v3, v8, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@2d
    .line 1309
    .local v3, "spec":Landroid/widget/GridLayout$Spec;
    :goto_2
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@2f
    iget-boolean v1, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    #@31
    invoke-virtual {v0, v2, v1}, Landroid/widget/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    #@34
    move-result v1

    #@35
    .line 1310
    iget v0, v3, Landroid/widget/GridLayout$Spec;->weight:F

    #@37
    const/4 v4, 0x0

    #@38
    cmpl-float v0, v0, v4

    #@3a
    if-nez v0, :cond_2

    #@3c
    const/4 v0, 0x0

    #@3d
    .line 1309
    :goto_3
    add-int v5, v1, v0

    #@3f
    .line 1311
    .local v5, "size":I
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    #@41
    invoke-virtual {v0, v7}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/widget/GridLayout$Bounds;

    #@47
    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@49
    move-object v4, p0

    #@4a
    invoke-virtual/range {v0 .. v5}, Landroid/widget/GridLayout$Bounds;->include(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Axis;I)V

    #@4d
    .line 1304
    add-int/lit8 v7, v7, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 1308
    .end local v3    # "spec":Landroid/widget/GridLayout$Spec;
    .end local v5    # "size":I
    :cond_1
    iget-object v3, v8, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@52
    .restart local v3    # "spec":Landroid/widget/GridLayout$Spec;
    goto :goto_2

    #@53
    .line 1310
    :cond_2
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getDeltas()[I

    #@56
    move-result-object v0

    #@57
    aget v0, v0, v7

    #@59
    goto :goto_3

    #@5a
    .line 1299
    .end local v2    # "c":Landroid/view/View;
    .end local v3    # "spec":Landroid/widget/GridLayout$Spec;
    .end local v8    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method private computeHasWeights()Z
    .locals 7

    #@0
    .prologue
    .line 1697
    const/4 v2, 0x0

    #@1
    .local v2, "i":I
    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@3
    invoke-virtual {v5}, Landroid/widget/GridLayout;->getChildCount()I

    #@6
    move-result v0

    #@7
    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@9
    .line 1698
    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@b
    invoke-virtual {v5, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v1

    #@f
    .line 1699
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@12
    move-result v5

    #@13
    const/16 v6, 0x8

    #@15
    if-ne v5, v6, :cond_1

    #@17
    .line 1697
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1702
    :cond_1
    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@1c
    invoke-virtual {v5, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    #@1f
    move-result-object v3

    #@20
    .line 1703
    .local v3, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v5, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    #@22
    if-eqz v5, :cond_2

    #@24
    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@26
    .line 1704
    .local v4, "spec":Landroid/widget/GridLayout$Spec;
    :goto_1
    iget v5, v4, Landroid/widget/GridLayout$Spec;->weight:F

    #@28
    const/4 v6, 0x0

    #@29
    cmpl-float v5, v5, v6

    #@2b
    if-eqz v5, :cond_0

    #@2d
    .line 1705
    const/4 v5, 0x1

    #@2e
    return v5

    #@2f
    .line 1703
    .end local v4    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_2
    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@31
    goto :goto_1

    #@32
    .line 1708
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_3
    const/4 v5, 0x0

    #@33
    return v5
.end method

.method private computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V
    .locals 6
    .param p2, "min"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1338
    .local p1, "links":Landroid/widget/GridLayout$PackedMap;, "Landroid/widget/GridLayout$PackedMap<Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;>;"
    iget-object v3, p1, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    #@2
    check-cast v3, [Landroid/widget/GridLayout$MutableInt;

    #@4
    .line 1339
    .local v3, "spans":[Landroid/widget/GridLayout$MutableInt;
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    array-length v5, v3

    #@6
    if-ge v1, v5, :cond_0

    #@8
    .line 1340
    aget-object v5, v3, v1

    #@a
    invoke-virtual {v5}, Landroid/widget/GridLayout$MutableInt;->reset()V

    #@d
    .line 1339
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 1344
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    #@13
    move-result-object v5

    #@14
    iget-object v0, v5, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    #@16
    check-cast v0, [Landroid/widget/GridLayout$Bounds;

    #@18
    .line 1345
    .local v0, "bounds":[Landroid/widget/GridLayout$Bounds;
    const/4 v1, 0x0

    #@19
    :goto_1
    array-length v5, v0

    #@1a
    if-ge v1, v5, :cond_2

    #@1c
    .line 1346
    aget-object v5, v0, v1

    #@1e
    invoke-virtual {v5, p2}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    #@21
    move-result v2

    #@22
    .line 1347
    .local v2, "size":I
    invoke-virtual {p1, v1}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Landroid/widget/GridLayout$MutableInt;

    #@28
    .line 1349
    .local v4, "valueHolder":Landroid/widget/GridLayout$MutableInt;
    iget v5, v4, Landroid/widget/GridLayout$MutableInt;->value:I

    #@2a
    if-eqz p2, :cond_1

    #@2c
    .end local v2    # "size":I
    :goto_2
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    #@2f
    move-result v5

    #@30
    iput v5, v4, Landroid/widget/GridLayout$MutableInt;->value:I

    #@32
    .line 1345
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_1

    #@35
    .line 1349
    .restart local v2    # "size":I
    :cond_1
    neg-int v2, v2

    #@36
    goto :goto_2

    #@37
    .line 1337
    .end local v2    # "size":I
    .end local v4    # "valueHolder":Landroid/widget/GridLayout$MutableInt;
    :cond_2
    return-void
.end method

.method private computeLocations([I)V
    .locals 4
    .param p1, "a"    # [I

    #@0
    .prologue
    .line 1797
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->hasWeights()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 1798
    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->solve([I)Z

    #@9
    .line 1802
    :goto_0
    iget-boolean v3, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    #@b
    if-nez v3, :cond_1

    #@d
    .line 1809
    const/4 v3, 0x0

    #@e
    aget v1, p1, v3

    #@10
    .line 1810
    .local v1, "a0":I
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    array-length v0, p1

    #@12
    .local v0, "N":I
    :goto_1
    if-ge v2, v0, :cond_1

    #@14
    .line 1811
    aget v3, p1, v2

    #@16
    sub-int/2addr v3, v1

    #@17
    aput v3, p1, v2

    #@19
    .line 1810
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_1

    #@1c
    .line 1800
    .end local v0    # "N":I
    .end local v1    # "a0":I
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->solveAndDistributeSpace([I)V

    #@1f
    goto :goto_0

    #@20
    .line 1796
    :cond_1
    return-void
.end method

.method private computeMargins(Z)V
    .locals 11
    .param p1, "leading"    # Z

    #@0
    .prologue
    .line 1656
    if-eqz p1, :cond_0

    #@2
    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    #@4
    .line 1657
    .local v5, "margins":[I
    :goto_0
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    iget-object v8, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@7
    invoke-virtual {v8}, Landroid/widget/GridLayout;->getChildCount()I

    #@a
    move-result v0

    #@b
    .local v0, "N":I
    :goto_1
    if-ge v2, v0, :cond_4

    #@d
    .line 1658
    iget-object v8, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@f
    invoke-virtual {v8, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v1

    #@13
    .line 1659
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@16
    move-result v8

    #@17
    const/16 v9, 0x8

    #@19
    if-ne v8, v9, :cond_1

    #@1b
    .line 1657
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_1

    #@1e
    .line 1656
    .end local v0    # "N":I
    .end local v1    # "c":Landroid/view/View;
    .end local v2    # "i":I
    .end local v5    # "margins":[I
    :cond_0
    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    #@20
    .restart local v5    # "margins":[I
    goto :goto_0

    #@21
    .line 1660
    .restart local v0    # "N":I
    .restart local v1    # "c":Landroid/view/View;
    .restart local v2    # "i":I
    :cond_1
    iget-object v8, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@23
    invoke-virtual {v8, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    #@26
    move-result-object v4

    #@27
    .line 1661
    .local v4, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v8, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    #@29
    if-eqz v8, :cond_2

    #@2b
    iget-object v7, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@2d
    .line 1662
    .local v7, "spec":Landroid/widget/GridLayout$Spec;
    :goto_3
    iget-object v6, v7, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@2f
    .line 1663
    .local v6, "span":Landroid/widget/GridLayout$Interval;
    if-eqz p1, :cond_3

    #@31
    iget v3, v6, Landroid/widget/GridLayout$Interval;->min:I

    #@33
    .line 1664
    .local v3, "index":I
    :goto_4
    aget v8, v5, v3

    #@35
    iget-object v9, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@37
    iget-boolean v10, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    #@39
    invoke-virtual {v9, v1, v10, p1}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    #@3c
    move-result v9

    #@3d
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    #@40
    move-result v8

    #@41
    aput v8, v5, v3

    #@43
    goto :goto_2

    #@44
    .line 1661
    .end local v3    # "index":I
    .end local v6    # "span":Landroid/widget/GridLayout$Interval;
    .end local v7    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_2
    iget-object v7, v4, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@46
    goto :goto_3

    #@47
    .line 1663
    .restart local v6    # "span":Landroid/widget/GridLayout$Interval;
    .restart local v7    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_3
    iget v3, v6, Landroid/widget/GridLayout$Interval;->max:I

    #@49
    goto :goto_4

    #@4a
    .line 1655
    .end local v1    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v6    # "span":Landroid/widget/GridLayout$Interval;
    .end local v7    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_4
    return-void
.end method

.method private createArcs()[Landroid/widget/GridLayout$Arc;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1476
    new-instance v3, Ljava/util/ArrayList;

    #@3
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 1477
    .local v3, "mins":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 1480
    .local v2, "maxs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getForwardLinks()Landroid/widget/GridLayout$PackedMap;

    #@e
    move-result-object v6

    #@f
    invoke-direct {p0, v3, v6}, Landroid/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V

    #@12
    .line 1482
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getBackwardLinks()Landroid/widget/GridLayout$PackedMap;

    #@15
    move-result-object v6

    #@16
    invoke-direct {p0, v2, v6}, Landroid/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V

    #@19
    .line 1485
    iget-boolean v6, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    #@1b
    if-eqz v6, :cond_0

    #@1d
    .line 1487
    const/4 v1, 0x0

    #@1e
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    #@21
    move-result v6

    #@22
    if-ge v1, v6, :cond_0

    #@24
    .line 1488
    new-instance v6, Landroid/widget/GridLayout$Interval;

    #@26
    add-int/lit8 v7, v1, 0x1

    #@28
    invoke-direct {v6, v1, v7}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    #@2b
    new-instance v7, Landroid/widget/GridLayout$MutableInt;

    #@2d
    invoke-direct {v7, v8}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    #@30
    invoke-direct {p0, v3, v6, v7}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V

    #@33
    .line 1487
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 1494
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    #@39
    move-result v0

    #@3a
    .line 1495
    .local v0, "N":I
    new-instance v6, Landroid/widget/GridLayout$Interval;

    #@3c
    invoke-direct {v6, v8, v0}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    #@3f
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    #@41
    invoke-direct {p0, v3, v6, v7, v8}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    #@44
    .line 1496
    new-instance v6, Landroid/widget/GridLayout$Interval;

    #@46
    invoke-direct {v6, v0, v8}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    #@49
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    #@4b
    invoke-direct {p0, v2, v6, v7, v8}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    #@4e
    .line 1499
    invoke-direct {p0, v3}, Landroid/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;

    #@51
    move-result-object v5

    #@52
    .line 1500
    .local v5, "sMins":[Landroid/widget/GridLayout$Arc;
    invoke-direct {p0, v2}, Landroid/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;

    #@55
    move-result-object v4

    #@56
    .line 1502
    .local v4, "sMaxs":[Landroid/widget/GridLayout$Arc;
    invoke-static {v5, v4}, Landroid/widget/GridLayout;->append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    #@59
    move-result-object v6

    #@5a
    check-cast v6, [Landroid/widget/GridLayout$Arc;

    #@5c
    return-object v6
.end method

.method private createGroupBounds()Landroid/widget/GridLayout$PackedMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1287
    const-class v7, Landroid/widget/GridLayout$Spec;

    #@2
    const-class v8, Landroid/widget/GridLayout$Bounds;

    #@4
    invoke-static {v7, v8}, Landroid/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/widget/GridLayout$Assoc;

    #@7
    move-result-object v1

    #@8
    .line 1288
    .local v1, "assoc":Landroid/widget/GridLayout$Assoc;, "Landroid/widget/GridLayout$Assoc<Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Bounds;>;"
    const/4 v4, 0x0

    #@9
    .local v4, "i":I
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@b
    invoke-virtual {v7}, Landroid/widget/GridLayout;->getChildCount()I

    #@e
    move-result v0

    #@f
    .local v0, "N":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@11
    .line 1289
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@13
    invoke-virtual {v7, v4}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v3

    #@17
    .line 1291
    .local v3, "c":Landroid/view/View;
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@19
    invoke-virtual {v7, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    #@1c
    move-result-object v5

    #@1d
    .line 1292
    .local v5, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v7, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    #@1f
    if-eqz v7, :cond_0

    #@21
    iget-object v6, v5, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@23
    .line 1293
    .local v6, "spec":Landroid/widget/GridLayout$Spec;
    :goto_1
    iget-boolean v7, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    #@25
    invoke-static {v6, v7}, Landroid/widget/GridLayout$Spec;->-wrap0(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7}, Landroid/widget/GridLayout$Alignment;->getBounds()Landroid/widget/GridLayout$Bounds;

    #@2c
    move-result-object v2

    #@2d
    .line 1294
    .local v2, "bounds":Landroid/widget/GridLayout$Bounds;
    invoke-virtual {v1, v6, v2}, Landroid/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@30
    .line 1288
    add-int/lit8 v4, v4, 0x1

    #@32
    goto :goto_0

    #@33
    .line 1292
    .end local v2    # "bounds":Landroid/widget/GridLayout$Bounds;
    .end local v6    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_0
    iget-object v6, v5, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@35
    .restart local v6    # "spec":Landroid/widget/GridLayout$Spec;
    goto :goto_1

    #@36
    .line 1296
    .end local v3    # "c":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v6    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/GridLayout$Assoc;->pack()Landroid/widget/GridLayout$PackedMap;

    #@39
    move-result-object v7

    #@3a
    return-object v7
.end method

.method private createLinks(Z)Landroid/widget/GridLayout$PackedMap;
    .locals 7
    .param p1, "min"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1328
    const-class v5, Landroid/widget/GridLayout$Interval;

    #@2
    const-class v6, Landroid/widget/GridLayout$MutableInt;

    #@4
    invoke-static {v5, v6}, Landroid/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/widget/GridLayout$Assoc;

    #@7
    move-result-object v3

    #@8
    .line 1329
    .local v3, "result":Landroid/widget/GridLayout$Assoc;, "Landroid/widget/GridLayout$Assoc<Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;>;"
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    #@b
    move-result-object v5

    #@c
    iget-object v2, v5, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    #@e
    check-cast v2, [Landroid/widget/GridLayout$Spec;

    #@10
    .line 1330
    .local v2, "keys":[Landroid/widget/GridLayout$Spec;
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    array-length v0, v2

    #@12
    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@14
    .line 1331
    if-eqz p1, :cond_0

    #@16
    aget-object v5, v2, v1

    #@18
    iget-object v4, v5, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@1a
    .line 1332
    .local v4, "span":Landroid/widget/GridLayout$Interval;
    :goto_1
    new-instance v5, Landroid/widget/GridLayout$MutableInt;

    #@1c
    invoke-direct {v5}, Landroid/widget/GridLayout$MutableInt;-><init>()V

    #@1f
    invoke-virtual {v3, v4, v5}, Landroid/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@22
    .line 1330
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1331
    .end local v4    # "span":Landroid/widget/GridLayout$Interval;
    :cond_0
    aget-object v5, v2, v1

    #@27
    iget-object v5, v5, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@29
    invoke-virtual {v5}, Landroid/widget/GridLayout$Interval;->inverse()Landroid/widget/GridLayout$Interval;

    #@2c
    move-result-object v4

    #@2d
    .restart local v4    # "span":Landroid/widget/GridLayout$Interval;
    goto :goto_1

    #@2e
    .line 1334
    .end local v4    # "span":Landroid/widget/GridLayout$Interval;
    :cond_1
    invoke-virtual {v3}, Landroid/widget/GridLayout$Assoc;->pack()Landroid/widget/GridLayout$PackedMap;

    #@31
    move-result-object v5

    #@32
    return-object v5
.end method

.method private getBackwardLinks()Landroid/widget/GridLayout$PackedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1365
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1366
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->createLinks(Z)Landroid/widget/GridLayout$PackedMap;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    #@b
    .line 1368
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    #@d
    if-nez v0, :cond_1

    #@f
    .line 1369
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    #@11
    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout$Axis;->computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V

    #@14
    .line 1370
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    #@17
    .line 1372
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    #@19
    return-object v0
.end method

.method private getForwardLinks()Landroid/widget/GridLayout$PackedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1354
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1355
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->createLinks(Z)Landroid/widget/GridLayout$PackedMap;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    #@b
    .line 1357
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    #@d
    if-nez v0, :cond_1

    #@f
    .line 1358
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    #@11
    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout$Axis;->computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V

    #@14
    .line 1359
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    #@16
    .line 1361
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    #@18
    return-object v0
.end method

.method private getMaxIndex()I
    .locals 2

    #@0
    .prologue
    .line 1258
    iget v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1259
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->calculateMaxIndex()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x0

    #@b
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    #@11
    .line 1261
    :cond_0
    iget v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    #@13
    return v0
.end method

.method private getMeasure(II)I
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I

    #@0
    .prologue
    .line 1842
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$Axis;->setParentConstraints(II)V

    #@3
    .line 1843
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->size([I)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private hasWeights()Z
    .locals 1

    #@0
    .prologue
    .line 1712
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeightsValid:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1713
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->computeHasWeights()Z

    #@7
    move-result v0

    #@8
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeights:Z

    #@a
    .line 1714
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeightsValid:Z

    #@d
    .line 1716
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeights:Z

    #@f
    return v0
.end method

.method private include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V
    .locals 1
    .param p2, "key"    # Landroid/widget/GridLayout$Interval;
    .param p3, "size"    # Landroid/widget/GridLayout$MutableInt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1400
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    #@4
    .line 1399
    return-void
.end method

.method private include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V
    .locals 4
    .param p2, "key"    # Landroid/widget/GridLayout$Interval;
    .param p3, "size"    # Landroid/widget/GridLayout$MutableInt;
    .param p4, "ignoreIfAlreadyPresent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            "Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1383
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    invoke-virtual {p2}, Landroid/widget/GridLayout$Interval;->size()I

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 1384
    return-void

    #@7
    .line 1388
    :cond_0
    if-eqz p4, :cond_2

    #@9
    .line 1389
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "arc$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_2

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/widget/GridLayout$Arc;

    #@19
    .line 1390
    .local v0, "arc":Landroid/widget/GridLayout$Arc;
    iget-object v2, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    #@1b
    .line 1391
    .local v2, "span":Landroid/widget/GridLayout$Interval;
    invoke-virtual {v2, p2}, Landroid/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 1392
    return-void

    #@22
    .line 1396
    .end local v0    # "arc":Landroid/widget/GridLayout$Arc;
    .end local v1    # "arc$iterator":Ljava/util/Iterator;
    .end local v2    # "span":Landroid/widget/GridLayout$Interval;
    :cond_2
    new-instance v3, Landroid/widget/GridLayout$Arc;

    #@24
    invoke-direct {v3, p2, p3}, Landroid/widget/GridLayout$Arc;-><init>(Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V

    #@27
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    .line 1376
    return-void
.end method

.method private init([I)V
    .locals 1
    .param p1, "locations"    # [I

    #@0
    .prologue
    .line 1539
    const/4 v0, 0x0

    #@1
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    #@4
    .line 1538
    return-void
.end method

.method private logError(Ljava/lang/String;[Landroid/widget/GridLayout$Arc;[Z)V
    .locals 7
    .param p1, "axisName"    # Ljava/lang/String;
    .param p2, "arcs"    # [Landroid/widget/GridLayout$Arc;
    .param p3, "culprits0"    # [Z

    #@0
    .prologue
    .line 1564
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1565
    .local v2, "culprits":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 1566
    .local v3, "removed":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    const/4 v1, 0x0

    #@b
    .local v1, "c":I
    :goto_0
    array-length v4, p2

    #@c
    if-ge v1, v4, :cond_2

    #@e
    .line 1567
    aget-object v0, p2, v1

    #@10
    .line 1568
    .local v0, "arc":Landroid/widget/GridLayout$Arc;
    aget-boolean v4, p3, v1

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 1569
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    .line 1571
    :cond_0
    iget-boolean v4, v0, Landroid/widget/GridLayout$Arc;->valid:Z

    #@19
    if-nez v4, :cond_1

    #@1b
    .line 1572
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    .line 1566
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1575
    .end local v0    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_2
    iget-object v4, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@23
    iget-object v4, v4, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    #@25
    new-instance v5, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    const-string/jumbo v6, " constraints: "

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-direct {p0, v2}, Landroid/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    .line 1576
    const-string/jumbo v6, " are inconsistent; permanently removing: "

    #@40
    .line 1575
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    .line 1576
    invoke-direct {p0, v3}, Landroid/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    .line 1575
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    .line 1576
    const-string/jumbo v6, ". "

    #@4f
    .line 1575
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-interface {v4, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@5a
    .line 1563
    return-void
.end method

.method private relax([ILandroid/widget/GridLayout$Arc;)Z
    .locals 7
    .param p1, "locations"    # [I
    .param p2, "entry"    # Landroid/widget/GridLayout$Arc;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1523
    iget-boolean v5, p2, Landroid/widget/GridLayout$Arc;->valid:Z

    #@3
    if-nez v5, :cond_0

    #@5
    .line 1524
    return v6

    #@6
    .line 1526
    :cond_0
    iget-object v1, p2, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    #@8
    .line 1527
    .local v1, "span":Landroid/widget/GridLayout$Interval;
    iget v2, v1, Landroid/widget/GridLayout$Interval;->min:I

    #@a
    .line 1528
    .local v2, "u":I
    iget v3, v1, Landroid/widget/GridLayout$Interval;->max:I

    #@c
    .line 1529
    .local v3, "v":I
    iget-object v5, p2, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    #@e
    iget v4, v5, Landroid/widget/GridLayout$MutableInt;->value:I

    #@10
    .line 1530
    .local v4, "value":I
    aget v5, p1, v2

    #@12
    add-int v0, v5, v4

    #@14
    .line 1531
    .local v0, "candidate":I
    aget v5, p1, v3

    #@16
    if-le v0, v5, :cond_1

    #@18
    .line 1532
    aput v0, p1, v3

    #@1a
    .line 1533
    const/4 v5, 0x1

    #@1b
    return v5

    #@1c
    .line 1535
    :cond_1
    return v6
.end method

.method private setParentConstraints(II)V
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I

    #@0
    .prologue
    .line 1836
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    #@2
    iput p1, v0, Landroid/widget/GridLayout$MutableInt;->value:I

    #@4
    .line 1837
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    #@6
    neg-int v1, p2

    #@7
    iput v1, v0, Landroid/widget/GridLayout$MutableInt;->value:I

    #@9
    .line 1838
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    #@c
    .line 1835
    return-void
.end method

.method private shareOutDelta(IF)V
    .locals 9
    .param p1, "totalDelta"    # I
    .param p2, "totalWeight"    # F

    #@0
    .prologue
    .line 1727
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    #@2
    const/4 v8, 0x0

    #@3
    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    #@6
    .line 1728
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@9
    invoke-virtual {v7}, Landroid/widget/GridLayout;->getChildCount()I

    #@c
    move-result v0

    #@d
    .local v0, "N":I
    :goto_0
    if-ge v3, v0, :cond_3

    #@f
    .line 1729
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@11
    invoke-virtual {v7, v3}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v1

    #@15
    .line 1730
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@18
    move-result v7

    #@19
    const/16 v8, 0x8

    #@1b
    if-ne v7, v8, :cond_1

    #@1d
    .line 1728
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1733
    :cond_1
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@22
    invoke-virtual {v7, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    #@25
    move-result-object v4

    #@26
    .line 1734
    .local v4, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v7, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    #@28
    if-eqz v7, :cond_2

    #@2a
    iget-object v5, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    #@2c
    .line 1735
    .local v5, "spec":Landroid/widget/GridLayout$Spec;
    :goto_2
    iget v6, v5, Landroid/widget/GridLayout$Spec;->weight:F

    #@2e
    .line 1736
    .local v6, "weight":F
    const/4 v7, 0x0

    #@2f
    cmpl-float v7, v6, v7

    #@31
    if-eqz v7, :cond_0

    #@33
    .line 1737
    int-to-float v7, p1

    #@34
    mul-float/2addr v7, v6

    #@35
    div-float/2addr v7, p2

    #@36
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    #@39
    move-result v2

    #@3a
    .line 1738
    .local v2, "delta":I
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    #@3c
    aput v2, v7, v3

    #@3e
    .line 1741
    sub-int/2addr p1, v2

    #@3f
    .line 1742
    sub-float/2addr p2, v6

    #@40
    goto :goto_1

    #@41
    .line 1734
    .end local v2    # "delta":I
    .end local v5    # "spec":Landroid/widget/GridLayout$Spec;
    .end local v6    # "weight":F
    :cond_2
    iget-object v5, v4, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    #@43
    goto :goto_2

    #@44
    .line 1726
    .end local v1    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method private size([I)I
    .locals 1
    .param p1, "locations"    # [I

    #@0
    .prologue
    .line 1832
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    #@3
    move-result v0

    #@4
    aget v0, p1, v0

    #@6
    return v0
.end method

.method private solve([I)Z
    .locals 1
    .param p1, "a"    # [I

    #@0
    .prologue
    .line 1693
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getArcs()[Landroid/widget/GridLayout$Arc;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Landroid/widget/GridLayout$Axis;->solve([Landroid/widget/GridLayout$Arc;[I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private solve([Landroid/widget/GridLayout$Arc;[I)Z
    .locals 1
    .param p1, "arcs"    # [Landroid/widget/GridLayout$Arc;
    .param p2, "locations"    # [I

    #@0
    .prologue
    .line 1600
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout$Axis;->solve([Landroid/widget/GridLayout$Arc;[IZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private solve([Landroid/widget/GridLayout$Arc;[IZ)Z
    .locals 12
    .param p1, "arcs"    # [Landroid/widget/GridLayout$Arc;
    .param p2, "locations"    # [I
    .param p3, "modifyOnError"    # Z

    #@0
    .prologue
    .line 1604
    iget-boolean v10, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    #@2
    if-eqz v10, :cond_0

    #@4
    const-string/jumbo v2, "horizontal"

    #@7
    .line 1605
    .local v2, "axisName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    #@a
    move-result v10

    #@b
    add-int/lit8 v0, v10, 0x1

    #@d
    .line 1606
    .local v0, "N":I
    const/4 v8, 0x0

    #@e
    .line 1608
    .local v8, "originalCulprits":[Z
    const/4 v9, 0x0

    #@f
    .end local v8    # "originalCulprits":[Z
    .local v9, "p":I
    :goto_1
    array-length v10, p1

    #@10
    if-ge v9, v10, :cond_c

    #@12
    .line 1609
    invoke-direct {p0, p2}, Landroid/widget/GridLayout$Axis;->init([I)V

    #@15
    .line 1612
    const/4 v5, 0x0

    #@16
    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_4

    #@18
    .line 1613
    const/4 v3, 0x0

    #@19
    .line 1614
    .local v3, "changed":Z
    const/4 v6, 0x0

    #@1a
    .local v6, "j":I
    array-length v7, p1

    #@1b
    .end local v3    # "changed":Z
    .local v7, "length":I
    :goto_3
    if-ge v6, v7, :cond_1

    #@1d
    .line 1615
    aget-object v10, p1, v6

    #@1f
    invoke-direct {p0, p2, v10}, Landroid/widget/GridLayout$Axis;->relax([ILandroid/widget/GridLayout$Arc;)Z

    #@22
    move-result v10

    #@23
    or-int/2addr v3, v10

    #@24
    .line 1614
    .local v3, "changed":Z
    add-int/lit8 v6, v6, 0x1

    #@26
    goto :goto_3

    #@27
    .line 1604
    .end local v0    # "N":I
    .end local v2    # "axisName":Ljava/lang/String;
    .end local v3    # "changed":Z
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "length":I
    .end local v9    # "p":I
    :cond_0
    const-string/jumbo v2, "vertical"

    #@2a
    .restart local v2    # "axisName":Ljava/lang/String;
    goto :goto_0

    #@2b
    .line 1617
    .restart local v0    # "N":I
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v7    # "length":I
    .restart local v9    # "p":I
    :cond_1
    if-nez v3, :cond_3

    #@2d
    .line 1618
    if-eqz v8, :cond_2

    #@2f
    .line 1619
    invoke-direct {p0, v2, p1, v8}, Landroid/widget/GridLayout$Axis;->logError(Ljava/lang/String;[Landroid/widget/GridLayout$Arc;[Z)V

    #@32
    .line 1621
    :cond_2
    const/4 v10, 0x1

    #@33
    return v10

    #@34
    .line 1612
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@36
    goto :goto_2

    #@37
    .line 1625
    .end local v6    # "j":I
    .end local v7    # "length":I
    :cond_4
    if-nez p3, :cond_5

    #@39
    .line 1626
    const/4 v10, 0x0

    #@3a
    return v10

    #@3b
    .line 1629
    :cond_5
    array-length v10, p1

    #@3c
    new-array v4, v10, [Z

    #@3e
    .line 1630
    .local v4, "culprits":[Z
    const/4 v5, 0x0

    #@3f
    :goto_4
    if-ge v5, v0, :cond_7

    #@41
    .line 1631
    const/4 v6, 0x0

    #@42
    .restart local v6    # "j":I
    array-length v7, p1

    #@43
    .restart local v7    # "length":I
    :goto_5
    if-ge v6, v7, :cond_6

    #@45
    .line 1632
    aget-boolean v10, v4, v6

    #@47
    aget-object v11, p1, v6

    #@49
    invoke-direct {p0, p2, v11}, Landroid/widget/GridLayout$Axis;->relax([ILandroid/widget/GridLayout$Arc;)Z

    #@4c
    move-result v11

    #@4d
    or-int/2addr v10, v11

    #@4e
    aput-boolean v10, v4, v6

    #@50
    .line 1631
    add-int/lit8 v6, v6, 0x1

    #@52
    goto :goto_5

    #@53
    .line 1630
    :cond_6
    add-int/lit8 v5, v5, 0x1

    #@55
    goto :goto_4

    #@56
    .line 1636
    .end local v6    # "j":I
    .end local v7    # "length":I
    :cond_7
    if-nez v9, :cond_8

    #@58
    .line 1637
    move-object v8, v4

    #@59
    .line 1640
    :cond_8
    const/4 v5, 0x0

    #@5a
    :goto_6
    array-length v10, p1

    #@5b
    if-ge v5, v10, :cond_b

    #@5d
    .line 1641
    aget-boolean v10, v4, v5

    #@5f
    if-eqz v10, :cond_9

    #@61
    .line 1642
    aget-object v1, p1, v5

    #@63
    .line 1644
    .local v1, "arc":Landroid/widget/GridLayout$Arc;
    iget-object v10, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    #@65
    iget v10, v10, Landroid/widget/GridLayout$Interval;->min:I

    #@67
    iget-object v11, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    #@69
    iget v11, v11, Landroid/widget/GridLayout$Interval;->max:I

    #@6b
    if-ge v10, v11, :cond_a

    #@6d
    .line 1640
    .end local v1    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    #@6f
    goto :goto_6

    #@70
    .line 1647
    .restart local v1    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_a
    const/4 v10, 0x0

    #@71
    iput-boolean v10, v1, Landroid/widget/GridLayout$Arc;->valid:Z

    #@73
    .line 1608
    .end local v1    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_b
    add-int/lit8 v9, v9, 0x1

    #@75
    goto :goto_1

    #@76
    .line 1652
    .end local v4    # "culprits":[Z
    .end local v5    # "i":I
    :cond_c
    const/4 v10, 0x1

    #@77
    return v10
.end method

.method private solveAndDistributeSpace([I)V
    .locals 11
    .param p1, "a"    # [I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1748
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getDeltas()[I

    #@4
    move-result-object v6

    #@5
    invoke-static {v6, v10}, Ljava/util/Arrays;->fill([II)V

    #@8
    .line 1749
    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->solve([I)Z

    #@b
    .line 1750
    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    #@d
    iget v6, v6, Landroid/widget/GridLayout$MutableInt;->value:I

    #@f
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@11
    invoke-virtual {v7}, Landroid/widget/GridLayout;->getChildCount()I

    #@14
    move-result v7

    #@15
    mul-int/2addr v6, v7

    #@16
    add-int/lit8 v1, v6, 0x1

    #@18
    .line 1751
    .local v1, "deltaMax":I
    const/4 v6, 0x2

    #@19
    if-ge v1, v6, :cond_0

    #@1b
    .line 1752
    return-void

    #@1c
    .line 1754
    :cond_0
    const/4 v2, 0x0

    #@1d
    .line 1756
    .local v2, "deltaMin":I
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->calculateTotalWeight()F

    #@20
    move-result v3

    #@21
    .line 1758
    .local v3, "totalWeight":F
    const/4 v4, -0x1

    #@22
    .line 1759
    .local v4, "validDelta":I
    const/4 v5, 0x1

    #@23
    .line 1761
    :goto_0
    if-ge v2, v1, :cond_2

    #@25
    .line 1763
    int-to-long v6, v2

    #@26
    int-to-long v8, v1

    #@27
    add-long/2addr v6, v8

    #@28
    const-wide/16 v8, 0x2

    #@2a
    div-long/2addr v6, v8

    #@2b
    long-to-int v0, v6

    #@2c
    .line 1764
    .local v0, "delta":I
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    #@2f
    .line 1765
    invoke-direct {p0, v0, v3}, Landroid/widget/GridLayout$Axis;->shareOutDelta(IF)V

    #@32
    .line 1766
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getArcs()[Landroid/widget/GridLayout$Arc;

    #@35
    move-result-object v6

    #@36
    invoke-direct {p0, v6, p1, v10}, Landroid/widget/GridLayout$Axis;->solve([Landroid/widget/GridLayout$Arc;[IZ)Z

    #@39
    move-result v5

    #@3a
    .line 1767
    .local v5, "validSolution":Z
    if-eqz v5, :cond_1

    #@3c
    .line 1768
    move v4, v0

    #@3d
    .line 1769
    add-int/lit8 v2, v0, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 1771
    :cond_1
    move v1, v0

    #@41
    goto :goto_0

    #@42
    .line 1774
    .end local v0    # "delta":I
    .end local v5    # "validSolution":Z
    :cond_2
    if-lez v4, :cond_3

    #@44
    if-eqz v5, :cond_4

    #@46
    .line 1747
    :cond_3
    :goto_1
    return-void

    #@47
    .line 1776
    :cond_4
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    #@4a
    .line 1777
    invoke-direct {p0, v4, v3}, Landroid/widget/GridLayout$Axis;->shareOutDelta(IF)V

    #@4d
    .line 1778
    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->solve([I)Z

    #@50
    goto :goto_1
.end method

.method private topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;)[",
            "Landroid/widget/GridLayout$Arc;"
        }
    .end annotation

    #@0
    .prologue
    .line 1465
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    new-array v0, v0, [Landroid/widget/GridLayout$Arc;

    #@6
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Landroid/widget/GridLayout$Arc;

    #@c
    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->topologicalSort([Landroid/widget/GridLayout$Arc;)[Landroid/widget/GridLayout$Arc;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method private topologicalSort([Landroid/widget/GridLayout$Arc;)[Landroid/widget/GridLayout$Arc;
    .locals 1
    .param p1, "arcs"    # [Landroid/widget/GridLayout$Arc;

    #@0
    .prologue
    .line 1426
    new-instance v0, Landroid/widget/GridLayout$Axis$1;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/widget/GridLayout$Axis$1;-><init>(Landroid/widget/GridLayout$Axis;[Landroid/widget/GridLayout$Arc;)V

    #@5
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis$1;->sort()[Landroid/widget/GridLayout$Arc;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method


# virtual methods
.method public getArcs()[Landroid/widget/GridLayout$Arc;
    .locals 1

    #@0
    .prologue
    .line 1512
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1513
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->createArcs()[Landroid/widget/GridLayout$Arc;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    #@a
    .line 1515
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    #@c
    if-nez v0, :cond_1

    #@e
    .line 1516
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->computeArcs()V

    #@11
    .line 1517
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    #@14
    .line 1519
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    #@16
    return-object v0
.end method

.method public getCount()I
    .locals 2

    #@0
    .prologue
    .line 1265
    iget v0, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    #@2
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getMaxIndex()I

    #@5
    move-result v1

    #@6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getDeltas()[I
    .locals 1

    #@0
    .prologue
    .line 1720
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1721
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    #@6
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    #@9
    move-result v0

    #@a
    new-array v0, v0, [I

    #@c
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    #@e
    .line 1723
    :cond_0
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    #@10
    return-object v0
.end method

.method public getGroupBounds()Landroid/widget/GridLayout$PackedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1316
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1317
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->createGroupBounds()Landroid/widget/GridLayout$PackedMap;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    #@a
    .line 1319
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    #@c
    if-nez v0, :cond_1

    #@e
    .line 1320
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->computeGroupBounds()V

    #@11
    .line 1321
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    #@14
    .line 1323
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    #@16
    return-object v0
.end method

.method public getLeadingMargins()[I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1671
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1672
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    #@8
    move-result v0

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    new-array v0, v0, [I

    #@d
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    #@f
    .line 1674
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    #@11
    if-nez v0, :cond_1

    #@13
    .line 1675
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->computeMargins(Z)V

    #@16
    .line 1676
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    #@18
    .line 1678
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    #@1a
    return-object v0
.end method

.method public getLocations()[I
    .locals 2

    #@0
    .prologue
    .line 1817
    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1818
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v0, v1, 0x1

    #@a
    .line 1819
    .local v0, "N":I
    new-array v1, v0, [I

    #@c
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    #@e
    .line 1821
    .end local v0    # "N":I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    #@10
    if-nez v1, :cond_1

    #@12
    .line 1822
    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    #@14
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->computeLocations([I)V

    #@17
    .line 1823
    const/4 v1, 0x1

    #@18
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    #@1a
    .line 1825
    :cond_1
    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    #@1c
    return-object v1
.end method

.method public getMeasure(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1847
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@4
    move-result v0

    #@5
    .line 1848
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@8
    move-result v1

    #@9
    .line 1849
    .local v1, "size":I
    sparse-switch v0, :sswitch_data_0

    #@c
    .line 1860
    sget-boolean v2, Landroid/widget/GridLayout$Axis;->-assertionsDisabled:Z

    #@e
    if-nez v2, :cond_0

    #@10
    new-instance v2, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v2

    #@16
    .line 1851
    :sswitch_0
    const v2, 0x186a0

    #@19
    invoke-direct {p0, v3, v2}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    #@1c
    move-result v2

    #@1d
    return v2

    #@1e
    .line 1854
    :sswitch_1
    invoke-direct {p0, v1, v1}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    #@21
    move-result v2

    #@22
    return v2

    #@23
    .line 1857
    :sswitch_2
    invoke-direct {p0, v3, v1}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    #@26
    move-result v2

    #@27
    return v2

    #@28
    .line 1861
    :cond_0
    return v3

    #@29
    .line 1849
    nop

    #@2a
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public getTrailingMargins()[I
    .locals 1

    #@0
    .prologue
    .line 1682
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1683
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    new-array v0, v0, [I

    #@c
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    #@e
    .line 1685
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    #@10
    if-nez v0, :cond_1

    #@12
    .line 1686
    const/4 v0, 0x0

    #@13
    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->computeMargins(Z)V

    #@16
    .line 1687
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    #@19
    .line 1689
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    #@1b
    return-object v0
.end method

.method groupArcsByFirstVertex([Landroid/widget/GridLayout$Arc;)[[Landroid/widget/GridLayout$Arc;
    .locals 10
    .param p1, "arcs"    # [Landroid/widget/GridLayout$Arc;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1406
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    #@4
    move-result v6

    #@5
    add-int/lit8 v0, v6, 0x1

    #@7
    .line 1407
    .local v0, "N":I
    new-array v3, v0, [[Landroid/widget/GridLayout$Arc;

    #@9
    .line 1408
    .local v3, "result":[[Landroid/widget/GridLayout$Arc;
    new-array v4, v0, [I

    #@b
    .line 1409
    .local v4, "sizes":[I
    array-length v7, p1

    #@c
    move v6, v5

    #@d
    :goto_0
    if-ge v6, v7, :cond_0

    #@f
    aget-object v1, p1, v6

    #@11
    .line 1410
    .local v1, "arc":Landroid/widget/GridLayout$Arc;
    iget-object v8, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    #@13
    iget v8, v8, Landroid/widget/GridLayout$Interval;->min:I

    #@15
    aget v9, v4, v8

    #@17
    add-int/lit8 v9, v9, 0x1

    #@19
    aput v9, v4, v8

    #@1b
    .line 1409
    add-int/lit8 v6, v6, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1412
    .end local v1    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_0
    const/4 v2, 0x0

    #@1f
    .local v2, "i":I
    :goto_1
    array-length v6, v4

    #@20
    if-ge v2, v6, :cond_1

    #@22
    .line 1413
    aget v6, v4, v2

    #@24
    new-array v6, v6, [Landroid/widget/GridLayout$Arc;

    #@26
    aput-object v6, v3, v2

    #@28
    .line 1412
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 1416
    :cond_1
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    #@2e
    .line 1417
    array-length v6, p1

    #@2f
    :goto_2
    if-ge v5, v6, :cond_2

    #@31
    aget-object v1, p1, v5

    #@33
    .line 1418
    .restart local v1    # "arc":Landroid/widget/GridLayout$Arc;
    iget-object v7, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    #@35
    iget v2, v7, Landroid/widget/GridLayout$Interval;->min:I

    #@37
    .line 1419
    aget-object v7, v3, v2

    #@39
    aget v8, v4, v2

    #@3b
    add-int/lit8 v9, v8, 0x1

    #@3d
    aput v9, v4, v2

    #@3f
    aput-object v1, v7, v8

    #@41
    .line 1417
    add-int/lit8 v5, v5, 0x1

    #@43
    goto :goto_2

    #@44
    .line 1422
    .end local v1    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_2
    return-object v3
.end method

.method public invalidateStructure()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1872
    const/high16 v0, -0x80000000

    #@3
    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    #@5
    .line 1874
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    #@7
    .line 1875
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    #@9
    .line 1876
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    #@b
    .line 1878
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    #@d
    .line 1879
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    #@f
    .line 1880
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    #@11
    .line 1882
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    #@13
    .line 1884
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    #@15
    .line 1885
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeightsValid:Z

    #@18
    .line 1887
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    #@1b
    .line 1871
    return-void
.end method

.method public invalidateValues()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1891
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    #@3
    .line 1892
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    #@5
    .line 1893
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    #@7
    .line 1895
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    #@9
    .line 1896
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    #@b
    .line 1897
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    #@d
    .line 1899
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    #@f
    .line 1890
    return-void
.end method

.method public isOrderPreserved()Z
    .locals 1

    #@0
    .prologue
    .line 1278
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    #@2
    return v0
.end method

.method public layout(I)V
    .locals 0
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1867
    invoke-direct {p0, p1, p1}, Landroid/widget/GridLayout$Axis;->setParentConstraints(II)V

    #@3
    .line 1868
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    #@6
    .line 1866
    return-void
.end method

.method public setCount(I)V
    .locals 2
    .param p1, "count"    # I

    #@0
    .prologue
    .line 1269
    const/high16 v0, -0x80000000

    #@2
    if-eq p1, v0, :cond_0

    #@4
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getMaxIndex()I

    #@7
    move-result v0

    #@8
    if-ge p1, v0, :cond_0

    #@a
    .line 1270
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    #@11
    if-eqz v0, :cond_1

    #@13
    const-string/jumbo v0, "column"

    #@16
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 1271
    const-string/jumbo v1, "Count must be greater than or equal to the maximum of all grid indices "

    #@1d
    .line 1270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 1272
    const-string/jumbo v1, "(and spans) defined in the LayoutParams of each child"

    #@24
    .line 1270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    invoke-static {v0}, Landroid/widget/GridLayout;->-wrap0(Ljava/lang/String;)V

    #@2f
    .line 1274
    :cond_0
    iput p1, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    #@31
    .line 1268
    return-void

    #@32
    .line 1270
    :cond_1
    const-string/jumbo v0, "row"

    #@35
    goto :goto_0
.end method

.method public setOrderPreserved(Z)V
    .locals 0
    .param p1, "orderPreserved"    # Z

    #@0
    .prologue
    .line 1282
    iput-boolean p1, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    #@2
    .line 1283
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    #@5
    .line 1281
    return-void
.end method
