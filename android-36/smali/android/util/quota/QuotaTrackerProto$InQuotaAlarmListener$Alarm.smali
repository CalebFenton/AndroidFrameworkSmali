.class public final Landroid/util/quota/QuotaTrackerProto$InQuotaAlarmListener$Alarm;
.super Ljava/lang/Object;
.source "QuotaTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/quota/QuotaTrackerProto$InQuotaAlarmListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Alarm"
.end annotation


# static fields
.field public static final blacklist IN_QUOTA_TIME_ELAPSED:J = 0x10300000002L

.field public static final blacklist UPTC:J = 0x10b00000001L


# direct methods
.method public constructor blacklist <init>(Landroid/util/quota/QuotaTrackerProto$InQuotaAlarmListener;)V
    .registers 2
    .param p1, "this$1"    # Landroid/util/quota/QuotaTrackerProto$InQuotaAlarmListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
