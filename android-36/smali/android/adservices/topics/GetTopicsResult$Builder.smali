.class public final Landroid/adservices/topics/GetTopicsResult$Builder;
.super Ljava/lang/Object;
.source "GetTopicsResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/topics/GetTopicsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEncapsulatedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private blacklist mEncryptedTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private blacklist mEncryptionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mErrorMessage:Ljava/lang/String;

.field private blacklist mModelVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mResultCode:I

.field private blacklist mTaxonomyVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mTaxonomyVersions:Ljava/util/List;

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mModelVersions:Ljava/util/List;

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mTopics:Ljava/util/List;

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mEncryptedTopics:Ljava/util/List;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mEncryptionKeys:Ljava/util/List;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mEncapsulatedKeys:Ljava/util/List;

    .line 370
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/topics/GetTopicsResult;
    .registers 13

    .line 436
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mTopics:Ljava/util/List;

    if-eqz v0, :cond_73

    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mTaxonomyVersions:Ljava/util/List;

    if-eqz v0, :cond_73

    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mModelVersions:Ljava/util/List;

    if-eqz v0, :cond_73

    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mEncryptedTopics:Ljava/util/List;

    if-eqz v0, :cond_73

    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mEncryptionKeys:Ljava/util/List;

    if-eqz v0, :cond_73

    .line 445
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mTopics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mTaxonomyVersions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_6b

    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mTopics:Ljava/util/List;

    .line 446
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mModelVersions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_6b

    .line 450
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mEncryptedTopics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mEncryptionKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_63

    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mEncryptedTopics:Ljava/util/List;

    .line 451
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mEncapsulatedKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_63

    .line 455
    new-instance v2, Landroid/adservices/topics/GetTopicsResult;

    iget v3, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mResultCode:I

    iget-object v4, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mErrorMessage:Ljava/lang/String;

    iget-object v5, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mTaxonomyVersions:Ljava/util/List;

    iget-object v6, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mModelVersions:Ljava/util/List;

    iget-object v7, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mTopics:Ljava/util/List;

    iget-object v8, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mEncryptedTopics:Ljava/util/List;

    iget-object v9, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mEncryptionKeys:Ljava/util/List;

    iget-object v10, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mEncapsulatedKeys:Ljava/util/List;

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Landroid/adservices/topics/GetTopicsResult;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/adservices/topics/GetTopicsResult-IA;)V

    return-object v2

    .line 452
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size mismatch in EncryptedTopic lists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size mismatch in Topics"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One of the mandatory params of GetTopicsResult is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setEncapsulatedKeys(Ljava/util/List;)Landroid/adservices/topics/GetTopicsResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Landroid/adservices/topics/GetTopicsResult$Builder;"
        }
    .end annotation

    .line 424
    .local p1, "encapsulatedKeys":Ljava/util/List;, "Ljava/util/List<[B>;"
    iput-object p1, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mEncapsulatedKeys:Ljava/util/List;

    .line 425
    return-object p0
.end method

.method public blacklist setEncryptedTopics(Ljava/util/List;)Landroid/adservices/topics/GetTopicsResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Landroid/adservices/topics/GetTopicsResult$Builder;"
        }
    .end annotation

    .line 410
    .local p1, "encryptedTopics":Ljava/util/List;, "Ljava/util/List<[B>;"
    iput-object p1, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mEncryptedTopics:Ljava/util/List;

    .line 411
    return-object p0
.end method

.method public blacklist setEncryptionKeys(Ljava/util/List;)Landroid/adservices/topics/GetTopicsResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/adservices/topics/GetTopicsResult$Builder;"
        }
    .end annotation

    .line 417
    .local p1, "encryptionKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mEncryptionKeys:Ljava/util/List;

    .line 418
    return-object p0
.end method

.method public blacklist setErrorMessage(Ljava/lang/String;)Landroid/adservices/topics/GetTopicsResult$Builder;
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 382
    iput-object p1, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mErrorMessage:Ljava/lang/String;

    .line 383
    return-object p0
.end method

.method public blacklist setModelVersions(Ljava/util/List;)Landroid/adservices/topics/GetTopicsResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/adservices/topics/GetTopicsResult$Builder;"
        }
    .end annotation

    .line 396
    .local p1, "modelVersions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mModelVersions:Ljava/util/List;

    .line 397
    return-object p0
.end method

.method public blacklist setResultCode(I)Landroid/adservices/topics/GetTopicsResult$Builder;
    .registers 2
    .param p1, "resultCode"    # I

    .line 375
    iput p1, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mResultCode:I

    .line 376
    return-object p0
.end method

.method public blacklist setTaxonomyVersions(Ljava/util/List;)Landroid/adservices/topics/GetTopicsResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/adservices/topics/GetTopicsResult$Builder;"
        }
    .end annotation

    .line 389
    .local p1, "taxonomyVersions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mTaxonomyVersions:Ljava/util/List;

    .line 390
    return-object p0
.end method

.method public blacklist setTopics(Ljava/util/List;)Landroid/adservices/topics/GetTopicsResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/adservices/topics/GetTopicsResult$Builder;"
        }
    .end annotation

    .line 403
    .local p1, "topics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/adservices/topics/GetTopicsResult$Builder;->mTopics:Ljava/util/List;

    .line 404
    return-object p0
.end method
