.class public final Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/RemoveByDocumentIdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilt:Z

.field private blacklist mIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNamespace:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->mIds:Landroid/util/ArraySet;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->mBuilt:Z

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->mNamespace:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private blacklist resetIfBuilt()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->mBuilt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->mIds:Landroid/util/ArraySet;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->mIds:Landroid/util/ArraySet;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->mBuilt:Z

    .line 16
    .line 17
    :cond_10
    return-void
.end method


# virtual methods
.method public whitelist addIds(Ljava/util/Collection;)Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->resetIfBuilt()V

    .line 6
    iget-object v0, p0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->mIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs whitelist addIds([Ljava/lang/String;)Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->resetIfBuilt()V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->addIds(Ljava/util/Collection;)Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist build()Landroid/app/appsearch/RemoveByDocumentIdRequest;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->mBuilt:Z

    .line 3
    .line 4
    new-instance v0, Landroid/app/appsearch/RemoveByDocumentIdRequest;

    .line 5
    .line 6
    iget-object v1, p0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->mNamespace:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object p0, p0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->mIds:Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Landroid/app/appsearch/RemoveByDocumentIdRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
