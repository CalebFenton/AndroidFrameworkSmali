.class public final Lcom/android/server/os/TombstoneProtos$LogMessage;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LogMessage"
.end annotation


# static fields
.field public static final blacklist MESSAGE:J = 0x10900000006L

.field public static final blacklist PID:J = 0x10d00000002L

.field public static final blacklist PRIORITY:J = 0x10d00000004L

.field public static final blacklist TAG:J = 0x10900000005L

.field public static final blacklist TID:J = 0x10d00000003L

.field public static final blacklist TIMESTAMP:J = 0x10900000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/os/TombstoneProtos;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/os/TombstoneProtos;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
