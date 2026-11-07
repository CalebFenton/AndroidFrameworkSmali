.class public final Landroid/app/appsearch/InternalVisibilityConfig;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/InternalVisibilityConfig$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/InternalVisibilityConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsNotDisplayedBySystem:Z

.field private final blacklist mSchemaType:Ljava/lang/String;

.field private final blacklist mVisibilityConfig:Landroid/app/appsearch/SchemaVisibilityConfig;

.field final blacklist mVisibleToConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/SchemaVisibilityConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsNotDisplayedBySystem(Landroid/app/appsearch/InternalVisibilityConfig;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mIsNotDisplayedBySystem:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSchemaType(Landroid/app/appsearch/InternalVisibilityConfig;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mSchemaType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/InternalVisibilityConfigCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/InternalVisibilityConfigCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/InternalVisibilityConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ZLandroid/app/appsearch/SchemaVisibilityConfig;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/app/appsearch/SchemaVisibilityConfig;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SchemaVisibilityConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mIsNotDisplayedBySystem:Z

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mSchemaType:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iput-object p3, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mVisibilityConfig:Landroid/app/appsearch/SchemaVisibilityConfig;

    .line 15
    .line 16
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iput-object p4, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mVisibleToConfigs:Ljava/util/List;

    .line 20
    .line 21
    return-void
.end method

.method public static blacklist toInternalVisibilityConfigs(Landroid/app/appsearch/SetBlobVisibilityRequest;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/SetBlobVisibilityRequest;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/appsearch/InternalVisibilityConfig;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Landroid/app/appsearch/SetBlobVisibilityRequest;->getNamespacesNotDisplayedBySystem()Ljava/util/Set;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Landroid/app/appsearch/SetBlobVisibilityRequest;->getNamespacesVisibleToConfigs()Ljava/util/Map;

    move-result-object p0

    .line 27
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 28
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 31
    new-instance v4, Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    invoke-direct {v4, v3}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 33
    invoke-virtual {v4, v5}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->setNotDisplayedBySystem(Z)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    move-result-object v4

    .line 34
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_52

    .line 35
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/appsearch/SchemaVisibilityConfig;

    .line 36
    invoke-virtual {v4, v5}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->addVisibleToConfig(Landroid/app/appsearch/SchemaVisibilityConfig;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    goto :goto_42

    .line 37
    :cond_52
    invoke-virtual {v4}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->build()Landroid/app/appsearch/InternalVisibilityConfig;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_5a
    return-object v2
.end method

.method public static blacklist toInternalVisibilityConfigs(Landroid/app/appsearch/SetSchemaRequest;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/SetSchemaRequest;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/appsearch/InternalVisibilityConfig;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/SetSchemaRequest;->getSchemas()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/appsearch/SetSchemaRequest;->getSchemasNotDisplayedBySystem()Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/SetSchemaRequest;->getSchemasVisibleToPackages()Ljava/util/Map;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Landroid/app/appsearch/SetSchemaRequest;->getRequiredPermissionsForSchemaTypeVisibility()Ljava/util/Map;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Landroid/app/appsearch/SetSchemaRequest;->getPubliclyVisibleSchemas()Ljava/util/Map;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Landroid/app/appsearch/SetSchemaRequest;->getSchemasVisibleToConfigs()Ljava/util/Map;

    move-result-object p0

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_aa

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/appsearch/AppSearchSchema;

    .line 9
    invoke-virtual {v6}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v6

    .line 10
    new-instance v7, Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    invoke-direct {v7, v6}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 12
    invoke-virtual {v7, v8}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->setNotDisplayedBySystem(Z)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    move-result-object v7

    .line 13
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    if-eqz v8, :cond_5e

    .line 14
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/appsearch/PackageIdentifier;

    .line 15
    invoke-virtual {v7, v9}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->addVisibleToPackage(Landroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    goto :goto_4e

    .line 16
    :cond_5e
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    if-eqz v8, :cond_7a

    .line 17
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 18
    invoke-virtual {v7, v9}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->addVisibleToPermissions(Ljava/util/Set;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    goto :goto_6a

    .line 19
    :cond_7a
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/appsearch/PackageIdentifier;

    if-eqz v8, :cond_85

    .line 20
    invoke-virtual {v7, v8}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->setPubliclyVisibleTargetPackage(Landroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    .line 21
    :cond_85
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-eqz v6, :cond_a1

    .line 22
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_91
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/appsearch/SchemaVisibilityConfig;

    .line 23
    invoke-virtual {v7, v8}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->addVisibleToConfig(Landroid/app/appsearch/SchemaVisibilityConfig;)Landroid/app/appsearch/InternalVisibilityConfig$Builder;

    goto :goto_91

    .line 24
    :cond_a1
    invoke-virtual {v7}, Landroid/app/appsearch/InternalVisibilityConfig$Builder;->build()Landroid/app/appsearch/InternalVisibilityConfig;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25

    :cond_aa
    return-object v5
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
    instance-of v2, p1, Landroid/app/appsearch/InternalVisibilityConfig;

    .line 10
    .line 11
    if-nez v2, :cond_d

    .line 12
    .line 13
    return v1

    .line 14
    :cond_d
    check-cast p1, Landroid/app/appsearch/InternalVisibilityConfig;

    .line 15
    .line 16
    iget-boolean v2, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mIsNotDisplayedBySystem:Z

    .line 17
    .line 18
    iget-boolean v3, p1, Landroid/app/appsearch/InternalVisibilityConfig;->mIsNotDisplayedBySystem:Z

    .line 19
    .line 20
    if-ne v2, v3, :cond_34

    .line 21
    .line 22
    iget-object v2, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mSchemaType:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p1, Landroid/app/appsearch/InternalVisibilityConfig;->mSchemaType:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_34

    .line 31
    .line 32
    iget-object v2, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mVisibilityConfig:Landroid/app/appsearch/SchemaVisibilityConfig;

    .line 33
    .line 34
    iget-object v3, p1, Landroid/app/appsearch/InternalVisibilityConfig;->mVisibilityConfig:Landroid/app/appsearch/SchemaVisibilityConfig;

    .line 35
    .line 36
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_34

    .line 41
    .line 42
    iget-object p0, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mVisibleToConfigs:Ljava/util/List;

    .line 43
    .line 44
    iget-object p1, p1, Landroid/app/appsearch/InternalVisibilityConfig;->mVisibleToConfigs:Ljava/util/List;

    .line 45
    .line 46
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_34

    .line 51
    .line 52
    return v0

    .line 53
    :cond_34
    return v1
.end method

.method public blacklist getSchemaType()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mSchemaType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getVisibilityConfig()Landroid/app/appsearch/SchemaVisibilityConfig;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mVisibilityConfig:Landroid/app/appsearch/SchemaVisibilityConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getVisibleToConfigs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/SchemaVisibilityConfig;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mVisibleToConfigs:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mIsNotDisplayedBySystem:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mSchemaType:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mVisibilityConfig:Landroid/app/appsearch/SchemaVisibilityConfig;

    .line 10
    .line 11
    iget-object p0, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mVisibleToConfigs:Ljava/util/List;

    .line 12
    .line 13
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public blacklist isNotDisplayedBySystem()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroid/app/appsearch/InternalVisibilityConfig;->mIsNotDisplayedBySystem:Z

    .line 2
    .line 3
    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/InternalVisibilityConfigCreator;->writeToParcel(Landroid/app/appsearch/InternalVisibilityConfig;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
