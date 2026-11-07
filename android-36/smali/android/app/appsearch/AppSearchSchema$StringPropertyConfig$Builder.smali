.class public final Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCardinality:I

.field private blacklist mDeletePropagationType:I

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mIndexingType:I

.field private blacklist mJoinableValueType:I

.field private final blacklist mPropertyName:Ljava/lang/String;

.field private blacklist mTokenizerType:I


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
    iput-object v0, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mDescription:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iput v0, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mCardinality:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mIndexingType:I

    .line 13
    .line 14
    iput v0, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mTokenizerType:I

    .line 15
    .line 16
    iput v0, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mJoinableValueType:I

    .line 17
    .line 18
    iput v0, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mDeletePropagationType:I

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mPropertyName:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;
    .registers 6

    .line 1
    iget v0, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mTokenizerType:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_13

    .line 6
    .line 7
    iget v0, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mIndexingType:I

    .line 8
    .line 9
    if-nez v0, :cond_c

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v0, v1

    .line 14
    :goto_d
    const-string v3, "Cannot set TOKENIZER_TYPE_NONE with an indexing type other than INDEXING_TYPE_NONE."

    .line 15
    .line 16
    invoke-static {v0, v3}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1f

    .line 20
    :cond_13
    iget v0, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mIndexingType:I

    .line 21
    .line 22
    if-eqz v0, :cond_19

    .line 23
    .line 24
    move v0, v2

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v0, v1

    .line 27
    :goto_1a
    const-string v3, "Cannot set TOKENIZER_TYPE_PLAIN with INDEXING_TYPE_NONE."

    .line 28
    .line 29
    invoke-static {v0, v3}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_1f
    iget v0, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mJoinableValueType:I

    .line 33
    .line 34
    if-ne v0, v2, :cond_2f

    .line 35
    .line 36
    iget v0, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mCardinality:I

    .line 37
    .line 38
    if-eq v0, v2, :cond_29

    .line 39
    .line 40
    move v0, v2

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v0, v1

    .line 43
    :goto_2a
    const-string v3, "Cannot set JOINABLE_VALUE_TYPE_QUALIFIED_ID with CARDINALITY_REPEATED."

    .line 44
    .line 45
    invoke-static {v0, v3}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2f
    iget v0, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mDeletePropagationType:I

    .line 49
    .line 50
    if-eqz v0, :cond_3d

    .line 51
    .line 52
    iget v0, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mJoinableValueType:I

    .line 53
    .line 54
    if-ne v0, v2, :cond_38

    .line 55
    .line 56
    move v1, v2

    .line 57
    :cond_38
    const-string v0, "Cannot set delete propagation without setting JOINABLE_VALUE_TYPE_QUALIFIED_ID."

    .line 58
    .line 59
    invoke-static {v1, v0}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_3d
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;

    .line 63
    .line 64
    iget v1, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mIndexingType:I

    .line 65
    .line 66
    iget v2, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mTokenizerType:I

    .line 67
    .line 68
    invoke-direct {v0, v1, v2}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;-><init>(II)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;

    .line 72
    .line 73
    iget v2, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mJoinableValueType:I

    .line 74
    .line 75
    iget v3, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mDeletePropagationType:I

    .line 76
    .line 77
    invoke-direct {v1, v2, v3}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;-><init>(II)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    .line 81
    .line 82
    iget-object v3, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mPropertyName:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v4, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mDescription:Ljava/lang/String;

    .line 85
    .line 86
    iget p0, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mCardinality:I

    .line 87
    .line 88
    invoke-static {v3, v4, p0, v0, v1}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->createForString(Ljava/lang/String;Ljava/lang/String;ILandroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;)Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-direct {v2, p0}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;-><init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V

    .line 93
    .line 94
    .line 95
    return-object v2
.end method

.method public whitelist setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;
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
    iput p1, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mCardinality:I

    .line 9
    .line 10
    return-object p0
.end method

.method public blacklist setDeletePropagationType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "deletePropagationType"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iput p1, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mDeletePropagationType:I

    .line 9
    .line 10
    return-object p0
.end method

.method public blacklist setDescription(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mDescription:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public whitelist setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;
    .registers 5

    .line 1
    const/4 v0, 0x2

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
    iput p1, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mIndexingType:I

    .line 9
    .line 10
    return-object p0
.end method

.method public whitelist setJoinableValueType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "joinableValueType"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iput p1, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mJoinableValueType:I

    .line 9
    .line 10
    return-object p0
.end method

.method public whitelist setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "tokenizerType"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iput p1, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->mTokenizerType:I

    .line 9
    .line 10
    return-object p0
.end method
