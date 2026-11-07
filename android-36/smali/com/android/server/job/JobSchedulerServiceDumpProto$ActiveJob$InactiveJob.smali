.class public final Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob$InactiveJob;
.super Ljava/lang/Object;
.source "JobSchedulerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InactiveJob"
.end annotation


# static fields
.field public static final blacklist STOPPED_REASON:J = 0x10900000002L

.field public static final blacklist TIME_SINCE_STOPPED_MS:J = 0x10300000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
