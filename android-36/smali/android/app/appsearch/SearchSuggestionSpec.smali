.class public final Landroid/app/appsearch/SearchSuggestionSpec;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/SearchSuggestionSpec$Builder;,
        Landroid/app/appsearch/SearchSuggestionSpec$SuggestionRankingStrategy;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/SearchSuggestionSpec;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SUGGESTION_RANKING_STRATEGY_DOCUMENT_COUNT:I = 0x0

.field public static final whitelist SUGGESTION_RANKING_STRATEGY_NONE:I = 0x2

.field public static final whitelist SUGGESTION_RANKING_STRATEGY_TERM_FREQUENCY:I = 0x1


# instance fields
.field final blacklist mFilterDocumentIds:Landroid/os/Bundle;

.field private final blacklist mFilterNamespaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mFilterProperties:Landroid/os/Bundle;

.field private final blacklist mFilterSchemas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMaximumResultCount:I

.field private final blacklist mRankingStrategy:I

.field private final blacklist mSearchStringParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/SearchSuggestionSpecCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/SearchSuggestionSpecCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/SearchSuggestionSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;IILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-lt p6, v0, :cond_7

    .line 6
    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    const-string v1, "MaximumResultCount must be positive."

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mFilterNamespaces:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mFilterSchemas:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iput-object p3, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mFilterProperties:Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iput-object p4, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mFilterDocumentIds:Landroid/os/Bundle;

    .line 33
    .line 34
    iput p5, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mRankingStrategy:I

    .line 35
    .line 36
    iput p6, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mMaximumResultCount:I

    .line 37
    .line 38
    if-eqz p7, :cond_2c

    .line 39
    .line 40
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 46
    .line 47
    :goto_2e
    iput-object p1, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mSearchStringParameters:Ljava/util/List;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public whitelist getFilterDocumentIds()Ljava/util/Map;
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
    iget-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mFilterDocumentIds:Landroid/os/Bundle;

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
    iget-object v3, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mFilterDocumentIds:Landroid/os/Bundle;

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
    iget-object p0, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mFilterNamespaces:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_7

    .line 4
    .line 5
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_7
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
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
    iget-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mFilterProperties:Landroid/os/Bundle;

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
    iget-object v3, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mFilterProperties:Landroid/os/Bundle;

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
    iget-object p0, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mFilterSchemas:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_7

    .line 4
    .line 5
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_7
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public whitelist getMaximumResultCount()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mMaximumResultCount:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getRankingStrategy()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mRankingStrategy:I

    .line 2
    .line 3
    return p0
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
    iget-object p0, p0, Landroid/app/appsearch/SearchSuggestionSpec;->mSearchStringParameters:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/SearchSuggestionSpecCreator;->writeToParcel(Landroid/app/appsearch/SearchSuggestionSpec;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
