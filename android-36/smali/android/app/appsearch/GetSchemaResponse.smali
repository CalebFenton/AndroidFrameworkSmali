.class public final Landroid/app/appsearch/GetSchemaResponse;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/GetSchemaResponse$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/GetSchemaResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mPubliclyVisibleSchemasCached:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/PackageIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSchemas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSchemasCached:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSchemasNotDisplayedBySystemCached:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSchemasVisibleToConfigsCached:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/SchemaVisibilityConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mSchemasVisibleToPackagesCached:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/PackageIdentifier;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mSchemasVisibleToPermissionsCached:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mVersion:I

.field final blacklist mVisibilityConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/InternalVisibilityConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmVersion(Landroid/app/appsearch/GetSchemaResponse;)I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/GetSchemaResponse;->mVersion:I

    .line 2
    .line 3
    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/GetSchemaResponseCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/GetSchemaResponseCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/GetSchemaResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>(ILjava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/InternalVisibilityConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/app/appsearch/GetSchemaResponse;->mVersion:I

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemas:Ljava/util/List;

    .line 10
    .line 11
    iput-object p3, p0, Landroid/app/appsearch/GetSchemaResponse;->mVisibilityConfigs:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method private blacklist getVisibilityConfigsOrThrow()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/appsearch/InternalVisibilityConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/GetSchemaResponse;->mVisibilityConfigs:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    const-string v0, "Get visibility setting is not supported with this backend/Android API level combination."

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method


# virtual methods
.method public whitelist getPubliclyVisibleSchemas()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/PackageIdentifier;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse;->getVisibilityConfigsOrThrow()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/app/appsearch/GetSchemaResponse;->mPubliclyVisibleSchemasCached:Ljava/util/Map;

    .line 6
    .line 7
    if-nez v1, :cond_34

    .line 8
    .line 9
    new-instance v1, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_2e

    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/app/appsearch/InternalVisibilityConfig;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/app/appsearch/InternalVisibilityConfig;->getVisibilityConfig()Landroid/app/appsearch/SchemaVisibilityConfig;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Landroid/app/appsearch/SchemaVisibilityConfig;->getPubliclyVisibleTargetPackage()Landroid/app/appsearch/PackageIdentifier;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-eqz v4, :cond_2b

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/app/appsearch/InternalVisibilityConfig;->getSchemaType()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_e

    .line 47
    :cond_2e
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Landroid/app/appsearch/GetSchemaResponse;->mPubliclyVisibleSchemasCached:Ljava/util/Map;

    .line 52
    .line 53
    :cond_34
    iget-object p0, p0, Landroid/app/appsearch/GetSchemaResponse;->mPubliclyVisibleSchemasCached:Ljava/util/Map;

    .line 54
    .line 55
    return-object p0
.end method

.method public whitelist getRequiredPermissionsForSchemaTypeVisibility()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse;->getVisibilityConfigsOrThrow()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemasVisibleToPermissionsCached:Ljava/util/Map;

    .line 6
    .line 7
    if-nez v1, :cond_3c

    .line 8
    .line 9
    new-instance v1, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_36

    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/app/appsearch/InternalVisibilityConfig;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/app/appsearch/InternalVisibilityConfig;->getVisibilityConfig()Landroid/app/appsearch/SchemaVisibilityConfig;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Landroid/app/appsearch/SchemaVisibilityConfig;->getRequiredPermissions()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_33

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/app/appsearch/InternalVisibilityConfig;->getSchemaType()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_33
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_e

    .line 55
    :cond_36
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemasVisibleToPermissionsCached:Ljava/util/Map;

    .line 60
    .line 61
    :cond_3c
    iget-object p0, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemasVisibleToPermissionsCached:Ljava/util/Map;

    .line 62
    .line 63
    return-object p0
.end method

.method public whitelist getSchemaTypesNotDisplayedBySystem()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse;->getVisibilityConfigsOrThrow()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemasNotDisplayedBySystemCached:Ljava/util/Set;

    .line 6
    .line 7
    if-nez v1, :cond_36

    .line 8
    .line 9
    new-instance v1, Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_30

    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/app/appsearch/InternalVisibilityConfig;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/app/appsearch/InternalVisibilityConfig;->isNotDisplayedBySystem()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2d

    .line 32
    .line 33
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroid/app/appsearch/InternalVisibilityConfig;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/app/appsearch/InternalVisibilityConfig;->getSchemaType()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_e

    .line 49
    :cond_30
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemasNotDisplayedBySystemCached:Ljava/util/Set;

    .line 54
    .line 55
    :cond_36
    iget-object p0, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemasNotDisplayedBySystemCached:Ljava/util/Set;

    .line 56
    .line 57
    return-object p0
.end method

.method public whitelist getSchemaTypesVisibleToConfigs()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/SchemaVisibilityConfig;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse;->getVisibilityConfigsOrThrow()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemasVisibleToConfigsCached:Ljava/util/Map;

    .line 6
    .line 7
    if-nez v1, :cond_38

    .line 8
    .line 9
    new-instance v1, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_32

    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/app/appsearch/InternalVisibilityConfig;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/app/appsearch/InternalVisibilityConfig;->getVisibleToConfigs()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_2f

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/app/appsearch/InternalVisibilityConfig;->getSchemaType()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_e

    .line 51
    :cond_32
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemasVisibleToConfigsCached:Ljava/util/Map;

    .line 56
    .line 57
    :cond_38
    iget-object p0, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemasVisibleToConfigsCached:Ljava/util/Map;

    .line 58
    .line 59
    return-object p0
.end method

.method public whitelist getSchemaTypesVisibleToPackages()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/PackageIdentifier;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/GetSchemaResponse;->getVisibilityConfigsOrThrow()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemasVisibleToPackagesCached:Ljava/util/Map;

    .line 6
    .line 7
    if-nez v1, :cond_41

    .line 8
    .line 9
    new-instance v1, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_3b

    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/app/appsearch/InternalVisibilityConfig;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/app/appsearch/InternalVisibilityConfig;->getVisibilityConfig()Landroid/app/appsearch/SchemaVisibilityConfig;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Landroid/app/appsearch/SchemaVisibilityConfig;->getAllowedPackages()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_38

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/app/appsearch/InternalVisibilityConfig;->getSchemaType()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v5, Landroid/util/ArraySet;

    .line 46
    .line 47
    invoke-direct {v5, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_38
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_e

    .line 60
    :cond_3b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemasVisibleToPackagesCached:Ljava/util/Map;

    .line 65
    .line 66
    :cond_41
    iget-object p0, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemasVisibleToPackagesCached:Ljava/util/Map;

    .line 67
    .line 68
    return-object p0
.end method

.method public whitelist getSchemas()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemasCached:Ljava/util/Set;

    .line 2
    .line 3
    if-nez v0, :cond_11

    .line 4
    .line 5
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemas:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemasCached:Ljava/util/Set;

    .line 17
    .line 18
    :cond_11
    iget-object p0, p0, Landroid/app/appsearch/GetSchemaResponse;->mSchemasCached:Ljava/util/Set;

    .line 19
    .line 20
    return-object p0
.end method

.method public whitelist getVersion()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/GetSchemaResponse;->mVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/GetSchemaResponseCreator;->writeToParcel(Landroid/app/appsearch/GetSchemaResponse;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
