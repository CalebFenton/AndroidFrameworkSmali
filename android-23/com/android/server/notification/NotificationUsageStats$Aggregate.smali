.class public Lcom/android/server/notification/NotificationUsageStats$Aggregate;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aggregate"
.end annotation


# instance fields
.field avg:D

.field numSamples:J

.field sum2:D

.field var:D


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public addSample(J)V
    .locals 11
    .param p1, "sample"    # J

    #@0
    .prologue
    .line 702
    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    #@2
    const-wide/16 v8, 0x1

    #@4
    add-long/2addr v6, v8

    #@5
    iput-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    #@7
    .line 703
    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    #@9
    long-to-double v4, v6

    #@a
    .line 704
    .local v4, "n":D
    long-to-double v6, p1

    #@b
    iget-wide v8, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    #@d
    sub-double v0, v6, v8

    #@f
    .line 705
    .local v0, "delta":D
    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    #@11
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    #@13
    div-double/2addr v8, v4

    #@14
    mul-double/2addr v8, v0

    #@15
    add-double/2addr v6, v8

    #@16
    iput-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    #@18
    .line 706
    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    #@1a
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    #@1c
    sub-double v8, v4, v8

    #@1e
    div-double/2addr v8, v4

    #@1f
    mul-double/2addr v8, v0

    #@20
    mul-double/2addr v8, v0

    #@21
    add-double/2addr v6, v8

    #@22
    iput-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    #@24
    .line 707
    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    #@26
    const-wide/16 v8, 0x1

    #@28
    cmp-long v6, v6, v8

    #@2a
    if-nez v6, :cond_0

    #@2c
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@2e
    .line 708
    .local v2, "divisor":D
    :goto_0
    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    #@30
    div-double/2addr v6, v2

    #@31
    iput-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->var:D

    #@33
    .line 699
    return-void

    #@34
    .line 707
    .end local v2    # "divisor":D
    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@36
    sub-double v2, v4, v6

    #@38
    .restart local v2    # "divisor":D
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Aggregate{numSamples="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 714
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    #@e
    .line 713
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 715
    const-string/jumbo v1, ", avg="

    #@15
    .line 713
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 715
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    #@1b
    .line 713
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 716
    const-string/jumbo v1, ", var="

    #@22
    .line 713
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 716
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->var:D

    #@28
    .line 713
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 717
    const/16 v1, 0x7d

    #@2e
    .line 713
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method
