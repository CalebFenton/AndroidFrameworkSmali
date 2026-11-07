.class public final Landroid/health/connect/datatypes/MedicalResource;
.super Ljava/lang/Object;
.source "MedicalResource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/MedicalResource$MedicalResourceType;,
        Landroid/health/connect/datatypes/MedicalResource$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/datatypes/MedicalResource;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MEDICAL_RESOURCE_TYPE_ALLERGIES_INTOLERANCES:I = 0x2

.field public static final whitelist MEDICAL_RESOURCE_TYPE_CONDITIONS:I = 0x7

.field public static final whitelist MEDICAL_RESOURCE_TYPE_LABORATORY_RESULTS:I = 0x6

.field public static final whitelist MEDICAL_RESOURCE_TYPE_MEDICATIONS:I = 0x9

.field public static final whitelist MEDICAL_RESOURCE_TYPE_PERSONAL_DETAILS:I = 0xa

.field public static final whitelist MEDICAL_RESOURCE_TYPE_PRACTITIONER_DETAILS:I = 0xb

.field public static final whitelist MEDICAL_RESOURCE_TYPE_PREGNANCY:I = 0x3

.field public static final whitelist MEDICAL_RESOURCE_TYPE_PROCEDURES:I = 0x8

.field public static final whitelist MEDICAL_RESOURCE_TYPE_SOCIAL_HISTORY:I = 0x4

.field public static final whitelist MEDICAL_RESOURCE_TYPE_VACCINES:I = 0x1

.field public static final whitelist MEDICAL_RESOURCE_TYPE_VISITS:I = 0xc

.field public static final whitelist MEDICAL_RESOURCE_TYPE_VITAL_SIGNS:I = 0x5

.field public static final blacklist VALID_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDataSourceId:Ljava/lang/String;

.field private final blacklist mFhirResource:Landroid/health/connect/datatypes/FhirResource;

.field private final blacklist mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

.field private final blacklist mId:Landroid/health/connect/MedicalResourceId;

