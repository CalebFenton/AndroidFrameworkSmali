.class public final Landroid/app/appsearch/SearchSuggestionSpec$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/SearchSuggestionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilt:Z

.field private blacklist mDocumentIds:Landroid/os/Bundle;

.field private blacklist mNamespaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRankingStrategy:I

.field private blacklist mSchemas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSearchStringParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTotalResultCount:I

.field private blacklist mTypePropertyFilters:Landroid/os/Bundle;


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mNamespaces:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mSchemas:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 24
    .line 25
    new-instance v0, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mDocumentIds:Landroid/os/Bundle;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mRankingStrategy:I

    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mSearchStringParameters:Ljava/util/List;

    .line 41
    .line 42
    iput-boolean v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mBuilt:Z

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    if-lt p1, v1, :cond_2f

    .line 46
    .line 47
    move v0, v1

    .line 48
    :cond_2f
    const-string v1, "maximumResultCount must be positive."

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput p1, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mTotalResultCount:I

    .line 54
    .line 55
    return-void
.end method

.method private blacklist resetIfBuilt()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mBuilt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_32

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mNamespaces:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mNamespaces:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mSchemas:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mSchemas:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/app/appsearch/util/BundleUtil;->deepCopy(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 30
    .line 31
    iget-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mDocumentIds:Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-static {v0}, Landroid/app/appsearch/util/BundleUtil;->deepCopy(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mDocumentIds:Landroid/os/Bundle;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    iget-object v1, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mSearchStringParameters:Ljava/util/List;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mSearchStringParameters:Ljava/util/List;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mBuilt:Z

    .line 50
    .line 51
    :cond_32
    return-void
.end method


# virtual methods
.method public whitelist addFilterDocumentIds(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSuggestionSpec$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/SearchSuggestionSpec$Builder;"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-direct {p0}, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->resetIfBuilt()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 11
    :cond_29
    iget-object p2, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mDocumentIds:Landroid/os/Bundle;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public varargs whitelist addFilterDocumentIds(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/SearchSuggestionSpec$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->resetIfBuilt()V

    .line 4
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->addFilterDocumentIds(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSuggestionSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist addFilterNamespaces(Ljava/util/Collection;)Landroid/app/appsearch/SearchSuggestionSpec$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/SearchSuggestionSpec$Builder;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->resetIfBuilt()V

    .line 6
    iget-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mNamespaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs whitelist addFilterNamespaces([Ljava/lang/String;)Landroid/app/appsearch/SearchSuggestionSpec$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->resetIfBuilt()V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->addFilterNamespaces(Ljava/util/Collection;)Landroid/app/appsearch/SearchSuggestionSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist addFilterProperties(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSuggestionSpec$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/SearchSuggestionSpec$Builder;"
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
    invoke-direct {p0}, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->resetIfBuilt()V

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
    iget-object p2, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method public whitelist addFilterPropertyPaths(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSuggestionSpec$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroid/app/appsearch/PropertyPath;",
            ">;)",
            "Landroid/app/appsearch/SearchSuggestionSpec$Builder;"
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
    invoke-virtual {p0, p1, v0}, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->addFilterProperties(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSuggestionSpec$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public whitelist addFilterSchemas(Ljava/util/Collection;)Landroid/app/appsearch/SearchSuggestionSpec$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/SearchSuggestionSpec$Builder;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->resetIfBuilt()V

    .line 6
    iget-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mSchemas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs whitelist addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSuggestionSpec$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->resetIfBuilt()V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->addFilterSchemas(Ljava/util/Collection;)Landroid/app/appsearch/SearchSuggestionSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist addSearchStringParameters(Ljava/util/List;)Landroid/app/appsearch/SearchSuggestionSpec$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/SearchSuggestionSpec$Builder;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->resetIfBuilt()V

    .line 6
    iget-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mSearchStringParameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs whitelist addSearchStringParameters([Ljava/lang/String;)Landroid/app/appsearch/SearchSuggestionSpec$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->resetIfBuilt()V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->addSearchStringParameters(Ljava/util/List;)Landroid/app/appsearch/SearchSuggestionSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist build()Landroid/app/appsearch/SearchSuggestionSpec;
    .registers 10

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mSchemas:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_45

    .line 8
    .line 9
    new-instance v0, Landroid/util/ArraySet;

    .line 10
    .line 11
    iget-object v1, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mSchemas:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_45

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2c

    .line 43
    .line 44
    goto :goto_19

    .line 45
    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, "The schema: "

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, " exists in the property filter but doesn\'t exist in the schema filter."

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_45
    iget-object v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mNamespaces:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_8a

    .line 77
    .line 78
    new-instance v0, Landroid/util/ArraySet;

    .line 79
    .line 80
    iget-object v1, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mNamespaces:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mDocumentIds:Landroid/os/Bundle;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_8a

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_71

    .line 112
    .line 113
    goto :goto_5e

    .line 114
    :cond_71
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v1, "The namespace: "

    .line 119
    .line 120
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, " exists in the document id filter but doesn\'t exist in the namespace filter."

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :cond_8a
    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mBuilt:Z

    .line 141
    .line 142
    new-instance v1, Landroid/app/appsearch/SearchSuggestionSpec;

    .line 143
    .line 144
    iget-object v2, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mNamespaces:Ljava/util/ArrayList;

    .line 145
    .line 146
    iget-object v3, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mSchemas:Ljava/util/ArrayList;

    .line 147
    .line 148
    iget-object v4, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 149
    .line 150
    iget-object v5, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mDocumentIds:Landroid/os/Bundle;

    .line 151
    .line 152
    iget v6, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mRankingStrategy:I

    .line 153
    .line 154
    iget v7, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mTotalResultCount:I

    .line 155
    .line 156
    iget-object v8, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mSearchStringParameters:Ljava/util/List;

    .line 157
    .line 158
    invoke-direct/range {v1 .. v8}, Landroid/app/appsearch/SearchSuggestionSpec;-><init>(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;IILjava/util/List;)V

    .line 159
    .line 160
    .line 161
    return-object v1
.end method

.method public whitelist setRankingStrategy(I)Landroid/app/appsearch/SearchSuggestionSpec$Builder;
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "Suggestion ranking strategy"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->resetIfBuilt()V

    .line 9
    .line 10
    .line 11
    iput p1, p0, Landroid/app/appsearch/SearchSuggestionSpec$Builder;->mRankingStrategy:I

    .line 12
    .line 13
    return-object p0
.end method
