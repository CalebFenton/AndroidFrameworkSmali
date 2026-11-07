.class public final Lcom/android/server/job/StateControllerProto$QuotaController$TopAppTimer;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TopAppTimer"
.end annotation


# static fields
.field public static final blacklist ACTIVITY_COUNT:J = 0x10500000004L

.field public static final blacklist IS_ACTIVE:J = 0x10800000002L

.field public static final blacklist PKG:J = 0x10b00000001L

.field public static final blacklist START_TIME_ELAPSED:J = 0x10300000003L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/StateControllerProto$QuotaController;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/job/StateControllerProto$QuotaController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
