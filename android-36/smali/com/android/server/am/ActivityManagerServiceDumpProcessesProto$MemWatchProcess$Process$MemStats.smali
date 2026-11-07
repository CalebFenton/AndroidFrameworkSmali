.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Process$MemStats;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Process;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemStats"
.end annotation


# static fields
.field public static final blacklist REPORT_TO:J = 0x10900000003L

.field public static final blacklist SIZE:J = 0x10900000002L

.field public static final blacklist UID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Process;)V
    .registers 2
    .param p1, "this$2"    # Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Process;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
