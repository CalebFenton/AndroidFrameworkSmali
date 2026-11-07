.class public Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;
.super Ljava/lang/Object;
.source "RecordTypeInfoResponseParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mRecordTypeInfoResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$nwchbN2WyfIvy4KxwsrWwL7XWsg(Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;Ljava/lang/Integer;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;->lambda$new$0(Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "numberOfResponses":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;->mRecordTypeInfoResponses:Ljava/util/Map;

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_25

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 57
    .local v2, "recordType":Ljava/lang/Integer;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 58
    .local v3, "contributingPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;->mRecordTypeInfoResponses:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v2    # "recordType":Ljava/lang/Integer;
    .end local v3    # "contributingPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 60
    .end local v1    # "i":I
    :cond_25
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;>;)V"
        }
    .end annotation

    .line 63
    .local p1, "recordTypeInfoResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/health/connect/datatypes/DataOrigin;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;->mRecordTypeInfoResponses:Ljava/util/Map;

    .line 66
    new-instance v0, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$$ExternalSyntheticLambda3;-><init>(Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 72
    return-void
.end method

.method public static blacklist getContributingPackagesAsDataOrigin(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation

    .line 91
    .local p0, "packagesAsListOfString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$$ExternalSyntheticLambda0;-><init>()V

    .line 92
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 93
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 91
    return-object v0
.end method

.method public static blacklist getContributingPackagesAsListOfString(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    .local p0, "contributingPackagesAsDataOrigin":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/DataOrigin;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/aidl/AggregateDataRequestParcel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/health/connect/aidl/AggregateDataRequestParcel$$ExternalSyntheticLambda0;-><init>()V

    .line 82
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$$ExternalSyntheticLambda1;-><init>()V

    .line 83
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 84
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 81
    return-object v0
.end method

.method static synthetic blacklist lambda$getContributingPackagesAsDataOrigin$2(Ljava/lang/String;)Landroid/health/connect/datatypes/DataOrigin;
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 92
    new-instance v0, Landroid/health/connect/datatypes/DataOrigin$Builder;

    invoke-direct {v0}, Landroid/health/connect/datatypes/DataOrigin$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/health/connect/datatypes/DataOrigin$Builder;->setPackageName(Ljava/lang/String;)Landroid/health/connect/datatypes/DataOrigin$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/health/connect/datatypes/DataOrigin$Builder;->build()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getContributingPackagesAsListOfString$1(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 83
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic blacklist lambda$getRecordTypeInfoResponses$3(Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/List;)V
    .registers 8
    .param p0, "healthConnectMappings"    # Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;
    .param p1, "responses"    # Ljava/util/Map;
    .param p2, "recordType"    # Ljava/lang/Integer;
    .param p3, "contributingPackages"    # Ljava/util/List;

    .line 106
    new-instance v0, Landroid/health/connect/RecordTypeInfoResponse;

    .line 109
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 108
    invoke-virtual {p0, v1}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getHealthPermissionCategoryForRecordType(I)I

    move-result v1

    .line 111
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 110
    invoke-virtual {p0, v2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordCategoryForRecordType(I)I

    move-result v2

    .line 112
    invoke-static {p3}, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;->getContributingPackagesAsDataOrigin(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/RecordTypeInfoResponse;-><init>(IILjava/util/List;)V

    .line 113
    .local v0, "res":Landroid/health/connect/RecordTypeInfoResponse;
    nop

    .line 115
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordIdToExternalRecordClassMap()Ljava/util/Map;

    move-result-object v1

    .line 116
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 117
    .local v1, "recordTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;"
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Ljava/lang/Integer;Ljava/util/List;)V
    .registers 5
    .param p1, "recordType"    # Ljava/lang/Integer;
    .param p2, "contributingPackages"    # Ljava/util/List;

    .line 68
    iget-object v0, p0, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;->mRecordTypeInfoResponses:Ljava/util/Map;

    .line 70
    invoke-static {p2}, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;->getContributingPackagesAsListOfString(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 68
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$4(Landroid/os/Parcel;Ljava/lang/Integer;Ljava/util/List;)V
    .registers 4
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "recordType"    # Ljava/lang/Integer;
    .param p2, "contributingPackages"    # Ljava/util/List;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 134
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRecordTypeInfoResponses()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;",
            "Landroid/health/connect/RecordTypeInfoResponse;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;->mRecordTypeInfoResponses:Ljava/util/Map;

    .line 102
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 103
    .local v0, "responses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;Landroid/health/connect/RecordTypeInfoResponse;>;"
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v1

    .line 104
    .local v1, "healthConnectMappings":Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;
    iget-object v2, p0, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;->mRecordTypeInfoResponses:Ljava/util/Map;

    new-instance v3, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v0}, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$$ExternalSyntheticLambda2;-><init>(Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 119
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    iget-object v0, p0, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;->mRecordTypeInfoResponses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;->mRecordTypeInfoResponses:Ljava/util/Map;

    new-instance v1, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Landroid/health/connect/aidl/RecordTypeInfoResponseParcel$$ExternalSyntheticLambda4;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 135
    return-void
.end method
