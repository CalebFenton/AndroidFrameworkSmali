.class public Lcom/android/internal/app/NoOpResolverComparator;
.super Lcom/android/internal/app/AbstractResolverComparator;
.source "NoOpResolverComparator.java"


# instance fields
.field private blacklist mOriginalTargetOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$eoxt2xcpejfl-MnYdiDWClu0264(Lcom/android/internal/app/NoOpResolverComparator;Landroid/content/pm/ResolveInfo;)D
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/NoOpResolverComparator;->lambda$compare$0(Landroid/content/pm/ResolveInfo;)D

    move-result-wide p0

    return-wide p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V
    .registers 5
    .param p1, "launchedFromContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p3, "targetUserSpaceList":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AbstractResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    .line 50
    return-void
.end method

.method private synthetic blacklist lambda$compare$0(Landroid/content/pm/ResolveInfo;)D
    .registers 4
    .param p1, "r"    # Landroid/content/pm/ResolveInfo;

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/app/NoOpResolverComparator;->getScore(Landroid/content/pm/ResolveInfo;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method


# virtual methods
.method public blacklist compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 5
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .line 63
    new-instance v0, Lcom/android/internal/app/NoOpResolverComparator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/app/NoOpResolverComparator$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/NoOpResolverComparator;)V

    invoke-static {v0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 64
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    .line 65
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public blacklist doCompute(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 56
    .local v1, "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    iget-object v2, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v1    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    goto :goto_b

    .line 58
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/app/NoOpResolverComparator;->afterCompute()V

    .line 59
    return-void
.end method

.method public blacklist getScore(Landroid/content/pm/ResolveInfo;)F
    .registers 5
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 78
    iget-object v0, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 79
    const/4 v0, 0x0

    return v0

    .line 85
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    int-to-float v0, v0

    .line 86
    .local v0, "rank":F
    iget-object v1, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    return v2
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
    .registers 3
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 70
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/NoOpResolverComparator;->getScore(Landroid/content/pm/ResolveInfo;)F

    move-result v0

    return v0
.end method

.method public blacklist handleResultMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "message"    # Landroid/os/Message;

    .line 74
    return-void
.end method
