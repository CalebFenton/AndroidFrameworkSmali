.class public final Lcom/android/server/am/BroadcastQueueProto$BroadcastSummary;
.super Ljava/lang/Object;
.source "BroadcastQueueProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueueProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BroadcastSummary"
.end annotation


# static fields
.field public static final blacklist DISPATCH_CLOCK_TIME_MS:J = 0x10300000003L

.field public static final blacklist ENQUEUE_CLOCK_TIME_MS:J = 0x10300000002L

.field public static final blacklist FINISH_CLOCK_TIME_MS:J = 0x10300000004L

.field public static final blacklist INTENT:J = 0x10b00000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/BroadcastQueueProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/BroadcastQueueProto;
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
