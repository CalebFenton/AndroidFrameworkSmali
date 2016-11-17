.class Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;
.super Ljava/lang/Object;
.source "SubscriptionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Limit"
.end annotation


# instance fields
.field private final mDataLimit:J

.field private final mStartDate:J

.field private final mTimeLimit:J

.field private final mUsageTimePeriod:J


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    .locals 4
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    const-wide v2, 0x7fffffffffffffffL

    #@5
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 56
    const-string/jumbo v0, "DataLimit"

    #@b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@e
    move-result-object v1

    #@f
    .line 55
    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getLong(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/Long;)J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;->mDataLimit:J

    #@15
    .line 58
    const-string/jumbo v0, "StartDate"

    #@18
    invoke-virtual {p1, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1b
    move-result-object v0

    #@1c
    .line 57
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    #@1f
    move-result-wide v0

    #@20
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;->mStartDate:J

    #@22
    .line 60
    const-string/jumbo v0, "TimeLimit"

    #@25
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@28
    move-result-object v1

    #@29
    .line 59
    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getLong(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/Long;)J

    #@2c
    move-result-wide v0

    #@2d
    .line 61
    const-wide/32 v2, 0xea60

    #@30
    .line 59
    mul-long/2addr v0, v2

    #@31
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;->mTimeLimit:J

    #@33
    .line 63
    const-string/jumbo v0, "UsageTimePeriod"

    #@36
    const/4 v1, 0x0

    #@37
    .line 62
    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getLong(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/Long;)J

    #@3a
    move-result-wide v0

    #@3b
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;->mUsageTimePeriod:J

    #@3d
    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;)V
    .locals 0
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Limit{dataLimit="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 69
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;->mDataLimit:J

    #@e
    .line 68
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 70
    const-string/jumbo v1, ", startDate="

    #@15
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 70
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;->mStartDate:J

    #@1b
    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/Utils;->toUTCString(J)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 71
    const-string/jumbo v1, ", timeLimit="

    #@26
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 71
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;->mTimeLimit:J

    #@2c
    .line 68
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 72
    const-string/jumbo v1, ", usageTimePeriod="

    #@33
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 72
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;->mUsageTimePeriod:J

    #@39
    .line 68
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 73
    const/16 v1, 0x7d

    #@3f
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    return-object v0
.end method
