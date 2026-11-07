.class public final Lcom/android/server/job/JobPackageHistoryProto$HistoryEvent;
.super Ljava/lang/Object;
.source "JobPackageHistoryProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobPackageHistoryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HistoryEvent"
.end annotation


# static fields
.field public static final blacklist EVENT:J = 0x10e00000001L

.field public static final blacklist JOB_ID:J = 0x10500000004L

.field public static final blacklist STOP_REASON:J = 0x10e00000006L

.field public static final blacklist TAG:J = 0x10900000005L

.field public static final blacklist TIME_SINCE_EVENT_MS:J = 0x10300000002L

.field public static final blacklist UID:J = 0x10500000003L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/JobPackageHistoryProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/JobPackageHistoryProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
