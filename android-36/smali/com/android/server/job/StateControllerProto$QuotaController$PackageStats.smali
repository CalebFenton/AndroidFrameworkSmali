.class public final Lcom/android/server/job/StateControllerProto$QuotaController$PackageStats;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PackageStats"
.end annotation


# static fields
.field public static final blacklist EXECUTION_STATS:J = 0x20b00000004L

.field public static final blacklist FG_JOB_TIMER:J = 0x10b00000006L

.field public static final blacklist PKG:J = 0x10b00000001L

.field public static final blacklist SAVED_SESSIONS:J = 0x20b00000003L

.field public static final blacklist TIMER:J = 0x10b00000002L


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

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
