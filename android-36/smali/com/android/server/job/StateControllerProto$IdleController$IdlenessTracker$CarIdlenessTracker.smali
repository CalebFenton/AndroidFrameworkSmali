.class public final Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker$CarIdlenessTracker;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CarIdlenessTracker"
.end annotation


# static fields
.field public static final blacklist IS_GARAGE_MODE_ON:J = 0x10800000002L

.field public static final blacklist IS_IDLE:J = 0x10800000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker;)V
    .registers 2
    .param p1, "this$2"    # Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
