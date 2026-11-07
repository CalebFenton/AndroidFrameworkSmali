.class public final Landroid/app/appsearch/SetSchemaRequest;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/SetSchemaRequest$Builder;,
        Landroid/app/appsearch/SetSchemaRequest$AppSearchSupportedPermission;
    }
.end annotation


# static fields
.field public static final blacklist ENTERPRISE_ACCESS:I = 0x7

.field public static final blacklist EXECUTE_APP_FUNCTIONS:I = 0x9

.field public static final blacklist EXECUTE_APP_FUNCTIONS_TRUSTED:I = 0xa

.field public static final blacklist MANAGED_PROFILE_CONTACTS_ACCESS:I = 0x8

.field public static final blacklist PACKAGE_USAGE_STATS:I = 0xb

.field public static final whitelist READ_ASSISTANT_APP_SEARCH_DATA:I = 0x6

.field public static final whitelist READ_CALENDAR:I = 0x2

.field public static final whitelist READ_CONTACTS:I = 0x3

.field public static final whitelist READ_EXTERNAL_STORAGE:I = 0x4

.field public static final whitelist READ_HOME_APP_SEARCH_DATA:I = 0x5

.field public static final whitelist READ_SMS:I = 0x1


# instance fields
.field private final blacklist mForceOverride:Z

.field private final blacklist mMigrators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/Migrator;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPubliclyVisibleSchemas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/PackageIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSchemas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSchemasNotDisplayedBySystem:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSchemasVisibleToConfigs:Ljava/util/Map;
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

.field private final blacklist mSchemasVisibleToPackages:Ljava/util/Map;
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

