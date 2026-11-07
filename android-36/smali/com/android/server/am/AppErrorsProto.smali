.class public final Lcom/android/server/am/AppErrorsProto;
.super Ljava/lang/Object;
.source "AppErrorsProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrorsProto$BadProcess;,
        Lcom/android/server/am/AppErrorsProto$ProcessCrashTime;
    }
.end annotation


# static fields
.field public static final blacklist BAD_PROCESSES:J = 0x20b00000003L

.field public static final blacklist NOW_UPTIME_MS:J = 0x10300000001L

.field public static final blacklist PROCESS_CRASH_TIMES:J = 0x20b00000002L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
