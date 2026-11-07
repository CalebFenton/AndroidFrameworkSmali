.class public final Lcom/android/server/job/StateControllerProto$ContentObserverController;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContentObserverController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$ContentObserverController$Observer;,
        Lcom/android/server/job/StateControllerProto$ContentObserverController$TrackedJob;
    }
.end annotation


# static fields
.field public static final blacklist OBSERVERS:J = 0x20b00000002L

.field public static final blacklist TRACKED_JOBS:J = 0x20b00000001L


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

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
