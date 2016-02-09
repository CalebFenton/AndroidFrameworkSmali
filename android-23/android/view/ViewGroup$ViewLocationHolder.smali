.class Landroid/view/ViewGroup$ViewLocationHolder;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewLocationHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/view/ViewGroup$ViewLocationHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMPARISON_STRATEGY_LOCATION:I = 0x2

.field public static final COMPARISON_STRATEGY_STRIPE:I = 0x1

.field private static final MAX_POOL_SIZE:I = 0x20

.field private static sComparisonStrategy:I

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/ViewGroup$ViewLocationHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLayoutDirection:I

.field private final mLocation:Landroid/graphics/Rect;

.field public mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 7645
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@2
    const/16 v1, 0x20

    #@4
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@7
    .line 7644
    sput-object v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@9
    .line 7651
    const/4 v0, 0x1

    #@a
    sput v0, Landroid/view/ViewGroup$ViewLocationHolder;->sComparisonStrategy:I

    #@c
    .line 7640
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 7640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 7653
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@a
    .line 7640
    return-void
.end method

.method private clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 7736
    const/4 v0, 0x0

    #@2
    iput-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    #@4
    .line 7737
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@6
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    #@9
    .line 7735
    return-void
.end method

.method private init(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 7728
    iget-object v0, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@2
    .line 7729
    .local v0, "viewLocation":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@5
    .line 7730
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@8
    .line 7731
    iput-object p2, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    #@a
    .line 7732
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    #@d
    move-result v1

    #@e
    iput v1, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLayoutDirection:I

    #@10
    .line 7727
    return-void
.end method

.method public static obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;
    .locals 2
    .param p0, "root"    # Landroid/view/ViewGroup;
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 7660
    sget-object v1, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewGroup$ViewLocationHolder;

    #@8
    .line 7661
    .local v0, "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    if-nez v0, :cond_0

    #@a
    .line 7662
    new-instance v0, Landroid/view/ViewGroup$ViewLocationHolder;

    #@c
    .end local v0    # "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    invoke-direct {v0}, Landroid/view/ViewGroup$ViewLocationHolder;-><init>()V

    #@f
    .line 7664
    .restart local v0    # "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    :cond_0
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$ViewLocationHolder;->init(Landroid/view/ViewGroup;Landroid/view/View;)V

    #@12
    .line 7665
    return-object v0
.end method

.method public static setComparisonStrategy(I)V
    .locals 0
    .param p0, "strategy"    # I

    #@0
    .prologue
    .line 7669
    sput p0, Landroid/view/ViewGroup$ViewLocationHolder;->sComparisonStrategy:I

    #@2
    .line 7668
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/view/ViewGroup$ViewLocationHolder;)I
    .locals 8
    .param p1, "another"    # Landroid/view/ViewGroup$ViewLocationHolder;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 7680
    if-nez p1, :cond_0

    #@3
    .line 7681
    return v7

    #@4
    .line 7684
    :cond_0
    sget v5, Landroid/view/ViewGroup$ViewLocationHolder;->sComparisonStrategy:I

    #@6
    if-ne v5, v7, :cond_2

    #@8
    .line 7686
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@a
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@c
    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@e
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@10
    sub-int/2addr v5, v6

    #@11
    if-gtz v5, :cond_1

    #@13
    .line 7687
    const/4 v5, -0x1

    #@14
    return v5

    #@15
    .line 7690
    :cond_1
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@17
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@19
    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@1b
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@1d
    sub-int/2addr v5, v6

    #@1e
    if-ltz v5, :cond_2

    #@20
    .line 7691
    return v7

    #@21
    .line 7696
    :cond_2
    iget v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLayoutDirection:I

    #@23
    if-nez v5, :cond_3

    #@25
    .line 7697
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@27
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@29
    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@2b
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@2d
    sub-int v1, v5, v6

    #@2f
    .line 7698
    .local v1, "leftDifference":I
    if-eqz v1, :cond_4

    #@31
    .line 7699
    return v1

    #@32
    .line 7702
    .end local v1    # "leftDifference":I
    :cond_3
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@34
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@36
    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@38
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@3a
    sub-int v2, v5, v6

    #@3c
    .line 7703
    .local v2, "rightDifference":I
    if-eqz v2, :cond_4

    #@3e
    .line 7704
    neg-int v5, v2

    #@3f
    return v5

    #@40
    .line 7708
    .end local v2    # "rightDifference":I
    :cond_4
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@42
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@44
    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@46
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@48
    sub-int v3, v5, v6

    #@4a
    .line 7709
    .local v3, "topDifference":I
    if-eqz v3, :cond_5

    #@4c
    .line 7710
    return v3

    #@4d
    .line 7713
    :cond_5
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@4f
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@52
    move-result v5

    #@53
    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@55
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    #@58
    move-result v6

    #@59
    sub-int v0, v5, v6

    #@5b
    .line 7714
    .local v0, "heightDiference":I
    if-eqz v0, :cond_6

    #@5d
    .line 7715
    neg-int v5, v0

    #@5e
    return v5

    #@5f
    .line 7718
    :cond_6
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@61
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    #@64
    move-result v5

    #@65
    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mLocation:Landroid/graphics/Rect;

    #@67
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    #@6a
    move-result v6

    #@6b
    sub-int v4, v5, v6

    #@6d
    .line 7719
    .local v4, "widthDiference":I
    if-eqz v4, :cond_7

    #@6f
    .line 7720
    neg-int v5, v4

    #@70
    return v5

    #@71
    .line 7724
    :cond_7
    iget-object v5, p0, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    #@73
    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityViewId()I

    #@76
    move-result v5

    #@77
    iget-object v6, p1, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    #@79
    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityViewId()I

    #@7c
    move-result v6

    #@7d
    sub-int/2addr v5, v6

    #@7e
    return v5
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 7678
    check-cast p1, Landroid/view/ViewGroup$ViewLocationHolder;

    #@2
    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$ViewLocationHolder;->compareTo(Landroid/view/ViewGroup$ViewLocationHolder;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public recycle()V
    .locals 1

    #@0
    .prologue
    .line 7673
    invoke-direct {p0}, Landroid/view/ViewGroup$ViewLocationHolder;->clear()V

    #@3
    .line 7674
    sget-object v0, Landroid/view/ViewGroup$ViewLocationHolder;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@8
    .line 7672
    return-void
.end method
