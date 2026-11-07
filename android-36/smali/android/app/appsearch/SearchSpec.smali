.class public final Landroid/app/appsearch/SearchSpec;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/SearchSpec$Builder;,
        Landroid/app/appsearch/SearchSpec$EmbeddingSearchMetricType;,
        Landroid/app/appsearch/SearchSpec$GroupingType;,
        Landroid/app/appsearch/SearchSpec$Order;,
        Landroid/app/appsearch/SearchSpec$RankingStrategy;,
        Landroid/app/appsearch/SearchSpec$TermMatch;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/SearchSpec;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_NUM_PER_PAGE:I = 0xa

.field public static final whitelist EMBEDDING_SEARCH_METRIC_TYPE_COSINE:I = 0x1

.field public static final whitelist EMBEDDING_SEARCH_METRIC_TYPE_DEFAULT:I = 0x0

.field public static final whitelist EMBEDDING_SEARCH_METRIC_TYPE_DOT_PRODUCT:I = 0x2

.field public static final whitelist EMBEDDING_SEARCH_METRIC_TYPE_EUCLIDEAN:I = 0x3

.field public static final whitelist GROUPING_TYPE_PER_NAMESPACE:I = 0x2

.field public static final whitelist GROUPING_TYPE_PER_PACKAGE:I = 0x1

.field public static final whitelist GROUPING_TYPE_PER_SCHEMA:I = 0x4

.field private static final blacklist MAX_NUM_PER_PAGE:I = 0x2710

.field private static final blacklist MAX_SNIPPET_COUNT:I = 0x2710

.field private static final blacklist MAX_SNIPPET_PER_PROPERTY_COUNT:I = 0x2710

.field private static final blacklist MAX_SNIPPET_SIZE_LIMIT:I = 0x2710

.field public static final whitelist ORDER_ASCENDING:I = 0x1

.field public static final whitelist ORDER_DESCENDING:I = 0x0

.field public static final whitelist PROJECTION_SCHEMA_TYPE_WILDCARD:Ljava/lang/String; = "*"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RANKING_STRATEGY_ADVANCED_RANKING_EXPRESSION:I = 0x9

.field public static final whitelist RANKING_STRATEGY_CREATION_TIMESTAMP:I = 0x2

.field public static final whitelist RANKING_STRATEGY_DOCUMENT_SCORE:I = 0x1

.field public static final whitelist RANKING_STRATEGY_JOIN_AGGREGATE_SCORE:I = 0x8

.field public static final whitelist RANKING_STRATEGY_NONE:I = 0x0

.field public static final whitelist RANKING_STRATEGY_RELEVANCE_SCORE:I = 0x3

.field public static final whitelist RANKING_STRATEGY_SYSTEM_USAGE_COUNT:I = 0x6

.field public static final whitelist RANKING_STRATEGY_SYSTEM_USAGE_LAST_USED_TIMESTAMP:I = 0x7

.field public static final whitelist RANKING_STRATEGY_USAGE_COUNT:I = 0x4

.field public static final whitelist RANKING_STRATEGY_USAGE_LAST_USED_TIMESTAMP:I = 0x5

.field public static final whitelist SCHEMA_TYPE_WILDCARD:Ljava/lang/String; = "*"

.field public static final whitelist TERM_MATCH_EXACT_ONLY:I = 0x1

.field public static final whitelist TERM_MATCH_PREFIX:I = 0x2


# instance fields
.field private final blacklist mAdvancedRankingExpression:Ljava/lang/String;

.field private final blacklist mDefaultEmbeddingSearchMetricType:I

.field private final blacklist mEmbeddingParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/EmbeddingVector;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEnabledFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFilterDocumentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGroupingLimit:I

.field private final blacklist mInformationalRankingExpressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mJoinSpec:Landroid/app/appsearch/JoinSpec;

.field private final blacklist mMaxSnippetSize:I

.field private final blacklist mNamespaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOrder:I

.field private final blacklist mPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mProjectionTypePropertyMasks:Landroid/os/Bundle;

.field private final blacklist mRankingStrategy:I

.field private final blacklist mResultCountPerPage:I

.field private final blacklist mResultGroupingTypeFlags:I

.field private final blacklist mRetrieveEmbeddingMatchInfos:Z

.field private final blacklist mSchemas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSearchSourceLogTag:Ljava/lang/String;

.field private final blacklist mSearchStringParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSnippetCount:I

.field private final blacklist mSnippetCountPerProperty:I

.field private final blacklist mTermMatchType:I

.field final blacklist mTypePropertyFilters:Landroid/os/Bundle;

