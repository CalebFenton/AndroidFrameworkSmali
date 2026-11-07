.class public final Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCardinality:I

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mIndexingType:I

.field private final blacklist mPropertyName:Ljava/lang/String;

.field private blacklist mQuantizationType:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;->mDescription:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iput v0, p0, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;->mCardinality:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;->mIndexingType:I

    .line 13
    .line 14
    iput v0, p0, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;->mQuantizationType:I

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;->mPropertyName:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig;
    .registers 6

    .line 1
    new-instance v0, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;->mPropertyName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;->mDescription:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;->mCardinality:I

    .line 8
    .line 9
    iget v4, p0, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;->mIndexingType:I

    .line 10
    .line 11
    iget p0, p0, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;->mQuantizationType:I

    .line 12
    .line 13
    invoke-static {v1, v2, v3, v4, p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->createForEmbedding(Ljava/lang/String;Ljava/lang/String;III)Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig;-><init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public whitelist setCardinality(I)Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "cardinality"

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iput p1, p0, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;->mCardinality:I

    .line 9
    .line 10
    return-object p0
.end method

.method public blacklist setDescription(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;->mDescription:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public whitelist setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "indexingType"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iput p1, p0, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;->mIndexingType:I

    .line 9
    .line 10
    return-object p0
.end method

.method public whitelist setQuantizationType(I)Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "quantizationType"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iput p1, p0, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;->mQuantizationType:I

    .line 9
    .line 10
    return-object p0
.end method
