.class public final Lcom/android/server/job/StateControllerProto$QuotaController;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QuotaController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$QuotaController$InQuotaAlarmListener;,
        Lcom/android/server/job/StateControllerProto$QuotaController$UidPackageMapping;,
        Lcom/android/server/job/StateControllerProto$QuotaController$PackageStats;,
        Lcom/android/server/job/StateControllerProto$QuotaController$TopAppTimer;,
        Lcom/android/server/job/StateControllerProto$QuotaController$Timer;,
        Lcom/android/server/job/StateControllerProto$QuotaController$TimingSession;,
        Lcom/android/server/job/StateControllerProto$QuotaController$Package;,
        Lcom/android/server/job/StateControllerProto$QuotaController$ExecutionStats;,
        Lcom/android/server/job/StateControllerProto$QuotaController$AlarmListener;,
        Lcom/android/server/job/StateControllerProto$QuotaController$TrackedJob;
    }
.end annotation


# static fields
.field public static final blacklist ELAPSED_REALTIME:J = 0x10300000006L

.field public static final blacklist FOREGROUND_UIDS:J = 0x20500000003L

.field public static final blacklist IN_QUOTA_ALARM_LISTENER:J = 0x10b00000008L

.field public static final blacklist IS_CHARGING:J = 0x10800000001L

.field public static final blacklist PACKAGE_STATS:J = 0x20b00000005L

.field public static final blacklist TRACKED_JOBS:J = 0x20b00000004L

.field public static final blacklist UID_TO_PACKAGE_CACHE:J = 0x20b00000007L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/StateControllerProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/StateControllerProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
