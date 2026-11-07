.class public final Landroid/health/connect/datatypes/FhirResource$Builder;
.super Ljava/lang/Object;
.source "FhirResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/FhirResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mData:Ljava/lang/String;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mType:I


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    invoke-static {p1}, Landroid/health/connect/datatypes/FhirResource;->validateFhirResourceType(I)V

    .line 314
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iput p1, p0, Landroid/health/connect/datatypes/FhirResource$Builder;->mType:I

    .line 318
    iput-object p2, p0, Landroid/health/connect/datatypes/FhirResource$Builder;->mId:Ljava/lang/String;

    .line 319
    iput-object p3, p0, Landroid/health/connect/datatypes/FhirResource$Builder;->mData:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public constructor whitelist <init>(Landroid/health/connect/datatypes/FhirResource$Builder;)V
    .registers 3
    .param p1, "other"    # Landroid/health/connect/datatypes/FhirResource$Builder;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget v0, p1, Landroid/health/connect/datatypes/FhirResource$Builder;->mType:I

    iput v0, p0, Landroid/health/connect/datatypes/FhirResource$Builder;->mType:I

    .line 326
    iget-object v0, p1, Landroid/health/connect/datatypes/FhirResource$Builder;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/datatypes/FhirResource$Builder;->mId:Ljava/lang/String;

    .line 327
    iget-object v0, p1, Landroid/health/connect/datatypes/FhirResource$Builder;->mData:Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/datatypes/FhirResource$Builder;->mData:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public constructor whitelist <init>(Landroid/health/connect/datatypes/FhirResource;)V
    .registers 3
    .param p1, "other"    # Landroid/health/connect/datatypes/FhirResource;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-virtual {p1}, Landroid/health/connect/datatypes/FhirResource;->getType()I

    move-result v0

    iput v0, p0, Landroid/health/connect/datatypes/FhirResource$Builder;->mType:I

    .line 334
    invoke-virtual {p1}, Landroid/health/connect/datatypes/FhirResource;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/FhirResource$Builder;->mId:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Landroid/health/connect/datatypes/FhirResource;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/FhirResource$Builder;->mData:Ljava/lang/String;

    .line 336
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/FhirResource;
    .registers 6

    .line 374
    new-instance v0, Landroid/health/connect/datatypes/FhirResource;

    iget v1, p0, Landroid/health/connect/datatypes/FhirResource$Builder;->mType:I

    iget-object v2, p0, Landroid/health/connect/datatypes/FhirResource$Builder;->mId:Ljava/lang/String;

    iget-object v3, p0, Landroid/health/connect/datatypes/FhirResource$Builder;->mData:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/FhirResource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/health/connect/datatypes/FhirResource-IA;)V

    return-object v0
.end method

.method public whitelist setData(Ljava/lang/String;)Landroid/health/connect/datatypes/FhirResource$Builder;
    .registers 2
    .param p1, "data"    # Ljava/lang/String;

    .line 366
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iput-object p1, p0, Landroid/health/connect/datatypes/FhirResource$Builder;->mData:Ljava/lang/String;

    .line 368
    return-object p0
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/health/connect/datatypes/FhirResource$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 358
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iput-object p1, p0, Landroid/health/connect/datatypes/FhirResource$Builder;->mId:Ljava/lang/String;

    .line 360
    return-object p0
.end method

.method public whitelist setType(I)Landroid/health/connect/datatypes/FhirResource$Builder;
    .registers 2
    .param p1, "type"    # I

    .line 347
    invoke-static {p1}, Landroid/health/connect/datatypes/FhirResource;->validateFhirResourceType(I)V

    .line 348
    iput p1, p0, Landroid/health/connect/datatypes/FhirResource$Builder;->mType:I

    .line 349
    return-object p0
.end method
