.class public final Landroid/net/metrics/ValidationProbeEvent;
.super Ljava/lang/Object;
.source "ValidationProbeEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/ValidationProbeEvent$1;,
        Landroid/net/metrics/ValidationProbeEvent$Decoder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/ValidationProbeEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DNS_FAILURE:I = 0x0

.field public static final DNS_SUCCESS:I = 0x1

.field public static final PROBE_DNS:I = 0x0

.field public static final PROBE_FALLBACK:I = 0x4

.field public static final PROBE_HTTP:I = 0x1

.field public static final PROBE_HTTPS:I = 0x2

.field public static final PROBE_PAC:I = 0x3


# instance fields
.field public final durationMs:J

.field public final netId:I

.field public final probeType:I

.field public final returnCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 92
    new-instance v0, Landroid/net/metrics/ValidationProbeEvent$1;

    #@2
    invoke-direct {v0}, Landroid/net/metrics/ValidationProbeEvent$1;-><init>()V

    #@5
    .line 91
    sput-object v0, Landroid/net/metrics/ValidationProbeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>(IJII)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "durationMs"    # J
    .param p4, "probeType"    # I
    .param p5, "returnCode"    # I

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    iput p1, p0, Landroid/net/metrics/ValidationProbeEvent;->netId:I

    #@5
    .line 66
    iput-wide p2, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    #@7
    .line 67
    iput p4, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    #@9
    .line 68
    iput p5, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    #@b
    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/net/metrics/ValidationProbeEvent;->netId:I

    #@9
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    #@f
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    #@15
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    #@1b
    .line 71
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/ValidationProbeEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/ValidationProbeEvent;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static getProbeName(I)Ljava/lang/String;
    .locals 2
    .param p0, "probeType"    # I

    #@0
    .prologue
    .line 104
    sget-object v0, Landroid/net/metrics/ValidationProbeEvent$Decoder;->constants:Landroid/util/SparseArray;

    #@2
    const-string/jumbo v1, "PROBE_???"

    #@5
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public static logEvent(IJII)V
    .locals 0
    .param p0, "netId"    # I
    .param p1, "durationMs"    # J
    .param p3, "probeType"    # I
    .param p4, "returnCode"    # I

    #@0
    .prologue
    .line 107
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 88
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 112
    const-string/jumbo v0, "ValidationProbeEvent(%d, %s:%d, %dms)"

    #@3
    const/4 v1, 0x4

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 113
    iget v2, p0, Landroid/net/metrics/ValidationProbeEvent;->netId:I

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    iget v2, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    #@11
    invoke-static {v2}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    iget v2, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    #@1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x2

    #@1f
    aput-object v2, v1, v3

    #@21
    iget-wide v2, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    #@23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@26
    move-result-object v2

    #@27
    const/4 v3, 0x3

    #@28
    aput-object v2, v1, v3

    #@2a
    .line 112
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 80
    iget v0, p0, Landroid/net/metrics/ValidationProbeEvent;->netId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 81
    iget-wide v0, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 82
    iget v0, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 83
    iget v0, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 79
    return-void
.end method
