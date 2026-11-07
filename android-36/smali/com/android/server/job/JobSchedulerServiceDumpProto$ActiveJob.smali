.class public final Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob;
.super Ljava/lang/Object;
.source "JobSchedulerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActiveJob"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob$RunningJob;,
        Lcom/android/server/job/JobSchedulerServiceDumpProto$ActiveJob$InactiveJob;
    }
.end annotation


# static fields
.field public static final blacklist INACTIVE:J = 0x10b00000001L

.field public static final blacklist RUNNING:J = 0x10b00000002L


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

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
