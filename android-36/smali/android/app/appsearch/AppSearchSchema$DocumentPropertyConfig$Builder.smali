.class public final Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCardinality:I

.field private blacklist mDescription:Ljava/lang/String;

.field private final blacklist mIndexableNestedPropertiesList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPropertyName:Ljava/lang/String;

.field private final blacklist mSchemaType:Ljava/lang/String;

.field private blacklist mShouldIndexNestedProperties:Z


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mDescription:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iput v0, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mCardinality:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mShouldIndexNestedProperties:Z

    .line 13
    .line 14
    new-instance v0, Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mIndexableNestedPropertiesList:Ljava/util/Set;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mPropertyName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mSchemaType:Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public whitelist addIndexableNestedProperties(Ljava/util/Collection;)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mIndexableNestedPropertiesList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs whitelist addIndexableNestedProperties([Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->addIndexableNestedProperties(Ljava/util/Collection;)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist addIndexableNestedPropertyPaths(Ljava/util/Collection;)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/app/appsearch/PropertyPath;",
            ">;)",
            "Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 5
    :goto_9
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 6
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mIndexableNestedPropertiesList:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/appsearch/PropertyPath;

    invoke-virtual {v3}, Landroid/app/appsearch/PropertyPath;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_21
    return-object p0
.end method

.method public varargs whitelist addIndexableNestedPropertyPaths([Landroid/app/appsearch/PropertyPath;)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->addIndexableNestedPropertyPaths(Ljava/util/Collection;)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist build()Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;
    .registers 9

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mShouldIndexNestedProperties:Z

    .line 2
    .line 3
    if-eqz v0, :cond_15

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mIndexableNestedPropertiesList:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 12
    .line 13
    goto :goto_15

    .line 14
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v0, "DocumentIndexingConfig#shouldIndexNestedProperties is required to be false when one or more indexableNestedProperties are provided."

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :cond_15
    :goto_15
    new-instance v0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;

    .line 23
    .line 24
    iget-object v1, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mPropertyName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mDescription:Ljava/lang/String;

    .line 27
    .line 28
    iget v3, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mCardinality:I

    .line 29
    .line 30
    iget-object v4, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mSchemaType:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v5, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;

    .line 33
    .line 34
    iget-boolean v6, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mShouldIndexNestedProperties:Z

    .line 35
    .line 36
    new-instance v7, Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mIndexableNestedPropertiesList:Ljava/util/Set;

    .line 39
    .line 40
    invoke-direct {v7, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v5, v6, v7}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;-><init>(ZLjava/util/List;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->createForDocument(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;)Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;-><init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public whitelist setCardinality(I)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "cardinality"

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iput p1, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mCardinality:I

    .line 9
    .line 10
    return-object p0
.end method

.method public blacklist setDescription(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mDescription:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public whitelist setShouldIndexNestedProperties(Z)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->mShouldIndexNestedProperties:Z

    .line 2
    .line 3
    return-object p0
.end method