.field private final blacklist mSchemasVisibleToPermissions:Ljava/util/Map;
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


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmForceOverride(Landroid/app/appsearch/SetSchemaRequest;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mForceOverride:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMigrators(Landroid/app/appsearch/SetSchemaRequest;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mMigrators:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPubliclyVisibleSchemas(Landroid/app/appsearch/SetSchemaRequest;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mPubliclyVisibleSchemas:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSchemas(Landroid/app/appsearch/SetSchemaRequest;)Ljava/util/Set;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemas:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSchemasNotDisplayedBySystem(Landroid/app/appsearch/SetSchemaRequest;)Ljava/util/Set;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasNotDisplayedBySystem:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSchemasVisibleToConfigs(Landroid/app/appsearch/SetSchemaRequest;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToConfigs:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSchemasVisibleToPackages(Landroid/app/appsearch/SetSchemaRequest;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToPackages:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSchemasVisibleToPermissions(Landroid/app/appsearch/SetSchemaRequest;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToPermissions:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVersion(Landroid/app/appsearch/SetSchemaRequest;)I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mVersion:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smdeepCopy(Ljava/util/Map;)Landroid/util/ArrayMap;
    .registers 1

    .line 1
    invoke-static {p0}, Landroid/app/appsearch/SetSchemaRequest;->deepCopy(Ljava/util/Map;)Landroid/util/ArrayMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method constructor blacklist <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZI)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/PackageIdentifier;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/PackageIdentifier;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/SchemaVisibilityConfig;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/Migrator;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemas:Ljava/util/Set;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasNotDisplayedBySystem:Ljava/util/Set;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p3, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToPackages:Ljava/util/Map;

    .line 18
    .line 19
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iput-object p4, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToPermissions:Ljava/util/Map;

    .line 23
    .line 24
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iput-object p5, p0, Landroid/app/appsearch/SetSchemaRequest;->mPubliclyVisibleSchemas:Ljava/util/Map;

    .line 28
    .line 29
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iput-object p6, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToConfigs:Ljava/util/Map;

    .line 33
    .line 34
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iput-object p7, p0, Landroid/app/appsearch/SetSchemaRequest;->mMigrators:Ljava/util/Map;

    .line 38
    .line 39
    iput-boolean p8, p0, Landroid/app/appsearch/SetSchemaRequest;->mForceOverride:Z

    .line 40
    .line 41
    iput p9, p0, Landroid/app/appsearch/SetSchemaRequest;->mVersion:I

    .line 42
    .line 43
    return-void
.end method

.method private static blacklist deepCopy(Ljava/util/Map;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_4b

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    .line 30
    new-instance v2, Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/util/Set;

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_41

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/util/Set;

    .line 56
    .line 57
    new-instance v5, Landroid/util/ArraySet;

    .line 58
    .line 59
    invoke-direct {v5, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_2c

    .line 66
    :cond_41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_11

    .line 76
    :cond_4b
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Landroid/app/appsearch/SetSchemaRequest;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Landroid/app/appsearch/SetSchemaRequest;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemas:Ljava/util/Set;

    .line 14
    .line 15
    iget-object v3, p1, Landroid/app/appsearch/SetSchemaRequest;->mSchemas:Ljava/util/Set;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_5f

    .line 22
    .line 23
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasNotDisplayedBySystem:Ljava/util/Set;

    .line 24
    .line 25
    iget-object v3, p1, Landroid/app/appsearch/SetSchemaRequest;->mSchemasNotDisplayedBySystem:Ljava/util/Set;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_5f

    .line 32
    .line 33
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToPackages:Ljava/util/Map;

    .line 34
    .line 35
    iget-object v3, p1, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToPackages:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_5f

    .line 42
    .line 43
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToPermissions:Ljava/util/Map;

    .line 44
    .line 45
    iget-object v3, p1, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToPermissions:Ljava/util/Map;

    .line 46
    .line 47
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_5f

    .line 52
    .line 53
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest;->mPubliclyVisibleSchemas:Ljava/util/Map;

    .line 54
    .line 55
    iget-object v3, p1, Landroid/app/appsearch/SetSchemaRequest;->mPubliclyVisibleSchemas:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_5f

    .line 62
    .line 63
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToConfigs:Ljava/util/Map;

    .line 64
    .line 65
    iget-object v3, p1, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToConfigs:Ljava/util/Map;

    .line 66
    .line 67
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_5f

    .line 72
    .line 73
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest;->mMigrators:Ljava/util/Map;

    .line 74
    .line 75
    iget-object v3, p1, Landroid/app/appsearch/SetSchemaRequest;->mMigrators:Ljava/util/Map;

    .line 76
    .line 77
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_5f

    .line 82
    .line 83
    iget-boolean v1, p0, Landroid/app/appsearch/SetSchemaRequest;->mForceOverride:Z

    .line 84
    .line 85
    iget-boolean v3, p1, Landroid/app/appsearch/SetSchemaRequest;->mForceOverride:Z

    .line 86
    .line 87
    if-ne v1, v3, :cond_5f

    .line 88
    .line 89
    iget p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mVersion:I

    .line 90
    .line 91
    iget p1, p1, Landroid/app/appsearch/SetSchemaRequest;->mVersion:I

    .line 92
    .line 93
    if-ne p0, p1, :cond_5f

    .line 94
    .line 95
    return v0

    .line 96
    :cond_5f
    return v2
.end method

.method public whitelist getMigrators()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/Migrator;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mMigrators:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist getPubliclyVisibleSchemas()Ljava/util/Map;
    .registers 1
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
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mPubliclyVisibleSchemas:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist getRequiredPermissionsForSchemaTypeVisibility()Ljava/util/Map;
    .registers 1
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
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToPermissions:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/app/appsearch/SetSchemaRequest;->deepCopy(Ljava/util/Map;)Landroid/util/ArrayMap;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist getSchemas()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemas:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist getSchemasNotDisplayedBySystem()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasNotDisplayedBySystem:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist getSchemasVisibleToConfigs()Ljava/util/Map;
    .registers 5
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
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToConfigs:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_30

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    new-instance v3, Landroid/util/ArraySet;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/util/Collection;

    .line 41
    .line 42
    invoke-direct {v3, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_f

    .line 49
    :cond_30
    return-object v0
.end method

.method public whitelist getSchemasVisibleToPackages()Ljava/util/Map;
    .registers 5
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
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToPackages:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_30

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    new-instance v3, Landroid/util/ArraySet;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/util/Collection;

    .line 41
    .line 42
    invoke-direct {v3, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_f

    .line 49
    :cond_30
    return-object v0
.end method

.method public blacklist getSchemasVisibleToPackagesInternal()Ljava/util/Map;
    .registers 1
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
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToPackages:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getVersion()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemas:Ljava/util/Set;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasNotDisplayedBySystem:Ljava/util/Set;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToPackages:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v3, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToPermissions:Ljava/util/Map;

    .line 8
    .line 9
    iget-object v4, p0, Landroid/app/appsearch/SetSchemaRequest;->mPubliclyVisibleSchemas:Ljava/util/Map;

    .line 10
    .line 11
    iget-object v5, p0, Landroid/app/appsearch/SetSchemaRequest;->mSchemasVisibleToConfigs:Ljava/util/Map;

    .line 12
    .line 13
    iget-object v6, p0, Landroid/app/appsearch/SetSchemaRequest;->mMigrators:Ljava/util/Map;

    .line 14
    .line 15
    iget-boolean v7, p0, Landroid/app/appsearch/SetSchemaRequest;->mForceOverride:Z

    .line 16
    .line 17
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    iget p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mVersion:I

    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public whitelist isForceOverride()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroid/app/appsearch/SetSchemaRequest;->mForceOverride:Z

    .line 2
    .line 3
    return p0
.end method
