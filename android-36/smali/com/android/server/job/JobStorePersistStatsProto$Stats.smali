.class public final Lcom/android/server/job/JobStorePersistStatsProto$Stats;
.super Ljava/lang/Object;
.source "JobStorePersistStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStorePersistStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Stats"
.end annotation


# static fields
.field public static final blacklist NUM_SYSTEM_SERVER_JOBS:J = 0x10500000002L

.field public static final blacklist NUM_SYSTEM_SYNC_MANAGER_JOBS:J = 0x10500000003L

.field public static final blacklist NUM_TOTAL_JOBS:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/JobStorePersistStatsProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/JobStorePersistStatsProto;
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
