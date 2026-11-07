.class public final Lcom/android/server/usage/IntervalStatsProto$CountAndTime;
.super Ljava/lang/Object;
.source "IntervalStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CountAndTime"
.end annotation


# static fields
.field public static final blacklist COUNT:J = 0x10500000001L

.field public static final blacklist TIME_MS:J = 0x10300000002L


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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
