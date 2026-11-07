.class public final Landroid/health/connect/datatypes/FhirResource;
.super Ljava/lang/Object;
.source "FhirResource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/FhirResource$FhirResourceType;,
        Landroid/health/connect/datatypes/FhirResource$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/datatypes/FhirResource;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FHIR_RESOURCE_TYPE_ALLERGY_INTOLERANCE:I = 0x2

.field public static final whitelist FHIR_RESOURCE_TYPE_CONDITION:I = 0x4

.field public static final whitelist FHIR_RESOURCE_TYPE_ENCOUNTER:I = 0xc

.field public static final whitelist FHIR_RESOURCE_TYPE_IMMUNIZATION:I = 0x1

.field public static final whitelist FHIR_RESOURCE_TYPE_LOCATION:I = 0xd

.field public static final whitelist FHIR_RESOURCE_TYPE_MEDICATION:I = 0x6

.field public static final whitelist FHIR_RESOURCE_TYPE_MEDICATION_REQUEST:I = 0x7

.field public static final whitelist FHIR_RESOURCE_TYPE_MEDICATION_STATEMENT:I = 0x8

.field public static final whitelist FHIR_RESOURCE_TYPE_OBSERVATION:I = 0x3

.field public static final whitelist FHIR_RESOURCE_TYPE_ORGANIZATION:I = 0xe

.field public static final whitelist FHIR_RESOURCE_TYPE_PATIENT:I = 0x9

.field public static final whitelist FHIR_RESOURCE_TYPE_PRACTITIONER:I = 0xa

.field public static final whitelist FHIR_RESOURCE_TYPE_PRACTITIONER_ROLE:I = 0xb

.field public static final whitelist FHIR_RESOURCE_TYPE_PROCEDURE:I = 0x5

.field private static final blacklist VALID_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mData:Ljava/lang/String;

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 182
    new-instance v0, Landroid/health/connect/datatypes/FhirResource$1;

    invoke-direct {v0}, Landroid/health/connect/datatypes/FhirResource$1;-><init>()V

    sput-object v0, Landroid/health/connect/datatypes/FhirResource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 242
    nop

    .line 244
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 245
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 246
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 247
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 248
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 249
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 250
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 251
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 252
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 253
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 254
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 255
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 256
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 257
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Integer;

    move-result-object v0

    .line 243
    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/FhirResource;->VALID_TYPES:Ljava/util/Set;

    .line 242
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-static {p1}, Landroid/health/connect/datatypes/FhirResource;->validateFhirResourceType(I)V

    .line 161
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iput p1, p0, Landroid/health/connect/datatypes/FhirResource;->mType:I

    .line 165
    iput-object p2, p0, Landroid/health/connect/datatypes/FhirResource;->mId:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Landroid/health/connect/datatypes/FhirResource;->mData:Ljava/lang/String;

    .line 167
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Landroid/health/connect/datatypes/FhirResource-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/health/connect/datatypes/FhirResource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/datatypes/FhirResource;->mType:I

    .line 176
    iget v0, p0, Landroid/health/connect/datatypes/FhirResource;->mType:I

    invoke-static {v0}, Landroid/health/connect/datatypes/FhirResource;->validateFhirResourceType(I)V

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/datatypes/FhirResource;->mId:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/datatypes/FhirResource;->mData:Ljava/lang/String;

    .line 179
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/datatypes/FhirResource-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/datatypes/FhirResource;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist validateFhirResourceType(I)V
    .registers 3
    .param p0, "fhirResourceType"    # I

    .line 268
    sget-object v0, Landroid/health/connect/datatypes/FhirResource;->VALID_TYPES:Ljava/util/Set;

    const-class v1, Landroid/health/connect/datatypes/FhirResource$FhirResourceType;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 269
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 273
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 274
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/FhirResource;

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/FhirResource;

    .line 275
    .local v1, "that":Landroid/health/connect/datatypes/FhirResource;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirResource;->getType()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/FhirResource;->getType()I

    move-result v4

    if-ne v3, v4, :cond_33

    .line 276
    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirResource;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/FhirResource;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 277
    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirResource;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/FhirResource;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_34

    :cond_33
    move v0, v2

    .line 275
    :goto_34
    return v0

    .line 274
    .end local v1    # "that":Landroid/health/connect/datatypes/FhirResource;
    :cond_35
    return v2
.end method

.method public whitelist getData()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/health/connect/datatypes/FhirResource;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Landroid/health/connect/datatypes/FhirResource;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 207
    iget v0, p0, Landroid/health/connect/datatypes/FhirResource;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 282
    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirResource;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirResource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirResource;->getData()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirResource;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirResource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, ",data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirResource;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 232
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirResource;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirResource;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirResource;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    return-void
.end method
