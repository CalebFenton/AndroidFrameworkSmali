.class public final Landroid/health/connect/aidl/UpdatePriorityRequestParcel;
.super Ljava/lang/Object;
.source "UpdatePriorityRequestParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/UpdatePriorityRequestParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDataCategory:I

.field private final blacklist mPackagePriorityOrder:Ljava/util/List;
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

    .line 31
    new-instance v0, Landroid/health/connect/aidl/UpdatePriorityRequestParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/UpdatePriorityRequestParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/UpdatePriorityRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/UpdateDataOriginPriorityOrderRequest;)V
    .registers 4
    .param p1, "updateDataOriginPriorityOrderRequest"    # Landroid/health/connect/UpdateDataOriginPriorityOrderRequest;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    nop

    .line 54
    invoke-virtual {p1}, Landroid/health/connect/UpdateDataOriginPriorityOrderRequest;->getDataOriginInOrder()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/aidl/AggregateDataRequestParcel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/health/connect/aidl/AggregateDataRequestParcel$$ExternalSyntheticLambda0;-><init>()V

    .line 55
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 56
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/health/connect/aidl/UpdatePriorityRequestParcel;->mPackagePriorityOrder:Ljava/util/List;

    .line 57
    invoke-virtual {p1}, Landroid/health/connect/UpdateDataOriginPriorityOrderRequest;->getDataCategory()I

    move-result v0

    iput v0, p0, Landroid/health/connect/aidl/UpdatePriorityRequestParcel;->mDataCategory:I

    .line 58
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/aidl/UpdatePriorityRequestParcel;->mPackagePriorityOrder:Ljava/util/List;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/aidl/UpdatePriorityRequestParcel;->mDataCategory:I

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/aidl/UpdatePriorityRequestParcel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/aidl/UpdatePriorityRequestParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataCategory()I
    .registers 2

    .line 66
    iget v0, p0, Landroid/health/connect/aidl/UpdatePriorityRequestParcel;->mDataCategory:I

    return v0
.end method

.method public blacklist getPackagePriorityOrder()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Landroid/health/connect/aidl/UpdatePriorityRequestParcel;->mPackagePriorityOrder:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget-object v0, p0, Landroid/health/connect/aidl/UpdatePriorityRequestParcel;->mPackagePriorityOrder:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 77
    iget v0, p0, Landroid/health/connect/aidl/UpdatePriorityRequestParcel;->mDataCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return-void
.end method
