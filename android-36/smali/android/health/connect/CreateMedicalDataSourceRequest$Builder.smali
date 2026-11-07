.class public final Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;
.super Ljava/lang/Object;
.source "CreateMedicalDataSourceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/CreateMedicalDataSourceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDisplayName:Ljava/lang/String;

.field private blacklist mFhirBaseUri:Landroid/net/Uri;

.field private blacklist mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;)V
    .registers 3
    .param p1, "other"    # Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p1, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mFhirBaseUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mFhirBaseUri:Landroid/net/Uri;

    .line 216
    iget-object v0, p1, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mDisplayName:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    iput-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 218
    return-void
.end method

.method public constructor whitelist <init>(Landroid/health/connect/CreateMedicalDataSourceRequest;)V
    .registers 3
    .param p1, "other"    # Landroid/health/connect/CreateMedicalDataSourceRequest;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Landroid/health/connect/CreateMedicalDataSourceRequest;->getFhirBaseUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mFhirBaseUri:Landroid/net/Uri;

    .line 224
    invoke-virtual {p1}, Landroid/health/connect/CreateMedicalDataSourceRequest;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mDisplayName:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/health/connect/CreateMedicalDataSourceRequest;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 226
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/health/connect/datatypes/FhirVersion;)V
    .registers 4
    .param p1, "fhirBaseUri"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "fhirVersion"    # Landroid/health/connect/datatypes/FhirVersion;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iput-object p1, p0, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mFhirBaseUri:Landroid/net/Uri;

    .line 208
    iput-object p2, p0, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mDisplayName:Ljava/lang/String;

    .line 209
    iput-object p3, p0, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 210
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/CreateMedicalDataSourceRequest;
    .registers 6

    .line 289
    new-instance v0, Landroid/health/connect/CreateMedicalDataSourceRequest;

    iget-object v1, p0, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mFhirBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mDisplayName:Ljava/lang/String;

    iget-object v3, p0, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/CreateMedicalDataSourceRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Landroid/health/connect/CreateMedicalDataSourceRequest-IA;)V

    return-object v0
.end method

.method public whitelist setDisplayName(Ljava/lang/String;)Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;
    .registers 2
    .param p1, "displayName"    # Ljava/lang/String;

    .line 261
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iput-object p1, p0, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mDisplayName:Ljava/lang/String;

    .line 263
    return-object p0
.end method

.method public whitelist setFhirBaseUri(Landroid/net/Uri;)Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;
    .registers 2
    .param p1, "fhirBaseUri"    # Landroid/net/Uri;

    .line 249
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iput-object p1, p0, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mFhirBaseUri:Landroid/net/Uri;

    .line 251
    return-object p0
.end method

.method public whitelist setFhirVersion(Landroid/health/connect/datatypes/FhirVersion;)Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;
    .registers 2
    .param p1, "fhirVersion"    # Landroid/health/connect/datatypes/FhirVersion;

    .line 274
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iput-object p1, p0, Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 276
    return-object p0
.end method
