.class public final Landroid/net/metrics/RaEvent$Builder;
.super Ljava/lang/Object;
.source "RaEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/RaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field greylist-max-o dnsslLifetime:J

.field greylist-max-o prefixPreferredLifetime:J

.field greylist-max-o prefixValidLifetime:J

.field greylist-max-o rdnssLifetime:J

.field greylist-max-o routeInfoLifetime:J

.field greylist-max-o routerLifetime:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routerLifetime:J

    .line 130
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixValidLifetime:J

    .line 131
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixPreferredLifetime:J

    .line 132
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routeInfoLifetime:J

    .line 133
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->rdnssLifetime:J

    .line 134
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->dnsslLifetime:J

    .line 137
    return-void
.end method

.method private greylist-max-o updateLifetime(JJ)J
    .registers 7
    .param p1, "currentLifetime"    # J
    .param p3, "newLifetime"    # J

    .line 175
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 176
    return-wide p3

    .line 178
    :cond_7
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public whitelist build()Landroid/net/metrics/RaEvent;
    .registers 14

    .line 140
    new-instance v0, Landroid/net/metrics/RaEvent;

    iget-wide v1, p0, Landroid/net/metrics/RaEvent$Builder;->routerLifetime:J

    iget-wide v3, p0, Landroid/net/metrics/RaEvent$Builder;->prefixValidLifetime:J

    iget-wide v5, p0, Landroid/net/metrics/RaEvent$Builder;->prefixPreferredLifetime:J

    iget-wide v7, p0, Landroid/net/metrics/RaEvent$Builder;->routeInfoLifetime:J

    iget-wide v9, p0, Landroid/net/metrics/RaEvent$Builder;->rdnssLifetime:J

    iget-wide v11, p0, Landroid/net/metrics/RaEvent$Builder;->dnsslLifetime:J

    invoke-direct/range {v0 .. v12}, Landroid/net/metrics/RaEvent;-><init>(JJJJJJ)V

    return-object v0
.end method

.method public whitelist updateDnsslLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .registers 5
    .param p1, "lifetime"    # J

    .line 170
    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->dnsslLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->dnsslLifetime:J

    .line 171
    return-object p0
.end method

.method public whitelist updatePrefixPreferredLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .registers 5
    .param p1, "lifetime"    # J

    .line 155
    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixPreferredLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixPreferredLifetime:J

    .line 156
    return-object p0
.end method

.method public whitelist updatePrefixValidLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .registers 5
    .param p1, "lifetime"    # J

    .line 150
    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixValidLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixValidLifetime:J

    .line 151
    return-object p0
.end method

.method public whitelist updateRdnssLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .registers 5
    .param p1, "lifetime"    # J

    .line 165
    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->rdnssLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->rdnssLifetime:J

    .line 166
    return-object p0
.end method

.method public whitelist updateRouteInfoLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .registers 5
    .param p1, "lifetime"    # J

    .line 160
    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routeInfoLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routeInfoLifetime:J

    .line 161
    return-object p0
.end method

.method public whitelist updateRouterLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .registers 5
    .param p1, "lifetime"    # J

    .line 145
    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routerLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routerLifetime:J

    .line 146
    return-object p0
.end method
