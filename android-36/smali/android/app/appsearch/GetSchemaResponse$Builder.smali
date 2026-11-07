.class public final Landroid/app/appsearch/GetSchemaResponse$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/GetSchemaResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilt:Z

.field private blacklist mSchemas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVersion:I

.field private blacklist mVisibilityConfigBuilders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/InternalVisibilityConfig$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mVersion:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mSchemas:Ljava/util/ArrayList;

    .line 4
    iput-boolean v0, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mBuilt:Z

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/appsearch/GetSchemaResponse$Builder;->setVisibilitySettingSupported(Z)Landroid/app/appsearch/GetSchemaResponse$Builder;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/appsearch/GetSchemaResponse;)V
    .registers 8

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mVersion:I

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mSchemas:Ljava/util/ArrayList;

    .line 9
    iput-boolean v0, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mBuilt:Z

    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v1}, Landroid/app/appsearch/GetSchemaResponse$Builder;->setVisibilitySettingSupported(Z)Landroid/app/appsearch/GetSchemaResponse$Builder;

    .line 11
    invoke-static {p1}, Landroid/app/appsearch/GetSchemaResponse;->-$$Nest$fgetmVersion(Landroid/app/appsearch/GetSchemaResponse;)I

    move-result v1

    iput v1, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mVersion:I

    .line 12
    iget-object v1, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mSchemas:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/app/appsearch/GetSchemaResponse;->mSchemas:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object v1, p1, Landroid/app/appsearch/GetSchemaResponse;->mVisibilityConfigs:Ljava/util/List;

    if-eqz v1, :cond_43

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_28
    if-ge v0, v1, :cond_43

    .line 15
    iget-object v2, p1, Landroid/app/appsearch/GetSchemaResponse;->mVisibilityConfigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/appsearch/InternalVisibilityConfig;

    .line 16
    iget-object v3, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mVisibilityConfigBuilders:Ljava/util/Map;

    .line 17
    invoke-virtual {v2}, Landroid/app/appsearch/InternalVisibilityConfig;->getSchemaType()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    invoke-direct {v5, v2}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;-><init>(Landroid/app/appsearch/InternalVisibilityConfig;)V

    .line 18
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_43
    return-void
.end method

