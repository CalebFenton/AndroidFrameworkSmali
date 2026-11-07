.class public final Landroid/health/connect/aidl/GetPriorityResponseParcel;
.super Ljava/lang/Object;
.source "GetPriorityResponseParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/GetPriorityResponseParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPackagesInPriorityOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Landroid/health/connect/aidl/GetPriorityResponseParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/GetPriorityResponseParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/GetPriorityResponseParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/FetchDataOriginsPriorityOrderResponse;)V
    .registers 4
    .param p1, "fetchDataOriginsPriorityOrderResponse"    # Landroid/health/connect/FetchDataOriginsPriorityOrderResponse;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    nop

    .line 51
    invoke-virtual {p1}, Landroid/health/connect/FetchDataOriginsPriorityOrderResponse;->getDataOriginsPriorityOrder()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/aidl/AggregateDataRequestParcel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/health/connect/aidl/AggregateDataRequestParcel$$ExternalSyntheticLambda0;-><init>()V

    .line 52
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 53
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/health/connect/aidl/GetPriorityResponseParcel;->mPackagesInPriorityOrder:Ljava/util/List;

    .line 54
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/aidl/GetPriorityResponseParcel;->mPackagesInPriorityOrder:Ljava/util/List;

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/aidl/GetPriorityResponseParcel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/aidl/GetPriorityResponseParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic blacklist lambda$getPriorityResponse$0(Ljava/lang/String;)Landroid/health/connect/datatypes/DataOrigin;
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/health/connect/datatypes/DataOrigin$Builder;

    invoke-direct {v0}, Landroid/health/connect/datatypes/DataOrigin$Builder;-><init>()V

    .line 62
    invoke-virtual {v0, p0}, Landroid/health/connect/datatypes/DataOrigin$Builder;->setPackageName(Ljava/lang/String;)Landroid/health/connect/datatypes/DataOrigin$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/health/connect/datatypes/DataOrigin$Builder;->build()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v0

    .line 61
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPriorityResponse()Landroid/health/connect/FetchDataOriginsPriorityOrderResponse;
    .registers 4

    .line 57
    new-instance v0, Landroid/health/connect/FetchDataOriginsPriorityOrderResponse;

    iget-object v1, p0, Landroid/health/connect/aidl/GetPriorityResponseParcel;->mPackagesInPriorityOrder:Ljava/util/List;

    .line 58
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/health/connect/aidl/GetPriorityResponseParcel$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/health/connect/aidl/GetPriorityResponseParcel$$ExternalSyntheticLambda0;-><init>()V

    .line 59
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 64
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/health/connect/FetchDataOriginsPriorityOrderResponse;-><init>(Ljava/util/List;)V

    .line 57
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget-object v0, p0, Landroid/health/connect/aidl/GetPriorityResponseParcel;->mPackagesInPriorityOrder:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 75
    return-void
.end method
