.class public final Lcom/android/server/power/WakeLockProto;
.super Ljava/lang/Object;
.source "WakeLockProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/WakeLockProto$WakeLockFlagsProto;
    }
.end annotation


# static fields
.field public static final blacklist ACQ_MS:J = 0x10300000005L

.field public static final blacklist FLAGS:J = 0x10b00000003L

.field public static final blacklist IS_DISABLED:J = 0x10800000004L

.field public static final blacklist IS_NOTIFIED_LONG:J = 0x10800000006L

.field public static final blacklist LOCK_LEVEL:J = 0x10e00000001L

.field public static final blacklist PID:J = 0x10500000008L

.field public static final blacklist TAG:J = 0x10900000002L

.field public static final blacklist UID:J = 0x10500000007L

.field public static final blacklist WORK_SOURCE:J = 0x10b00000009L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
