.class public final Landroid/net/metrics/IpReachabilityEvent;
.super Ljava/lang/Object;
.source "IpReachabilityEvent.java"

# interfaces
.implements Landroid/net/metrics/IpConnectivityLog$Event;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/IpReachabilityEvent$Decoder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/IpReachabilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NUD_FAILED:I = 0x200

.field public static final whitelist NUD_FAILED_ORGANIC:I = 0x400

.field public static final whitelist PROBE:I = 0x100

.field public static final whitelist PROVISIONING_LOST:I = 0x300

.field public static final whitelist PROVISIONING_LOST_ORGANIC:I = 0x500


# instance fields
.field public final greylist-max-o eventType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Landroid/net/metrics/IpReachabilityEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/IpReachabilityEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/IpReachabilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "eventType"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    .line 62
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/metrics/IpReachabilityEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/metrics/IpReachabilityEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/net/metrics/IpReachabilityEvent;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_1b

    .line 104
    :cond_10
    move-object v1, p1

    check-cast v1, Landroid/net/metrics/IpReachabilityEvent;

    .line 105
    .local v1, "other":Landroid/net/metrics/IpReachabilityEvent;
    iget v2, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    iget v3, v1, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    if-ne v2, v3, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0

    .line 103
    .end local v1    # "other":Landroid/net/metrics/IpReachabilityEvent;
    :cond_1b
    :goto_1b
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 95
    iget v0, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    const v1, 0xff00

    and-int/2addr v0, v1

    .line 96
    .local v0, "hi":I
    iget v1, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    and-int/lit16 v1, v1, 0xff

    .line 97
    .local v1, "lo":I
    sget-object v2, Landroid/net/metrics/IpReachabilityEvent$Decoder;->constants:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    .local v2, "eventName":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "IpReachabilityEvent(%s:%02x)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 71
    iget v0, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    return-void
.end method
