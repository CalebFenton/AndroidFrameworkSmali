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
.field final greylist-max-o mGroupable:Z

.field greylist-max-o mIsSystem:Z

.field greylist-max-o mName:Ljava/lang/CharSequence;

.field greylist-max-o mNameResId:I

.field greylist-max-o mTypes:I


# direct methods
.method constructor greylist-max-o <init>(IIZ)V
    .registers 4
    .param p1, "nameResId"    # I
    .param p2, "types"    # I
    .param p3, "groupable"    # Z

    .line 2871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2872
    iput p1, p0, Landroid/media/MediaRouter$RouteCategory;->mNameResId:I

    .line 2873
    iput p2, p0, Landroid/media/MediaRouter$RouteCategory;->mTypes:I

    .line 2874
    iput-boolean p3, p0, Landroid/media/MediaRouter$RouteCategory;->mGroupable:Z

    .line 2875
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/CharSequence;IZ)V
    .registers 4
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "types"    # I
    .param p3, "groupable"    # Z

    .line 2865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2866
    iput-object p1, p0, Landroid/media/MediaRouter$RouteCategory;->mName:Ljava/lang/CharSequence;

    .line 2867
    iput p2, p0, Landroid/media/MediaRouter$RouteCategory;->mTypes:I

    .line 2868
    iput-boolean p3, p0, Landroid/media/MediaRouter$RouteCategory;->mGroupable:Z

    .line 2869
    return-void
.end method


# virtual methods
.method public whitelist getName()Ljava/lang/CharSequence;
    .registers 2

    .line 2881
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteCategory;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2891
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteCategory;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 2895
    iget v0, p0, Landroid/media/MediaRouter$RouteCategory;->mNameResId:I

    if-eqz v0, :cond_b

    .line 2896
    iget v0, p0, Landroid/media/MediaRouter$RouteCategory;->mNameResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2898
    :cond_b
    iget-object v0, p0, Landroid/media/MediaRouter$RouteCategory;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getRoutes(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .line 2915
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRouter$RouteInfo;>;"
    if-nez p1, :cond_9

    .line 2916
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p1, v0

    goto :goto_c

    .line 2918
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2921
    :goto_c
    invoke-static {}, Landroid/media/MediaRouter;->getRouteCountStatic()I

    move-result v0

    .line 2922
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_21

    .line 2923
    invoke-static {v1}, Landroid/media/MediaRouter;->getRouteAtStatic(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 2924
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    if-ne v3, p0, :cond_1e

    .line 2925
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2922
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2928
    .end local v1    # "i":I
    :cond_21
    return-object p1
.end method

.method public whitelist getSupportedTypes()I
    .registers 2

    .line 2935
    iget v0, p0, Landroid/media/MediaRouter$RouteCategory;->mTypes:I

    return v0
.end method

.method public whitelist isGroupable()Z
    .registers 2

    .line 2947
    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteCategory;->mGroupable:Z

    return v0
.end method

.method public greylist-max-o isSystem()Z
    .registers 2

    .line 2955
    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteCategory;->mIsSystem:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouteCategory{ name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteCategory;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaRouter$RouteCategory;->mTypes:I

    invoke-static {v1}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " groupable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/MediaRouter$RouteCategory;->mGroupable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
