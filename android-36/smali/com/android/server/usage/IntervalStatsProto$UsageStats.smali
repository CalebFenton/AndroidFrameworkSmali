.class public final Lcom/android/server/usage/IntervalStatsProto$UsageStats;
.super Ljava/lang/Object;
.source "IntervalStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UsageStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/IntervalStatsProto$UsageStats$ChooserAction;
    }
.end annotation


# static fields
.field public static final blacklist APP_LAUNCH_COUNT:J = 0x10500000006L

.field public static final blacklist CHOOSER_ACTIONS:J = 0x20b00000007L

.field public static final blacklist LAST_EVENT:J = 0x10500000005L

.field public static final blacklist LAST_TIME_ACTIVE_MS:J = 0x10300000003L

.field public static final blacklist LAST_TIME_COMPONENT_USED_MS:J = 0x1030000000cL

.field public static final blacklist LAST_TIME_SERVICE_USED_MS:J = 0x10300000008L

.field public static final blacklist LAST_TIME_VISIBLE_MS:J = 0x1030000000aL

.field public static final blacklist PACKAGE:J = 0x10900000001L

.field public static final blacklist PACKAGE_INDEX:J = 0x10500000002L

.field public static final blacklist TOTAL_TIME_ACTIVE_MS:J = 0x10300000004L

.field public static final blacklist TOTAL_TIME_SERVICE_USED_MS:J = 0x10300000009L

.field public static final blacklist TOTAL_TIME_VISIBLE_MS:J = 0x1030000000bL


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/usage/IntervalStatsProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usage/IntervalStatsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
