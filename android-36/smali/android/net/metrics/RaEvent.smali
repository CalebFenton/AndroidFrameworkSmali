.class public final Landroid/net/metrics/RaEvent;
.super Ljava/lang/Object;
.source "RaEvent.java"

# interfaces
.implements Landroid/net/metrics/IpConnectivityLog$Event;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/RaEvent$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/RaEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o NO_LIFETIME:J = -0x1L


# instance fields
.field public final greylist-max-o dnsslLifetime:J

.field public final greylist-max-o prefixPreferredLifetime:J

.field public final greylist-max-o prefixValidLifetime:J

.field public final greylist-max-o rdnssLifetime:J

.field public final greylist-max-o routeInfoLifetime:J

.field public final greylist-max-o routerLifetime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 117
    new-instance v0, Landroid/net/metrics/RaEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/RaEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/RaEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(JJJJJJ)V
    .registers 13
    .param p1, "routerLifetime"    # J
    .param p3, "prefixValidLifetime"    # J
    .param p5, "prefixPreferredLifetime"    # J
    .param p7, "routeInfoLifetime"    # J
    .param p9, "rdnssLifetime"    # J
    .param p11, "dnsslLifetime"    # J

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    .line 57
    iput-wide p3, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    .line 58
    iput-wide p5, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    .line 59
    iput-wide p7, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    .line 60
    iput-wide p9, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    .line 61
    iput-wide p11, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    .line 62
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    .line 72
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/metrics/RaEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/metrics/RaEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 106
    const/4 v0, 0x0

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/net/metrics/RaEvent;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_45

    .line 107
    :cond_10
    move-object v1, p1

    check-cast v1, Landroid/net/metrics/RaEvent;

    .line 108
    .local v1, "other":Landroid/net/metrics/RaEvent;
    iget-wide v2, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->routerLifetime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_44

    iget-wide v2, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_44

    iget-wide v2, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_44

    iget-wide v2, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_44

    iget-wide v2, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_44

    iget-wide v2, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_44

    const/4 v0, 0x1

    :cond_44
    return v0

    .line 106
    .end local v1    # "other":Landroid/net/metrics/RaEvent;
    :cond_45
    :goto_45
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RaEvent(lifetimes: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    .line 95
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "router=%ds, "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    .line 96
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "prefix_valid=%ds, "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    .line 97
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "prefix_preferred=%ds, "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    .line 98
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "route_info=%ds, "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    .line 99
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "rdnss=%ds, "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    .line 100
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "dnssl=%ds)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    return-void
.end method
