.class public final Landroid/app/appsearch/SearchResult$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilt:Z

.field private final blacklist mDatabaseName:Ljava/lang/String;

.field private blacklist mGenericDocument:Landroid/app/appsearch/GenericDocument;

.field private blacklist mInformationalRankingSignals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mJoinedResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMatchInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult$MatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mParentTypeMap:Landroid/os/Bundle;

.field private blacklist mRankingSignal:D


# direct methods
.method public constructor blacklist <init>(Landroid/app/appsearch/SearchResult;)V
    .registers 7

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mMatchInfos:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mInformationalRankingSignals:Ljava/util/List;

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mParentTypeMap:Landroid/os/Bundle;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mJoinedResults:Ljava/util/List;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mBuilt:Z

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/appsearch/SearchResult$Builder;->mPackageName:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/appsearch/SearchResult$Builder;->mDatabaseName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    iput-object v1, p0, Landroid/app/appsearch/SearchResult$Builder;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    .line 19
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getRankingSignal()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/appsearch/SearchResult$Builder;->mRankingSignal:D

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getInformationalRankingSignals()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/app/appsearch/SearchResult$Builder;->mInformationalRankingSignals:Ljava/util/List;

    .line 22
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getParentTypeMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/appsearch/SearchResult$Builder;->setParentTypeMap(Ljava/util/Map;)Landroid/app/appsearch/SearchResult$Builder;

    .line 23
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getMatchInfos()Ljava/util/List;

    move-result-object v1

    move v2, v0

    .line 24
    :goto_54
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6f

    .line 25
    new-instance v3, Landroid/app/appsearch/SearchResult$MatchInfo$Builder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/appsearch/SearchResult$MatchInfo;

    invoke-direct {v3, v4}, Landroid/app/appsearch/SearchResult$MatchInfo$Builder;-><init>(Landroid/app/appsearch/SearchResult$MatchInfo;)V

    invoke-virtual {v3}, Landroid/app/appsearch/SearchResult$MatchInfo$Builder;->build()Landroid/app/appsearch/SearchResult$MatchInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/appsearch/SearchResult$Builder;->addMatchInfo(Landroid/app/appsearch/SearchResult$MatchInfo;)Landroid/app/appsearch/SearchResult$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 26
    :cond_6f
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getJoinedResults()Ljava/util/List;

    move-result-object p1

    .line 27
    :goto_73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_85

    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/SearchResult;

    invoke-virtual {p0, v1}, Landroid/app/appsearch/SearchResult$Builder;->addJoinedResult(Landroid/app/appsearch/SearchResult;)Landroid/app/appsearch/SearchResult$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_85
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mMatchInfos:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mInformationalRankingSignals:Ljava/util/List;

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mParentTypeMap:Landroid/os/Bundle;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mJoinedResults:Ljava/util/List;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mBuilt:Z

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/app/appsearch/SearchResult$Builder;->mPackageName:Ljava/lang/String;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroid/app/appsearch/SearchResult$Builder;->mDatabaseName:Ljava/lang/String;

    return-void
.end method

.method private blacklist resetIfBuilt()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mBuilt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2a

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/SearchResult$Builder;->mMatchInfos:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mMatchInfos:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/app/appsearch/SearchResult$Builder;->mJoinedResults:Ljava/util/List;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mJoinedResults:Ljava/util/List;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-object v1, p0, Landroid/app/appsearch/SearchResult$Builder;->mInformationalRankingSignals:Ljava/util/List;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mInformationalRankingSignals:Ljava/util/List;

    .line 31
    .line 32
    iget-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mParentTypeMap:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-static {v0}, Landroid/app/appsearch/util/BundleUtil;->deepCopy(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mParentTypeMap:Landroid/os/Bundle;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mBuilt:Z

    .line 42
    .line 43
    :cond_2a
    return-void
.end method


# virtual methods
.method public whitelist addInformationalRankingSignal(D)Landroid/app/appsearch/SearchResult$Builder;
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchResult$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mInformationalRankingSignals:Ljava/util/List;

    .line 5
    .line 6
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public whitelist addJoinedResult(Landroid/app/appsearch/SearchResult;)Landroid/app/appsearch/SearchResult$Builder;
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchResult$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mJoinedResults:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist addMatchInfo(Landroid/app/appsearch/SearchResult$MatchInfo;)Landroid/app/appsearch/SearchResult$Builder;
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/SearchResult$MatchInfo;->-$$Nest$fgetmDocument(Landroid/app/appsearch/SearchResult$MatchInfo;)Landroid/app/appsearch/GenericDocument;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    const-string v1, "This MatchInfo is already associated with a SearchResult and can\'t be reassigned"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroid/app/appsearch/SearchResult$Builder;->resetIfBuilt()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mMatchInfos:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public whitelist build()Landroid/app/appsearch/SearchResult;
    .registers 12

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mBuilt:Z

    .line 3
    .line 4
    new-instance v1, Landroid/app/appsearch/SearchResult;

    .line 5
    .line 6
    iget-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/appsearch/GenericDocument;->getDocumentParcel()Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Landroid/app/appsearch/SearchResult$Builder;->mMatchInfos:Ljava/util/List;

    .line 13
    .line 14
    iget-object v4, p0, Landroid/app/appsearch/SearchResult$Builder;->mPackageName:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v5, p0, Landroid/app/appsearch/SearchResult$Builder;->mDatabaseName:Ljava/lang/String;

    .line 17
    .line 18
    iget-wide v6, p0, Landroid/app/appsearch/SearchResult$Builder;->mRankingSignal:D

    .line 19
    .line 20
    iget-object v8, p0, Landroid/app/appsearch/SearchResult$Builder;->mJoinedResults:Ljava/util/List;

    .line 21
    .line 22
    iget-object v9, p0, Landroid/app/appsearch/SearchResult$Builder;->mInformationalRankingSignals:Ljava/util/List;

    .line 23
    .line 24
    iget-object v10, p0, Landroid/app/appsearch/SearchResult$Builder;->mParentTypeMap:Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct/range {v1 .. v10}, Landroid/app/appsearch/SearchResult;-><init>(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;DLjava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public blacklist clearJoinedResults()Landroid/app/appsearch/SearchResult$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchResult$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mJoinedResults:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public blacklist clearMatchInfos()Landroid/app/appsearch/SearchResult$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchResult$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mMatchInfos:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist setGenericDocument(Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/SearchResult$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SearchResult$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/SearchResult$Builder;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist setParentTypeMap(Ljava/util/Map;)Landroid/app/appsearch/SearchResult$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/app/appsearch/SearchResult$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SearchResult$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/SearchResult$Builder;->mParentTypeMap:Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_6e

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/util/List;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    :goto_41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-ge v2, v3, :cond_62

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    goto :goto_41

    .line 99
    :cond_62
    iget-object v2, p0, Landroid/app/appsearch/SearchResult$Builder;->mParentTypeMap:Landroid/os/Bundle;

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 108
    .line 109
    .line 110
    goto :goto_13

    .line 111
    :cond_6e
    return-object p0
.end method

.method public whitelist setRankingSignal(D)Landroid/app/appsearch/SearchResult$Builder;
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SearchResult$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroid/app/appsearch/SearchResult$Builder;->mRankingSignal:D

    .line 5
    .line 6
    return-object p0
.end method
