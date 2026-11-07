.class public Landroid/health/connect/aidl/MedicalResourceListParcel;
.super Ljava/lang/Object;
.source "MedicalResourceListParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/MedicalResourceListParcel;",
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


# direct methods
.method public static synthetic blacklist $r8$lambda$JaUghQK1Jglw73QjWCkLpnH4tFg(Landroid/health/connect/aidl/MedicalResourceListParcel;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/aidl/MedicalResourceListParcel;->writeToParcelInternal(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Landroid/health/connect/aidl/MedicalResourceListParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/MedicalResourceListParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/MedicalResourceListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {p1}, Landroid/health/connect/internal/ParcelUtils;->getParcelForSharedMemoryIfRequired(Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/aidl/MedicalResourceListParcel;->mMedicalResources:Ljava/util/List;

    .line 52
    iget-object v0, p0, Landroid/health/connect/aidl/MedicalResourceListParcel;->mMedicalResources:Ljava/util/List;

    const-class v1, Landroid/health/connect/datatypes/MedicalResource;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/health/connect/datatypes/MedicalResource;

    .line 52
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/aidl/MedicalResourceListParcel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/aidl/MedicalResourceListParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/MedicalResource;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p1, "medicalResources":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/MedicalResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Landroid/health/connect/aidl/MedicalResourceListParcel;->mMedicalResources:Ljava/util/List;

    .line 46
    return-void
.end method

.method private blacklist writeToParcelInternal(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 86
    iget-object v0, p0, Landroid/health/connect/aidl/MedicalResourceListParcel;->mMedicalResources:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMedicalResources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/MedicalResource;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroid/health/connect/aidl/MedicalResourceListParcel;->mMedicalResources:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Landroid/health/connect/aidl/MedicalResourceListParcel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/health/connect/aidl/MedicalResourceListParcel$$ExternalSyntheticLambda0;-><init>(Landroid/health/connect/aidl/MedicalResourceListParcel;)V

    invoke-static {p1, p2, v0}, Landroid/health/connect/internal/ParcelUtils;->putToRequiredMemory(Landroid/os/Parcel;ILandroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;)V

    .line 83
    return-void
.end method
