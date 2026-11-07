.class final Lcom/android/internal/util/LatencyTracker$SLatencyTrackerHolder;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/LatencyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SLatencyTrackerHolder"
.end annotation


# static fields
.field private static final blacklist sLatencyTracker:Lcom/android/internal/util/LatencyTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsLatencyTracker()Lcom/android/internal/util/LatencyTracker;
    .registers 1

    sget-object v0, Lcom/android/internal/util/LatencyTracker$SLatencyTrackerHolder;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 431
    new-instance v0, Lcom/android/internal/util/LatencyTracker;

    invoke-direct {v0}, Lcom/android/internal/util/LatencyTracker;-><init>()V

    sput-object v0, Lcom/android/internal/util/LatencyTracker$SLatencyTrackerHolder;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 432
    sget-object v0, Lcom/android/internal/util/LatencyTracker$SLatencyTrackerHolder;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker;->startListeningForLatencyTrackerConfigChanges()V

    .line 433
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
