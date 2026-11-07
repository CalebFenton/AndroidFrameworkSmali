.class public final Lcom/android/server/job/StateControllerProto$StorageController;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StorageController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$StorageController$TrackedJob;
    }
.end annotation


# static fields
.field public static final blacklist IS_STORAGE_NOT_LOW:J = 0x10800000001L

.field public static final blacklist LAST_BROADCAST_SEQUENCE_NUMBER:J = 0x10500000002L

.field public static final blacklist TRACKED_JOBS:J = 0x20b00000003L


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

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
