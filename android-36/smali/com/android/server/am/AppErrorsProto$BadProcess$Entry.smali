.class public final Lcom/android/server/am/AppErrorsProto$BadProcess$Entry;
.super Ljava/lang/Object;
.source "AppErrorsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorsProto$BadProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# static fields
.field public static final blacklist CRASHED_AT_MS:J = 0x10300000002L

.field public static final blacklist LONG_MSG:J = 0x10900000004L

.field public static final blacklist SHORT_MSG:J = 0x10900000003L

.field public static final blacklist STACK:J = 0x10900000005L

.field public static final blacklist UID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/AppErrorsProto$BadProcess;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/am/AppErrorsProto$BadProcess;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