.field final blacklist mTypePropertyWeightsField:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/SearchSpecCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/SearchSpecCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/SearchSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>(ILjava/util/List;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;IIIIIILandroid/os/Bundle;IILandroid/os/Bundle;Landroid/app/appsearch/JoinSpec;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIIIII",
            "Landroid/os/Bundle;",
            "II",
            "Landroid/os/Bundle;",
            "Landroid/app/appsearch/JoinSpec;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/EmbeddingVector;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Landroid/app/appsearch/SearchSpec;->mTermMatchType:I

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/SearchSpec;->mSchemas:Ljava/util/List;

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/SearchSpec;->mNamespaces:Ljava/util/List;

    .line 5
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Landroid/app/appsearch/SearchSpec;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 6
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/SearchSpec;->mPackageNames:Ljava/util/List;

    .line 7
    iput p6, p0, Landroid/app/appsearch/SearchSpec;->mResultCountPerPage:I

    .line 8
    iput p7, p0, Landroid/app/appsearch/SearchSpec;->mRankingStrategy:I

    .line 9
    iput p8, p0, Landroid/app/appsearch/SearchSpec;->mOrder:I

    .line 10
    iput p9, p0, Landroid/app/appsearch/SearchSpec;->mSnippetCount:I

    .line 11
    iput p10, p0, Landroid/app/appsearch/SearchSpec;->mSnippetCountPerProperty:I

    .line 12
    iput p11, p0, Landroid/app/appsearch/SearchSpec;->mMaxSnippetSize:I

    .line 13
    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p12, p0, Landroid/app/appsearch/SearchSpec;->mProjectionTypePropertyMasks:Landroid/os/Bundle;

    .line 14
    iput p13, p0, Landroid/app/appsearch/SearchSpec;->mResultGroupingTypeFlags:I

    .line 15
    iput p14, p0, Landroid/app/appsearch/SearchSpec;->mGroupingLimit:I

    .line 16
    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p15, p0, Landroid/app/appsearch/SearchSpec;->mTypePropertyWeightsField:Landroid/os/Bundle;

    move-object/from16 p1, p16

    .line 17
    iput-object p1, p0, Landroid/app/appsearch/SearchSpec;->mJoinSpec:Landroid/app/appsearch/JoinSpec;

    .line 18
    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p1, p17

    iput-object p1, p0, Landroid/app/appsearch/SearchSpec;->mAdvancedRankingExpression:Ljava/lang/String;

    .line 19
    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p18 .. p18}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/SearchSpec;->mEnabledFeatures:Ljava/util/List;

    move-object/from16 p1, p19

    .line 20
    iput-object p1, p0, Landroid/app/appsearch/SearchSpec;->mSearchSourceLogTag:Ljava/lang/String;

    if-eqz p20, :cond_62

    .line 21
    invoke-static/range {p20 .. p20}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/SearchSpec;->mEmbeddingParameters:Ljava/util/List;

    :goto_5f
    move/from16 p1, p21

    goto :goto_67

    .line 22
    :cond_62
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Landroid/app/appsearch/SearchSpec;->mEmbeddingParameters:Ljava/util/List;

    goto :goto_5f

    .line 23
    :goto_67
    iput p1, p0, Landroid/app/appsearch/SearchSpec;->mDefaultEmbeddingSearchMetricType:I

    if-eqz p22, :cond_72

    .line 24
    invoke-static/range {p22 .. p22}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/SearchSpec;->mInformationalRankingExpressions:Ljava/util/List;

    goto :goto_76

    .line 25
    :cond_72
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Landroid/app/appsearch/SearchSpec;->mInformationalRankingExpressions:Ljava/util/List;

    :goto_76
    if-eqz p23, :cond_7d

    .line 26
    invoke-static/range {p23 .. p23}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_7f

    .line 27
    :cond_7d
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_7f
    iput-object p1, p0, Landroid/app/appsearch/SearchSpec;->mSearchStringParameters:Ljava/util/List;

    if-eqz p24, :cond_88

    .line 28
    invoke-static/range {p24 .. p24}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_8a

    .line 29
    :cond_88
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_8a
    iput-object p1, p0, Landroid/app/appsearch/SearchSpec;->mFilterDocumentIds:Ljava/util/List;

    move/from16 p1, p25

    .line 30
    iput-boolean p1, p0, Landroid/app/appsearch/SearchSpec;->mRetrieveEmbeddingMatchInfos:Z

    return-void
.end method


# virtual methods
.method public whitelist getAdvancedRankingExpression()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mAdvancedRankingExpression:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getDefaultEmbeddingSearchMetricType()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/SearchSpec;->mDefaultEmbeddingSearchMetricType:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getEmbeddingParameters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/appsearch/EmbeddingVector;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mEmbeddingParameters:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getEnabledFeatures()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mEnabledFeatures:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getFilterDocumentIds()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mFilterDocumentIds:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getFilterNamespaces()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mNamespaces:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_6

    .line 4
    .line 5
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 6
    .line 7
    :cond_6
    return-object p0
.end method

.method public whitelist getFilterPackageNames()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mPackageNames:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_6

    .line 4
    .line 5
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 6
    .line 7
    :cond_6
    return-object p0
.end method

.method public whitelist getFilterProperties()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2c

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Landroid/app/appsearch/SearchSpec;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_13

    .line 45
    :cond_2c
    return-object v1
.end method

.method public whitelist getFilterSchemas()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mSchemas:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_6

    .line 4
    .line 5
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 6
    .line 7
    :cond_6
    return-object p0
.end method

