.class public final Landroid/app/appsearch/GetByDocumentIdRequest$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/GetByDocumentIdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilt:Z

.field private blacklist mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNamespace:Ljava/lang/String;

.field private blacklist mProjectionTypePropertyPaths:Landroid/os/Bundle;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->mIds:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->mProjectionTypePropertyPaths:Landroid/os/Bundle;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->mBuilt:Z

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->mNamespace:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method private blacklist resetIfBuilt()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->mBuilt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_18

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->mIds:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->mIds:Ljava/util/List;

    .line 13
    .line 14
    iget-object v0, p0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->mProjectionTypePropertyPaths:Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/app/appsearch/util/BundleUtil;->deepCopy(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->mProjectionTypePropertyPaths:Landroid/os/Bundle;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->mBuilt:Z

    .line 24
    .line 25
    :cond_18
    return-void
.end method


# virtual methods
.method public whitelist addIds(Ljava/util/Collection;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/GetByDocumentIdRequest$Builder;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->resetIfBuilt()V

    .line 6
    iget-object v0, p0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->mIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs whitelist addIds([Ljava/lang/String;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->resetIfBuilt()V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->addIds(Ljava/util/Collection;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist addProjection(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/GetByDocumentIdRequest$Builder;"
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
    invoke-direct {p0}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->resetIfBuilt()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_29

    .line 28
    .line 29
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_16

    .line 42
    :cond_29
    iget-object p2, p0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->mProjectionTypePropertyPaths:Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method public whitelist addProjectionPaths(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroid/app/appsearch/PropertyPath;",
            ">;)",
            "Landroid/app/appsearch/GetByDocumentIdRequest$Builder;"
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
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_27

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/app/appsearch/PropertyPath;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/app/appsearch/PropertyPath;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_13

    .line 40
    :cond_27
    invoke-virtual {p0, p1, v0}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->addProjection(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public whitelist build()Landroid/app/appsearch/GetByDocumentIdRequest;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->mBuilt:Z

    .line 3
    .line 4
    new-instance v0, Landroid/app/appsearch/GetByDocumentIdRequest;

    .line 5
    .line 6
    iget-object v1, p0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->mNamespace:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->mIds:Ljava/util/List;

    .line 9
    .line 10
    iget-object p0, p0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->mProjectionTypePropertyPaths:Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, p0}, Landroid/app/appsearch/GetByDocumentIdRequest;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
