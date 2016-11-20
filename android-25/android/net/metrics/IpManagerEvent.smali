.class public final Landroid/net/metrics/IpManagerEvent;
.super Ljava/lang/Object;
.source "IpManagerEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/IpManagerEvent$1;,
        Landroid/net/metrics/IpManagerEvent$Decoder;
    }
.end annotation


# static fields
.field public static final COMPLETE_LIFECYCLE:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/IpManagerEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVISIONING_FAIL:I = 0x2

.field public static final PROVISIONING_OK:I = 0x1


# instance fields
.field public final durationMs:J

.field public final eventType:I

.field public final ifName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 77
    new-instance v0, Landroid/net/metrics/IpManagerEvent$1;

    #@2
    invoke-direct {v0}, Landroid/net/metrics/IpManagerEvent$1;-><init>()V

    #@5
    .line 76
    sput-object v0, Landroid/net/metrics/IpManagerEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/metrics/IpManagerEvent;->ifName:Ljava/lang/String;

    #@9
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    #@f
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    #@15
    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/IpManagerEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/IpManagerEvent;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "duration"    # J

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Landroid/net/metrics/IpManagerEvent;->ifName:Ljava/lang/String;

    #@5
    .line 54
    iput p2, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    #@7
    .line 55
    iput-wide p3, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    #@9
    .line 52
    return-void
.end method

.method public static logEvent(ILjava/lang/String;J)V
    .locals 0
    .param p0, "eventType"    # I
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "durationMs"    # J

    #@0
    .prologue
    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 92
    const-string/jumbo v0, "IpManagerEvent(%s, %s, %dms)"

    #@3
    const/4 v1, 0x3

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 93
    iget-object v2, p0, Landroid/net/metrics/IpManagerEvent;->ifName:Ljava/lang/String;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    sget-object v2, Landroid/net/metrics/IpManagerEvent$Decoder;->constants:Landroid/util/SparseArray;

    #@d
    iget v3, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    #@f
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    const/4 v3, 0x1

    #@14
    aput-object v2, v1, v3

    #@16
    iget-wide v2, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    #@18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1b
    move-result-object v2

    #@1c
    const/4 v3, 0x2

    #@1d
    aput-object v2, v1, v3

    #@1f
    .line 92
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/net/metrics/IpManagerEvent;->ifName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 67
    iget v0, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 68
    iget-wide v0, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 65
    return-void
.end method
