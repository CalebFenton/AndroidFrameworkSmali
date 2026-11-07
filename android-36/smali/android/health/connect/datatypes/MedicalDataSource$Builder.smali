.class public final Landroid/health/connect/datatypes/MedicalDataSource$Builder;
.super Ljava/lang/Object;
.source "MedicalDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/MedicalDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDisplayName:Ljava/lang/String;

.field private blacklist mFhirBaseUri:Landroid/net/Uri;

.field private blacklist mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mLastDataUpdateTime:Ljava/time/Instant;

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/MedicalDataSource$Builder;)V
    .registers 3
    .param p1, "other"    # Landroid/health/connect/datatypes/MedicalDataSource$Builder;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p1, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mId:Ljava/lang/String;

    .line 271
    iget-object v0, p1, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mPackageName:Ljava/lang/String;

    .line 272
    iget-object v0, p1, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mFhirBaseUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mFhirBaseUri:Landroid/net/Uri;

    .line 273
    iget-object v0, p1, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mDisplayName:Ljava/lang/String;

    .line 274
    iget-object v0, p1, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 275
    iget-object v0, p1, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mLastDataUpdateTime:Ljava/time/Instant;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mLastDataUpdateTime:Ljava/time/Instant;

    .line 276
    return-void
.end method

.method public constructor whitelist <init>(Landroid/health/connect/datatypes/MedicalDataSource;)V
    .registers 3
    .param p1, "other"    # Landroid/health/connect/datatypes/MedicalDataSource;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {p1}, Landroid/health/connect/datatypes/MedicalDataSource;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mId:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/health/connect/datatypes/MedicalDataSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mPackageName:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/health/connect/datatypes/MedicalDataSource;->getFhirBaseUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mFhirBaseUri:Landroid/net/Uri;

    .line 284
    invoke-virtual {p1}, Landroid/health/connect/datatypes/MedicalDataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mDisplayName:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/health/connect/datatypes/MedicalDataSource;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 286
    invoke-virtual {p1}, Landroid/health/connect/datatypes/MedicalDataSource;->getLastDataUpdateTime()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mLastDataUpdateTime:Ljava/time/Instant;

    .line 287
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/health/connect/datatypes/FhirVersion;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "fhirBaseUri"    # Landroid/net/Uri;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "fhirVersion"    # Landroid/health/connect/datatypes/FhirVersion;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iput-object p1, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mId:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mPackageName:Ljava/lang/String;

    .line 262
    iput-object p3, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mFhirBaseUri:Landroid/net/Uri;

    .line 263
    iput-object p4, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mDisplayName:Ljava/lang/String;

    .line 264
    iput-object p5, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 265
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/MedicalDataSource;
    .registers 9

    .line 342
    new-instance v0, Landroid/health/connect/datatypes/MedicalDataSource;

    iget-object v1, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mId:Ljava/lang/String;

    iget-object v2, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mFhirBaseUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mDisplayName:Ljava/lang/String;

    iget-object v5, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    iget-object v6, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mLastDataUpdateTime:Ljava/time/Instant;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/MedicalDataSource;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Ljava/time/Instant;Landroid/health/connect/datatypes/MedicalDataSource-IA;)V

    return-object v0
.end method

.method public whitelist setDisplayName(Ljava/lang/String;)Landroid/health/connect/datatypes/MedicalDataSource$Builder;
    .registers 2
    .param p1, "displayName"    # Ljava/lang/String;

    .line 319
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iput-object p1, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mDisplayName:Ljava/lang/String;

    .line 321
    return-object p0
.end method

.method public whitelist setFhirBaseUri(Landroid/net/Uri;)Landroid/health/connect/datatypes/MedicalDataSource$Builder;
    .registers 2
    .param p1, "fhirBaseUri"    # Landroid/net/Uri;

    .line 311
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iput-object p1, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mFhirBaseUri:Landroid/net/Uri;

    .line 313
    return-object p0
.end method

.method public whitelist setFhirVersion(Landroid/health/connect/datatypes/FhirVersion;)Landroid/health/connect/datatypes/MedicalDataSource$Builder;
    .registers 2
    .param p1, "fhirVersion"    # Landroid/health/connect/datatypes/FhirVersion;

    .line 327
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iput-object p1, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 329
    return-object p0
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/health/connect/datatypes/MedicalDataSource$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 292
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iput-object p1, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mId:Ljava/lang/String;

    .line 294
    return-object p0
.end method

.method public whitelist setLastDataUpdateTime(Ljava/time/Instant;)Landroid/health/connect/datatypes/MedicalDataSource$Builder;
    .registers 2
    .param p1, "lastDataUpdateTime"    # Ljava/time/Instant;

    .line 335
    iput-object p1, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mLastDataUpdateTime:Ljava/time/Instant;

    .line 336
    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/health/connect/datatypes/MedicalDataSource$Builder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 303
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iput-object p1, p0, Landroid/health/connect/datatypes/MedicalDataSource$Builder;->mPackageName:Ljava/lang/String;

    .line 305
    return-object p0
.end method
