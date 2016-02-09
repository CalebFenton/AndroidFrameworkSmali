.class public Landroid/media/MediaRouter$RouteCategory;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteCategory"
.end annotation


# instance fields
.field final mGroupable:Z

.field mIsSystem:Z

.field mName:Ljava/lang/CharSequence;

.field mNameResId:I

.field mTypes:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 0
    .param p1, "nameResId"    # I
    .param p2, "types"    # I
    .param p3, "groupable"    # Z

    #@0
    .prologue
    .line 2553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2554
    iput p1, p0, Landroid/media/MediaRouter$RouteCategory;->mNameResId:I

    #@5
    .line 2555
    iput p2, p0, Landroid/media/MediaRouter$RouteCategory;->mTypes:I

    #@7
    .line 2556
    iput-boolean p3, p0, Landroid/media/MediaRouter$RouteCategory;->mGroupable:Z

    #@9
    .line 2553
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;IZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "types"    # I
    .param p3, "groupable"    # Z

    #@0
    .prologue
    .line 2547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2548
    iput-object p1, p0, Landroid/media/MediaRouter$RouteCategory;->mName:Ljava/lang/CharSequence;

    #@5
    .line 2549
    iput p2, p0, Landroid/media/MediaRouter$RouteCategory;->mTypes:I

    #@7
    .line 2550
    iput-boolean p3, p0, Landroid/media/MediaRouter$RouteCategory;->mGroupable:Z

    #@9
    .line 2547
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2563
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    #@4
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteCategory;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 2573
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteCategory;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 2577
    iget v0, p0, Landroid/media/MediaRouter$RouteCategory;->mNameResId:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2578
    iget v0, p0, Landroid/media/MediaRouter$RouteCategory;->mNameResId:I

    #@6
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 2580
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$RouteCategory;->mName:Ljava/lang/CharSequence;

    #@d
    return-object v0
.end method

.method public getRoutes(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2597
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRouter$RouteInfo;>;"
    if-nez p1, :cond_1

    #@2
    .line 2598
    new-instance p1, Ljava/util/ArrayList;

    #@4
    .end local p1    # "out":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRouter$RouteInfo;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 2603
    .restart local p1    # "out":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRouter$RouteInfo;>;"
    :goto_0
    invoke-static {}, Landroid/media/MediaRouter;->getRouteCountStatic()I

    #@a
    move-result v0

    #@b
    .line 2604
    .local v0, "count":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@e
    .line 2605
    invoke-static {v1}, Landroid/media/MediaRouter;->getRouteAtStatic(I)Landroid/media/MediaRouter$RouteInfo;

    #@11
    move-result-object v2

    #@12
    .line 2606
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    #@14
    if-ne v3, p0, :cond_0

    #@16
    .line 2607
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 2604
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_1

    #@1c
    .line 2600
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@1f
    goto :goto_0

    #@20
    .line 2610
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2
    return-object p1
.end method

.method public getSupportedTypes()I
    .locals 1

    #@0
    .prologue
    .line 2617
    iget v0, p0, Landroid/media/MediaRouter$RouteCategory;->mTypes:I

    #@2
    return v0
.end method

.method public isGroupable()Z
    .locals 1

    #@0
    .prologue
    .line 2629
    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteCategory;->mGroupable:Z

    #@2
    return v0
.end method

.method public isSystem()Z
    .locals 1

    #@0
    .prologue
    .line 2637
    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteCategory;->mIsSystem:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2642
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "RouteCategory{ name="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/media/MediaRouter$RouteCategory;->mName:Ljava/lang/CharSequence;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " types="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/media/MediaRouter$RouteCategory;->mTypes:I

    #@1b
    invoke-static {v1}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 2643
    const-string/jumbo v1, " groupable="

    #@26
    .line 2642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 2643
    iget-boolean v1, p0, Landroid/media/MediaRouter$RouteCategory;->mGroupable:Z

    #@2c
    .line 2642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 2643
    const-string/jumbo v1, " }"

    #@33
    .line 2642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    return-object v0
.end method
