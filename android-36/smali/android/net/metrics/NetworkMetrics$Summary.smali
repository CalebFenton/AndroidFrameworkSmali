.class public Landroid/net/metrics/NetworkMetrics$Summary;
.super Ljava/lang/Object;
.source "NetworkMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/NetworkMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Summary"
.end annotation


# instance fields
.field public final greylist-max-o connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final greylist-max-o connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final greylist-max-o dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final greylist-max-o dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final greylist-max-o netId:I

.field public final greylist-max-o roundTripTimeUs:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final greylist-max-o sentAckTimeDiffenceMs:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final greylist-max-o tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final greylist-max-o transports:J


# direct methods
.method public constructor greylist-max-o <init>(IJ)V
    .registers 5
    .param p1, "netId"    # I
    .param p2, "transports"    # J

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 115
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 117
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 119
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 121
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 123
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->roundTripTimeUs:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 126
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->sentAckTimeDiffenceMs:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 129
    iput p1, p0, Landroid/net/metrics/NetworkMetrics$Summary;->netId:I

    .line 130
    iput-wide p2, p0, Landroid/net/metrics/NetworkMetrics$Summary;->transports:J

    .line 131
    return-void
.end method


# virtual methods
.method greylist-max-o merge(Landroid/net/metrics/NetworkMetrics$Summary;)V
    .registers 4
    .param p1, "that"    # Landroid/net/metrics/NetworkMetrics$Summary;

    .line 134
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-object v1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->merge(Landroid/net/metrics/NetworkMetrics$Metrics;)V

    .line 135
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-object v1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->merge(Landroid/net/metrics/NetworkMetrics$Metrics;)V

    .line 136
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-object v1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->merge(Landroid/net/metrics/NetworkMetrics$Metrics;)V

    .line 137
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-object v1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->merge(Landroid/net/metrics/NetworkMetrics$Metrics;)V

    .line 138
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-object v1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->merge(Landroid/net/metrics/NetworkMetrics$Metrics;)V

    .line 139
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 143
    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "{"

    const-string/jumbo v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 144
    .local v0, "j":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/metrics/NetworkMetrics$Summary;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transports="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/metrics/NetworkMetrics$Summary;->transports:J

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v2, v4, v5

    invoke-static {v4}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 146
    iget-object v1, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 147
    invoke-virtual {v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-wide v2, v2, Landroid/net/metrics/NetworkMetrics$Metrics;->max:D

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 148
    invoke-virtual {v3}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget v4, v4, Landroid/net/metrics/NetworkMetrics$Metrics;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 146
    const-string v2, "dns avg=%dms max=%dms err=%.1f%% tot=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 149
    iget-object v1, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 150
    invoke-virtual {v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-wide v2, v2, Landroid/net/metrics/NetworkMetrics$Metrics;->max:D

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 151
    invoke-virtual {v3}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v3

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget v4, v4, Landroid/net/metrics/NetworkMetrics$Metrics;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 149
    const-string v2, "connect avg=%dms max=%dms err=%.1f%% tot=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 152
    iget-object v1, p0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 153
    invoke-virtual {v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v1

    mul-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget v2, v2, Landroid/net/metrics/NetworkMetrics$Metrics;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-wide v3, v3, Landroid/net/metrics/NetworkMetrics$Metrics;->sum:D

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 152
    const-string/jumbo v2, "tcp avg_loss=%.1f%% total_sent=%d total_lost=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 154
    iget-object v1, p0, Landroid/net/metrics/NetworkMetrics$Summary;->roundTripTimeUs:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "tcp rtt=%dms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 155
    iget-object v1, p0, Landroid/net/metrics/NetworkMetrics$Summary;->sentAckTimeDiffenceMs:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "tcp sent-ack_diff=%dms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
