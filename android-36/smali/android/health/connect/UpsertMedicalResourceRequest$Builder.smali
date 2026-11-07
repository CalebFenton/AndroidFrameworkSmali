.class public final Landroid/health/connect/UpsertMedicalResourceRequest$Builder;
.super Ljava/lang/Object;
.source "UpsertMedicalResourceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/UpsertMedicalResourceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mData:Ljava/lang/String;

.field private blacklist mDataSourceId:Ljava/lang/String;

.field private blacklist mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/UpsertMedicalResourceRequest$Builder;)V
    .registers 3
    .param p1, "other"    # Landroid/health/connect/UpsertMedicalResourceRequest$Builder;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p1, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mDataSourceId:Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mDataSourceId:Ljava/lang/String;

    .line 205
    iget-object v0, p1, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    iput-object v0, p0, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 206
    iget-object v0, p1, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mData:Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mData:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public constructor whitelist <init>(Landroid/health/connect/UpsertMedicalResourceRequest;)V
    .registers 3
    .param p1, "other"    # Landroid/health/connect/UpsertMedicalResourceRequest;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {p1}, Landroid/health/connect/UpsertMedicalResourceRequest;->getDataSourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mDataSourceId:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/health/connect/UpsertMedicalResourceRequest;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 214
    invoke-virtual {p1}, Landroid/health/connect/UpsertMedicalResourceRequest;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mData:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Ljava/lang/String;)V
    .registers 5
    .param p1, "dataSourceId"    # Ljava/lang/String;
    .param p2, "fhirVersion"    # Landroid/health/connect/datatypes/FhirVersion;
    .param p3, "data"    # Ljava/lang/String;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 196
    iput-object p1, p0, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mDataSourceId:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 198
    iput-object p3, p0, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mData:Ljava/lang/String;

    .line 199
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/UpsertMedicalResourceRequest;
    .registers 6

    .line 257
    new-instance v0, Landroid/health/connect/UpsertMedicalResourceRequest;

    iget-object v1, p0, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mDataSourceId:Ljava/lang/String;

    iget-object v2, p0, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    iget-object v3, p0, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mData:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/UpsertMedicalResourceRequest;-><init>(Ljava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Ljava/lang/String;Landroid/health/connect/UpsertMedicalResourceRequest-IA;)V

    return-object v0
.end method

.method public whitelist setData(Ljava/lang/String;)Landroid/health/connect/UpsertMedicalResourceRequest$Builder;
    .registers 2
    .param p1, "data"    # Ljava/lang/String;

    .line 246
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iput-object p1, p0, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mData:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public whitelist setDataSourceId(Ljava/lang/String;)Landroid/health/connect/UpsertMedicalResourceRequest$Builder;
    .registers 3
    .param p1, "dataSourceId"    # Ljava/lang/String;

    .line 225
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 227
    iput-object p1, p0, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mDataSourceId:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public whitelist setFhirVersion(Landroid/health/connect/datatypes/FhirVersion;)Landroid/health/connect/UpsertMedicalResourceRequest$Builder;
    .registers 2
    .param p1, "fhirVersion"    # Landroid/health/connect/datatypes/FhirVersion;

    .line 238
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iput-object p1, p0, Landroid/health/connect/UpsertMedicalResourceRequest$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 240
    return-object p0
.end method
