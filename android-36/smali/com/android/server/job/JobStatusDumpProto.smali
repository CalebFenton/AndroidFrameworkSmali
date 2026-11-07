.class public final Lcom/android/server/job/JobStatusDumpProto;
.super Ljava/lang/Object;
.source "JobStatusDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobStatusDumpProto$JobWorkItem;,
        Lcom/android/server/job/JobStatusDumpProto$ImplicitConstraints;,
        Lcom/android/server/job/JobStatusDumpProto$JobInfo;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVE:I = 0x0

.field public static final blacklist CALLING_UID:J = 0x10500000001L

.field public static final blacklist CHANGED_AUTHORITIES:J = 0x2090000000cL

.field public static final blacklist CHANGED_URIS:J = 0x2090000000dL

.field public static final blacklist DYNAMIC_CONSTRAINTS:J = 0x20e0000001fL

.field public static final blacklist ENQUEUE_DURATION_MS:J = 0x10300000012L

.field public static final blacklist EXECUTING_WORK:J = 0x20b00000010L

.field public static final blacklist EXEMPTED:I = 0x6

.field public static final blacklist FREQUENT:I = 0x2

.field public static final blacklist IMPLICIT_CONSTRAINTS:J = 0x10b00000019L

.field public static final blacklist INTERNAL_FLAGS:J = 0x10300000018L

.field public static final blacklist IS_DOZE_WHITELISTED:J = 0x1080000000aL

.field public static final blacklist IS_EXEMPTED_FROM_APP_STANDBY:J = 0x1080000001bL

.field public static final blacklist IS_UID_ACTIVE:J = 0x1080000001aL

.field public static final blacklist JOB_INFO:J = 0x10b00000006L

.field public static final blacklist LAST_FAILED_RUN_TIME:J = 0x10300000017L

.field public static final blacklist LAST_SUCCESSFUL_RUN_TIME:J = 0x10300000016L

.field public static final blacklist NETWORK:J = 0x10b0000000eL

.field public static final blacklist NEVER:I = 0x4

.field public static final blacklist NUM_FAILURES:J = 0x10500000015L

.field public static final blacklist ORIGINAL_LATEST_RUNTIME_ELAPSED:J = 0x1040000001eL

.field public static final blacklist PENDING_WORK:J = 0x20b0000000fL

.field public static final blacklist RARE:I = 0x3

.field public static final blacklist REQUIRED_CONSTRAINTS:J = 0x20e00000007L

.field public static final blacklist RESTRICTED:I = 0x5

.field public static final blacklist SATISFIED_CONSTRAINTS:J = 0x20e00000008L

.field public static final blacklist SOURCE_PACKAGE_NAME:J = 0x10900000005L

.field public static final blacklist SOURCE_UID:J = 0x10500000003L

.field public static final blacklist SOURCE_USER_ID:J = 0x10500000004L

.field public static final blacklist STANDBY_BUCKET:J = 0x10e00000011L

.field public static final blacklist TAG:J = 0x10900000002L

.field public static final blacklist TIME_SINCE_FIRST_DEFERRAL_MS:J = 0x1030000001cL

.field public static final blacklist TIME_SINCE_FIRST_FORCE_BATCH_ATTEMPT_MS:J = 0x1030000001dL

.field public static final blacklist TIME_UNTIL_EARLIEST_RUNTIME_MS:J = 0x11200000013L

.field public static final blacklist TIME_UNTIL_LATEST_RUNTIME_MS:J = 0x11200000014L

.field public static final blacklist TRACKING_BATTERY:I = 0x0

.field public static final blacklist TRACKING_CONNECTIVITY:I = 0x1

.field public static final blacklist TRACKING_CONTENT:I = 0x2

.field public static final blacklist TRACKING_CONTROLLERS:J = 0x20e0000000bL

.field public static final blacklist TRACKING_IDLE:I = 0x3

.field public static final blacklist TRACKING_QUOTA:I = 0x6

.field public static final blacklist TRACKING_STORAGE:I = 0x4

.field public static final blacklist TRACKING_TIME:I = 0x5

.field public static final blacklist UNSATISFIED_CONSTRAINTS:J = 0x20e00000009L

.field public static final blacklist WORKING_SET:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
