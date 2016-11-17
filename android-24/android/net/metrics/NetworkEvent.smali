.class public final Landroid/net/metrics/NetworkEvent;
.super Landroid/net/metrics/IpConnectivityEvent;
.source "NetworkEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/NetworkEvent$1;,
        Landroid/net/metrics/NetworkEvent$Decoder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_CAPTIVE_PORTAL_FOUND:I = 0x4

.field public static final NETWORK_CONNECTED:I = 0x1

.field public static final NETWORK_DISCONNECTED:I = 0x7

.field public static final NETWORK_LINGER:I = 0x5

.field public static final NETWORK_UNLINGER:I = 0x6

.field public static final NETWORK_VALIDATED:I = 0x2

.field public static final NETWORK_VALIDATION_FAILED:I = 0x3


# instance fields
.field public final durationMs:J

.field public final eventType:I

.field public final netId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 67
    new-instance v0, Landroid/net/metrics/NetworkEvent$1;

    #@2
    invoke-direct {v0}, Landroid/net/metrics/NetworkEvent$1;-><init>()V

    #@5
    .line 66
    sput-object v0, Landroid/net/metrics/NetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method private constructor <init>(IIJ)V
    .locals 1
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "durationMs"    # J

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityEvent;-><init>()V

    #@3
    .line 45
    iput p1, p0, Landroid/net/metrics/NetworkEvent;->netId:I

    #@5
    .line 46
    iput p2, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    #@7
    .line 47
    iput-wide p3, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    #@9
    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityEvent;-><init>()V

    #@3
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/net/metrics/NetworkEvent;->netId:I

    #@9
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    #@f
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    #@15
    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/NetworkEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/NetworkEvent;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static logCaptivePortalFound(IJ)V
    .locals 3
    .param p0, "netId"    # I
    .param p1, "durationMs"    # J

    #@0
    .prologue
    .line 86
    new-instance v0, Landroid/net/metrics/NetworkEvent;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-direct {v0, p0, v1, p1, p2}, Landroid/net/metrics/NetworkEvent;-><init>(IIJ)V

    #@6
    invoke-static {v0}, Landroid/net/metrics/NetworkEvent;->logEvent(Landroid/net/metrics/IpConnectivityEvent;)V

    #@9
    .line 85
    return-void
.end method

.method public static logEvent(II)V
    .locals 4
    .param p0, "netId"    # I
    .param p1, "eventType"    # I

    #@0
    .prologue
    .line 78
    new-instance v0, Landroid/net/metrics/NetworkEvent;

    #@2
    const-wide/16 v2, 0x0

    #@4
    invoke-direct {v0, p0, p1, v2, v3}, Landroid/net/metrics/NetworkEvent;-><init>(IIJ)V

    #@7
    invoke-static {v0}, Landroid/net/metrics/NetworkEvent;->logEvent(Landroid/net/metrics/IpConnectivityEvent;)V

    #@a
    .line 77
    return-void
.end method

.method public static logValidated(IJ)V
    .locals 3
    .param p0, "netId"    # I
    .param p1, "durationMs"    # J

    #@0
    .prologue
    .line 82
    new-instance v0, Landroid/net/metrics/NetworkEvent;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-direct {v0, p0, v1, p1, p2}, Landroid/net/metrics/NetworkEvent;-><init>(IIJ)V

    #@6
    invoke-static {v0}, Landroid/net/metrics/NetworkEvent;->logEvent(Landroid/net/metrics/IpConnectivityEvent;)V

    #@9
    .line 81
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 63
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 91
    const-string/jumbo v0, "NetworkEvent(%d, %s, %dms)"

    #@3
    const/4 v1, 0x3

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 92
    iget v2, p0, Landroid/net/metrics/NetworkEvent;->netId:I

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    sget-object v2, Landroid/net/metrics/NetworkEvent$Decoder;->constants:Landroid/util/SparseArray;

    #@11
    iget v3, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    #@13
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    const/4 v3, 0x1

    #@18
    aput-object v2, v1, v3

    #@1a
    iget-wide v2, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    #@1c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1f
    move-result-object v2

    #@20
    const/4 v3, 0x2

    #@21
    aput-object v2, v1, v3

    #@23
    .line 91
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 57
    iget v0, p0, Landroid/net/metrics/NetworkEvent;->netId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 58
    iget v0, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 59
    iget-wide v0, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 56
    return-void
.end method
