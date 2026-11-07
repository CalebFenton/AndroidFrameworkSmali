.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$UidObserverRegistrationProto;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UidObserverRegistrationProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$UidObserverRegistrationProto$ProcState;
    }
.end annotation


# static fields
.field public static final blacklist CUT_POINT:J = 0x10500000004L

.field public static final blacklist FLAGS:J = 0x20e00000003L

.field public static final blacklist LAST_PROC_STATES:J = 0x20b00000005L

.field public static final blacklist PACKAGE:J = 0x10900000002L

.field public static final blacklist UID:J = 0x10500000001L


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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
