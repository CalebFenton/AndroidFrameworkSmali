.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemWatchProcess"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Dump;,
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Process;
    }
.end annotation


# static fields
.field public static final blacklist DUMP:J = 0x10b00000002L

.field public static final blacklist PROCS:J = 0x20b00000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
