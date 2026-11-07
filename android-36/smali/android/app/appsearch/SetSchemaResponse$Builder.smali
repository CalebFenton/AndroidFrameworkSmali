.class public final Landroid/app/appsearch/SetSchemaResponse$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/SetSchemaResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilt:Z

.field private blacklist mDeletedTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIncompatibleTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMigratedTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMigrationFailures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mMigrationFailures:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mDeletedTypes:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mMigratedTypes:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mIncompatibleTypes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mBuilt:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appsearch/SetSchemaResponse;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mMigrationFailures:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mDeletedTypes:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mMigratedTypes:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mIncompatibleTypes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mBuilt:Z

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mDeletedTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/appsearch/SetSchemaResponse;->getDeletedTypes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mIncompatibleTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/appsearch/SetSchemaResponse;->getIncompatibleTypes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mMigratedTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/appsearch/SetSchemaResponse;->getMigratedTypes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mMigrationFailures:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/appsearch/SetSchemaResponse;->getMigrationFailures()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private blacklist resetIfBuilt()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mBuilt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2b

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mMigrationFailures:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mMigrationFailures:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mDeletedTypes:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mDeletedTypes:Ljava/util/ArrayList;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mMigratedTypes:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mMigratedTypes:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mIncompatibleTypes:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mIncompatibleTypes:Ljava/util/ArrayList;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mBuilt:Z

    .line 43
    .line 44
    :cond_2b
    return-void
.end method


# virtual methods
.method public whitelist addDeletedType(Ljava/lang/String;)Landroid/app/appsearch/SetSchemaResponse$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaResponse$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mDeletedTypes:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public whitelist addDeletedTypes(Ljava/util/Collection;)Landroid/app/appsearch/SetSchemaResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/SetSchemaResponse$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaResponse$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mDeletedTypes:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public whitelist addIncompatibleType(Ljava/lang/String;)Landroid/app/appsearch/SetSchemaResponse$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaResponse$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mIncompatibleTypes:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public whitelist addIncompatibleTypes(Ljava/util/Collection;)Landroid/app/appsearch/SetSchemaResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/SetSchemaResponse$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaResponse$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mIncompatibleTypes:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public whitelist addMigratedType(Ljava/lang/String;)Landroid/app/appsearch/SetSchemaResponse$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaResponse$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mMigratedTypes:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public whitelist addMigratedTypes(Ljava/util/Collection;)Landroid/app/appsearch/SetSchemaResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/SetSchemaResponse$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaResponse$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mMigratedTypes:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public whitelist addMigrationFailure(Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;)Landroid/app/appsearch/SetSchemaResponse$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaResponse$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mMigrationFailures:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public whitelist addMigrationFailures(Ljava/util/Collection;)Landroid/app/appsearch/SetSchemaResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;",
            ">;)",
            "Landroid/app/appsearch/SetSchemaResponse$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/SetSchemaResponse$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mMigrationFailures:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public whitelist build()Landroid/app/appsearch/SetSchemaResponse;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mBuilt:Z

    .line 3
    .line 4
    new-instance v0, Landroid/app/appsearch/SetSchemaResponse;

    .line 5
    .line 6
    iget-object v1, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mDeletedTypes:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v2, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mIncompatibleTypes:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mMigratedTypes:Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object p0, p0, Landroid/app/appsearch/SetSchemaResponse$Builder;->mMigrationFailures:Ljava/util/List;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/app/appsearch/SetSchemaResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
