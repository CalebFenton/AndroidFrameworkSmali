.class public final Lcom/android/server/job/ConstantsProto$QuotaController;
.super Ljava/lang/Object;
.source "ConstantsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/ConstantsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QuotaController"
.end annotation


# static fields
.field public static final blacklist ACTIVE_WINDOW_SIZE_MS:J = 0x10300000003L

.field public static final blacklist ALLOWED_TIME_PER_PERIOD_MS:J = 0x10300000001L

.field public static final blacklist EXPEDITED_JOB_LIMIT_ACTIVE_MS:J = 0x10300000018L

.field public static final blacklist EXPEDITED_JOB_LIMIT_FREQUENT_MS:J = 0x1030000001aL

.field public static final blacklist EXPEDITED_JOB_LIMIT_RARE_MS:J = 0x1030000001bL

.field public static final blacklist EXPEDITED_JOB_LIMIT_RESTRICTED_MS:J = 0x1030000001cL

.field public static final blacklist EXPEDITED_JOB_LIMIT_WORKING_MS:J = 0x10300000019L

.field public static final blacklist EXPEDITED_JOB_REWARD_INTERACTION_MS:J = 0x10300000020L

.field public static final blacklist EXPEDITED_JOB_REWARD_NOTIFICATION_SEEN_MS:J = 0x10300000021L

.field public static final blacklist EXPEDITED_JOB_REWARD_TOP_APP_MS:J = 0x1030000001fL

.field public static final blacklist EXPEDITED_JOB_TOP_APP_TIME_CHUNK_SIZE_MS:J = 0x1030000001eL

.field public static final blacklist EXPEDITED_JOB_WINDOW_SIZE_MS:J = 0x1030000001dL

.field public static final blacklist FREQUENT_WINDOW_SIZE_MS:J = 0x10300000005L

.field public static final blacklist IN_QUOTA_BUFFER_MS:J = 0x10300000002L

.field public static final blacklist MAX_EXECUTION_TIME_MS:J = 0x10300000007L

.field public static final blacklist MAX_JOB_COUNT_ACTIVE:J = 0x10500000008L

.field public static final blacklist MAX_JOB_COUNT_FREQUENT:J = 0x1050000000aL

.field public static final blacklist MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:J = 0x1050000000cL

.field public static final blacklist MAX_JOB_COUNT_RARE:J = 0x1050000000bL

.field public static final blacklist MAX_JOB_COUNT_RESTRICTED:J = 0x10500000015L

.field public static final blacklist MAX_JOB_COUNT_WORKING:J = 0x10500000009L

.field public static final blacklist MAX_SESSION_COUNT_ACTIVE:J = 0x1050000000dL

.field public static final blacklist MAX_SESSION_COUNT_FREQUENT:J = 0x1050000000fL

.field public static final blacklist MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:J = 0x10500000011L

.field public static final blacklist MAX_SESSION_COUNT_RARE:J = 0x10500000010L

.field public static final blacklist MAX_SESSION_COUNT_RESTRICTED:J = 0x10500000016L

.field public static final blacklist MAX_SESSION_COUNT_WORKING:J = 0x1050000000eL

.field public static final blacklist MIN_QUOTA_CHECK_DELAY_MS:J = 0x10300000017L

.field public static final blacklist RARE_WINDOW_SIZE_MS:J = 0x10300000006L

.field public static final blacklist RATE_LIMITING_WINDOW_MS:J = 0x10500000013L

.field public static final blacklist RESTRICTED_WINDOW_SIZE_MS:J = 0x10300000014L

.field public static final blacklist TIMING_SESSION_COALESCING_DURATION_MS:J = 0x10300000012L

.field public static final blacklist WORKING_WINDOW_SIZE_MS:J = 0x10300000004L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/ConstantsProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/ConstantsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