.field private blacklist mLastModifiedTimestamp:J

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 186
    new-instance v0, Landroid/health/connect/datatypes/MedicalResource$1;

    invoke-direct {v0}, Landroid/health/connect/datatypes/MedicalResource$1;-><init>()V

    sput-object v0, Landroid/health/connect/datatypes/MedicalResource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 264
    nop

    .line 266
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 267
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 268
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 269
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 270
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 271
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 272
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 273
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 274
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 275
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 276
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 277
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Integer;

    move-result-object v0

    .line 265
    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/MedicalResource;->VALID_TYPES:Ljava/util/Set;

    .line 264
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Landroid/health/connect/datatypes/FhirResource;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "dataSourceId"    # Ljava/lang/String;
    .param p3, "fhirVersion"    # Landroid/health/connect/datatypes/FhirVersion;
    .param p4, "fhirResource"    # Landroid/health/connect/datatypes/FhirResource;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {p1}, Landroid/health/connect/datatypes/MedicalResource;->validateMedicalResourceType(I)V

    .line 157
    invoke-static {p2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 159
    iput p1, p0, Landroid/health/connect/datatypes/MedicalResource;->mType:I

    .line 160
    iput-object p2, p0, Landroid/health/connect/datatypes/MedicalResource;->mDataSourceId:Ljava/lang/String;

    .line 161
    iput-object p3, p0, Landroid/health/connect/datatypes/MedicalResource;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 162
    iput-object p4, p0, Landroid/health/connect/datatypes/MedicalResource;->mFhirResource:Landroid/health/connect/datatypes/FhirResource;

    .line 163
    new-instance v0, Landroid/health/connect/MedicalResourceId;

    invoke-virtual {p4}, Landroid/health/connect/datatypes/FhirResource;->getType()I

    move-result v1

    invoke-virtual {p4}, Landroid/health/connect/datatypes/FhirResource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p2, v1, v2}, Landroid/health/connect/MedicalResourceId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalResource;->mId:Landroid/health/connect/MedicalResourceId;

    .line 164
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Landroid/health/connect/datatypes/FhirResource;J)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "dataSourceId"    # Ljava/lang/String;
    .param p3, "fhirVersion"    # Landroid/health/connect/datatypes/FhirVersion;
    .param p4, "fhirResource"    # Landroid/health/connect/datatypes/FhirResource;
    .param p5, "lastModifiedTimestamp"    # J

    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/health/connect/datatypes/MedicalResource;-><init>(ILjava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Landroid/health/connect/datatypes/FhirResource;)V

    .line 141
    iput-wide p5, p0, Landroid/health/connect/datatypes/MedicalResource;->mLastModifiedTimestamp:J

    .line 142
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Landroid/health/connect/datatypes/FhirResource;Landroid/health/connect/datatypes/MedicalResource-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/health/connect/datatypes/MedicalResource;-><init>(ILjava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Landroid/health/connect/datatypes/FhirResource;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/datatypes/MedicalResource;->mType:I

    .line 173
    iget v0, p0, Landroid/health/connect/datatypes/MedicalResource;->mType:I

    invoke-static {v0}, Landroid/health/connect/datatypes/MedicalResource;->validateMedicalResourceType(I)V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalResource;->mDataSourceId:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalResource;->mDataSourceId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 176
    const-class v0, Landroid/health/connect/datatypes/FhirVersion;

    .line 178
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/health/connect/datatypes/FhirVersion;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/datatypes/FhirVersion;

    .line 177
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/datatypes/FhirVersion;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalResource;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 179
    const-class v0, Landroid/health/connect/datatypes/FhirResource;

    .line 181
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/health/connect/datatypes/FhirResource;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/datatypes/FhirResource;

    .line 180
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/datatypes/FhirResource;

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalResource;->mFhirResource:Landroid/health/connect/datatypes/FhirResource;

    .line 182
    new-instance v0, Landroid/health/connect/MedicalResourceId;

    iget-object v1, p0, Landroid/health/connect/datatypes/MedicalResource;->mDataSourceId:Ljava/lang/String;

    iget-object v2, p0, Landroid/health/connect/datatypes/MedicalResource;->mFhirResource:Landroid/health/connect/datatypes/FhirResource;

    invoke-virtual {v2}, Landroid/health/connect/datatypes/FhirResource;->getType()I

    move-result v2

    iget-object v3, p0, Landroid/health/connect/datatypes/MedicalResource;->mFhirResource:Landroid/health/connect/datatypes/FhirResource;

    invoke-virtual {v3}, Landroid/health/connect/datatypes/FhirResource;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/MedicalResourceId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/health/connect/datatypes/MedicalResource;->mId:Landroid/health/connect/MedicalResourceId;

    .line 183
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/datatypes/MedicalResource-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/datatypes/MedicalResource;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist validateMedicalResourceType(I)V
    .registers 3
    .param p0, "medicalResourceType"    # I

    .line 288
    sget-object v0, Landroid/health/connect/datatypes/MedicalResource;->VALID_TYPES:Ljava/util/Set;

    const-class v1, Landroid/health/connect/datatypes/MedicalResource$MedicalResourceType;

    .line 289
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-static {p0, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 290
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 294
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 295
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/MedicalResource;

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/MedicalResource;

    .line 296
    .local v1, "that":Landroid/health/connect/datatypes/MedicalResource;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalResource;->getType()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/MedicalResource;->getType()I

    move-result v4

    if-ne v3, v4, :cond_41

    .line 297
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalResource;->getDataSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/MedicalResource;->getDataSourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 298
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalResource;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/MedicalResource;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/datatypes/FhirVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 299
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalResource;->getFhirResource()Landroid/health/connect/datatypes/FhirResource;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/MedicalResource;->getFhirResource()Landroid/health/connect/datatypes/FhirResource;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/datatypes/FhirResource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_42

    :cond_41
    move v0, v2

    .line 296
    :goto_42
    return v0

    .line 295
    .end local v1    # "that":Landroid/health/connect/datatypes/MedicalResource;
    :cond_43
    return v2
.end method

.method public whitelist getDataSourceId()Ljava/lang/String;
    .registers 2

    .line 220
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalResource;->mDataSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFhirResource()Landroid/health/connect/datatypes/FhirResource;
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalResource;->mFhirResource:Landroid/health/connect/datatypes/FhirResource;

    return-object v0
.end method

.method public whitelist getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalResource;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    return-object v0
.end method

.method public whitelist getId()Landroid/health/connect/MedicalResourceId;
    .registers 2

    .line 214
    iget-object v0, p0, Landroid/health/connect/datatypes/MedicalResource;->mId:Landroid/health/connect/MedicalResourceId;

    return-object v0
.end method

.method public blacklist getLastModifiedTimestamp()J
    .registers 3

    .line 241
    iget-wide v0, p0, Landroid/health/connect/datatypes/MedicalResource;->mLastModifiedTimestamp:J

    return-wide v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 208
    iget v0, p0, Landroid/health/connect/datatypes/MedicalResource;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 304
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalResource;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalResource;->getDataSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalResource;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalResource;->getFhirResource()Landroid/health/connect/datatypes/FhirResource;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalResource;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    const-string v1, ",dataSourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalResource;->getDataSourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v1, ",fhirVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalResource;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    const-string v1, ",fhirResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalResource;->getFhirResource()Landroid/health/connect/datatypes/FhirResource;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 251
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalResource;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalResource;->getDataSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalResource;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 255
    invoke-virtual {p0}, Landroid/health/connect/datatypes/MedicalResource;->getFhirResource()Landroid/health/connect/datatypes/FhirResource;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 256
    return-void
.end method
