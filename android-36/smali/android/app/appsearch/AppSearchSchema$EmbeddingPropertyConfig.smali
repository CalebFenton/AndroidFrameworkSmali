.class public final Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig;
.super Landroid/app/appsearch/AppSearchSchema$PropertyConfig;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/AppSearchSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmbeddingPropertyConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$Builder;,
        Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$QuantizationType;,
        Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig$IndexingType;
    }
.end annotation


# static fields
.field public static final whitelist INDEXING_TYPE_NONE:I = 0x0

.field public static final whitelist INDEXING_TYPE_SIMILARITY:I = 0x1

.field public static final whitelist QUANTIZATION_TYPE_8_BIT:I = 0x1

.field public static final whitelist QUANTIZATION_TYPE_NONE:I


# direct methods
.method constructor blacklist <init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;-><init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public whitelist getIndexingType()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getEmbeddingIndexingConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;->getIndexingType()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public whitelist getQuantizationType()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getEmbeddingIndexingConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;->getQuantizationType()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method
