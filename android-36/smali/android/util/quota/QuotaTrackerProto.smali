.class public final Landroid/util/quota/QuotaTrackerProto;
.super Ljava/lang/Object;
.source "QuotaTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/quota/QuotaTrackerProto$InQuotaAlarmListener;
    }
.end annotation


# static fields
.field public static final blacklist ELAPSED_REALTIME:J = 0x10300000003L

.field public static final blacklist IN_QUOTA_ALARM_LISTENER:J = 0x10b00000004L

.field public static final blacklist IS_ENABLED:J = 0x10800000001L

.field public static final blacklist IS_GLOBAL_QUOTA_FREE:J = 0x10800000002L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
