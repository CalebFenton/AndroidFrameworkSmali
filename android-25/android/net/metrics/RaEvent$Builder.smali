.class public Landroid/net/metrics/RaEvent$Builder;
.super Ljava/lang/Object;
.source "RaEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/RaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field dnsslLifetime:J

.field prefixPreferredLifetime:J

.field prefixValidLifetime:J

.field rdnssLifetime:J

.field routeInfoLifetime:J

.field routerLifetime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, -0x1

    #@2
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 102
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routerLifetime:J

    #@7
    .line 103
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixValidLifetime:J

    #@9
    .line 104
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixPreferredLifetime:J

    #@b
    .line 105
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routeInfoLifetime:J

    #@d
    .line 106
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->rdnssLifetime:J

    #@f
    .line 107
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->dnsslLifetime:J

    #@11
    .line 109
    return-void
.end method

.method private updateLifetime(JJ)J
    .locals 3
    .param p1, "currentLifetime"    # J
    .param p3, "newLifetime"    # J

    #@0
    .prologue
    .line 148
    const-wide/16 v0, -0x1

    #@2
    cmp-long v0, p1, v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 149
    return-wide p3

    #@7
    .line 151
    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method


# virtual methods
.method public build()Landroid/net/metrics/RaEvent;
    .locals 14

    #@0
    .prologue
    .line 113
    new-instance v1, Landroid/net/metrics/RaEvent;

    #@2
    iget-wide v2, p0, Landroid/net/metrics/RaEvent$Builder;->routerLifetime:J

    #@4
    iget-wide v4, p0, Landroid/net/metrics/RaEvent$Builder;->prefixValidLifetime:J

    #@6
    iget-wide v6, p0, Landroid/net/metrics/RaEvent$Builder;->prefixPreferredLifetime:J

    #@8
    .line 114
    iget-wide v8, p0, Landroid/net/metrics/RaEvent$Builder;->routeInfoLifetime:J

    #@a
    iget-wide v10, p0, Landroid/net/metrics/RaEvent$Builder;->rdnssLifetime:J

    #@c
    iget-wide v12, p0, Landroid/net/metrics/RaEvent$Builder;->dnsslLifetime:J

    #@e
    .line 113
    invoke-direct/range {v1 .. v13}, Landroid/net/metrics/RaEvent;-><init>(JJJJJJ)V

    #@11
    return-object v1
.end method

.method public updateDnsslLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 3
    .param p1, "lifetime"    # J

    #@0
    .prologue
    .line 143
    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->dnsslLifetime:J

    #@2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->dnsslLifetime:J

    #@8
    .line 144
    return-object p0
.end method

.method public updatePrefixPreferredLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 3
    .param p1, "lifetime"    # J

    #@0
    .prologue
    .line 128
    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixPreferredLifetime:J

    #@2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixPreferredLifetime:J

    #@8
    .line 129
    return-object p0
.end method

.method public updatePrefixValidLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 3
    .param p1, "lifetime"    # J

    #@0
    .prologue
    .line 123
    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixValidLifetime:J

    #@2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixValidLifetime:J

    #@8
    .line 124
    return-object p0
.end method

.method public updateRdnssLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 3
    .param p1, "lifetime"    # J

    #@0
    .prologue
    .line 138
    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->rdnssLifetime:J

    #@2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->rdnssLifetime:J

    #@8
    .line 139
    return-object p0
.end method

.method public updateRouteInfoLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 3
    .param p1, "lifetime"    # J

    #@0
    .prologue
    .line 133
    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routeInfoLifetime:J

    #@2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routeInfoLifetime:J

    #@8
    .line 134
    return-object p0
.end method

.method public updateRouterLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 3
    .param p1, "lifetime"    # J

    #@0
    .prologue
    .line 118
    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routerLifetime:J

    #@2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routerLifetime:J

    #@8
    .line 119
    return-object p0
.end method
