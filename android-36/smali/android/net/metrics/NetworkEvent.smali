.class public final Landroid/net/metrics/NetworkEvent;
.super Ljava/lang/Object;
.source "NetworkEvent.java"

# interfaces
.implements Landroid/net/metrics/IpConnectivityLog$Event;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/NetworkEvent$Decoder;,
        Landroid/net/metrics/NetworkEvent$EventType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NETWORK_CAPTIVE_PORTAL_FOUND:I = 0x4

.field public static final whitelist NETWORK_CONNECTED:I = 0x1

.field public static final whitelist NETWORK_CONSECUTIVE_DNS_TIMEOUT_FOUND:I = 0xc

.field public static final whitelist NETWORK_DISCONNECTED:I = 0x7

.field public static final whitelist NETWORK_FIRST_VALIDATION_PORTAL_FOUND:I = 0xa

.field public static final whitelist NETWORK_FIRST_VALIDATION_SUCCESS:I = 0x8

.field public static final whitelist NETWORK_LINGER:I = 0x5

.field public static final whitelist NETWORK_PARTIAL_CONNECTIVITY:I = 0xd

.field public static final whitelist NETWORK_REVALIDATION_PORTAL_FOUND:I = 0xb

.field public static final whitelist NETWORK_REVALIDATION_SUCCESS:I = 0x9

.field public static final whitelist NETWORK_UNLINGER:I = 0x6

.field public static final whitelist NETWORK_VALIDATED:I = 0x2

.field public static final whitelist NETWORK_VALIDATION_FAILED:I = 0x3


# instance fields
.field public final greylist-max-o durationMs:J

.field public final greylist-max-o eventType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 111
    new-instance v0, Landroid/net/metrics/NetworkEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/NetworkEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/NetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "eventType"    # I

    .line 89
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/net/metrics/NetworkEvent;-><init>(IJ)V

    .line 90
    return-void
.end method

.method public constructor whitelist <init>(IJ)V
    .registers 4
    .param p1, "eventType"    # I
    .param p2, "durationMs"    # J

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    .line 85
    iput-wide p2, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    .line 86
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    .line 95
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/metrics/NetworkEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/metrics/NetworkEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/net/metrics/NetworkEvent;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_23

    .line 132
    :cond_10
    move-object v1, p1

    check-cast v1, Landroid/net/metrics/NetworkEvent;

    .line 133
    .local v1, "other":Landroid/net/metrics/NetworkEvent;
    iget v2, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    iget v3, v1, Landroid/net/metrics/NetworkEvent;->eventType:I

    if-ne v2, v3, :cond_22

    iget-wide v2, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    iget-wide v4, v1, Landroid/net/metrics/NetworkEvent;->durationMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0

    .line 131
    .end local v1    # "other":Landroid/net/metrics/NetworkEvent;
    :cond_23
    :goto_23
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 125
    sget-object v0, Landroid/net/metrics/NetworkEvent$Decoder;->constants:Landroid/util/SparseArray;

    iget v1, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    .line 126
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 125
    const-string v1, "NetworkEvent(%s, %dms)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    iget v0, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-wide v0, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    return-void
.end method
