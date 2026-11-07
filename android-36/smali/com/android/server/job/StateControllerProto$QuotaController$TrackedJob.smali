.class public final Lcom/android/server/job/StateControllerProto$QuotaController$TrackedJob;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TrackedJob"
.end annotation


# static fields
.field public static final blacklist EFFECTIVE_STANDBY_BUCKET:J = 0x10e00000003L

.field public static final blacklist HAS_QUOTA:J = 0x10800000005L

.field public static final blacklist INFO:J = 0x10b00000001L

.field public static final blacklist IS_REQUESTED_FOREGROUND_JOB:J = 0x10800000007L

.field public static final blacklist IS_TOP_STARTED_JOB:J = 0x10800000004L

.field public static final blacklist IS_WITHIN_FG_JOB_QUOTA:J = 0x10800000008L

.field public static final blacklist REMAINING_QUOTA_MS:J = 0x10300000006L

.field public static final blacklist SOURCE_UID:J = 0x10500000002L


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

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
