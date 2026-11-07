.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Process;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Process"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Process$MemStats;
    }
.end annotation


# static fields
.field public static final blacklist MEM_STATS:J = 0x20b00000002L

.field public static final blacklist NAME:J = 0x10900000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
