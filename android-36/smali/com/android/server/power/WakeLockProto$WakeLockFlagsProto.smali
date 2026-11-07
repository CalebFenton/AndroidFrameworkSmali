.class public final Lcom/android/server/power/WakeLockProto$WakeLockFlagsProto;
.super Ljava/lang/Object;
.source "WakeLockProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WakeLockFlagsProto"
.end annotation


# static fields
.field public static final blacklist IS_ACQUIRE_CAUSES_WAKEUP:J = 0x10800000001L

.field public static final blacklist IS_ON_AFTER_RELEASE:J = 0x10800000002L

.field public static final blacklist SYSTEM_WAKELOCK:J = 0x10800000003L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/power/WakeLockProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/WakeLockProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
