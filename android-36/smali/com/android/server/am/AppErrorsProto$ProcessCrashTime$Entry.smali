.class public final Lcom/android/server/am/AppErrorsProto$ProcessCrashTime$Entry;
.super Ljava/lang/Object;
.source "AppErrorsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorsProto$ProcessCrashTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# static fields
.field public static final blacklist LAST_CRASHED_AT_MS:J = 0x10300000002L

.field public static final blacklist UID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/AppErrorsProto$ProcessCrashTime;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/am/AppErrorsProto$ProcessCrashTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
