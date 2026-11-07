.class public final Lcom/android/server/job/JobStatusDumpProto$JobInfo$Backoff;
.super Ljava/lang/Object;
.source "JobStatusDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStatusDumpProto$JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Backoff"
.end annotation


# static fields
.field public static final blacklist BACKOFF_POLICY_EXPONENTIAL:I = 0x1

.field public static final blacklist BACKOFF_POLICY_LINEAR:I = 0x0

.field public static final blacklist INITIAL_BACKOFF_MS:J = 0x10300000002L

.field public static final blacklist POLICY:J = 0x10e00000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/JobStatusDumpProto$JobInfo;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/job/JobStatusDumpProto$JobInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
