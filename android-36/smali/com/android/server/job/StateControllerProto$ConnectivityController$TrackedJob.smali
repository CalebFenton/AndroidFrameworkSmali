.class public final Lcom/android/server/job/StateControllerProto$ConnectivityController$TrackedJob;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TrackedJob"
.end annotation


# static fields
.field public static final blacklist INFO:J = 0x10b00000001L

.field public static final blacklist REQUIRED_NETWORK:J = 0x10b00000003L

.field public static final blacklist SOURCE_UID:J = 0x10500000002L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/StateControllerProto$ConnectivityController;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/job/StateControllerProto$ConnectivityController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
