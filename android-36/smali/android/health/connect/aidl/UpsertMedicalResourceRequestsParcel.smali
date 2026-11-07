.class public Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;
.super Ljava/lang/Object;
.source "UpsertMedicalResourceRequestsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mUpsertRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/UpsertMedicalResourceRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$Fk3IE7aNoLVXRZ47JH0Uf_ttErU(Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;->writeToParcelInternal(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {p1}, Landroid/health/connect/internal/ParcelUtils;->getParcelForSharedMemoryIfRequired(Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;->mUpsertRequests:Ljava/util/List;

    .line 54
    iget-object v0, p0, Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;->mUpsertRequests:Ljava/util/List;

    const-class v1, Landroid/health/connect/UpsertMedicalResourceRequest;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/health/connect/UpsertMedicalResourceRequest;

    .line 54
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/UpsertMedicalResourceRequest;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "upsertRequests":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/UpsertMedicalResourceRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;->mUpsertRequests:Ljava/util/List;

    .line 47
    return-void
.end method

.method private blacklist writeToParcelInternal(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 90
    iget-object v0, p0, Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;->mUpsertRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 91
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUpsertRequests()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/UpsertMedicalResourceRequest;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;->mUpsertRequests:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel$$ExternalSyntheticLambda0;-><init>(Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;)V

    invoke-static {p1, p2, v0}, Landroid/health/connect/internal/ParcelUtils;->putToRequiredMemory(Landroid/os/Parcel;ILandroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;)V

    .line 87
    return-void
.end method
