.class public final Landroid/app/appsearch/InternalVisibilityConfig$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/InternalVisibilityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilt:Z

.field private blacklist mIsNotDisplayedBySystem:Z

.field private blacklist mSchemaType:Ljava/lang/String;

.field private blacklist mVisibilityConfigBuilder:Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

.field private blacklist mVisibleToConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/SchemaVisibilityConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/app/appsearch/InternalVisibilityConfig;)V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibleToConfigs:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {p1}, Landroid/app/appsearch/InternalVisibilityConfig;->-$$Nest$fgetmSchemaType(Landroid/app/appsearch/InternalVisibilityConfig;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mSchemaType:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Landroid/app/appsearch/InternalVisibilityConfig;->-$$Nest$fgetmIsNotDisplayedBySystem(Landroid/app/appsearch/InternalVisibilityConfig;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mIsNotDisplayedBySystem:Z

    .line 10
    new-instance v0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    .line 11
    invoke-virtual {p1}, Landroid/app/appsearch/InternalVisibilityConfig;->getVisibilityConfig()Landroid/app/appsearch/SchemaVisibilityConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;-><init>(Landroid/app/appsearch/SchemaVisibilityConfig;)V

    iput-object v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibilityConfigBuilder:Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    .line 12
    iget-object p1, p1, Landroid/app/appsearch/InternalVisibilityConfig;->mVisibleToConfigs:Ljava/util/List;

    iput-object p1, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibleToConfigs:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibleToConfigs:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mSchemaType:Ljava/lang/String;

    .line 4
    new-instance p1, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    invoke-direct {p1}, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;-><init>()V

    iput-object p1, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibilityConfigBuilder:Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    return-void
.end method

.method private blacklist resetIfBuilt()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mBuilt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibleToConfigs:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibleToConfigs:Ljava/util/List;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mBuilt:Z

    .line 16
    .line 17
    :cond_10
    return-void
.end method


# virtual methods
.method public blacklist addVisibleToConfig(Landroid/app/appsearch/SchemaVisibilityConfig;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibleToConfigs:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public blacklist addVisibleToPackage(Landroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibilityConfigBuilder:Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->addAllowedPackage(Landroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public blacklist addVisibleToPermissions(Ljava/util/Set;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/app/appsearch/InternalVisibilityConfig$Builder;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibilityConfigBuilder:Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->addRequiredPermissions(Ljava/util/Set;)Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public blacklist build()Landroid/app/appsearch/InternalVisibilityConfig;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mBuilt:Z

    .line 3
    .line 4
    new-instance v0, Landroid/app/appsearch/InternalVisibilityConfig;

    .line 5
    .line 6
    iget-object v1, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mSchemaType:Ljava/lang/String;

    .line 7
    .line 8
    iget-boolean v2, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mIsNotDisplayedBySystem:Z

    .line 9
    .line 10
    iget-object v3, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibilityConfigBuilder:Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->build()Landroid/app/appsearch/SchemaVisibilityConfig;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object p0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibleToConfigs:Ljava/util/List;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/app/appsearch/InternalVisibilityConfig;-><init>(Ljava/lang/String;ZLandroid/app/appsearch/SchemaVisibilityConfig;Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public blacklist clearVisibleToConfig()Landroid/app/appsearch/InternalVisibilityConfig$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibleToConfigs:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public blacklist clearVisibleToPackages()Landroid/app/appsearch/InternalVisibilityConfig$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibilityConfigBuilder:Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->clearAllowedPackages()Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public blacklist clearVisibleToPermissions()Landroid/app/appsearch/InternalVisibilityConfig$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibilityConfigBuilder:Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->clearRequiredPermissions()Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public blacklist setNotDisplayedBySystem(Z)Landroid/app/appsearch/InternalVisibilityConfig$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mIsNotDisplayedBySystem:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public blacklist setPubliclyVisibleTargetPackage(Landroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibilityConfigBuilder:Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->setPubliclyVisibleTargetPackage(Landroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public blacklist setSchemaType(Ljava/lang/String;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mSchemaType:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public blacklist setVisibilityConfig(Landroid/app/appsearch/SchemaVisibilityConfig;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;-><init>(Landroid/app/appsearch/SchemaVisibilityConfig;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->mVisibilityConfigBuilder:Landroid/app/appsearch/SchemaVisibilityConfig$Builder;

    .line 10
    .line 11
    return-object p0
.end method
