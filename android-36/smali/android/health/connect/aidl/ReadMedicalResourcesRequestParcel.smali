.class public Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;
.super Ljava/lang/Object;
.source "ReadMedicalResourcesRequestParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDataSourceIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsPageRequest:Z

.field private blacklist mMedicalResourceType:I

.field private final blacklist mPageSize:I

.field private blacklist mPageToken:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/ReadMedicalResourcesInitialRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/health/connect/ReadMedicalResourcesInitialRequest;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mDataSourceIds:Ljava/util/Set;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mPageToken:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mIsPageRequest:Z

    .line 57
    invoke-virtual {p1}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getMedicalResourceType()I

    move-result v0

    iput v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mMedicalResourceType:I

    .line 58
    invoke-virtual {p1}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getDataSourceIds()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mDataSourceIds:Ljava/util/Set;

    .line 59
    invoke-virtual {p1}, Landroid/health/connect/ReadMedicalResourcesInitialRequest;->getPageSize()I

    move-result v0

    iput v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mPageSize:I

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/ReadMedicalResourcesPageRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/health/connect/ReadMedicalResourcesPageRequest;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mDataSourceIds:Ljava/util/Set;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mPageToken:Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mIsPageRequest:Z

    .line 64
    invoke-virtual {p1}, Landroid/health/connect/ReadMedicalResourcesPageRequest;->getPageToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mPageToken:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/health/connect/ReadMedicalResourcesPageRequest;->getPageSize()I

    move-result v0

    iput v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mPageSize:I

    .line 66
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mDataSourceIds:Ljava/util/Set;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mPageToken:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mIsPageRequest:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mMedicalResourceType:I

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mDataSourceIds:Ljava/util/Set;

    .line 72
    iget-object v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mDataSourceIds:Ljava/util/Set;

    invoke-static {v0}, Landroid/health/connect/datatypes/MedicalDataSource;->validateMedicalDataSourceIds(Ljava/util/Set;)Ljava/util/Set;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mPageToken:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mPageSize:I

    .line 75
    iget v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mPageSize:I

    const/16 v1, 0x1388

    const-string v2, "pageSize"

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(IIILjava/lang/String;)V

    .line 77
    iget-boolean v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mIsPageRequest:Z

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mPageToken:Ljava/lang/String;

    if-eqz v0, :cond_4d

    goto :goto_55

    .line 78
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pageToken cannot be null when reading Parcel from page request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_55
    :goto_55
    iget-boolean v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mIsPageRequest:Z

    if-nez v0, :cond_5e

    .line 81
    iget v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mMedicalResourceType:I

    invoke-static {v0}, Landroid/health/connect/datatypes/MedicalResource;->validateMedicalResourceType(I)V

    .line 83
    :cond_5e
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataSourceIds()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mDataSourceIds:Ljava/util/Set;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getMedicalResourceType()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mMedicalResourceType:I

    return v0
.end method

.method public blacklist getPageSize()I
    .registers 2

    .line 115
    iget v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mPageSize:I

    return v0
.end method

.method public blacklist getPageToken()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 125
    iget-boolean v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mIsPageRequest:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 126
    iget v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mMedicalResourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mDataSourceIds:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 128
    iget-object v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mPageToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget v0, p0, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->mPageSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return-void
.end method
