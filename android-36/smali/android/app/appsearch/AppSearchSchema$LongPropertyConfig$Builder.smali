.class public final Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;
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

.field private blacklist mScoringEnabled:Z


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
    iput-object v0, p0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->mDescription:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iput v0, p0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->mCardinality:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->mIndexingType:I

    .line 13
    .line 14
    iput-boolean v0, p0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->mScoringEnabled:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->mPropertyName:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;
    .registers 6

    .line 1
    new-instance v0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->mPropertyName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->mDescription:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->mCardinality:I

    .line 8
    .line 9
    iget v4, p0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->mIndexingType:I

    .line 10
    .line 11
    iget-boolean p0, p0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->mScoringEnabled:Z

    .line 12
    .line 13
    invoke-static {v1, v2, v3, v4, p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->createForLong(Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;-><init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public whitelist setCardinality(I)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;
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
    iput p1, p0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->mCardinality:I

    .line 9
    .line 10
    return-object p0
.end method

.method public blacklist setDescription(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->mDescription:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public whitelist setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;
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
    iput p1, p0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->mIndexingType:I

    .line 9
    .line 10
    return-object p0
.end method

.method public whitelist setScoringEnabled(Z)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->mScoringEnabled:Z

    .line 2
    .line 3
    return-object p0
.end method
