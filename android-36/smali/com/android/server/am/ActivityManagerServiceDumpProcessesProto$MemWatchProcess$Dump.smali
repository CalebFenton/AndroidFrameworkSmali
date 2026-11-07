.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess$Dump;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$MemWatchProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Dump"
.end annotation


# static fields
.field public static final blacklist IS_USER_INITIATED:J = 0x10800000005L

.field public static final blacklist PID:J = 0x10500000003L

.field public static final blacklist PROC_NAME:J = 0x10900000001L

.field public static final blacklist UID:J = 0x10500000004L

.field public static final blacklist URI:J = 0x10900000006L


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

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
