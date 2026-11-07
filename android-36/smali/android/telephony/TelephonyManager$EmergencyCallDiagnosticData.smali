.class public final Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmergencyCallDiagnosticData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;
    }
.end annotation


# static fields
.field private static blacklist sUnsetLogcatStartTime:J


# instance fields
.field private blacklist mCollectLogcat:Z

.field private blacklist mCollectTelecomDumpsys:Z

.field private blacklist mCollectTelephonyDumpsys:Z

.field private blacklist mLogcatStartTimeMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsUnsetLogcatStartTime()J
    .registers 2

    sget-wide v0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->sUnsetLogcatStartTime:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 19285
    const-wide/16 v0, -0x1

    sput-wide v0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->sUnsetLogcatStartTime:J

    return-void
.end method

.method private constructor blacklist <init>(ZZJ)V
    .registers 7
    .param p1, "collectTelecomDumpsys"    # Z
    .param p2, "collectTelephonyDumpsys"    # Z
    .param p3, "logcatStartTimeMillis"    # J

    .line 19288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19289
    iput-boolean p1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectTelecomDumpsys:Z

    .line 19290
    iput-boolean p2, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectTelephonyDumpsys:Z

    .line 19291
    iput-wide p3, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mLogcatStartTimeMillis:J

    .line 19292
    sget-wide v0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->sUnsetLogcatStartTime:J

    cmp-long v0, p3, v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectLogcat:Z

    .line 19293
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZJLandroid/telephony/TelephonyManager-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;-><init>(ZZJ)V

    return-void
.end method


# virtual methods
.method public blacklist getLogcatCollectionStartTimeMillis()J
    .registers 3

    .line 19309
    iget-wide v0, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mLogcatStartTimeMillis:J

    return-wide v0
.end method

.method public blacklist isLogcatCollectionEnabled()Z
    .registers 2

    .line 19304
    iget-boolean v0, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectLogcat:Z

    return v0
.end method

.method public blacklist isTelecomDumpsysCollectionEnabled()Z
    .registers 2

    .line 19296
    iget-boolean v0, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectTelecomDumpsys:Z

    return v0
.end method

.method public blacklist isTelephonyDumpsysCollectionEnabled()Z
    .registers 2

    .line 19300
    iget-boolean v0, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectTelephonyDumpsys:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 19314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmergencyCallDiagnosticData{mCollectTelecomDumpsys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectTelecomDumpsys:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCollectTelephonyDumpsys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectTelephonyDumpsys:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCollectLogcat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mCollectLogcat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLogcatStartTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->mLogcatStartTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
