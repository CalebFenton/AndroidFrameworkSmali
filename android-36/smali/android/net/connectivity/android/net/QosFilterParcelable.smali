.class public final Landroid/net/connectivity/android/net/QosFilterParcelable;
.super Ljava/lang/Object;
.source "QosFilterParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/connectivity/android/net/QosFilterParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist NO_FILTER_PRESENT:I = 0x0

.field private static final blacklist QOS_SOCKET_FILTER:I = 0x1


# instance fields
.field private final blacklist mQosFilter:Landroid/net/QosFilter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const-class v0, Landroid/net/connectivity/android/net/QosFilterParcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/android/net/QosFilterParcelable;->LOG_TAG:Ljava/lang/String;

    .line 85
    new-instance v0, Landroid/net/connectivity/android/net/QosFilterParcelable$1;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/QosFilterParcelable$1;-><init>()V

    sput-object v0, Landroid/net/connectivity/android/net/QosFilterParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/QosFilter;)V
    .registers 3
    .param p1, "qosFilter"    # Landroid/net/QosFilter;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "qosFilter must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Landroid/net/connectivity/android/net/QosFilterParcelable;->mQosFilter:Landroid/net/QosFilter;

    .line 67
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, "filterParcelType":I
    packed-switch v0, :pswitch_data_20

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/connectivity/android/net/QosFilterParcelable;->mQosFilter:Landroid/net/QosFilter;

    goto :goto_1e

    .line 74
    :pswitch_e
    new-instance v1, Landroid/net/connectivity/android/net/QosSocketFilter;

    sget-object v2, Landroid/net/QosSocketInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/QosSocketInfo;

    invoke-direct {v1, v2}, Landroid/net/connectivity/android/net/QosSocketFilter;-><init>(Landroid/net/QosSocketInfo;)V

    iput-object v1, p0, Landroid/net/connectivity/android/net/QosFilterParcelable;->mQosFilter:Landroid/net/QosFilter;

    .line 75
    nop

    .line 83
    :goto_1e
    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/connectivity/android/net/QosFilterParcelable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/android/net/QosFilterParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getQosFilter()Landroid/net/QosFilter;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosFilterParcelable;->mQosFilter:Landroid/net/QosFilter;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosFilterParcelable;->mQosFilter:Landroid/net/QosFilter;

    instance-of v0, v0, Landroid/net/connectivity/android/net/QosSocketFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosFilterParcelable;->mQosFilter:Landroid/net/QosFilter;

    check-cast v0, Landroid/net/connectivity/android/net/QosSocketFilter;

    .line 107
    .local v0, "qosSocketFilter":Landroid/net/connectivity/android/net/QosSocketFilter;
    invoke-virtual {v0}, Landroid/net/connectivity/android/net/QosSocketFilter;->getQosSocketInfo()Landroid/net/QosSocketInfo;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/net/QosSocketInfo;->writeToParcelWithoutFd(Landroid/os/Parcel;I)V

    .line 108
    return-void

    .line 110
    .end local v0    # "qosSocketFilter":Landroid/net/connectivity/android/net/QosSocketFilter;
    :cond_17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    sget-object v0, Landroid/net/connectivity/android/net/QosFilterParcelable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parceling failed, unknown type of filter present: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/android/net/QosFilterParcelable;->mQosFilter:Landroid/net/QosFilter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method
