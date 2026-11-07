.class public final Lcom/android/server/power/PowerManagerServiceDumpProto$ActiveWakeLocksProto;
.super Ljava/lang/Object;
.source "PowerManagerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActiveWakeLocksProto"
.end annotation


# static fields
.field public static final blacklist IS_BUTTON_BRIGHT:J = 0x10800000004L

.field public static final blacklist IS_CPU:J = 0x10800000001L

.field public static final blacklist IS_DOZE:J = 0x10800000007L

.field public static final blacklist IS_DRAW:J = 0x10800000008L

.field public static final blacklist IS_PROXIMITY_SCREEN_OFF:J = 0x10800000005L

.field public static final blacklist IS_SCREEN_BRIGHT:J = 0x10800000002L

.field public static final blacklist IS_SCREEN_DIM:J = 0x10800000003L

.field public static final blacklist IS_STAY_AWAKE:J = 0x10800000006L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/power/PowerManagerServiceDumpProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerServiceDumpProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
