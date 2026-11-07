.class public final Landroid/health/connect/aidl/RecordIdFiltersParcel;
.super Ljava/lang/Object;
.source "RecordIdFiltersParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/RecordIdFiltersParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRecordIdFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/RecordIdFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Landroid/health/connect/aidl/RecordIdFiltersParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/RecordIdFiltersParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/RecordIdFiltersParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/health/connect/aidl/RecordIdFiltersParcel;->mRecordIdFilters:Ljava/util/List;

    .line 53
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_5d

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "clientRecordId":Ljava/lang/String;
    if-eqz v2, :cond_3b

    .line 59
    iget-object v4, p0, Landroid/health/connect/aidl/RecordIdFiltersParcel;->mRecordIdFilters:Ljava/util/List;

    .line 61
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v5

    .line 62
    invoke-virtual {v5}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordIdToExternalRecordClassMap()Ljava/util/Map;

    move-result-object v5

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 60
    invoke-static {v5, v2}, Landroid/health/connect/RecordIdFilter;->fromId(Ljava/lang/Class;Ljava/lang/String;)Landroid/health/connect/RecordIdFilter;

    move-result-object v5

    .line 59
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 66
    :cond_3b
    iget-object v4, p0, Landroid/health/connect/aidl/RecordIdFiltersParcel;->mRecordIdFilters:Ljava/util/List;

    .line 68
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v5

    .line 69
    invoke-virtual {v5}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordIdToExternalRecordClassMap()Ljava/util/Map;

    move-result-object v5

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 67
    invoke-static {v5, v3}, Landroid/health/connect/RecordIdFilter;->fromClientRecordId(Ljava/lang/Class;Ljava/lang/String;)Landroid/health/connect/RecordIdFilter;

    move-result-object v5

    .line 66
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "clientRecordId":Ljava/lang/String;
    :goto_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 74
    .end local v1    # "i":I
    :cond_5d
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/aidl/RecordIdFiltersParcel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/aidl/RecordIdFiltersParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/RecordIdFilter;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "recordIdFilters":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/RecordIdFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/health/connect/aidl/RecordIdFiltersParcel;->mRecordIdFilters:Ljava/util/List;

    .line 47
    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$0(Landroid/os/Parcel;Landroid/health/connect/RecordIdFilter;)V
    .registers 4
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "recordId"    # Landroid/health/connect/RecordIdFilter;

    .line 90
    invoke-virtual {p1}, Landroid/health/connect/RecordIdFilter;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroid/health/connect/RecordIdFilter;->getClientRecordId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    nop

    .line 93
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Landroid/health/connect/RecordIdFilter;->getRecordType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordType(Ljava/lang/Class;)I

    move-result v0

    .line 92
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRecordIdFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/RecordIdFilter;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroid/health/connect/aidl/RecordIdFiltersParcel;->mRecordIdFilters:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 87
    iget-object v0, p0, Landroid/health/connect/aidl/RecordIdFiltersParcel;->mRecordIdFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Landroid/health/connect/aidl/RecordIdFiltersParcel;->mRecordIdFilters:Ljava/util/List;

    new-instance v1, Landroid/health/connect/aidl/RecordIdFiltersParcel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/health/connect/aidl/RecordIdFiltersParcel$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 96
    return-void
.end method
