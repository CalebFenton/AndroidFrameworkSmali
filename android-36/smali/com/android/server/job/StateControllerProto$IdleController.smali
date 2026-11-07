.class public final Lcom/android/server/job/StateControllerProto$IdleController;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IdleController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$IdleController$IdlenessTracker;,
        Lcom/android/server/job/StateControllerProto$IdleController$TrackedJob;
    }
.end annotation


# static fields
.field public static final blacklist IDLENESS_TRACKER:J = 0x10b00000003L

.field public static final blacklist IS_IDLE:J = 0x10800000001L

.field public static final blacklist TRACKED_JOBS:J = 0x20b00000002L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/StateControllerProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/StateControllerProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
