.class public final Landroid/app/appsearch/SearchSpec$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/SearchSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdvancedRankingExpression:Ljava/lang/String;

.field private blacklist mBuilt:Z

.field private blacklist mDefaultEmbeddingSearchMetricType:I

.field private blacklist mEmbeddingParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/EmbeddingVector;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEnabledFeatures:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFilterDocumentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGroupingLimit:I

.field private blacklist mGroupingTypeFlags:I

.field private blacklist mInformationalRankingExpressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mJoinSpec:Landroid/app/appsearch/JoinSpec;

.field private blacklist mMaxSnippetSize:I

.field private blacklist mNamespaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOrder:I

.field private blacklist mPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProjectionTypePropertyMasks:Landroid/os/Bundle;

.field private blacklist mRankingStrategy:I

.field private blacklist mResultCountPerPage:I

.field private blacklist mRetrieveEmbeddingMatchInfos:Z

.field private blacklist mSchemas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSearchSourceLogTag:Ljava/lang/String;

.field private blacklist mSearchStringParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSnippetCount:I

.field private blacklist mSnippetCountPerProperty:I

.field private blacklist mTermMatchType:I

.field private blacklist mTypePropertyFilters:Landroid/os/Bundle;

.field private blacklist mTypePropertyWeights:Landroid/os/Bundle;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSchemas:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mNamespaces:Ljava/util/List;

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mPackageNames:Ljava/util/List;

    .line 6
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mEnabledFeatures:Landroid/util/ArraySet;

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mProjectionTypePropertyMasks:Landroid/os/Bundle;

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mTypePropertyWeights:Landroid/os/Bundle;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mEmbeddingParameters:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSearchStringParameters:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mFilterDocumentIds:Ljava/util/List;

    const/16 v0, 0xa

    .line 12
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mResultCountPerPage:I

    const/4 v0, 0x2

    .line 13
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mTermMatchType:I

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mDefaultEmbeddingSearchMetricType:I

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSnippetCount:I

    const/16 v1, 0x2710

    .line 16
    iput v1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSnippetCountPerProperty:I

    .line 17
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mMaxSnippetSize:I

    .line 18
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mRankingStrategy:I

    .line 19
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mOrder:I

    .line 20
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mGroupingTypeFlags:I

    .line 21
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mGroupingLimit:I

    .line 22
    const-string v1, ""

    iput-object v1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mAdvancedRankingExpression:Ljava/lang/String;

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mInformationalRankingExpressions:Ljava/util/List;

    .line 24
    iput-boolean v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mRetrieveEmbeddingMatchInfos:Z

    .line 25
    iput-boolean v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mBuilt:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/appsearch/SearchSpec;)V
    .registers 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSchemas:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mNamespaces:Ljava/util/List;

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mPackageNames:Ljava/util/List;

    .line 31
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mEnabledFeatures:Landroid/util/ArraySet;

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mProjectionTypePropertyMasks:Landroid/os/Bundle;

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mTypePropertyWeights:Landroid/os/Bundle;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mEmbeddingParameters:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSearchStringParameters:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mFilterDocumentIds:Ljava/util/List;

    const/16 v0, 0xa

    .line 37
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mResultCountPerPage:I

    const/4 v0, 0x2

    .line 38
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mTermMatchType:I

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mDefaultEmbeddingSearchMetricType:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSnippetCount:I

    const/16 v1, 0x2710

    .line 41
    iput v1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSnippetCountPerProperty:I

    .line 42
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mMaxSnippetSize:I

    .line 43
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mRankingStrategy:I

    .line 44
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mOrder:I

    .line 45
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mGroupingTypeFlags:I

    .line 46
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mGroupingLimit:I

    .line 47
    const-string v1, ""

    iput-object v1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mAdvancedRankingExpression:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mInformationalRankingExpressions:Ljava/util/List;

    .line 49
    iput-boolean v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mRetrieveEmbeddingMatchInfos:Z

    .line 50
    iput-boolean v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mBuilt:Z

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getFilterSchemas()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSchemas:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getFilterNamespaces()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mNamespaces:Ljava/util/List;

    .line 54
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getFilterProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_98
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p0, v2, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterProperties(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    goto :goto_98

    .line 56
    :cond_b4
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getFilterPackageNames()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mPackageNames:Ljava/util/List;

    .line 57
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getEnabledFeatures()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mEnabledFeatures:Landroid/util/ArraySet;

    .line 58
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getProjections()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p0, v2, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addProjection(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    goto :goto_d6

    .line 60
    :cond_f2
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getPropertyWeights()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_fe
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p0, v2, v1}, Landroid/app/appsearch/SearchSpec$Builder;->setPropertyWeights(Ljava/lang/String;Ljava/util/Map;)Landroid/app/appsearch/SearchSpec$Builder;

    goto :goto_fe

    .line 62
    :cond_11a
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getEmbeddingParameters()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mEmbeddingParameters:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getSearchStringParameters()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSearchStringParameters:Ljava/util/List;

    .line 64
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getResultCountPerPage()I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mResultCountPerPage:I

    .line 65
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getTermMatch()I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mTermMatchType:I

    .line 66
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getDefaultEmbeddingSearchMetricType()I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mDefaultEmbeddingSearchMetricType:I

    .line 67
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getSnippetCount()I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSnippetCount:I

    .line 68
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getSnippetCountPerProperty()I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSnippetCountPerProperty:I

    .line 69
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getMaxSnippetSize()I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mMaxSnippetSize:I

    .line 70
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getRankingStrategy()I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mRankingStrategy:I

    .line 71
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getOrder()I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mOrder:I

    .line 72
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getResultGroupingTypeFlags()I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mGroupingTypeFlags:I

    .line 73
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getResultGroupingLimit()I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mGroupingLimit:I

    .line 74
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getJoinSpec()Landroid/app/appsearch/JoinSpec;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mJoinSpec:Landroid/app/appsearch/JoinSpec;

    .line 75
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getAdvancedRankingExpression()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mAdvancedRankingExpression:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getInformationalRankingExpressions()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mInformationalRankingExpressions:Ljava/util/List;

    .line 78
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getSearchSourceLogTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSearchSourceLogTag:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->getFilterDocumentIds()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mFilterDocumentIds:Ljava/util/List;

    .line 80
    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec;->shouldRetrieveEmbeddingMatchInfos()Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mRetrieveEmbeddingMatchInfos:Z

    return-void
.end method

.method private blacklist modifyEnabledFeature(Ljava/lang/String;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_b

    .line 5
    .line 6
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mEnabledFeatures:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mEnabledFeatures:Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private blacklist resetIfBuilt()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mBuilt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5e

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSchemas:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSchemas:Ljava/util/List;

    .line 13
    .line 14
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/app/appsearch/util/BundleUtil;->deepCopy(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mNamespaces:Ljava/util/List;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mNamespaces:Ljava/util/List;

    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mPackageNames:Ljava/util/List;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mPackageNames:Ljava/util/List;

    .line 39
    .line 40
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mProjectionTypePropertyMasks:Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/app/appsearch/util/BundleUtil;->deepCopy(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mProjectionTypePropertyMasks:Landroid/os/Bundle;

    .line 47
    .line 48
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mTypePropertyWeights:Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-static {v0}, Landroid/app/appsearch/util/BundleUtil;->deepCopy(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mTypePropertyWeights:Landroid/os/Bundle;

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    iget-object v1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mEmbeddingParameters:Ljava/util/List;

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mEmbeddingParameters:Ljava/util/List;

    .line 64
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    iget-object v1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mInformationalRankingExpressions:Ljava/util/List;

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mInformationalRankingExpressions:Ljava/util/List;

    .line 73
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    iget-object v1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSearchStringParameters:Ljava/util/List;

    .line 77
    .line 78
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSearchStringParameters:Ljava/util/List;

    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    iget-object v1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mFilterDocumentIds:Ljava/util/List;

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mFilterDocumentIds:Ljava/util/List;

    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mBuilt:Z

    .line 94
    .line 95
    :cond_5e
    return-void
.end method


# virtual methods
.method public whitelist addEmbeddingParameters(Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/app/appsearch/EmbeddingVector;",
            ">;)",
            "Landroid/app/appsearch/SearchSpec$Builder;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 6
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mEmbeddingParameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs whitelist addEmbeddingParameters([Landroid/app/appsearch/EmbeddingVector;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->addEmbeddingParameters(Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist addFilterDocumentIds(Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/SearchSpec$Builder;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 6
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mFilterDocumentIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs whitelist addFilterDocumentIds([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterDocumentIds(Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist addFilterNamespaces(Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/SearchSpec$Builder;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 6
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mNamespaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs whitelist addFilterNamespaces([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterNamespaces(Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist addFilterPackageNames(Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/SearchSpec$Builder;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 6
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mPackageNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs whitelist addFilterPackageNames([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterPackageNames(Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist addFilterProperties(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/SearchSpec$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_29

    .line 28
    .line 29
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_16

    .line 42
    :cond_29
    iget-object p2, p0, Landroid/app/appsearch/SearchSpec$Builder;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method public whitelist addFilterPropertyPaths(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroid/app/appsearch/PropertyPath;",
            ">;)",
            "Landroid/app/appsearch/SearchSpec$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_27

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/app/appsearch/PropertyPath;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/app/appsearch/PropertyPath;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_13

    .line 40
    :cond_27
    invoke-virtual {p0, p1, v0}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterProperties(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public whitelist addFilterSchemas(Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/SearchSpec$Builder;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 6
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSchemas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs whitelist addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas(Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist addInformationalRankingExpressions(Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/SearchSpec$Builder;"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 7
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mInformationalRankingExpressions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs whitelist addInformationalRankingExpressions([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->addInformationalRankingExpressions(Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist addProjection(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/SearchSpec$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_29

    .line 28
    .line 29
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_16

    .line 42
    :cond_29
    iget-object p2, p0, Landroid/app/appsearch/SearchSpec$Builder;->mProjectionTypePropertyMasks:Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method public whitelist addProjectionPaths(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroid/app/appsearch/PropertyPath;",
            ">;)",
            "Landroid/app/appsearch/SearchSpec$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_27

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/app/appsearch/PropertyPath;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/app/appsearch/PropertyPath;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_13

    .line 40
    :cond_27
    invoke-virtual {p0, p1, v0}, Landroid/app/appsearch/SearchSpec$Builder;->addProjection(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public whitelist addSearchStringParameters(Ljava/util/List;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/SearchSpec$Builder;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 6
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSearchStringParameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs whitelist addSearchStringParameters([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->addSearchStringParameters(Ljava/util/List;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist build()Landroid/app/appsearch/SearchSpec;
    .registers 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroid/app/appsearch/SearchSpec$Builder;->mJoinSpec:Landroid/app/appsearch/JoinSpec;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    if-eqz v1, :cond_1b

    .line 8
    .line 9
    iget v3, v0, Landroid/app/appsearch/SearchSpec$Builder;->mRankingStrategy:I

    .line 10
    .line 11
    if-eq v3, v2, :cond_1f

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/app/appsearch/JoinSpec;->getAggregationScoringStrategy()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_13

    .line 18
    .line 19
    goto :goto_1f

    .line 20
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v1, "Aggregate scoring strategy has been set in the nested JoinSpec, but ranking strategy is not RANKING_STRATEGY_JOIN_AGGREGATE_SCORE"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1b
    iget v1, v0, Landroid/app/appsearch/SearchSpec$Builder;->mRankingStrategy:I

    .line 29
    .line 30
    if-eq v1, v2, :cond_99

    .line 31
    .line 32
    :cond_1f
    :goto_1f
    iget-object v1, v0, Landroid/app/appsearch/SearchSpec$Builder;->mTypePropertyWeights:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_39

    .line 39
    .line 40
    iget v1, v0, Landroid/app/appsearch/SearchSpec$Builder;->mRankingStrategy:I

    .line 41
    .line 42
    const/4 v2, 0x3

    .line 43
    if-eq v1, v2, :cond_39

    .line 44
    .line 45
    const/16 v2, 0x9

    .line 46
    .line 47
    if-ne v1, v2, :cond_31

    .line 48
    .line 49
    goto :goto_39

    .line 50
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string v1, "Property weights are only compatible with the RANKING_STRATEGY_RELEVANCE_SCORE and RANKING_STRATEGY_ADVANCED_RANKING_EXPRESSION ranking strategies."

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_39
    :goto_39
    const/4 v1, 0x1

    .line 59
    iput-boolean v1, v0, Landroid/app/appsearch/SearchSpec$Builder;->mBuilt:Z

    .line 60
    .line 61
    new-instance v2, Landroid/app/appsearch/SearchSpec;

    .line 62
    .line 63
    iget v3, v0, Landroid/app/appsearch/SearchSpec$Builder;->mTermMatchType:I

    .line 64
    .line 65
    iget-object v4, v0, Landroid/app/appsearch/SearchSpec$Builder;->mSchemas:Ljava/util/List;

    .line 66
    .line 67
    iget-object v5, v0, Landroid/app/appsearch/SearchSpec$Builder;->mNamespaces:Ljava/util/List;

    .line 68
    .line 69
    iget-object v6, v0, Landroid/app/appsearch/SearchSpec$Builder;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 70
    .line 71
    iget-object v7, v0, Landroid/app/appsearch/SearchSpec$Builder;->mPackageNames:Ljava/util/List;

    .line 72
    .line 73
    iget v8, v0, Landroid/app/appsearch/SearchSpec$Builder;->mResultCountPerPage:I

    .line 74
    .line 75
    iget v9, v0, Landroid/app/appsearch/SearchSpec$Builder;->mRankingStrategy:I

    .line 76
    .line 77
    iget v10, v0, Landroid/app/appsearch/SearchSpec$Builder;->mOrder:I

    .line 78
    .line 79
    iget v11, v0, Landroid/app/appsearch/SearchSpec$Builder;->mSnippetCount:I

    .line 80
    .line 81
    iget v12, v0, Landroid/app/appsearch/SearchSpec$Builder;->mSnippetCountPerProperty:I

    .line 82
    .line 83
    iget v13, v0, Landroid/app/appsearch/SearchSpec$Builder;->mMaxSnippetSize:I

    .line 84
    .line 85
    iget-object v14, v0, Landroid/app/appsearch/SearchSpec$Builder;->mProjectionTypePropertyMasks:Landroid/os/Bundle;

    .line 86
    .line 87
    iget v15, v0, Landroid/app/appsearch/SearchSpec$Builder;->mGroupingTypeFlags:I

    .line 88
    .line 89
    iget v1, v0, Landroid/app/appsearch/SearchSpec$Builder;->mGroupingLimit:I

    .line 90
    .line 91
    move/from16 v16, v1

    .line 92
    .line 93
    iget-object v1, v0, Landroid/app/appsearch/SearchSpec$Builder;->mTypePropertyWeights:Landroid/os/Bundle;

    .line 94
    .line 95
    move-object/from16 v17, v1

    .line 96
    .line 97
    iget-object v1, v0, Landroid/app/appsearch/SearchSpec$Builder;->mJoinSpec:Landroid/app/appsearch/JoinSpec;

    .line 98
    .line 99
    move-object/from16 v18, v1

    .line 100
    .line 101
    iget-object v1, v0, Landroid/app/appsearch/SearchSpec$Builder;->mAdvancedRankingExpression:Ljava/lang/String;

    .line 102
    .line 103
    move-object/from16 v19, v1

    .line 104
    .line 105
    new-instance v1, Ljava/util/ArrayList;

    .line 106
    .line 107
    move-object/from16 v20, v2

    .line 108
    .line 109
    iget-object v2, v0, Landroid/app/appsearch/SearchSpec$Builder;->mEnabledFeatures:Landroid/util/ArraySet;

    .line 110
    .line 111
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    .line 113
    .line 114
    iget-object v2, v0, Landroid/app/appsearch/SearchSpec$Builder;->mSearchSourceLogTag:Ljava/lang/String;

    .line 115
    .line 116
    move-object/from16 v21, v1

    .line 117
    .line 118
    iget-object v1, v0, Landroid/app/appsearch/SearchSpec$Builder;->mEmbeddingParameters:Ljava/util/List;

    .line 119
    .line 120
    move-object/from16 v22, v1

    .line 121
    .line 122
    iget v1, v0, Landroid/app/appsearch/SearchSpec$Builder;->mDefaultEmbeddingSearchMetricType:I

    .line 123
    .line 124
    move/from16 v23, v1

    .line 125
    .line 126
    iget-object v1, v0, Landroid/app/appsearch/SearchSpec$Builder;->mInformationalRankingExpressions:Ljava/util/List;

    .line 127
    .line 128
    move-object/from16 v24, v1

    .line 129
    .line 130
    iget-object v1, v0, Landroid/app/appsearch/SearchSpec$Builder;->mSearchStringParameters:Ljava/util/List;

    .line 131
    .line 132
    move-object/from16 v25, v1

    .line 133
    .line 134
    iget-object v1, v0, Landroid/app/appsearch/SearchSpec$Builder;->mFilterDocumentIds:Ljava/util/List;

    .line 135
    .line 136
    iget-boolean v0, v0, Landroid/app/appsearch/SearchSpec$Builder;->mRetrieveEmbeddingMatchInfos:Z

    .line 137
    .line 138
    move-object/from16 v26, v21

    .line 139
    .line 140
    move-object/from16 v21, v2

    .line 141
    .line 142
    move-object/from16 v2, v20

    .line 143
    .line 144
    move-object/from16 v20, v26

    .line 145
    .line 146
    move/from16 v27, v0

    .line 147
    .line 148
    move-object/from16 v26, v1

    .line 149
    .line 150
    invoke-direct/range {v2 .. v27}, Landroid/app/appsearch/SearchSpec;-><init>(ILjava/util/List;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;IIIIIILandroid/os/Bundle;IILandroid/os/Bundle;Landroid/app/appsearch/JoinSpec;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    .line 151
    .line 152
    .line 153
    return-object v2

    .line 154
    :cond_99
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 155
    .line 156
    const-string v1, "Attempting to rank based on joined documents, but no JoinSpec provided"

    .line 157
    .line 158
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v0
.end method

.method public whitelist clearEmbeddingParameters()Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mEmbeddingParameters:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist clearFilterDocumentIds()Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mFilterDocumentIds:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist clearFilterNamespaces()Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mNamespaces:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist clearFilterPackageNames()Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mPackageNames:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist clearFilterProperties()Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist clearFilterSchemas()Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSchemas:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist clearInformationalRankingExpressions()Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mInformationalRankingExpressions:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist clearJoinSpec()Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mJoinSpec:Landroid/app/appsearch/JoinSpec;

    .line 6
    .line 7
    return-object p0
.end method

.method public whitelist clearProjections()Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mProjectionTypePropertyMasks:Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist clearPropertyWeights()Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mTypePropertyWeights:Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist clearResultGrouping()Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mGroupingTypeFlags:I

    .line 6
    .line 7
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mGroupingLimit:I

    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist clearSearchSourceLogTag()Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSearchSourceLogTag:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public whitelist clearSearchStringParameters()Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSearchStringParameters:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist setDefaultEmbeddingSearchMetricType(I)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "Embedding search metric type"

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 9
    .line 10
    .line 11
    iput p1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mDefaultEmbeddingSearchMetricType:I

    .line 12
    .line 13
    return-object p0
.end method

.method public whitelist setJoinSpec(Landroid/app/appsearch/JoinSpec;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mJoinSpec:Landroid/app/appsearch/JoinSpec;

    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist setListFilterHasPropertyFunctionEnabled(Z)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 3

    .line 1
    const-string v0, "LIST_FILTER_HAS_PROPERTY_FUNCTION"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->modifyEnabledFeature(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public whitelist setListFilterMatchScoreExpressionFunctionEnabled(Z)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 3

    .line 1
    const-string v0, "LIST_FILTER_MATCH_SCORE_EXPRESSION_FUNCTION"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->modifyEnabledFeature(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public whitelist setListFilterQueryLanguageEnabled(Z)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 3

    .line 1
    const-string v0, "LIST_FILTER_QUERY_LANGUAGE"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->modifyEnabledFeature(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public whitelist setMaxSnippetSize(I)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 5

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    const-string v1, "maxSnippetSize"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 10
    .line 11
    .line 12
    iput p1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mMaxSnippetSize:I

    .line 13
    .line 14
    return-object p0
.end method

.method public whitelist setNumericSearchEnabled(Z)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 3

    .line 1
    const-string v0, "NUMERIC_SEARCH"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->modifyEnabledFeature(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public whitelist setOrder(I)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "Result ranking order"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 9
    .line 10
    .line 11
    iput p1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mOrder:I

    .line 12
    .line 13
    return-object p0
.end method

.method public whitelist setPropertyWeightPaths(Ljava/lang/String;Ljava/util/Map;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/app/appsearch/PropertyPath;",
            "Ljava/lang/Double;",
            ">;)",
            "Landroid/app/appsearch/SearchSpec$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_37

    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/app/appsearch/PropertyPath;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/app/appsearch/PropertyPath;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/lang/Double;

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_14

    .line 56
    :cond_37
    invoke-virtual {p0, p1, v0}, Landroid/app/appsearch/SearchSpec$Builder;->setPropertyWeights(Ljava/lang/String;Ljava/util/Map;)Landroid/app/appsearch/SearchSpec$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public whitelist setPropertyWeights(Ljava/lang/String;Ljava/util/Map;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)",
            "Landroid/app/appsearch/SearchSpec$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_5f

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/Double;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    const-wide/16 v5, 0x0

    .line 55
    .line 56
    cmpg-double v3, v3, v5

    .line 57
    .line 58
    if-lez v3, :cond_43

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 65
    .line 66
    .line 67
    goto :goto_13

    .line 68
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string p2, "Cannot set non-positive property weight value "

    .line 73
    .line 74
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p2, " for property path: "

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_5f
    iget-object p2, p0, Landroid/app/appsearch/SearchSpec$Builder;->mTypePropertyWeights:Landroid/os/Bundle;

    .line 97
    .line 98
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 99
    .line 100
    .line 101
    return-object p0
.end method

.method public whitelist setRankingStrategy(I)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 5

    const/16 v0, 0x8

    .line 1
    const-string v1, "Result ranking strategy"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 3
    iput p1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mRankingStrategy:I

    .line 4
    const-string p1, ""

    iput-object p1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mAdvancedRankingExpression:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setRankingStrategy(Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 3

    .line 5
    invoke-static {p1}, Landroid/app/appsearch/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 6
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    const/16 v0, 0x9

    .line 7
    iput v0, p0, Landroid/app/appsearch/SearchSpec$Builder;->mRankingStrategy:I

    .line 8
    iput-object p1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mAdvancedRankingExpression:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setResultCountPerPage(I)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 5

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    const-string v1, "resultCountPerPage"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 10
    .line 11
    .line 12
    iput p1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mResultCountPerPage:I

    .line 13
    .line 14
    return-object p0
.end method

.method public whitelist setResultGrouping(II)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 5

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 6
    :goto_5
    const-string v1, "Result grouping type cannot be zero."

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mGroupingTypeFlags:I

    .line 15
    .line 16
    iput p2, p0, Landroid/app/appsearch/SearchSpec$Builder;->mGroupingLimit:I

    .line 17
    .line 18
    return-object p0
.end method

.method public blacklist setRetrieveEmbeddingMatchInfos(Z)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mRetrieveEmbeddingMatchInfos:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public whitelist setScorablePropertyRankingEnabled(Z)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 3

    .line 1
    const-string v0, "SCHEMA_SCORABLE_PROPERTY_CONFIG"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->modifyEnabledFeature(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public whitelist setSearchSourceLogTag(Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x64

    .line 9
    .line 10
    if-gt v0, v1, :cond_d

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "The maximum supported tag length is 100. This tag is too long: "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSearchSourceLogTag:Ljava/lang/String;

    .line 40
    .line 41
    return-object p0
.end method

.method public whitelist setSnippetCount(I)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 5

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    const-string v1, "snippetCount"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 10
    .line 11
    .line 12
    iput p1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSnippetCount:I

    .line 13
    .line 14
    return-object p0
.end method

.method public whitelist setSnippetCountPerProperty(I)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 5

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    const-string v1, "snippetCountPerProperty"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 10
    .line 11
    .line 12
    iput p1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mSnippetCountPerProperty:I

    .line 13
    .line 14
    return-object p0
.end method

.method public whitelist setTermMatch(I)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "Term match type"

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroid/app/appsearch/SearchSpec$Builder;->resetIfBuilt()V

    .line 9
    .line 10
    .line 11
    iput p1, p0, Landroid/app/appsearch/SearchSpec$Builder;->mTermMatchType:I

    .line 12
    .line 13
    return-object p0
.end method

.method public whitelist setVerbatimSearchEnabled(Z)Landroid/app/appsearch/SearchSpec$Builder;
    .registers 3

    .line 1
    const-string v0, "VERBATIM_SEARCH"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->modifyEnabledFeature(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
