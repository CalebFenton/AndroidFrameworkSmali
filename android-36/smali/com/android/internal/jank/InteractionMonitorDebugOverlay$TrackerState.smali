.class Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;
.super Ljava/lang/Object;
.source "InteractionMonitorDebugOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionMonitorDebugOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackerState"
.end annotation


# instance fields
.field final blacklist mCookie:I

.field final blacklist mCuj:I

.field blacklist mState:I


# direct methods
.method private constructor blacklist <init>(II)V
    .registers 4
    .param p1, "cuj"    # I
    .param p2, "cookie"    # I

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mCuj:I

    .line 187
    iput p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mCookie:I

    .line 190
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mState:I

    .line 191
    return-void
.end method

.method synthetic constructor blacklist <init>(IILcom/android/internal/jank/InteractionMonitorDebugOverlay-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;-><init>(II)V

    return-void
.end method
