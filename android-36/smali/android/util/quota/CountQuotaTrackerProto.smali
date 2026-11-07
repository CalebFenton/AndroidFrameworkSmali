.class public final Landroid/util/quota/CountQuotaTrackerProto;
.super Ljava/lang/Object;
.source "CountQuotaTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/quota/CountQuotaTrackerProto$UptcStats;,
        Landroid/util/quota/CountQuotaTrackerProto$ExecutionStats;,
        Landroid/util/quota/CountQuotaTrackerProto$Event;,
        Landroid/util/quota/CountQuotaTrackerProto$CountLimit;
    }
.end annotation


# static fields
.field public static final blacklist BASE_QUOTA_DATA:J = 0x10b00000001L

.field public static final blacklist COUNT_LIMIT:J = 0x20b00000002L

.field public static final blacklist UPTC_STATS:J = 0x20b00000003L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
