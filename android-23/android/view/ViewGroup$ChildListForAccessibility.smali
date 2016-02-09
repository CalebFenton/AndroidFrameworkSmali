.class Landroid/view/ViewGroup$ChildListForAccessibility;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildListForAccessibility"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x20

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/ViewGroup$ChildListForAccessibility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup$ViewLocationHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 7556
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@2
    const/16 v1, 0x20

    #@4
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@7
    .line 7555
    sput-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@9
    .line 7551
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 7551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 7558
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    #@a
    .line 7560
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mHolders:Ljava/util/ArrayList;

    #@11
    .line 7551
    return-void
.end method

.method private clear()V
    .locals 1

    #@0
    .prologue
    .line 7630
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 7629
    return-void
.end method

.method private init(Landroid/view/ViewGroup;Z)V
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "sort"    # Z

    #@0
    .prologue
    .line 7589
    iget-object v2, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    #@2
    .line 7590
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    #@5
    move-result v1

    #@6
    .line 7591
    .local v1, "childCount":I
    const/4 v5, 0x0

    #@7
    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    #@9
    .line 7592
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    .line 7593
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 7591
    add-int/lit8 v5, v5, 0x1

    #@12
    goto :goto_0

    #@13
    .line 7595
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    if-eqz p2, :cond_3

    #@15
    .line 7596
    iget-object v4, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mHolders:Ljava/util/ArrayList;

    #@17
    .line 7597
    .local v4, "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewGroup$ViewLocationHolder;>;"
    const/4 v5, 0x0

    #@18
    :goto_1
    if-ge v5, v1, :cond_1

    #@1a
    .line 7598
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/view/View;

    #@20
    .line 7599
    .restart local v0    # "child":Landroid/view/View;
    invoke-static {p1, v0}, Landroid/view/ViewGroup$ViewLocationHolder;->obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;

    #@23
    move-result-object v3

    #@24
    .line 7600
    .local v3, "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27
    .line 7597
    add-int/lit8 v5, v5, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 7602
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    :cond_1
    invoke-direct {p0, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->sort(Ljava/util/ArrayList;)V

    #@2d
    .line 7603
    const/4 v5, 0x0

    #@2e
    :goto_2
    if-ge v5, v1, :cond_2

    #@30
    .line 7604
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    check-cast v3, Landroid/view/ViewGroup$ViewLocationHolder;

    #@36
    .line 7605
    .restart local v3    # "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    iget-object v6, v3, Landroid/view/ViewGroup$ViewLocationHolder;->mView:Landroid/view/View;

    #@38
    invoke-virtual {v2, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 7606
    invoke-virtual {v3}, Landroid/view/ViewGroup$ViewLocationHolder;->recycle()V

    #@3e
    .line 7603
    add-int/lit8 v5, v5, 0x1

    #@40
    goto :goto_2

    #@41
    .line 7608
    .end local v3    # "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@44
    .line 7588
    .end local v4    # "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewGroup$ViewLocationHolder;>;"
    :cond_3
    return-void
.end method

.method public static obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;
    .locals 2
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "sort"    # Z

    #@0
    .prologue
    .line 7563
    sget-object v1, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewGroup$ChildListForAccessibility;

    #@8
    .line 7564
    .local v0, "list":Landroid/view/ViewGroup$ChildListForAccessibility;
    if-nez v0, :cond_0

    #@a
    .line 7565
    new-instance v0, Landroid/view/ViewGroup$ChildListForAccessibility;

    #@c
    .end local v0    # "list":Landroid/view/ViewGroup$ChildListForAccessibility;
    invoke-direct {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;-><init>()V

    #@f
    .line 7567
    .restart local v0    # "list":Landroid/view/ViewGroup$ChildListForAccessibility;
    :cond_0
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$ChildListForAccessibility;->init(Landroid/view/ViewGroup;Z)V

    #@12
    .line 7568
    return-object v0
.end method

.method private sort(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup$ViewLocationHolder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 7618
    .local p1, "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewGroup$ViewLocationHolder;>;"
    const/4 v1, 0x1

    #@1
    .line 7617
    :try_start_0
    invoke-static {v1}, Landroid/view/ViewGroup$ViewLocationHolder;->setComparisonStrategy(I)V

    #@4
    .line 7619
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 7612
    :goto_0
    return-void

    #@8
    .line 7620
    :catch_0
    move-exception v0

    #@9
    .line 7624
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x2

    #@a
    .line 7623
    invoke-static {v1}, Landroid/view/ViewGroup$ViewLocationHolder;->setComparisonStrategy(I)V

    #@d
    .line 7625
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@10
    goto :goto_0
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 7581
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    #@0
    .prologue
    .line 7577
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getChildIndex(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 7585
    iget-object v0, p0, Landroid/view/ViewGroup$ChildListForAccessibility;->mChildren:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public recycle()V
    .locals 1

    #@0
    .prologue
    .line 7572
    invoke-direct {p0}, Landroid/view/ViewGroup$ChildListForAccessibility;->clear()V

    #@3
    .line 7573
    sget-object v0, Landroid/view/ViewGroup$ChildListForAccessibility;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@8
    .line 7571
    return-void
.end method
