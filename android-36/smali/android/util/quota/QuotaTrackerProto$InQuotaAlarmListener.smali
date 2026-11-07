.class public final Landroid/util/quota/QuotaTrackerProto$InQuotaAlarmListener;
.super Ljava/lang/Object;
.source "QuotaTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/quota/QuotaTrackerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InQuotaAlarmListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/quota/QuotaTrackerProto$InQuotaAlarmListener$Alarm;
    }
.end annotation


# static fields
.field public static final blacklist ALARMS:J = 0x20b00000002L

.field public static final blacklist TRIGGER_TIME_ELAPSED:J = 0x10300000001L


# direct methods
.method public constructor blacklist <init>(Landroid/util/quota/QuotaTrackerProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/util/quota/QuotaTrackerProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
