.class public final Lcom/android/server/job/JobPackageHistoryProto;
.super Ljava/lang/Object;
.source "JobPackageHistoryProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobPackageHistoryProto$HistoryEvent;
    }
.end annotation


# static fields
.field public static final blacklist HISTORY_EVENT:J = 0x20b00000001L

.field public static final blacklist START_JOB:I = 0x1

.field public static final blacklist START_PERIODIC_JOB:I = 0x3

.field public static final blacklist STOP_JOB:I = 0x2

.field public static final blacklist STOP_PERIODIC_JOB:I = 0x4

.field public static final blacklist UNKNOWN:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
