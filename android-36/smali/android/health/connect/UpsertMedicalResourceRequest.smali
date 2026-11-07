.class public final Landroid/health/connect/UpsertMedicalResourceRequest;
.super Ljava/lang/Object;
.source "UpsertMedicalResourceRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/UpsertMedicalResourceRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/UpsertMedicalResourceRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mData:Ljava/lang/String;

.field private blacklist mDataSize:I

.field private final blacklist mDataSourceId:Ljava/lang/String;

.field private final blacklist mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Landroid/health/connect/UpsertMedicalResourceRequest$1;

    invoke-direct {v0}, Landroid/health/connect/UpsertMedicalResourceRequest$1;-><init>()V

    sput-object v0, Landroid/health/connect/UpsertMedicalResourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    .line 84
    .local v0, "dataAvailStartPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mDataSourceId:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mDataSourceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 86
    const-class v1, Landroid/health/connect/datatypes/FhirVersion;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/health/connect/datatypes/FhirVersion;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/datatypes/FhirVersion;

    .line 87
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/datatypes/FhirVersion;

    iput-object v1, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mData:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/android/healthfitness/flags/Flags;->phrUpsertFixParcelSizeCalculation()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    sub-int v1, v0, v1

    iput v1, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mDataSize:I

    goto :goto_56

    .line 94
    :cond_50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    iput v1, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mDataSize:I

    .line 96
    :goto_56
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/UpsertMedicalResourceRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/UpsertMedicalResourceRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Ljava/lang/String;)V
    .registers 5
    .param p1, "dataSourceId"    # Ljava/lang/String;
    .param p2, "fhirVersion"    # Landroid/health/connect/datatypes/FhirVersion;
    .param p3, "data"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 75
    iput-object p1, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mDataSourceId:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    .line 77
    iput-object p3, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mData:Ljava/lang/String;

    .line 78
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Ljava/lang/String;Landroid/health/connect/UpsertMedicalResourceRequest-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/health/connect/UpsertMedicalResourceRequest;-><init>(Ljava/lang/String;Landroid/health/connect/datatypes/FhirVersion;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 134
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
    instance-of v1, p1, Landroid/health/connect/UpsertMedicalResourceRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    move-object v1, p1

    check-cast v1, Landroid/health/connect/UpsertMedicalResourceRequest;

    .line 154
    .local v1, "that":Landroid/health/connect/UpsertMedicalResourceRequest;
    invoke-virtual {p0}, Landroid/health/connect/UpsertMedicalResourceRequest;->getDataSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/UpsertMedicalResourceRequest;->getDataSourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 155
    invoke-virtual {p0}, Landroid/health/connect/UpsertMedicalResourceRequest;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/UpsertMedicalResourceRequest;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/datatypes/FhirVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 156
    invoke-virtual {p0}, Landroid/health/connect/UpsertMedicalResourceRequest;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/UpsertMedicalResourceRequest;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_38

    :cond_37
    move v0, v2

    .line 154
    :goto_38
    return v0

    .line 153
    .end local v1    # "that":Landroid/health/connect/UpsertMedicalResourceRequest;
    :cond_39
    return v2
.end method

.method public whitelist getData()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDataSize()J
    .registers 3

    .line 129
    iget v0, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mDataSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist getDataSourceId()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mDataSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 147
    invoke-virtual {p0}, Landroid/health/connect/UpsertMedicalResourceRequest;->getDataSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/UpsertMedicalResourceRequest;->getFhirVersion()Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/UpsertMedicalResourceRequest;->getData()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "dataSourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mDataSourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, ",fhirVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, ",data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 139
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mDataSourceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mFhirVersion:Landroid/health/connect/datatypes/FhirVersion;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 142
    iget-object v0, p0, Landroid/health/connect/UpsertMedicalResourceRequest;->mData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return-void
.end method
