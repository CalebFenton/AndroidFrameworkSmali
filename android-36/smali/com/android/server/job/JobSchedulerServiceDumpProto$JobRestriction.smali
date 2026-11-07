.class public final Lcom/android/server/job/JobSchedulerServiceDumpProto$JobRestriction;
.super Ljava/lang/Object;
.source "JobSchedulerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JobRestriction"
.end annotation


# static fields
.field public static final blacklist IS_RESTRICTING:J = 0x10800000002L

.field public static final blacklist REASON:J = 0x10e00000001L


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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
