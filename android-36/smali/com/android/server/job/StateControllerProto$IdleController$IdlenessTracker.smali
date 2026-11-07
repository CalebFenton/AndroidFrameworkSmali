.class public final Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$IdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IdlenessTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker$DeviceIdlenessTracker;,
        Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker$CarIdlenessTracker;
    }
.end annotation


# static fields
.field public static final blacklist CAR_IDLENESS_TRACKER:J = 0x10b00000002L

.field public static final blacklist DEVICE_IDLENESS_TRACKER:J = 0x10b00000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/StateControllerProto$IdleController;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/job/StateControllerProto$IdleController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
