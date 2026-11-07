.class public final Landroid/os/PerfettoTrace$Session;
.super Ljava/lang/Object;
.source "PerfettoTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation


# instance fields
.field private final blacklist mPtr:J


# direct methods
.method public constructor blacklist <init>(Z[B)V
    .registers 5
    .param p1, "isBackendInProcess"    # Z
    .param p2, "config"    # [B

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-static {p1, p2}, Landroid/os/PerfettoTrace;->-$$Nest$smnative_start_session(Z[B)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrace$Session;->mPtr:J

    .line 205
    return-void
.end method


# virtual methods
.method public blacklist close()[B
    .registers 3

    .line 211
    iget-wide v0, p0, Landroid/os/PerfettoTrace$Session;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrace;->-$$Nest$smnative_stop_session(J)[B

    move-result-object v0

    return-object v0
.end method
