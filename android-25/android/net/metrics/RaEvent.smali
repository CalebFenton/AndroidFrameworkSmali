.class public final Landroid/net/metrics/RaEvent;
.super Ljava/lang/Object;
.source "RaEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/RaEvent$1;,
        Landroid/net/metrics/RaEvent$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/RaEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_LIFETIME:J = -0x1L


# instance fields
.field public final dnsslLifetime:J

.field public final prefixPreferredLifetime:J

.field public final prefixValidLifetime:J

.field public final rdnssLifetime:J

.field public final routeInfoLifetime:J

.field public final routerLifetime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 89
    new-instance v0, Landroid/net/metrics/RaEvent$1;

    #@2
    invoke-direct {v0}, Landroid/net/metrics/RaEvent$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/metrics/RaEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>(JJJJJJ)V
    .locals 1
    .param p1, "routerLifetime"    # J
    .param p3, "prefixValidLifetime"    # J
    .param p5, "prefixPreferredLifetime"    # J
    .param p7, "routeInfoLifetime"    # J
    .param p9, "rdnssLifetime"    # J
    .param p11, "dnsslLifetime"    # J

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-wide p1, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    #@5
    .line 46
    iput-wide p3, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    #@7
    .line 47
    iput-wide p5, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    #@9
    .line 48
    iput-wide p7, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    #@b
    .line 49
    iput-wide p9, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    #@d
    .line 50
    iput-wide p11, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    #@f
    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    #@9
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    #@f
    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    #@15
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    #@1b
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1e
    move-result-wide v0

    #@1f
    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    #@21
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@24
    move-result-wide v0

    #@25
    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    #@27
    .line 53
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/RaEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/RaEvent;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 74
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "RaEvent(lifetimes: "

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 80
    const-string/jumbo v1, "router=%ds, "

    #@d
    new-array v2, v7, [Ljava/lang/Object;

    #@f
    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    #@11
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v3

    #@15
    aput-object v3, v2, v6

    #@17
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 81
    const-string/jumbo v1, "prefix_valid=%ds, "

    #@22
    new-array v2, v7, [Ljava/lang/Object;

    #@24
    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    #@26
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@29
    move-result-object v3

    #@2a
    aput-object v3, v2, v6

    #@2c
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 82
    const-string/jumbo v1, "prefix_preferred=%ds, "

    #@37
    new-array v2, v7, [Ljava/lang/Object;

    #@39
    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    #@3b
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3e
    move-result-object v3

    #@3f
    aput-object v3, v2, v6

    #@41
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 83
    const-string/jumbo v1, "route_info=%ds, "

    #@4c
    new-array v2, v7, [Ljava/lang/Object;

    #@4e
    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    #@50
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@53
    move-result-object v3

    #@54
    aput-object v3, v2, v6

    #@56
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 84
    const-string/jumbo v1, "rdnss=%ds, "

    #@61
    new-array v2, v7, [Ljava/lang/Object;

    #@63
    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    #@65
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@68
    move-result-object v3

    #@69
    aput-object v3, v2, v6

    #@6b
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    .line 85
    const-string/jumbo v1, "dnssl=%ds)"

    #@76
    new-array v2, v7, [Ljava/lang/Object;

    #@78
    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    #@7a
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7d
    move-result-object v3

    #@7e
    aput-object v3, v2, v6

    #@80
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@83
    move-result-object v1

    #@84
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v0

    #@8c
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 64
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 65
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 66
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 67
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 68
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    .line 69
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 63
    return-void
.end method
