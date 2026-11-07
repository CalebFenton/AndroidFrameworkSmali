.class public final Lcom/android/server/job/JobSchedulerServiceDumpProto$RegisteredJob;
.super Ljava/lang/Object;
.source "JobSchedulerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RegisteredJob"
.end annotation


# static fields
.field public static final blacklist ARE_USERS_STARTED:J = 0x10800000004L

.field public static final blacklist DUMP:J = 0x10b00000002L

.field public static final blacklist INFO:J = 0x10b00000001L

.field public static final blacklist IS_COMPONENT_USABLE:J = 0x10800000008L

.field public static final blacklist IS_JOB_CURRENTLY_ACTIVE:J = 0x10800000006L

.field public static final blacklist IS_JOB_PENDING:J = 0x10800000005L

.field public static final blacklist IS_JOB_READY:J = 0x10800000003L

.field public static final blacklist IS_JOB_READY_TO_BE_EXECUTED:J = 0x1080000000aL

.field public static final blacklist IS_JOB_RESTRICTED:J = 0x1080000000bL

.field public static final blacklist IS_UID_BACKING_UP:J = 0x10800000007L

.field public static final blacklist RESTRICTIONS:J = 0x20b0000000cL


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/JobSchedulerServiceDumpProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerServiceDumpProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
