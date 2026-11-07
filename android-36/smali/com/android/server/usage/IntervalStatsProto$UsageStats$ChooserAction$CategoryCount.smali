.class public final Lcom/android/server/usage/IntervalStatsProto$UsageStats$ChooserAction$CategoryCount;
.super Ljava/lang/Object;
.source "IntervalStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStatsProto$UsageStats$ChooserAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CategoryCount"
.end annotation


# static fields
.field public static final blacklist COUNT:J = 0x10500000003L

.field public static final blacklist NAME:J = 0x10900000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/usage/IntervalStatsProto$UsageStats$ChooserAction;)V
    .registers 2
    .param p1, "this$2"    # Lcom/android/server/usage/IntervalStatsProto$UsageStats$ChooserAction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
