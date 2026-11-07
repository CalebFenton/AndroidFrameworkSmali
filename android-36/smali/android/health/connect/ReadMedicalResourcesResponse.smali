.class public final Landroid/health/connect/ReadMedicalResourcesResponse;
.super Ljava/lang/Object;
.source "ReadMedicalResourcesResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/ReadMedicalResourcesResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMedicalResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/MedicalResource;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNextPageToken:Ljava/lang/String;

.field private final blacklist mRemainingCount:I


# direct methods
.method public static synthetic blacklist $r8$lambda$KPuCOpbCa13t_tehQllDXL5Fehk(Landroid/health/connect/ReadMedicalResourcesResponse;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/ReadMedicalResourcesResponse;->writeToParcelInternal(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Landroid/health/connect/ReadMedicalResourcesResponse$1;

    invoke-direct {v0}, Landroid/health/connect/ReadMedicalResourcesResponse$1;-><init>()V

    sput-object v0, Landroid/health/connect/ReadMedicalResourcesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p1}, Landroid/health/connect/internal/ParcelUtils;->getParcelForSharedMemoryIfRequired(Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/ReadMedicalResourcesResponse;->mMedicalResources:Ljava/util/List;

    .line 75
    iget-object v0, p0, Landroid/health/connect/ReadMedicalResourcesResponse;->mMedicalResources:Ljava/util/List;

    const-class v1, Landroid/health/connect/datatypes/MedicalResource;

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/health/connect/datatypes/MedicalResource;

    .line 75
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/ReadMedicalResourcesResponse;->mNextPageToken:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/ReadMedicalResourcesResponse;->mRemainingCount:I

    .line 79
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/ReadMedicalResourcesResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/ReadMedicalResourcesResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;Ljava/lang/String;I)V
    .registers 7
    .param p2, "nextPageToken"    # Ljava/lang/String;
    .param p3, "remainingCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/MedicalResource;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 55
    .local p1, "medicalResources":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/MedicalResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    if-nez p2, :cond_1f

    if-gtz p3, :cond_b

    goto :goto_1f

    .line 58
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 61
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 59
    const-string v2, "Remaining count must be 0 to have a null next page token, but was %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1f
    :goto_1f
    if-eqz p2, :cond_2c

    if-eqz p3, :cond_24

    goto :goto_2c

    .line 64
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Next page token provided with no remaining data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_2c
    :goto_2c
    iput-object p1, p0, Landroid/health/connect/ReadMedicalResourcesResponse;->mMedicalResources:Ljava/util/List;

    .line 67
    iput-object p2, p0, Landroid/health/connect/ReadMedicalResourcesResponse;->mNextPageToken:Ljava/lang/String;

    .line 68
    iput p3, p0, Landroid/health/connect/ReadMedicalResourcesResponse;->mRemainingCount:I

    .line 69
    return-void
.end method

.method private blacklist writeToParcelInternal(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 134
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Landroid/health/connect/ReadMedicalResourcesResponse;->mMedicalResources:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 136
    iget-object v0, p0, Landroid/health/connect/ReadMedicalResourcesResponse;->mNextPageToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Landroid/health/connect/ReadMedicalResourcesResponse;->mRemainingCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 142
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 143
    :cond_4
    instance-of v1, p1, Landroid/health/connect/ReadMedicalResourcesResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    move-object v1, p1

    check-cast v1, Landroid/health/connect/ReadMedicalResourcesResponse;

    .line 144
    .local v1, "that":Landroid/health/connect/ReadMedicalResourcesResponse;
    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesResponse;->getMedicalResources()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/ReadMedicalResourcesResponse;->getMedicalResources()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 145
    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesResponse;->getNextPageToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/ReadMedicalResourcesResponse;->getNextPageToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget v3, p0, Landroid/health/connect/ReadMedicalResourcesResponse;->mRemainingCount:I

    .line 146
    invoke-virtual {v1}, Landroid/health/connect/ReadMedicalResourcesResponse;->getRemainingCount()I

    move-result v4

    if-ne v3, v4, :cond_31

    goto :goto_32

    :cond_31
    move v0, v2

    .line 144
    :goto_32
    return v0

    .line 143
    .end local v1    # "that":Landroid/health/connect/ReadMedicalResourcesResponse;
    :cond_33
    return v2
.end method

.method public whitelist getMedicalResources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/MedicalResource;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroid/health/connect/ReadMedicalResourcesResponse;->mMedicalResources:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getNextPageToken()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/health/connect/ReadMedicalResourcesResponse;->mNextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRemainingCount()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/health/connect/ReadMedicalResourcesResponse;->mRemainingCount:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 151
    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesResponse;->getMedicalResources()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesResponse;->getNextPageToken()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/health/connect/ReadMedicalResourcesResponse;->mRemainingCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "medicalResources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesResponse;->getMedicalResources()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, ",nextPageToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/ReadMedicalResourcesResponse;->getNextPageToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Landroid/health/connect/ReadMedicalResourcesResponse$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/health/connect/ReadMedicalResourcesResponse$$ExternalSyntheticLambda0;-><init>(Landroid/health/connect/ReadMedicalResourcesResponse;)V

    invoke-static {p1, p2, v0}, Landroid/health/connect/internal/ParcelUtils;->putToRequiredMemory(Landroid/os/Parcel;ILandroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;)V

    .line 131
    return-void
.end method