.method private blacklist getOrCreateVisibilityConfigBuilder(Ljava/lang/String;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mVisibilityConfigBuilders:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_17

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 10
    .line 11
    if-nez v0, :cond_16

    .line 12
    .line 13
    new-instance v0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mVisibilityConfigBuilders:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_16
    return-object v0

    .line 24
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string p1, "GetSchemaResponse is not configured withvisibility setting support"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method private blacklist getVisibilityConfigBuilder(Ljava/lang/String;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;
    .registers 2

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mVisibilityConfigBuilders:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz p0, :cond_b

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string p1, "GetSchemaResponse is not configured withvisibility setting support"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method private blacklist resetIfBuilt()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mBuilt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mSchemas:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mSchemas:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mBuilt:Z

    .line 16
    .line 17
    :cond_10
    return-void
.end method


# virtual methods
.method public whitelist addSchema(Landroid/app/appsearch/AppSearchSchema;)Landroid/app/appsearch/GetSchemaResponse$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mSchemas:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public whitelist addSchemaTypeNotDisplayedBySystem(Ljava/lang/String;)Landroid/app/appsearch/GetSchemaResponse$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/app/appsearch/GetSchemaResponse$Builder;->getOrCreateVisibilityConfigBuilder(Ljava/lang/String;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->setNotDisplayedBySystem(Z)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public whitelist build()Landroid/app/appsearch/GetSchemaResponse;
    .registers 4

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mVisibilityConfigBuilders:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_27

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mVisibilityConfigBuilders:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_28

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->build()Landroid/app/appsearch/InternalVisibilityConfig;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_13

    .line 40
    :cond_27
    const/4 v0, 0x0

    .line 41
    :cond_28
    const/4 v1, 0x1

    .line 42
    iput-boolean v1, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mBuilt:Z

    .line 43
    .line 44
    new-instance v1, Landroid/app/appsearch/GetSchemaResponse;

    .line 45
    .line 46
    iget v2, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mVersion:I

    .line 47
    .line 48
    iget-object p0, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mSchemas:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v1, v2, p0, v0}, Landroid/app/appsearch/GetSchemaResponse;-><init>(ILjava/util/List;Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    return-object v1
.end method

.method public whitelist clearPubliclyVisibleSchema(Ljava/lang/String;)Landroid/app/appsearch/GetSchemaResponse$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/app/appsearch/GetSchemaResponse$Builder;->getVisibilityConfigBuilder(Ljava/lang/String;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_10

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->setPubliclyVisibleTargetPackage(Landroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 15
    .line 16
    .line 17
    :cond_10
    return-object p0
.end method

.method public whitelist clearRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;)Landroid/app/appsearch/GetSchemaResponse$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/app/appsearch/GetSchemaResponse$Builder;->getVisibilityConfigBuilder(Ljava/lang/String;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_f

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->clearVisibleToPermissions()Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 14
    .line 15
    .line 16
    :cond_f
    return-object p0
.end method

.method public whitelist clearSchemaTypeNotDisplayedBySystem(Ljava/lang/String;)Landroid/app/appsearch/GetSchemaResponse$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/app/appsearch/GetSchemaResponse$Builder;->getVisibilityConfigBuilder(Ljava/lang/String;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_10

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->setNotDisplayedBySystem(Z)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 15
    .line 16
    .line 17
    :cond_10
    return-object p0
.end method

.method public whitelist clearSchemaTypeVisibleToConfigs(Ljava/lang/String;)Landroid/app/appsearch/GetSchemaResponse$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/app/appsearch/GetSchemaResponse$Builder;->getVisibilityConfigBuilder(Ljava/lang/String;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_f

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->clearVisibleToConfig()Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 14
    .line 15
    .line 16
    :cond_f
    return-object p0
.end method

.method public whitelist clearSchemaTypeVisibleToPackages(Ljava/lang/String;)Landroid/app/appsearch/GetSchemaResponse$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/app/appsearch/GetSchemaResponse$Builder;->getVisibilityConfigBuilder(Ljava/lang/String;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_f

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->clearVisibleToPackages()Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 14
    .line 15
    .line 16
    :cond_f
    return-object p0
.end method

.method public whitelist clearSchemas()Landroid/app/appsearch/GetSchemaResponse$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mSchemas:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist setPubliclyVisibleSchema(Ljava/lang/String;Landroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/GetSchemaResponse$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse$Builder;->resetIfBuilt()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/app/appsearch/GetSchemaResponse$Builder;->getOrCreateVisibilityConfigBuilder(Ljava/lang/String;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p2}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->setPubliclyVisibleTargetPackage(Landroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public whitelist setRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/GetSchemaResponse$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Landroid/app/appsearch/GetSchemaResponse$Builder;"
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
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse$Builder;->resetIfBuilt()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/app/appsearch/GetSchemaResponse$Builder;->getOrCreateVisibilityConfigBuilder(Ljava/lang/String;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_21

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/Set;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->addVisibleToPermissions(Ljava/util/Set;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 31
    .line 32
    .line 33
    goto :goto_11

    .line 34
    :cond_21
    return-object p0
.end method

.method public whitelist setSchemaTypeVisibleToConfigs(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/GetSchemaResponse$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/SchemaVisibilityConfig;",
            ">;)",
            "Landroid/app/appsearch/GetSchemaResponse$Builder;"
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
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse$Builder;->resetIfBuilt()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/app/appsearch/GetSchemaResponse$Builder;->getOrCreateVisibilityConfigBuilder(Ljava/lang/String;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_21

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/app/appsearch/SchemaVisibilityConfig;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->addVisibleToConfig(Landroid/app/appsearch/SchemaVisibilityConfig;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 31
    .line 32
    .line 33
    goto :goto_11

    .line 34
    :cond_21
    return-object p0
.end method

.method public whitelist setSchemaTypeVisibleToPackages(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/GetSchemaResponse$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/PackageIdentifier;",
            ">;)",
            "Landroid/app/appsearch/GetSchemaResponse$Builder;"
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
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse$Builder;->resetIfBuilt()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/app/appsearch/GetSchemaResponse$Builder;->getOrCreateVisibilityConfigBuilder(Ljava/lang/String;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_21

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/app/appsearch/PackageIdentifier;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->addVisibleToPackage(Landroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 31
    .line 32
    .line 33
    goto :goto_11

    .line 34
    :cond_21
    return-object p0
.end method

.method public whitelist setVersion(I)Landroid/app/appsearch/GetSchemaResponse$Builder;
    .registers 4

    .line 1
    if-ltz p1, :cond_4

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
    const-string v1, "Version must be a non-negative number."

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse$Builder;->resetIfBuilt()V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mVersion:I

    .line 15
    .line 16
    return-object p0
.end method

.method public blacklist setVisibilitySettingSupported(Z)Landroid/app/appsearch/GetSchemaResponse$Builder;
    .registers 2

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    new-instance p1, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mVisibilityConfigBuilders:Ljava/util/Map;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Landroid/app/appsearch/GetSchemaResponse$Builder;->mVisibilityConfigBuilders:Ljava/util/Map;

    .line 13
    .line 14
    return-object p0
.end method
