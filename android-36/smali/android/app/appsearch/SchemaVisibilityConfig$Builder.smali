.class public final Landroid/app/appsearch/SchemaVisibilityConfig$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/SchemaVisibilityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBuilt:Z

.field private blacklist mPubliclyVisibleTargetPackage:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

.field private blacklist mRequiredPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/VisibilityPermissionConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mAllowedPackages:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mRequiredPermissions:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appsearch/SchemaVisibilityConfig;)V
    .registers 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mAllowedPackages:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mRequiredPermissions:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/app/appsearch/SchemaVisibilityConfig;->mAllowedPackages:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mAllowedPackages:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/app/appsearch/SchemaVisibilityConfig;->mRequiredPermissions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mRequiredPermissions:Ljava/util/List;

    .line 10
    iget-object p1, p1, Landroid/app/appsearch/SchemaVisibilityConfig;->mPubliclyVisibleTargetPackage:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    iput-object p1, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mPubliclyVisibleTargetPackage:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    return-void
.end method

.method private blacklist resetIfBuilt()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mBuilt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_19

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mAllowedPackages:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mAllowedPackages:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mRequiredPermissions:Ljava/util/List;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mRequiredPermissions:Ljava/util/List;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mBuilt:Z

    .line 25
    .line 26
    :cond_19
    return-void
.end method


# virtual methods
.method public whitelist addAllowedPackage(Landroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SchemaVisibilityConfig$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mAllowedPackages:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/appsearch/PackageIdentifier;->getPackageIdentifierParcel()Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public whitelist addRequiredPermissions(Ljava/util/Set;)Landroid/app/appsearch/SchemaVisibilityConfig$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/app/appsearch/SchemaVisibilityConfig$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mRequiredPermissions:Ljava/util/List;

    .line 8
    .line 9
    new-instance v1, Landroid/app/appsearch/VisibilityPermissionConfig;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Landroid/app/appsearch/VisibilityPermissionConfig;-><init>(Ljava/util/Set;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public whitelist build()Landroid/app/appsearch/SchemaVisibilityConfig;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mBuilt:Z

    .line 3
    .line 4
    new-instance v0, Landroid/app/appsearch/SchemaVisibilityConfig;

    .line 5
    .line 6
    iget-object v1, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mAllowedPackages:Ljava/util/List;

    .line 7
    .line 8
    iget-object v2, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mRequiredPermissions:Ljava/util/List;

    .line 9
    .line 10
    iget-object p0, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mPubliclyVisibleTargetPackage:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, p0}, Landroid/app/appsearch/SchemaVisibilityConfig;-><init>(Ljava/util/List;Ljava/util/List;Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public whitelist clearAllowedPackages()Landroid/app/appsearch/SchemaVisibilityConfig$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mAllowedPackages:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist clearRequiredPermissions()Landroid/app/appsearch/SchemaVisibilityConfig$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mRequiredPermissions:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist setPubliclyVisibleTargetPackage(Landroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SchemaVisibilityConfig$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_9

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mPubliclyVisibleTargetPackage:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_9
    invoke-virtual {p1}, Landroid/app/appsearch/PackageIdentifier;->getPackageIdentifierParcel()Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroid/app/appsearch/SchemaVisibilityConfig$Builder;->mPubliclyVisibleTargetPackage:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 15
    .line 16
    return-object p0
.end method
