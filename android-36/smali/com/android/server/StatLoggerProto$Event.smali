.class public final Lcom/android/server/StatLoggerProto$Event;
.super Ljava/lang/Object;
.source "StatLoggerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StatLoggerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Event"
.end annotation


# static fields
.field public static final blacklist COUNT:J = 0x10500000003L

.field public static final blacklist EVENT_ID:J = 0x10500000001L

.field public static final blacklist LABEL:J = 0x10900000002L

.field public static final blacklist MAX_CALLS_PER_SECOND:J = 0x10500000005L

.field public static final blacklist MAX_DURATION_PER_SECOND_MICROS:J = 0x10300000006L

.field public static final blacklist MAX_DURATION_STATS_MICROS:J = 0x10300000007L

.field public static final blacklist TOTAL_DURATION_MICROS:J = 0x10300000004L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/StatLoggerProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/StatLoggerProto;
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
