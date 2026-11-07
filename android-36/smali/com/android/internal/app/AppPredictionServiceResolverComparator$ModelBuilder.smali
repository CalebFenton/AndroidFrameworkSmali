.class Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;
.super Ljava/lang/Object;
.source "AppPredictionServiceResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AppPredictionServiceResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModelBuilder"
.end annotation


# instance fields
.field private final blacklist mAppPredictor:Landroid/app/prediction/AppPredictor;

.field private final blacklist mUser:Landroid/os/UserHandle;


# direct methods
.method constructor blacklist <init>(Landroid/app/prediction/AppPredictor;Landroid/os/UserHandle;)V
    .registers 3
    .param p1, "appPredictor"    # Landroid/app/prediction/AppPredictor;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 198
    iput-object p2, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;->mUser:Landroid/os/UserHandle;

    .line 199
    return-void
.end method

.method private blacklist adaptLegacyResolverComparatorToComparatorModel(Lcom/android/internal/app/AbstractResolverComparator;)Lcom/android/internal/app/ResolverComparatorModel;
    .registers 3
    .param p1, "comparator"    # Lcom/android/internal/app/AbstractResolverComparator;

    .line 234
    new-instance v0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder$1;-><init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;Lcom/android/internal/app/AbstractResolverComparator;)V

    return-object v0
.end method

.method private blacklist buildTargetRanksMapFromSortedTargets(Ljava/util/List;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 216
    .local p1, "sortedAppTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v0, "targetRanks":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 218
    new-instance v2, Landroid/content/ComponentName;

    .line 219
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppTarget;

    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/prediction/AppTarget;

    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSortedAppTargets, sortedAppTargets #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "APSResolverComparator"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v2    # "componentName":Landroid/content/ComponentName;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 224
    .end local v1    # "i":I
    :cond_51
    return-object v0
.end method


# virtual methods
.method blacklist buildFallbackModel(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)Lcom/android/internal/app/ResolverComparatorModel;
    .registers 3
    .param p1, "fallback"    # Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    .line 208
    invoke-direct {p0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;->adaptLegacyResolverComparatorToComparatorModel(Lcom/android/internal/app/AbstractResolverComparator;)Lcom/android/internal/app/ResolverComparatorModel;

    move-result-object v0

    return-object v0
.end method

.method blacklist buildFromRankedList(Ljava/util/List;)Lcom/android/internal/app/ResolverComparatorModel;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)",
            "Lcom/android/internal/app/ResolverComparatorModel;"
        }
    .end annotation

    .line 202
    .local p1, "sortedAppTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    new-instance v0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    iget-object v1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    iget-object v2, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;->mUser:Landroid/os/UserHandle;

    .line 203
    invoke-direct {p0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$ModelBuilder;->buildTargetRanksMapFromSortedTargets(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;-><init>(Landroid/app/prediction/AppPredictor;Landroid/os/UserHandle;Ljava/util/Map;)V

    .line 202
    return-object v0
.end method
