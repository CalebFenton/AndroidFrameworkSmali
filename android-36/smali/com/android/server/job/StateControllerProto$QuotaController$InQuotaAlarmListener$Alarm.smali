.class public final Lcom/android/server/job/StateControllerProto$QuotaController$InQuotaAlarmListener$Alarm;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$QuotaController$InQuotaAlarmListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Alarm"
.end annotation


# static fields
.field public static final blacklist IN_QUOTA_TIME_ELAPSED:J = 0x10300000002L

.field public static final blacklist PKG:J = 0x10b00000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/StateControllerProto$QuotaController$InQuotaAlarmListener;)V
    .registers 2
    .param p1, "this$2"    # Lcom/android/server/job/StateControllerProto$QuotaController$InQuotaAlarmListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
