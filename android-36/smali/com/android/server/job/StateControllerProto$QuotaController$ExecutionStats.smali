.class public final Lcom/android/server/job/StateControllerProto$QuotaController$ExecutionStats;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExecutionStats"
.end annotation


# static fields
.field public static final blacklist BG_JOB_COUNT_IN_MAX_PERIOD:J = 0x10500000007L

.field public static final blacklist BG_JOB_COUNT_IN_WINDOW:J = 0x10500000005L

.field public static final blacklist EXECUTION_TIME_IN_MAX_PERIOD_MS:J = 0x10300000006L

.field public static final blacklist EXECUTION_TIME_IN_WINDOW_MS:J = 0x10300000004L

.field public static final blacklist EXPIRATION_TIME_ELAPSED:J = 0x10300000002L

.field public static final blacklist IN_QUOTA_TIME_ELAPSED:J = 0x10300000008L

.field public static final blacklist JOB_COUNT_EXPIRATION_TIME_ELAPSED:J = 0x10300000009L

.field public static final blacklist JOB_COUNT_IN_RATE_LIMITING_WINDOW:J = 0x1050000000aL

.field public static final blacklist JOB_COUNT_LIMIT:J = 0x1050000000eL

.field public static final blacklist SESSION_COUNT_EXPIRATION_TIME_ELAPSED:J = 0x1030000000cL

.field public static final blacklist SESSION_COUNT_IN_RATE_LIMITING_WINDOW:J = 0x1050000000dL

.field public static final blacklist SESSION_COUNT_IN_WINDOW:J = 0x1050000000bL

.field public static final blacklist SESSION_COUNT_LIMIT:J = 0x1050000000fL

.field public static final blacklist STANDBY_BUCKET:J = 0x10e00000001L

.field public static final blacklist WINDOW_SIZE_MS:J = 0x10300000003L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/StateControllerProto$QuotaController;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/job/StateControllerProto$QuotaController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
