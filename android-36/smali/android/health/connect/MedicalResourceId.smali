.class public final Landroid/health/connect/MedicalResourceId;
.super Ljava/lang/Object;
.source "MedicalResourceId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/MedicalResourceId;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FHIR_REFERENCE_REGEX:Ljava/lang/String; = "([A-Za-z]+)/([A-Za-z0-9-.]+)"


# instance fields
.field private final blacklist mDataSourceId:Ljava/lang/String;

.field private final blacklist mFhirResourceId:Ljava/lang/String;

.field private final blacklist mFhirResourceType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Landroid/health/connect/MedicalResourceId$1;

    invoke-direct {v0}, Landroid/health/connect/MedicalResourceId$1;-><init>()V

    sput-object v0, Landroid/health/connect/MedicalResourceId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/MedicalResourceId;->mDataSourceId:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Landroid/health/connect/MedicalResourceId;->mDataSourceId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/MedicalResourceId;->mFhirResourceType:I

    .line 130
    iget v0, p0, Landroid/health/connect/MedicalResourceId;->mFhirResourceType:I

    invoke-static {v0}, Landroid/health/connect/datatypes/FhirResource;->validateFhirResourceType(I)V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/MedicalResourceId;->mFhirResourceId:Ljava/lang/String;

    .line 132
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/MedicalResourceId-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/MedicalResourceId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "dataSourceId"    # Ljava/lang/String;
    .param p2, "fhirResourceType"    # I
    .param p3, "fhirResourceId"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {p2}, Landroid/health/connect/datatypes/FhirResource;->validateFhirResourceType(I)V

    .line 78
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 79
    iput-object p1, p0, Landroid/health/connect/MedicalResourceId;->mDataSourceId:Ljava/lang/String;

    .line 80
    iput p2, p0, Landroid/health/connect/MedicalResourceId;->mFhirResourceType:I

    .line 81
    iput-object p3, p0, Landroid/health/connect/MedicalResourceId;->mFhirResourceId:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static whitelist fromFhirReference(Ljava/lang/String;Ljava/lang/String;)Landroid/health/connect/MedicalResourceId;
    .registers 8
    .param p0, "dataSourceId"    # Ljava/lang/String;
    .param p1, "fhirReference"    # Ljava/lang/String;

    .line 104
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 107
    const-string v0, "([A-Za-z]+)/([A-Za-z0-9-.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 108
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 109
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 116
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/internal/datatypes/utils/FhirResourceTypeStringToIntMapper;->getFhirResourceTypeInt(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "fhirResourceType":I
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "fhirResourceId":Ljava/lang/String;
    new-instance v4, Landroid/health/connect/MedicalResourceId;

    invoke-direct {v4, p0, v0, v3}, Landroid/health/connect/MedicalResourceId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v4

    .line 110
    .end local v0    # "fhirResourceType":I
    .end local v3    # "fhirResourceId":Ljava/lang/String;
    :cond_31
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid FHIR reference. Provided "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "does not match "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 185
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 186
    :cond_4
    instance-of v1, p1, Landroid/health/connect/MedicalResourceId;

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    move-object v1, p1

    check-cast v1, Landroid/health/connect/MedicalResourceId;

    .line 187
    .local v1, "that":Landroid/health/connect/MedicalResourceId;
    invoke-virtual {p0}, Landroid/health/connect/MedicalResourceId;->getDataSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/MedicalResourceId;->getDataSourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 188
    invoke-virtual {p0}, Landroid/health/connect/MedicalResourceId;->getFhirResourceType()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/MedicalResourceId;->getFhirResourceType()I

    move-result v4

    if-ne v3, v4, :cond_33

    .line 189
    invoke-virtual {p0}, Landroid/health/connect/MedicalResourceId;->getFhirResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/MedicalResourceId;->getFhirResourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_34

    :cond_33
    move v0, v2

    .line 187
    :goto_34
    return v0

    .line 186
    .end local v1    # "that":Landroid/health/connect/MedicalResourceId;
    :cond_35
    return v2
.end method

.method public whitelist getDataSourceId()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/health/connect/MedicalResourceId;->mDataSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFhirResourceId()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/health/connect/MedicalResourceId;->mFhirResourceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFhirResourceType()I
    .registers 2

    .line 161
    iget v0, p0, Landroid/health/connect/MedicalResourceId;->mFhirResourceType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 194
    invoke-virtual {p0}, Landroid/health/connect/MedicalResourceId;->getDataSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/MedicalResourceId;->getFhirResourceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/MedicalResourceId;->getFhirResourceId()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, "dataSourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/MedicalResourceId;->getDataSourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, ",fhirResourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/MedicalResourceId;->getFhirResourceType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, ",fhirResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/MedicalResourceId;->getFhirResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 177
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {p0}, Landroid/health/connect/MedicalResourceId;->getDataSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/health/connect/MedicalResourceId;->getFhirResourceType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {p0}, Landroid/health/connect/MedicalResourceId;->getFhirResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    return-void
.end method
