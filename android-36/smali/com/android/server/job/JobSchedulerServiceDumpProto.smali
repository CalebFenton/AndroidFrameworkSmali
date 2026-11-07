.class public final Lcom/android/server/job/JobSchedulerServiceDumpProto;
.super Ljava/lang/Object;
.source "JobSchedulerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob;,
        Lcom/android/server/job/JobSchedulerServiceDumpProto$PendingJob;,
        Lcom/android/server/job/JobSchedulerServiceDumpProto$PriorityOverride;,
        Lcom/android/server/job/JobSchedulerServiceDumpProto$RegisteredJob;,
        Lcom/android/server/job/JobSchedulerServiceDumpProto$JobRestriction;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVE_JOBS:J = 0x20b0000000aL

.field public static final blacklist BACKING_UP_UIDS:J = 0x20500000006L

.field public static final blacklist CONCURRENCY_MANAGER:J = 0x10b00000014L

.field public static final blacklist CONTROLLERS:J = 0x20b00000004L

.field public static final blacklist HISTORY:J = 0x10b00000007L

.field public static final blacklist IN_THERMAL:J = 0x10800000013L

.field public static final blacklist IS_READY_TO_ROCK:J = 0x1080000000bL

.field public static final blacklist MAX_ACTIVE_JOBS:J = 0x1050000000dL

.field public static final blacklist PACKAGE_TRACKER:J = 0x10b00000008L

.field public static final blacklist PENDING_JOBS:J = 0x20b00000009L

.field public static final blacklist PERSIST_STATS:J = 0x10b00000015L

.field public static final blacklist PRIORITY_OVERRIDES:J = 0x20b00000005L

.field public static final blacklist QUOTA_TRACKER:J = 0x10b00000016L

.field public static final blacklist REGISTERED_JOBS:J = 0x20b00000003L

.field public static final blacklist REPORTED_ACTIVE:J = 0x1080000000cL

.field public static final blacklist SETTINGS:J = 0x10b00000001L

.field public static final blacklist STARTED_USERS:J = 0x20500000002L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
