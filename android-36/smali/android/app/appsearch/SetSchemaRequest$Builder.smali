.class public final Landroid/app/appsearch/SetSchemaRequest$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/SetSchemaRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist DEFAULT_VERSION:I = 0x1


# instance fields
.field private blacklist mBuilt:Z

.field private blacklist mForceOverride:Z

.field private blacklist mMigrators:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/Migrator;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPubliclyVisibleSchemas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/PackageIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSchemaVisibleToConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/SchemaVisibilityConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mSchemas:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSchemasNotDisplayedBySystem:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSchemasVisibleToPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/PackageIdentifier;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mSchemasVisibleToPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private blacklist mVersion:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemas:Landroid/util/ArraySet;

    .line 3
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasNotDisplayedBySystem:Landroid/util/ArraySet;

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPackages:Landroid/util/ArrayMap;

    .line 5
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPermissions:Landroid/util/ArrayMap;

    .line 6
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mPubliclyVisibleSchemas:Landroid/util/ArrayMap;

    .line 7
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemaVisibleToConfigs:Landroid/util/ArrayMap;

    .line 8
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mMigrators:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mForceOverride:Z

    const/4 v1, 0x1

    .line 10
    iput v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mVersion:I

    .line 11
    iput-boolean v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mBuilt:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/appsearch/SetSchemaRequest;)V
    .registers 7

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemas:Landroid/util/ArraySet;

    .line 14
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasNotDisplayedBySystem:Landroid/util/ArraySet;

    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPackages:Landroid/util/ArrayMap;

    .line 16
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPermissions:Landroid/util/ArrayMap;

    .line 17
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mPubliclyVisibleSchemas:Landroid/util/ArrayMap;

    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemaVisibleToConfigs:Landroid/util/ArrayMap;

    .line 19
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mMigrators:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mForceOverride:Z

    const/4 v1, 0x1

    .line 21
    iput v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mVersion:I

    .line 22
    iput-boolean v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mBuilt:Z

    .line 23
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemas:Landroid/util/ArraySet;

    invoke-static {p1}, Landroid/app/appsearch/SetSchemaRequest;->-$$Nest$fgetmSchemas(Landroid/app/appsearch/SetSchemaRequest;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 24
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasNotDisplayedBySystem:Landroid/util/ArraySet;

    invoke-static {p1}, Landroid/app/appsearch/SetSchemaRequest;->-$$Nest$fgetmSchemasNotDisplayedBySystem(Landroid/app/appsearch/SetSchemaRequest;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 25
    invoke-static {p1}, Landroid/app/appsearch/SetSchemaRequest;->-$$Nest$fgetmSchemasVisibleToPackages(Landroid/app/appsearch/SetSchemaRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    iget-object v2, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPackages:Landroid/util/ArrayMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Landroid/util/ArraySet;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v4, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    .line 27
    :cond_7d
    invoke-static {p1}, Landroid/app/appsearch/SetSchemaRequest;->-$$Nest$fgetmSchemasVisibleToPermissions(Landroid/app/appsearch/SetSchemaRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Landroid/app/appsearch/SetSchemaRequest;->-$$Nest$smdeepCopy(Ljava/util/Map;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPermissions:Landroid/util/ArrayMap;

    .line 28
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mPubliclyVisibleSchemas:Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/app/appsearch/SetSchemaRequest;->-$$Nest$fgetmPubliclyVisibleSchemas(Landroid/app/appsearch/SetSchemaRequest;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 29
    invoke-static {p1}, Landroid/app/appsearch/SetSchemaRequest;->-$$Nest$fgetmSchemasVisibleToConfigs(Landroid/app/appsearch/SetSchemaRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    iget-object v2, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemaVisibleToConfigs:Landroid/util/ArrayMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Landroid/util/ArraySet;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v4, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9c

    .line 31
    :cond_bf
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mMigrators:Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/app/appsearch/SetSchemaRequest;->-$$Nest$fgetmMigrators(Landroid/app/appsearch/SetSchemaRequest;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 32
    invoke-static {p1}, Landroid/app/appsearch/SetSchemaRequest;->-$$Nest$fgetmForceOverride(Landroid/app/appsearch/SetSchemaRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mForceOverride:Z

    .line 33
    invoke-static {p1}, Landroid/app/appsearch/SetSchemaRequest;->-$$Nest$fgetmVersion(Landroid/app/appsearch/SetSchemaRequest;)I

    move-result p1

    iput p1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mVersion:I

    return-void
.end method

.method private blacklist resetIfBuilt()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mBuilt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_a3

    .line 4
    .line 5
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPackages:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPackages:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

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
    if-eqz v2, :cond_3a

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/String;

    .line 43
    .line 44
    new-instance v4, Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/util/Collection;

    .line 51
    .line 52
    invoke-direct {v4, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_19

    .line 59
    :cond_3a
    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPackages:Landroid/util/ArrayMap;

    .line 60
    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    .line 62
    .line 63
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mPubliclyVisibleSchemas:Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mPubliclyVisibleSchemas:Landroid/util/ArrayMap;

    .line 69
    .line 70
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPermissions:Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-static {v0}, Landroid/app/appsearch/SetSchemaRequest;->-$$Nest$smdeepCopy(Ljava/util/Map;)Landroid/util/ArrayMap;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPermissions:Landroid/util/ArrayMap;

    .line 77
    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    .line 79
    .line 80
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemaVisibleToConfigs:Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemaVisibleToConfigs:Landroid/util/ArrayMap;

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_83

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Ljava/util/Map$Entry;

    .line 110
    .line 111
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Ljava/lang/String;

    .line 116
    .line 117
    new-instance v4, Landroid/util/ArraySet;

    .line 118
    .line 119
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Ljava/util/Collection;

    .line 124
    .line 125
    invoke-direct {v4, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    goto :goto_62

    .line 132
    :cond_83
    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemaVisibleToConfigs:Landroid/util/ArrayMap;

    .line 133
    .line 134
    new-instance v0, Landroid/util/ArraySet;

    .line 135
    .line 136
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemas:Landroid/util/ArraySet;

    .line 137
    .line 138
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 139
    .line 140
    .line 141
    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemas:Landroid/util/ArraySet;

    .line 142
    .line 143
    new-instance v0, Landroid/util/ArraySet;

    .line 144
    .line 145
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasNotDisplayedBySystem:Landroid/util/ArraySet;

    .line 146
    .line 147
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 148
    .line 149
    .line 150
    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasNotDisplayedBySystem:Landroid/util/ArraySet;

    .line 151
    .line 152
    new-instance v0, Landroid/util/ArrayMap;

    .line 153
    .line 154
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mMigrators:Landroid/util/ArrayMap;

    .line 155
    .line 156
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 157
    .line 158
    .line 159
    iput-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mMigrators:Landroid/util/ArrayMap;

    .line 160
    .line 161
    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mBuilt:Z

    .line 163
    .line 164
    :cond_a3
    return-void
.end method


# virtual methods
.method public whitelist addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/app/appsearch/SetSchemaRequest$Builder;"
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
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_23

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v2, 0xb

    .line 28
    .line 29
    const-string v3, "permission"

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-static {v1, v4, v2, v3}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_a

    .line 36
    :cond_23
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->resetIfBuilt()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPermissions:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/Set;

    .line 46
    .line 47
    if-nez v0, :cond_3a

    .line 48
    .line 49
    new-instance v0, Landroid/util/ArraySet;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPermissions:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_3a
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    return-object p0
.end method

.method public whitelist addSchemaTypeVisibleToConfig(Ljava/lang/String;Landroid/app/appsearch/SchemaVisibilityConfig;)Landroid/app/appsearch/SetSchemaRequest$Builder;
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->resetIfBuilt()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemaVisibleToConfigs:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/Set;

    .line 17
    .line 18
    if-nez v0, :cond_1d

    .line 19
    .line 20
    new-instance v0, Landroid/util/ArraySet;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemaVisibleToConfigs:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_1d
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public whitelist addSchemas(Ljava/util/Collection;)Landroid/app/appsearch/SetSchemaRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;)",
            "Landroid/app/appsearch/SetSchemaRequest$Builder;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->resetIfBuilt()V

    .line 6
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemas:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs whitelist addSchemas([Landroid/app/appsearch/AppSearchSchema;)Landroid/app/appsearch/SetSchemaRequest$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->resetIfBuilt()V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addSchemas(Ljava/util/Collection;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist build()Landroid/app/appsearch/SetSchemaRequest;
    .registers 12

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasNotDisplayedBySystem:Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPackages:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPermissions:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mPubliclyVisibleSchemas:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemaVisibleToConfigs:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemas:Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_45

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroid/app/appsearch/AppSearchSchema;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_31

    .line 70
    :cond_45
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_7b

    .line 75
    .line 76
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemas:Landroid/util/ArraySet;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/4 v1, 0x1

    .line 83
    if-eqz v0, :cond_61

    .line 84
    .line 85
    iget v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mVersion:I

    .line 86
    .line 87
    if-ne v0, v1, :cond_59

    .line 88
    .line 89
    goto :goto_61

    .line 90
    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string v0, "Cannot set version to the request if schema is empty."

    .line 93
    .line 94
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :cond_61
    :goto_61
    iput-boolean v1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mBuilt:Z

    .line 99
    .line 100
    new-instance v1, Landroid/app/appsearch/SetSchemaRequest;

    .line 101
    .line 102
    iget-object v2, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemas:Landroid/util/ArraySet;

    .line 103
    .line 104
    iget-object v3, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasNotDisplayedBySystem:Landroid/util/ArraySet;

    .line 105
    .line 106
    iget-object v4, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPackages:Landroid/util/ArrayMap;

    .line 107
    .line 108
    iget-object v5, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPermissions:Landroid/util/ArrayMap;

    .line 109
    .line 110
    iget-object v6, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mPubliclyVisibleSchemas:Landroid/util/ArrayMap;

    .line 111
    .line 112
    iget-object v7, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemaVisibleToConfigs:Landroid/util/ArrayMap;

    .line 113
    .line 114
    iget-object v8, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mMigrators:Landroid/util/ArrayMap;

    .line 115
    .line 116
    iget-boolean v9, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mForceOverride:Z

    .line 117
    .line 118
    iget v10, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mVersion:I

    .line 119
    .line 120
    invoke-direct/range {v1 .. v10}, Landroid/app/appsearch/SetSchemaRequest;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZI)V

    .line 121
    .line 122
    .line 123
    return-object v1

    .line 124
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v2, "Schema types "

    .line 129
    .line 130
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, " referenced, but were not added."

    .line 137
    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0
.end method

.method public whitelist clearMigrators()Landroid/app/appsearch/SetSchemaRequest$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mMigrators:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist clearRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;)Landroid/app/appsearch/SetSchemaRequest$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPermissions:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public whitelist clearSchemaTypeVisibleToConfigs(Ljava/lang/String;)Landroid/app/appsearch/SetSchemaRequest$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemaVisibleToConfigs:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public whitelist clearSchemas()Landroid/app/appsearch/SetSchemaRequest$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemas:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist setForceOverride(Z)Landroid/app/appsearch/SetSchemaRequest$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mForceOverride:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public whitelist setMigrator(Ljava/lang/String;Landroid/app/appsearch/Migrator;)Landroid/app/appsearch/SetSchemaRequest$Builder;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->resetIfBuilt()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mMigrators:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public whitelist setMigrators(Ljava/util/Map;)Landroid/app/appsearch/SetSchemaRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/Migrator;",
            ">;)",
            "Landroid/app/appsearch/SetSchemaRequest$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mMigrators:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public whitelist setPubliclyVisibleSchema(Ljava/lang/String;Landroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SetSchemaRequest$Builder;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    if-eqz p2, :cond_19

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/app/appsearch/PackageIdentifier;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_13

    .line 18
    .line 19
    goto :goto_19

    .line 20
    :cond_13
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mPubliclyVisibleSchemas:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_19
    :goto_19
    iget-object p2, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mPubliclyVisibleSchemas:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public whitelist setSchemaTypeDisplayedBySystem(Ljava/lang/String;Z)Landroid/app/appsearch/SetSchemaRequest$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    if-eqz p2, :cond_e

    .line 8
    .line 9
    iget-object p2, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasNotDisplayedBySystem:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_e
    iget-object p2, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasNotDisplayedBySystem:Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public whitelist setSchemaTypeVisibilityForPackage(Ljava/lang/String;ZLandroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SetSchemaRequest$Builder;
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->resetIfBuilt()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPackages:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/Set;

    .line 17
    .line 18
    if-eqz p2, :cond_23

    .line 19
    .line 20
    if-nez v0, :cond_1a

    .line 21
    .line 22
    new-instance v0, Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 25
    .line 26
    .line 27
    :cond_1a
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPackages:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_23
    if-nez v0, :cond_26

    .line 37
    .line 38
    goto :goto_34

    .line 39
    :cond_26
    invoke-interface {v0, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_34

    .line 47
    .line 48
    iget-object p2, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mSchemasVisibleToPackages:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_34
    :goto_34
    return-object p0
.end method

.method public whitelist setVersion(I)Landroid/app/appsearch/SetSchemaRequest$Builder;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_4

    .line 3
    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 6
    :goto_5
    const-string v1, "Version must be a positive number."

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->resetIfBuilt()V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Landroid/app/appsearch/SetSchemaRequest$Builder;->mVersion:I

    .line 15
    .line 16
    return-object p0
.end method
