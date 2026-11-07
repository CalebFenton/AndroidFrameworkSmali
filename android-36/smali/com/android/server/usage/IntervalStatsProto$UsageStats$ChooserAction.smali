.class public final Lcom/android/server/usage/IntervalStatsProto$UsageStats$ChooserAction;
.super Ljava/lang/Object;
.source "IntervalStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStatsProto$UsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChooserAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/IntervalStatsProto$UsageStats$ChooserAction$CategoryCount;
    }
.end annotation


# static fields
.field public static final blacklist COUNTS:J = 0x20b00000003L

.field public static final blacklist NAME:J = 0x10900000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/usage/IntervalStatsProto$UsageStats;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/usage/IntervalStatsProto$UsageStats;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