.method public whitelist getInformationalRankingExpressions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mInformationalRankingExpressions:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getJoinSpec()Landroid/app/appsearch/JoinSpec;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mJoinSpec:Landroid/app/appsearch/JoinSpec;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getMaxSnippetSize()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/SearchSpec;->mMaxSnippetSize:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getOrder()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/SearchSpec;->mOrder:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getProjectionPaths()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/PropertyPath;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec;->mProjectionTypePropertyMasks:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_4c

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Landroid/app/appsearch/SearchSpec;->mProjectionTypePropertyMasks:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_13

    .line 39
    .line 40
    new-instance v4, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    :goto_31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-ge v5, v6, :cond_48

    .line 55
    .line 56
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    check-cast v6, Ljava/lang/String;

    .line 61
    .line 62
    new-instance v7, Landroid/app/appsearch/PropertyPath;

    .line 63
    .line 64
    invoke-direct {v7, v6}, Landroid/app/appsearch/PropertyPath;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    add-int/lit8 v5, v5, 0x1

    .line 71
    .line 72
    goto :goto_31

    .line 73
    :cond_48
    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_13

    .line 77
    :cond_4c
    return-object v1
.end method

.method public whitelist getProjections()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec;->mProjectionTypePropertyMasks:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2c

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Landroid/app/appsearch/SearchSpec;->mProjectionTypePropertyMasks:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_13

    .line 45
    :cond_2c
    return-object v1
.end method

.method public whitelist getPropertyWeightPaths()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/app/appsearch/PropertyPath;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec;->mTypePropertyWeightsField:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_59

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Landroid/app/appsearch/SearchSpec;->mTypePropertyWeightsField:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_13

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    new-instance v5, Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_55

    .line 62
    .line 63
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Ljava/lang/String;

    .line 68
    .line 69
    new-instance v7, Landroid/app/appsearch/PropertyPath;

    .line 70
    .line 71
    invoke-direct {v7, v6}, Landroid/app/appsearch/PropertyPath;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    .line 75
    .line 76
    .line 77
    move-result-wide v8

    .line 78
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v5, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    goto :goto_38

    .line 86
    :cond_55
    invoke-virtual {v1, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    goto :goto_13

    .line 90
    :cond_59
    return-object v1
.end method

.method public whitelist getPropertyWeights()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchSpec;->mTypePropertyWeightsField:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_54

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Landroid/app/appsearch/SearchSpec;->mTypePropertyWeightsField:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_13

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    new-instance v5, Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_50

    .line 62
    .line 63
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    .line 70
    .line 71
    .line 72
    move-result-wide v7

    .line 73
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_38

    .line 81
    :cond_50
    invoke-virtual {v1, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_13

    .line 85
    :cond_54
    return-object v1
.end method

.method public whitelist getRankingStrategy()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/SearchSpec;->mRankingStrategy:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getResultCountPerPage()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/SearchSpec;->mResultCountPerPage:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getResultGroupingLimit()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/SearchSpec;->mGroupingLimit:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getResultGroupingTypeFlags()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/SearchSpec;->mResultGroupingTypeFlags:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getSearchSourceLogTag()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mSearchSourceLogTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getSearchStringParameters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mSearchStringParameters:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getSnippetCount()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/SearchSpec;->mSnippetCount:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getSnippetCountPerProperty()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/SearchSpec;->mSnippetCountPerProperty:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getTermMatch()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/SearchSpec;->mTermMatchType:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist isListFilterHasPropertyFunctionEnabled()Z
    .registers 2

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mEnabledFeatures:Ljava/util/List;

    .line 2
    .line 3
    const-string v0, "LIST_FILTER_HAS_PROPERTY_FUNCTION"

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public whitelist isListFilterMatchScoreExpressionFunctionEnabled()Z
    .registers 2

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mEnabledFeatures:Ljava/util/List;

    .line 2
    .line 3
    const-string v0, "LIST_FILTER_MATCH_SCORE_EXPRESSION_FUNCTION"

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public whitelist isListFilterQueryLanguageEnabled()Z
    .registers 2

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mEnabledFeatures:Ljava/util/List;

    .line 2
    .line 3
    const-string v0, "LIST_FILTER_QUERY_LANGUAGE"

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public whitelist isNumericSearchEnabled()Z
    .registers 2

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mEnabledFeatures:Ljava/util/List;

    .line 2
    .line 3
    const-string v0, "NUMERIC_SEARCH"

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public whitelist isScorablePropertyRankingEnabled()Z
    .registers 2

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mEnabledFeatures:Ljava/util/List;

    .line 2
    .line 3
    const-string v0, "SCHEMA_SCORABLE_PROPERTY_CONFIG"

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public whitelist isVerbatimSearchEnabled()Z
    .registers 2

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSpec;->mEnabledFeatures:Ljava/util/List;

    .line 2
    .line 3
    const-string v0, "VERBATIM_SEARCH"

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public blacklist shouldRetrieveEmbeddingMatchInfos()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroid/app/appsearch/SearchSpec;->mRetrieveEmbeddingMatchInfos:Z

    .line 2
    .line 3
    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/SearchSpecCreator;->writeToParcel(Landroid/app/appsearch/SearchSpec;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
