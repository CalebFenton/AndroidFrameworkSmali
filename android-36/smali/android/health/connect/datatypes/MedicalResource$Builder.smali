.class public final Landroid/health/connect/datatypes/MedicalResource$Builder;
.super Ljava/lang/Object;
.source "MedicalResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/MedicalResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDataSourceId:Ljava/lang/String;

.field private blacklist mFhirResource:Landroid/health/connect/datatypes/FhirResource;

.field private blacklist mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

.field private blacklist mType:I


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Landroid/health/connect/datatypes/FhirResource;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "dataSourceId"    # Ljava/lang/String;
    .param p3, "fhirVersion"    # Landroid/health/connect/datatypes/FhirVersion;
    .param p4, "fhirResource"    # Landroid/health/connect/datatypes/FhirResource;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-static {p1}, Landroid/health/connect/datatypes/MedicalResource;->validateMedicalResourceType(I)V

    .line 345
    invoke-static {p2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 347
    iput p1, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mType:I

    .line 348
    iput-object p2, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mDataSourceId:Ljava/lang/String;

    .line 349
    iput-object p3, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 350
    iput-object p4, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mFhirResource:Landroid/health/connect/datatypes/FhirResource;

    .line 351
    return-void
.end method

.method public constructor whitelist <init>(Landroid/health/connect/datatypes/MedicalResource$Builder;)V
    .registers 3
    .param p1, "other"    # Landroid/health/connect/datatypes/MedicalResource$Builder;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget v0, p1, Landroid/health/connect/datatypes/MedicalResource$Builder;->mType:I

    iput v0, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mType:I

    .line 357
    iget-object v0, p1, Landroid/health/connect/datatypes/MedicalResource$Builder;->mDataSourceId:Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mDataSourceId:Ljava/lang/String;

    .line 358
    iget-object v0, p1, Landroid/health/connect/datatypes/MedicalResource$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 359
    iget-object v0, p1, Landroid/health/connect/datatypes/MedicalResource$Builder;->mFhirResource:Landroid/health/connect/datatypes/FhirResource;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mFhirResource:Landroid/health/connect/datatypes/FhirResource;

    .line 360
    return-void
.end method

.method public constructor whitelist <init>(Landroid/health/connect/datatypes/MedicalResource;)V
    .registers 3
    .param p1, "other"    # Landroid/health/connect/datatypes/MedicalResource;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-virtual {p1}, Landroid/health/connect/datatypes/MedicalResource;->getType()I

    move-result v0

    iput v0, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mType:I

    .line 366
    invoke-virtual {p1}, Landroid/health/connect/datatypes/MedicalResource;->getDataSourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mDataSourceId:Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Landroid/health/connect/datatypes/MedicalResource;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 368
    invoke-virtual {p1}, Landroid/health/connect/datatypes/MedicalResource;->getFhirResource()Landroid/health/connect/datatypes/FhirResource;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mFhirResource:Landroid/health/connect/datatypes/FhirResource;

    .line 369
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/MedicalResource;
    .registers 7

    .line 416
    new-instance v0, Landroid/health/connect/datatypes/MedicalResource;

    iget v1, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mType:I

    iget-object v2, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mDataSourceId:Ljava/lang/String;

    iget-object v3, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    iget-object v4, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mFhirResource:Landroid/health/connect/datatypes/FhirResource;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/health/connect/datatypes/MedicalResource;-><init>(ILjava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Landroid/health/connect/datatypes/FhirResource;Landroid/health/connect/datatypes/MedicalResource-IA;)V

    return-object v0
.end method

.method public whitelist setDataSourceId(Ljava/lang/String;)Landroid/health/connect/datatypes/MedicalResource$Builder;
    .registers 3
    .param p1, "dataSourceId"    # Ljava/lang/String;

    .line 391
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 393
    iput-object p1, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mDataSourceId:Ljava/lang/String;

    .line 394
    return-object p0
.end method

.method public whitelist setFhirResource(Landroid/health/connect/datatypes/FhirResource;)Landroid/health/connect/datatypes/MedicalResource$Builder;
    .registers 2
    .param p1, "fhirResource"    # Landroid/health/connect/datatypes/FhirResource;

    .line 408
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iput-object p1, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mFhirResource:Landroid/health/connect/datatypes/FhirResource;

    .line 410
    return-object p0
.end method

.method public whitelist setFhirVersion(Landroid/health/connect/datatypes/FhirVersion;)Landroid/health/connect/datatypes/MedicalResource$Builder;
    .registers 2
    .param p1, "fhirVersion"    # Landroid/health/connect/datatypes/FhirVersion;

    .line 400
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iput-object p1, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 402
    return-object p0
.end method

.method public whitelist setType(I)Landroid/health/connect/datatypes/MedicalResource$Builder;
    .registers 2
    .param p1, "type"    # I

    .line 379
    invoke-static {p1}, Landroid/health/connect/datatypes/MedicalResource;->validateMedicalResourceType(I)V

    .line 380
    iput p1, p0, Landroid/health/connect/datatypes/MedicalResource$Builder;->mType:I

    .line 381
    return-object p0
.end method
