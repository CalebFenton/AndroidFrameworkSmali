.class public final Landroid/app/appsearch/SchemaVisibilityConfig;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/SchemaVisibilityConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/SchemaVisibilityConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mAllowedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAllowedPackagesCached:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/PackageIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHashCode:Ljava/lang/Integer;

.field final blacklist mPubliclyVisibleTargetPackage:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

.field final blacklist mRequiredPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/VisibilityPermissionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRequiredPermissionsCached:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/VisibilityConfigCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/VisibilityConfigCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/SchemaVisibilityConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/VisibilityPermissionConfig;",
            ">;",
            "Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mAllowedPackages:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mRequiredPermissions:Ljava/util/List;

    .line 13
    .line 14
    iput-object p3, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mPubliclyVisibleTargetPackage:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 15
    .line 16
    return-void
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
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v2, p1, Landroid/app/appsearch/SchemaVisibilityConfig;

    .line 10
    .line 11
    if-nez v2, :cond_d

    .line 12
    .line 13
    return v1

    .line 14
    :cond_d
    check-cast p1, Landroid/app/appsearch/SchemaVisibilityConfig;

    .line 15
    .line 16
    iget-object v2, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mAllowedPackages:Ljava/util/List;

    .line 17
    .line 18
    iget-object v3, p1, Landroid/app/appsearch/SchemaVisibilityConfig;->mAllowedPackages:Ljava/util/List;

    .line 19
    .line 20
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2e

    .line 25
    .line 26
    iget-object v2, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mRequiredPermissions:Ljava/util/List;

    .line 27
    .line 28
    iget-object v3, p1, Landroid/app/appsearch/SchemaVisibilityConfig;->mRequiredPermissions:Ljava/util/List;

    .line 29
    .line 30
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2e

    .line 35
    .line 36
    iget-object p0, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mPubliclyVisibleTargetPackage:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 37
    .line 38
    iget-object p1, p1, Landroid/app/appsearch/SchemaVisibilityConfig;->mPubliclyVisibleTargetPackage:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 39
    .line 40
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_2e

    .line 45
    .line 46
    return v0

    .line 47
    :cond_2e
    return v1
.end method

.method public whitelist getAllowedPackages()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/appsearch/PackageIdentifier;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mAllowedPackagesCached:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_2f

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mAllowedPackages:Ljava/util/List;

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
    iput-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mAllowedPackagesCached:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_12
    iget-object v1, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mAllowedPackages:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ge v0, v1, :cond_2f

    .line 26
    .line 27
    iget-object v1, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mAllowedPackagesCached:Ljava/util/List;

    .line 28
    .line 29
    new-instance v2, Landroid/app/appsearch/PackageIdentifier;

    .line 30
    .line 31
    iget-object v3, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mAllowedPackages:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 38
    .line 39
    invoke-direct {v2, v3}, Landroid/app/appsearch/PackageIdentifier;-><init>(Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_12

    .line 48
    :cond_2f
    iget-object p0, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mAllowedPackagesCached:Ljava/util/List;

    .line 49
    .line 50
    return-object p0
.end method

.method public whitelist getPubliclyVisibleTargetPackage()Landroid/app/appsearch/PackageIdentifier;
    .registers 2

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mPubliclyVisibleTargetPackage:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 2
    .line 3
    if-nez p0, :cond_6

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_6
    new-instance v0, Landroid/app/appsearch/PackageIdentifier;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroid/app/appsearch/PackageIdentifier;-><init>(Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public whitelist getRequiredPermissions()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mRequiredPermissionsCached:Ljava/util/Set;

    .line 2
    .line 3
    if-nez v0, :cond_32

    .line 4
    .line 5
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mRequiredPermissions:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mRequiredPermissionsCached:Ljava/util/Set;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_12
    iget-object v1, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mRequiredPermissions:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ge v0, v1, :cond_32

    .line 26
    .line 27
    iget-object v1, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mRequiredPermissions:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/app/appsearch/VisibilityPermissionConfig;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/app/appsearch/VisibilityPermissionConfig;->getAllRequiredPermissions()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mRequiredPermissionsCached:Ljava/util/Set;

    .line 40
    .line 41
    if-eqz v2, :cond_2f

    .line 42
    .line 43
    if-eqz v1, :cond_2f

    .line 44
    .line 45
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_12

    .line 51
    :cond_32
    iget-object p0, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mRequiredPermissionsCached:Ljava/util/Set;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mHashCode:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_18

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mAllowedPackages:Ljava/util/List;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mRequiredPermissions:Ljava/util/List;

    .line 8
    .line 9
    iget-object v2, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mPubliclyVisibleTargetPackage:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mHashCode:Ljava/lang/Integer;

    .line 24
    .line 25
    :cond_18
    iget-object p0, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mHashCode:Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/VisibilityConfigCreator;->writeToParcel(Landroid/app/appsearch/SchemaVisibilityConfig;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
