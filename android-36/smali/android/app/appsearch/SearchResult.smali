.class public final Landroid/app/appsearch/SearchResult;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/SearchResult$MatchInfo;,
        Landroid/app/appsearch/SearchResult$TextMatchInfo;,
        Landroid/app/appsearch/SearchResult$MatchRange;,
        Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;,
        Landroid/app/appsearch/SearchResult$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/SearchResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDatabaseName:Ljava/lang/String;

.field final blacklist mDocument:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

.field private blacklist mDocumentCached:Landroid/app/appsearch/GenericDocument;

.field private final blacklist mInformationalRankingSignals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mJoinedResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mMatchInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult$MatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMatchInfosCached:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult$MatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageName:Ljava/lang/String;

.field final blacklist mParentTypeMap:Landroid/os/Bundle;

.field private final blacklist mRankingSignal:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/SearchResultCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/SearchResultCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/SearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;DLjava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/safeparcel/GenericDocumentParcel;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult$MatchInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/app/appsearch/SearchResult;->mDocument:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroid/app/appsearch/SearchResult;->mMatchInfos:Ljava/util/List;

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Landroid/app/appsearch/SearchResult;->mPackageName:Ljava/lang/String;

    .line 5
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Landroid/app/appsearch/SearchResult;->mDatabaseName:Ljava/lang/String;

    .line 6
    iput-wide p5, p0, Landroid/app/appsearch/SearchResult;->mRankingSignal:D

    .line 7
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/SearchResult;->mJoinedResults:Ljava/util/List;

    if-eqz p8, :cond_2b

    .line 8
    invoke-static {p8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/SearchResult;->mInformationalRankingSignals:Ljava/util/List;

    goto :goto_2f

    .line 9
    :cond_2b
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Landroid/app/appsearch/SearchResult;->mInformationalRankingSignals:Ljava/util/List;

    :goto_2f
    if-eqz p9, :cond_34

    .line 10
    iput-object p9, p0, Landroid/app/appsearch/SearchResult;->mParentTypeMap:Landroid/os/Bundle;

    return-void

    .line 11
    :cond_34
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/app/appsearch/SearchResult;->mParentTypeMap:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist getDatabaseName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult;->mDatabaseName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getGenericDocument()Landroid/app/appsearch/GenericDocument;
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchResult;->mDocumentCached:Landroid/app/appsearch/GenericDocument;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    new-instance v0, Landroid/app/appsearch/GenericDocument;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/SearchResult;->mDocument:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/app/appsearch/GenericDocument;-><init>(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/appsearch/SearchResult;->mDocumentCached:Landroid/app/appsearch/GenericDocument;

    .line 13
    .line 14
    :cond_d
    iget-object p0, p0, Landroid/app/appsearch/SearchResult;->mDocumentCached:Landroid/app/appsearch/GenericDocument;

    .line 15
    .line 16
    return-object p0
.end method

.method public whitelist getInformationalRankingSignals()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult;->mInformationalRankingSignals:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getJoinedResults()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult;->mJoinedResults:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getMatchInfos()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult$MatchInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchResult;->mMatchInfosCached:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_4c

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/SearchResult;->mMatchInfos:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/app/appsearch/SearchResult;->mMatchInfosCached:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_12
    iget-object v1, p0, Landroid/app/appsearch/SearchResult;->mMatchInfos:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ge v0, v1, :cond_44

    .line 26
    .line 27
    iget-object v1, p0, Landroid/app/appsearch/SearchResult;->mMatchInfos:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/app/appsearch/SearchResult$MatchInfo;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Landroid/app/appsearch/SearchResult$MatchInfo;->setDocument(Landroid/app/appsearch/GenericDocument;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/app/appsearch/SearchResult$MatchInfo;->getTextMatch()Landroid/app/appsearch/SearchResult$TextMatchInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_3a

    .line 47
    .line 48
    invoke-static {v1}, Landroid/app/appsearch/SearchResult$MatchInfo;->-$$Nest$fgetmTextMatch(Landroid/app/appsearch/SearchResult$MatchInfo;)Landroid/app/appsearch/SearchResult$TextMatchInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1}, Landroid/app/appsearch/SearchResult$MatchInfo;->getPropertyPath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Landroid/app/appsearch/SearchResult$TextMatchInfo;->setPropertyPath(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_3a
    iget-object v2, p0, Landroid/app/appsearch/SearchResult;->mMatchInfosCached:Ljava/util/List;

    .line 60
    .line 61
    if-eqz v2, :cond_41

    .line 62
    .line 63
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_41
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_12

    .line 69
    :cond_44
    iget-object v0, p0, Landroid/app/appsearch/SearchResult;->mMatchInfosCached:Ljava/util/List;

    .line 70
    .line 71
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Landroid/app/appsearch/SearchResult;->mMatchInfosCached:Ljava/util/List;

    .line 76
    .line 77
    :cond_4c
    iget-object p0, p0, Landroid/app/appsearch/SearchResult;->mMatchInfosCached:Ljava/util/List;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    return-object p0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResult;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getParentTypeMap()Ljava/util/Map;
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
    iget-object v0, p0, Landroid/app/appsearch/SearchResult;->mParentTypeMap:Landroid/os/Bundle;

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
    if-eqz v2, :cond_2b

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
    iget-object v3, p0, Landroid/app/appsearch/SearchResult;->mParentTypeMap:Landroid/os/Bundle;

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
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_13

    .line 44
    :cond_2b
    return-object v1
.end method

.method public whitelist getRankingSignal()D
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/SearchResult;->mRankingSignal:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/SearchResultCreator;->writeToParcel(Landroid/app/appsearch/SearchResult;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
