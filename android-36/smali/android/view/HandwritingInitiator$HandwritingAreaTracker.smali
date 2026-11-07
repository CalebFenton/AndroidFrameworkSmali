.class public Landroid/view/HandwritingInitiator$HandwritingAreaTracker;
.super Ljava/lang/Object;
.source "HandwritingInitiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HandwritingInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandwritingAreaTracker"
.end annotation


# instance fields
.field private final blacklist mHandwritableViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/HandwritingInitiator$HandwritableViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->mHandwritableViewInfos:Ljava/util/List;

    .line 1012
    return-void
.end method

.method static synthetic blacklist lambda$computeViewInfos$0(Landroid/view/HandwritingInitiator$HandwritableViewInfo;)Z
    .registers 2
    .param p0, "viewInfo"    # Landroid/view/HandwritingInitiator$HandwritableViewInfo;

    .line 1052
    invoke-virtual {p0}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->update()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist computeViewInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/HandwritingInitiator$HandwritableViewInfo;",
            ">;"
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->mHandwritableViewInfos:Ljava/util/List;

    new-instance v1, Landroid/view/HandwritingInitiator$HandwritingAreaTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1053
    iget-object v0, p0, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->mHandwritableViewInfos:Ljava/util/List;

    return-object v0
.end method

.method public blacklist updateHandwritingAreaForView(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 1026
    iget-object v0, p0, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->mHandwritableViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1027
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/HandwritingInitiator$HandwritableViewInfo;>;"
    const/4 v1, 0x0

    .line 1028
    .local v1, "found":Z
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1029
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/HandwritingInitiator$HandwritableViewInfo;

    .line 1030
    .local v2, "handwritableViewInfo":Landroid/view/HandwritingInitiator$HandwritableViewInfo;
    invoke-virtual {v2}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getView()Landroid/view/View;

    move-result-object v3

    .line 1031
    .local v3, "curView":Landroid/view/View;
    invoke-static {v3}, Landroid/view/HandwritingInitiator;->-$$Nest$smisViewActive(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 1032
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1034
    :cond_20
    if-ne v3, p1, :cond_26

    .line 1035
    const/4 v1, 0x1

    .line 1036
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mIsDirty:Z

    .line 1038
    .end local v2    # "handwritableViewInfo":Landroid/view/HandwritingInitiator$HandwritableViewInfo;
    .end local v3    # "curView":Landroid/view/View;
    :cond_26
    goto :goto_7

    .line 1039
    :cond_27
    if-nez v1, :cond_39

    invoke-static {p1}, Landroid/view/HandwritingInitiator;->-$$Nest$smisViewActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1042
    iget-object v2, p0, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->mHandwritableViewInfos:Ljava/util/List;

    new-instance v3, Landroid/view/HandwritingInitiator$HandwritableViewInfo;

    invoke-direct {v3, p1}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;-><init>(Landroid/view/View;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    :cond_39
    return-void
.end method
