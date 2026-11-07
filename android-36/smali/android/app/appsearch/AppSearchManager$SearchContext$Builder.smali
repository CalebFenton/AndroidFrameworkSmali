.class public final Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/AppSearchManager$SearchContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilt:Z

.field private final blacklist mDatabaseName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->mBuilt:Z

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v0, "/"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    const-string v1, "Database name cannot contain \'/\'"

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->mDatabaseName:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/appsearch/AppSearchManager$SearchContext;
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->mBuilt:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    const-string v2, "Builder has already been used"

    .line 6
    .line 7
    invoke-static {v0, v2}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-boolean v1, p0, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->mBuilt:Z

    .line 11
    .line 12
    new-instance v0, Landroid/app/appsearch/AppSearchManager$SearchContext;

    .line 13
    .line 14
    iget-object p0, p0, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->mDatabaseName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchManager$SearchContext;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
