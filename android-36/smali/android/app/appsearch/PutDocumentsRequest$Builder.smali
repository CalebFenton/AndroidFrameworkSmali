.class public final Landroid/app/appsearch/PutDocumentsRequest$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/PutDocumentsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilt:Z

.field private blacklist mDocuments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/appsearch/GenericDocument;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTakenActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/appsearch/GenericDocument;",
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
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mDocuments:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mTakenActions:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mBuilt:Z

    .line 20
    .line 21
    return-void
.end method

.method private blacklist resetIfBuilt()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mBuilt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_19

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mDocuments:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mDocuments:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mTakenActions:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mTakenActions:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mBuilt:Z

    .line 25
    .line 26
    :cond_19
    return-void
.end method


# virtual methods
.method public whitelist addGenericDocuments(Ljava/util/Collection;)Landroid/app/appsearch/PutDocumentsRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroid/app/appsearch/GenericDocument;",
            ">;)",
            "Landroid/app/appsearch/PutDocumentsRequest$Builder;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->resetIfBuilt()V

    .line 6
    iget-object v0, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs whitelist addGenericDocuments([Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/PutDocumentsRequest$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->resetIfBuilt()V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments(Ljava/util/Collection;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist addTakenActionGenericDocuments(Ljava/util/Collection;)Landroid/app/appsearch/PutDocumentsRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroid/app/appsearch/GenericDocument;",
            ">;)",
            "Landroid/app/appsearch/PutDocumentsRequest$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/appsearch/exceptions/AppSearchException;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->resetIfBuilt()V

    .line 6
    iget-object v0, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mTakenActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs whitelist addTakenActionGenericDocuments([Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/PutDocumentsRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/appsearch/exceptions/AppSearchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->resetIfBuilt()V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addTakenActionGenericDocuments(Ljava/util/Collection;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist build()Landroid/app/appsearch/PutDocumentsRequest;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mBuilt:Z

    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_a
    iget-object v3, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mDocuments:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ge v2, v3, :cond_24

    .line 18
    .line 19
    iget-object v3, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mDocuments:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/app/appsearch/GenericDocument;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/app/appsearch/GenericDocument;->getId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_a

    .line 37
    :cond_24
    :goto_24
    iget-object v2, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mTakenActions:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-ge v1, v2, :cond_5e

    .line 44
    .line 45
    iget-object v2, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mTakenActions:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/app/appsearch/GenericDocument;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/app/appsearch/GenericDocument;->getId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_41

    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_24

    .line 66
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v1, "Document id "

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/app/appsearch/GenericDocument;->getId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, " cannot exist in both taken action and normal document"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_5e
    new-instance v0, Landroid/app/appsearch/PutDocumentsRequest;

    .line 96
    .line 97
    iget-object v1, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mDocuments:Ljava/util/ArrayList;

    .line 98
    .line 99
    iget-object p0, p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;->mTakenActions:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v0, v1, p0}, Landroid/app/appsearch/PutDocumentsRequest;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 102
    .line 103
    .line 104
    return-object v0
.end method
