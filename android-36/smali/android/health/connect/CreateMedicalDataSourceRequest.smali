.class public final Landroid/health/connect/CreateMedicalDataSourceRequest;
.super Ljava/lang/Object;
.source "CreateMedicalDataSourceRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/CreateMedicalDataSourceRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/CreateMedicalDataSourceRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DISPLAY_NAME_CHARACTER_LIMIT:I = 0x5a

.field private static final blacklist FHIR_BASE_URI_CHARACTER_LIMIT:I = 0x7d0


# instance fields
.field private blacklist mDataSize:J

.field private final blacklist mDisplayName:Ljava/lang/String;

.field private final blacklist mFhirBaseUri:Landroid/net/Uri;

.field private final blacklist mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Landroid/health/connect/CreateMedicalDataSourceRequest$1;

    invoke-direct {v0}, Landroid/health/connect/CreateMedicalDataSourceRequest$1;-><init>()V

    sput-object v0, Landroid/health/connect/CreateMedicalDataSourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/health/connect/datatypes/FhirVersion;)V
    .registers 4
    .param p1, "fhirBaseUri"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "fhirVersion"    # Landroid/health/connect/datatypes/FhirVersion;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p1}, Landroid/health/connect/CreateMedicalDataSourceRequest;->validateFhirBaseUriCharacterLimit(Landroid/net/Uri;)V

    .line 82
    invoke-static {p2}, Landroid/health/connect/CreateMedicalDataSourceRequest;->validateDisplayNameCharacterLimit(Ljava/lang/String;)V

    .line 83
    invoke-static {p3}, Landroid/health/connect/CreateMedicalDataSourceRequest;->validateFhirVersion(Landroid/health/connect/datatypes/FhirVersion;)V

    .line 85
    iput-object p1, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mFhirBaseUri:Landroid/net/Uri;

    .line 86
    iput-object p2, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mDisplayName:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 88
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Landroid/health/connect/CreateMedicalDataSourceRequest-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/health/connect/CreateMedicalDataSourceRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/health/connect/datatypes/FhirVersion;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mDataSize:J

    .line 94
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mFhirBaseUri:Landroid/net/Uri;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mDisplayName:Ljava/lang/String;

    .line 96
    const-class v0, Landroid/health/connect/datatypes/FhirVersion;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/health/connect/datatypes/FhirVersion;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/datatypes/FhirVersion;

    .line 97
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/datatypes/FhirVersion;

    iput-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 100
    iget-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mFhirBaseUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/health/connect/CreateMedicalDataSourceRequest;->validateFhirBaseUriCharacterLimit(Landroid/net/Uri;)V

    .line 101
    iget-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/health/connect/CreateMedicalDataSourceRequest;->validateDisplayNameCharacterLimit(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    invoke-static {v0}, Landroid/health/connect/CreateMedicalDataSourceRequest;->validateFhirVersion(Landroid/health/connect/datatypes/FhirVersion;)V

    .line 103
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/CreateMedicalDataSourceRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/CreateMedicalDataSourceRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist validateDisplayNameCharacterLimit(Ljava/lang/String;)V
    .registers 3
    .param p0, "displayName"    # Ljava/lang/String;

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 297
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_f

    .line 303
    return-void

    .line 298
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display name cannot be longer than 90 characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display name cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validateFhirBaseUriCharacterLimit(Landroid/net/Uri;)V
    .registers 4
    .param p0, "fhirBaseUri"    # Landroid/net/Uri;

    .line 306
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "fhirBaseUriString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 310
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x7d0

    if-gt v1, v2, :cond_13

    .line 316
    return-void

    .line 311
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "FHIR base URI cannot be longer than 2000 characters."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "FHIR base URI cannot be empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist validateFhirVersion(Landroid/health/connect/datatypes/FhirVersion;)V
    .registers 4
    .param p0, "fhirVersion"    # Landroid/health/connect/datatypes/FhirVersion;

    .line 319
    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirVersion;->isSupportedFhirVersion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 322
    return-void

    .line 320
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported FHIR version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 152
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 153
    :cond_4
    instance-of v1, p1, Landroid/health/connect/CreateMedicalDataSourceRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    move-object v1, p1

    check-cast v1, Landroid/health/connect/CreateMedicalDataSourceRequest;

    .line 154
    .local v1, "that":Landroid/health/connect/CreateMedicalDataSourceRequest;
    invoke-virtual {p0}, Landroid/health/connect/CreateMedicalDataSourceRequest;->getFhirBaseUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/CreateMedicalDataSourceRequest;->getFhirBaseUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 155
    invoke-virtual {p0}, Landroid/health/connect/CreateMedicalDataSourceRequest;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/CreateMedicalDataSourceRequest;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 156
    invoke-virtual {p0}, Landroid/health/connect/CreateMedicalDataSourceRequest;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/CreateMedicalDataSourceRequest;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/datatypes/FhirVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_38

    :cond_37
    move v0, v2

    .line 154
    :goto_38
    return v0

    .line 153
    .end local v1    # "that":Landroid/health/connect/CreateMedicalDataSourceRequest;
    :cond_39
    return v2
.end method

.method public blacklist getDataSize()J
    .registers 3

    .line 135
    iget-wide v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mDataSize:J

    return-wide v0
.end method

.method public whitelist getDisplayName()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFhirBaseUri()Landroid/net/Uri;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mFhirBaseUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 161
    invoke-virtual {p0}, Landroid/health/connect/CreateMedicalDataSourceRequest;->getFhirBaseUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/CreateMedicalDataSourceRequest;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/CreateMedicalDataSourceRequest;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, "fhirBaseUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/CreateMedicalDataSourceRequest;->getFhirBaseUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, ",displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/CreateMedicalDataSourceRequest;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, ",fhirVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/CreateMedicalDataSourceRequest;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 145
    iget-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mFhirBaseUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 146
    iget-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Landroid/health/connect/CreateMedicalDataSourceRequest;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    return-void
.end method
