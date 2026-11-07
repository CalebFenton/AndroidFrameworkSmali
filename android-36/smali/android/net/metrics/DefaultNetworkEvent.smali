.class public Landroid/net/metrics/DefaultNetworkEvent;
.super Ljava/lang/Object;
.source "DefaultNetworkEvent.java"


# instance fields
.field public final greylist-max-o creationTimeMs:J

.field public greylist-max-o durationMs:J

.field public greylist-max-o finalScore:I

.field public greylist-max-o initialScore:I

.field public greylist-max-o ipv4:Z

.field public greylist-max-o ipv6:Z

.field public greylist-max-o netId:I

.field public greylist-max-o previousTransports:I

.field public greylist-max-o transports:I

.field public greylist-max-o validatedMs:J


# direct methods
.method public constructor greylist-max-o <init>(J)V
    .registers 4
    .param p1, "timeMs"    # J

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    .line 49
    iput-wide p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->creationTimeMs:J

    .line 50
    return-void
.end method

.method private greylist-max-o ipSupport()Ljava/lang/String;
    .registers 2

    .line 75
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    if-eqz v0, :cond_b

    .line 76
    const-string v0, "IPv4v6"

    return-object v0

    .line 78
    :cond_b
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    if-eqz v0, :cond_12

    .line 79
    const-string v0, "IPv6"

    return-object v0

    .line 81
    :cond_12
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    if-eqz v0, :cond_19

    .line 82
    const-string v0, "IPv4"

    return-object v0

    .line 84
    :cond_19
    const-string v0, "NONE"

    return-object v0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 59
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "DefaultNetworkEvent("

    const-string v2, ")"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 60
    .local v0, "j":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transports="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    int-to-long v2, v2

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

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/metrics/DefaultNetworkEvent;->ipSupport()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 63
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->initialScore:I

    if-lez v1, :cond_80

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initial_score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->initialScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 66
    :cond_80
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    if-lez v1, :cond_9c

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final_score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 69
    :cond_9c
    iget-wide v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "duration=%.0fs"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 70
    iget-wide v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    long-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    iget-wide v3, p0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    long-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "validation=%04.1f%%"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o updateDuration(J)V
    .registers 5
    .param p1, "timeMs"    # J

    .line 54
    iget-wide v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->creationTimeMs:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    .line 55
    return-void
.end method
