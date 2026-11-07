.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$UidObserverRegistrationProto$ProcState;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$UidObserverRegistrationProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProcState"
.end annotation


# static fields
.field public static final blacklist STATE:J = 0x10500000002L

.field public static final blacklist UID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$UidObserverRegistrationProto;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$UidObserverRegistrationProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
