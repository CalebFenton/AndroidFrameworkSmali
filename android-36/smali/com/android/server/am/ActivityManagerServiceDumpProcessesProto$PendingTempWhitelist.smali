.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$PendingTempWhitelist;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PendingTempWhitelist"
.end annotation


# static fields
.field public static final blacklist CALLING_UID:J = 0x10500000006L

.field public static final blacklist DURATION_MS:J = 0x10300000002L

.field public static final blacklist REASON_CODE:J = 0x10500000005L

.field public static final blacklist TAG:J = 0x10900000003L

.field public static final blacklist TARGET_UID:J = 0x10500000001L

.field public static final blacklist TYPE:J = 0x10500000004L


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

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
