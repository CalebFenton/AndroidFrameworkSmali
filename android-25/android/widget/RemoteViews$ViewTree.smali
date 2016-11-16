.class Landroid/widget/RemoteViews$ViewTree;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewTree"
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews$ViewTree;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoot:Landroid/view/View;


# direct methods
.method static synthetic -get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/RemoteViews$ViewTree;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    #@2
    return-object p1
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "root"    # Landroid/view/View;

    #@0
    .prologue
    .line 3568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3569
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    #@5
    .line 3568
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/widget/RemoteViews$ViewTree;)V
    .locals 0
    .param p1, "root"    # Landroid/view/View;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;)V

    #@3
    return-void
.end method

.method private addViewChild(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 3624
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@3
    move-result v5

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 3625
    new-instance v3, Landroid/widget/RemoteViews$ViewTree;

    #@8
    invoke-direct {v3, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;)V

    #@b
    .line 3626
    .local v3, "tree":Landroid/widget/RemoteViews$ViewTree;
    iget-object v5, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 3627
    move-object v2, v3

    #@11
    .line 3632
    .end local v3    # "tree":Landroid/widget/RemoteViews$ViewTree;
    .local v2, "target":Landroid/widget/RemoteViews$ViewTree;
    :goto_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    #@13
    if-eqz v5, :cond_1

    #@15
    invoke-virtual {p1}, Landroid/view/View;->isRootNamespace()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_1

    #@1b
    .line 3633
    iget-object v5, v2, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    #@1d
    if-nez v5, :cond_1

    #@1f
    .line 3634
    new-instance v5, Ljava/util/ArrayList;

    #@21
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v5, v2, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    #@26
    move-object v4, p1

    #@27
    .line 3635
    nop

    #@28
    nop

    #@29
    .line 3636
    .local v4, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    #@2c
    move-result v0

    #@2d
    .line 3637
    .local v0, "count":I
    const/4 v1, 0x0

    #@2e
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    #@30
    .line 3638
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@33
    move-result-object v5

    #@34
    invoke-direct {v2, v5}, Landroid/widget/RemoteViews$ViewTree;->addViewChild(Landroid/view/View;)V

    #@37
    .line 3637
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 3629
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "target":Landroid/widget/RemoteViews$ViewTree;
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_0
    move-object v2, p0

    #@3b
    .restart local v2    # "target":Landroid/widget/RemoteViews$ViewTree;
    goto :goto_0

    #@3c
    .line 3619
    :cond_1
    return-void
.end method


# virtual methods
.method public addChild(Landroid/widget/RemoteViews$ViewTree;)V
    .locals 1
    .param p1, "child"    # Landroid/widget/RemoteViews$ViewTree;

    #@0
    .prologue
    .line 3612
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3613
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    #@b
    .line 3615
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    #@e
    .line 3616
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 3611
    return-void
.end method

.method public createTree()V
    .locals 4

    #@0
    .prologue
    .line 3573
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 3574
    return-void

    #@5
    .line 3577
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    #@7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    #@c
    .line 3578
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    #@e
    instance-of v3, v3, Landroid/view/ViewGroup;

    #@10
    if-eqz v3, :cond_1

    #@12
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    #@14
    invoke-virtual {v3}, Landroid/view/View;->isRootNamespace()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 3579
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    #@1c
    check-cast v2, Landroid/view/ViewGroup;

    #@1e
    .line 3580
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    #@21
    move-result v0

    #@22
    .line 3581
    .local v0, "count":I
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@25
    .line 3582
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@28
    move-result-object v3

    #@29
    invoke-direct {p0, v3}, Landroid/widget/RemoteViews$ViewTree;->addViewChild(Landroid/view/View;)V

    #@2c
    .line 3581
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 3572
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3604
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 3605
    iget-object v1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    #@7
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 3607
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    #@f
    move-result-object v0

    #@10
    .line 3608
    .local v0, "tree":Landroid/widget/RemoteViews$ViewTree;
    if-nez v0, :cond_1

    #@12
    :goto_0
    return-object v1

    #@13
    :cond_1
    iget-object v1, v0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    #@15
    goto :goto_0
.end method

.method public findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;
    .locals 5
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3588
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    #@3
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    #@6
    move-result v3

    #@7
    if-ne v3, p1, :cond_0

    #@9
    .line 3589
    return-object p0

    #@a
    .line 3591
    :cond_0
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    #@c
    if-nez v3, :cond_1

    #@e
    .line 3592
    return-object v4

    #@f
    .line 3594
    :cond_1
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "tree$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_3

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid/widget/RemoteViews$ViewTree;

    #@21
    .line 3595
    .local v1, "tree":Landroid/widget/RemoteViews$ViewTree;
    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    #@24
    move-result-object v0

    #@25
    .line 3596
    .local v0, "result":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v0, :cond_2

    #@27
    .line 3597
    return-object v0

    #@28
    .line 3600
    .end local v0    # "result":Landroid/widget/RemoteViews$ViewTree;
    .end local v1    # "tree":Landroid/widget/RemoteViews$ViewTree;
    :cond_3
    return-object v4
.end method
