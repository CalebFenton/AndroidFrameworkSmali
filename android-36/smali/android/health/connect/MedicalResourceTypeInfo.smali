.class public final Landroid/health/connect/MedicalResourceTypeInfo;
.super Ljava/lang/Object;
.source "MedicalResourceTypeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/MedicalResourceTypeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContributingDataSources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/MedicalDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMedicalResourceType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$7Af3v5jEV-N8Wa85LykmFZL94B8(Landroid/health/connect/MedicalResourceTypeInfo;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/MedicalResourceTypeInfo;->writeToParcelInternal(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Landroid/health/connect/MedicalResourceTypeInfo$1;

    invoke-direct {v0}, Landroid/health/connect/MedicalResourceTypeInfo$1;-><init>()V

    sput-object v0, Landroid/health/connect/MedicalResourceTypeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/Set;)V
    .registers 3
    .param p1, "medicalResourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/MedicalDataSource;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p2, "contributingDataSources":Ljava/util/Set;, "Ljava/util/Set<Landroid/health/connect/datatypes/MedicalDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Landroid/health/connect/datatypes/MedicalResource;->validateMedicalResourceType(I)V

    .line 62
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iput p1, p0, Landroid/health/connect/MedicalResourceTypeInfo;->mMedicalResourceType:I

    .line 64
    iput-object p2, p0, Landroid/health/connect/MedicalResourceTypeInfo;->mContributingDataSources:Ljava/util/Set;

    .line 65
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {p1}, Landroid/health/connect/internal/ParcelUtils;->getParcelForSharedMemoryIfRequired(Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/MedicalResourceTypeInfo;->mMedicalResourceType:I

    .line 71
    iget v0, p0, Landroid/health/connect/MedicalResourceTypeInfo;->mMedicalResourceType:I

    invoke-static {v0}, Landroid/health/connect/datatypes/MedicalResource;->validateMedicalResourceType(I)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "contributingDataSources":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/MedicalDataSource;>;"
    const-class v1, Landroid/health/connect/datatypes/MedicalDataSource;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/health/connect/datatypes/MedicalDataSource;

    .line 73
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 77
    invoke-static {v0}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/health/connect/MedicalResourceTypeInfo;->mContributingDataSources:Ljava/util/Set;

    .line 78
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/MedicalResourceTypeInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/MedicalResourceTypeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist writeToParcelInternal(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 118
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget v0, p0, Landroid/health/connect/MedicalResourceTypeInfo;->mMedicalResourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Landroid/health/connect/MedicalResourceTypeInfo;->mContributingDataSources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 121
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 126
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 127
    :cond_4
    instance-of v1, p1, Landroid/health/connect/MedicalResourceTypeInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    move-object v1, p1

    check-cast v1, Landroid/health/connect/MedicalResourceTypeInfo;

    .line 128
    .local v1, "that":Landroid/health/connect/MedicalResourceTypeInfo;
    invoke-virtual {p0}, Landroid/health/connect/MedicalResourceTypeInfo;->getMedicalResourceType()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/MedicalResourceTypeInfo;->getMedicalResourceType()I

    move-result v4

    if-ne v3, v4, :cond_25

    .line 129
    invoke-virtual {p0}, Landroid/health/connect/MedicalResourceTypeInfo;->getContributingDataSources()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/MedicalResourceTypeInfo;->getContributingDataSources()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_26

    :cond_25
    move v0, v2

    .line 128
    :goto_26
    return v0

    .line 127
    .end local v1    # "that":Landroid/health/connect/MedicalResourceTypeInfo;
    :cond_27
    return v2
.end method

.method public whitelist getContributingDataSources()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/MedicalDataSource;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/health/connect/MedicalResourceTypeInfo;->mContributingDataSources:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getMedicalResourceType()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/health/connect/MedicalResourceTypeInfo;->mMedicalResourceType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 135
    invoke-virtual {p0}, Landroid/health/connect/MedicalResourceTypeInfo;->getMedicalResourceType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/MedicalResourceTypeInfo;->getContributingDataSources()Ljava/util/Set;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 113
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Landroid/health/connect/MedicalResourceTypeInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/health/connect/MedicalResourceTypeInfo$$ExternalSyntheticLambda0;-><init>(Landroid/health/connect/MedicalResourceTypeInfo;)V

    invoke-static {p1, p2, v0}, Landroid/health/connect/internal/ParcelUtils;->putToRequiredMemory(Landroid/os/Parcel;ILandroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;)V

    .line 115
    return-void
.end method
