.class public final Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCollectTelecomDumpsys:Z

.field private blacklist mCollectTelephonyDumpsys:Z

.field private blacklist mLogcatStartTimeMillis:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 19228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19235
    invoke-static {}, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;->-$$Nest$sfgetsUnsetLogcatStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;->mLogcatStartTimeMillis:J

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;
    .registers 7

    .line 19275
    new-instance v0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;

    iget-boolean v1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;->mCollectTelecomDumpsys:Z

    iget-boolean v2, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;->mCollectTelephonyDumpsys:Z

    iget-wide v3, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;->mLogcatStartTimeMillis:J

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData;-><init>(ZZJLandroid/telephony/TelephonyManager-IA;)V

    return-object v0
.end method

.method public blacklist setLogcatCollectionStartTimeMillis(J)Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;
    .registers 3
    .param p1, "startTimeMillis"    # J

    .line 19266
    iput-wide p1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;->mLogcatStartTimeMillis:J

    .line 19267
    return-object p0
.end method

.method public blacklist setTelecomDumpsysCollectionEnabled(Z)Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;
    .registers 2
    .param p1, "collectTelecomDumpsys"    # Z

    .line 19244
    iput-boolean p1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;->mCollectTelecomDumpsys:Z

    .line 19245
    return-object p0
.end method

.method public blacklist setTelephonyDumpsysCollectionEnabled(Z)Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;
    .registers 2
    .param p1, "collectTelephonyDumpsys"    # Z

    .line 19255
    iput-boolean p1, p0, Landroid/telephony/TelephonyManager$EmergencyCallDiagnosticData$Builder;->mCollectTelephonyDumpsys:Z

    .line 19256
    return-object p0
.end method
