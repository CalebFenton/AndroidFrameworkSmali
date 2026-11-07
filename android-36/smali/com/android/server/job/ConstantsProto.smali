.class public final Lcom/android/server/job/ConstantsProto;
.super Ljava/lang/Object;
.source "ConstantsProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/ConstantsProto$TimeController;,
        Lcom/android/server/job/ConstantsProto$QuotaController;
    }
.end annotation


# static fields
.field public static final blacklist API_QUOTA_SCHEDULE_COUNT:J = 0x10500000020L

.field public static final blacklist API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:J = 0x10800000023L

.field public static final blacklist API_QUOTA_SCHEDULE_THROW_EXCEPTION:J = 0x10800000022L

.field public static final blacklist API_QUOTA_SCHEDULE_WINDOW_MS:J = 0x10300000021L

.field public static final blacklist BG_CRITICAL_JOB_COUNT:J = 0x1050000000eL

.field public static final blacklist BG_LOW_JOB_COUNT:J = 0x1050000000dL

.field public static final blacklist BG_MODERATE_JOB_COUNT:J = 0x1050000000cL

.field public static final blacklist BG_NORMAL_JOB_COUNT:J = 0x1050000000bL

.field public static final blacklist CONN_CONGESTION_DELAY_FRAC:J = 0x10100000015L

.field public static final blacklist CONN_PREFETCH_RELAX_FRAC:J = 0x10100000016L

.field public static final blacklist ENABLE_API_QUOTAS:J = 0x1080000001fL

.field public static final blacklist FG_JOB_COUNT:J = 0x1050000000aL

.field public static final blacklist HEAVY_USE_FACTOR:J = 0x10100000008L

.field public static final blacklist MAX_JOB_COUNTS_SCREEN_OFF:J = 0x10b0000001bL

.field public static final blacklist MAX_JOB_COUNTS_SCREEN_ON:J = 0x10b0000001aL

.field public static final blacklist MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J = 0x1030000001eL

.field public static final blacklist MIN_EXP_BACKOFF_TIME_MS:J = 0x10300000012L

.field public static final blacklist MIN_LINEAR_BACKOFF_TIME_MS:J = 0x10300000011L

.field public static final blacklist MIN_READY_NON_ACTIVE_JOBS_COUNT:J = 0x1050000001dL

.field public static final blacklist MODERATE_USE_FACTOR:J = 0x10100000009L

.field public static final blacklist QUOTA_CONTROLLER:J = 0x10b00000018L

.field public static final blacklist SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS:J = 0x1050000001cL

.field public static final blacklist TIME_CONTROLLER:J = 0x10b00000019L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
