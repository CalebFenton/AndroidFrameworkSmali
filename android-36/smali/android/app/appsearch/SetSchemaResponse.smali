.class public final Landroid/app/appsearch/SetSchemaResponse;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;,
        Landroid/app/appsearch/SetSchemaResponse$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/SetSchemaResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mDeletedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeletedTypesCached:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mIncompatibleTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIncompatibleTypesCached:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mMigratedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMigratedTypesCached:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMigrationFailures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/SetSchemaResponseCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/SetSchemaResponseCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/SetSchemaResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/app/appsearch/SetSchemaResponse;->mDeletedTypes:Ljava/util/List;

    .line 3
    iput-object p2, p0, Landroid/app/appsearch/SetSchemaResponse;->mIncompatibleTypes:Ljava/util/List;

    .line 4
    iput-object p3, p0, Landroid/app/appsearch/SetSchemaResponse;->mMigratedTypes:Ljava/util/List;

    .line 5
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Landroid/app/appsearch/SetSchemaResponse;->mMigrationFailures:Ljava/util/List;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 7
    iput-object p1, p0, Landroid/app/appsearch/SetSchemaResponse;->mDeletedTypes:Ljava/util/List;

    .line 8
    iput-object p2, p0, Landroid/app/appsearch/SetSchemaResponse;->mIncompatibleTypes:Ljava/util/List;

    .line 9
    iput-object p3, p0, Landroid/app/appsearch/SetSchemaResponse;->mMigratedTypes:Ljava/util/List;

    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Landroid/app/appsearch/SetSchemaResponse;->mMigrationFailures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist getDeletedTypes()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaResponse;->mDeletedTypesCached:Ljava/util/Set;

    .line 2
    .line 3
    if-nez v0, :cond_10

    .line 4
    .line 5
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaResponse;->mDeletedTypes:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroid/app/appsearch/SetSchemaResponse;->mDeletedTypesCached:Ljava/util/Set;

    .line 16
    .line 17
    :cond_10
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaResponse;->mDeletedTypesCached:Ljava/util/Set;

    .line 18
    .line 19
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public whitelist getIncompatibleTypes()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaResponse;->mIncompatibleTypesCached:Ljava/util/Set;

    .line 2
    .line 3
    if-nez v0, :cond_10

    .line 4
    .line 5
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaResponse;->mIncompatibleTypes:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroid/app/appsearch/SetSchemaResponse;->mIncompatibleTypesCached:Ljava/util/Set;

    .line 16
    .line 17
    :cond_10
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaResponse;->mIncompatibleTypesCached:Ljava/util/Set;

    .line 18
    .line 19
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public whitelist getMigratedTypes()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaResponse;->mMigratedTypesCached:Ljava/util/Set;

    .line 2
    .line 3
    if-nez v0, :cond_10

    .line 4
    .line 5
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaResponse;->mMigratedTypes:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroid/app/appsearch/SetSchemaResponse;->mMigratedTypesCached:Ljava/util/Set;

    .line 16
    .line 17
    :cond_10
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaResponse;->mMigratedTypesCached:Ljava/util/Set;

    .line 18
    .line 19
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public whitelist getMigrationFailures()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaResponse;->mMigrationFailures:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/SetSchemaResponseCreator;->writeToParcel(Landroid/app/appsearch/SetSchemaResponse;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
