.class final Lcom/android/internal/telephony/satellite/SatelliteController$RequestSatelliteEnabledArgument;
.super Ljava/lang/Object;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestSatelliteEnabledArgument"
.end annotation


# instance fields
.field public blacklist callback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist enableDemoMode:Z

.field public blacklist enableSatellite:Z

.field public blacklist isEmergency:Z

.field public blacklist requestId:J


# direct methods
.method public static synthetic blacklist $r8$lambda$pIt52EEe965Yw-ytPo_u_PahKbk(J)J
    .registers 4

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    const-wide v0, 0x7fffffffffffffffL

    .line 1340
    rem-long/2addr p0, v0

    return-wide p0
.end method

.method constructor blacklist <init>(ZZZLjava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1335
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$RequestSatelliteEnabledArgument;->enableSatellite:Z

    .line 1336
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$RequestSatelliteEnabledArgument;->enableDemoMode:Z

    .line 1337
    iput-boolean p3, p0, Lcom/android/internal/telephony/satellite/SatelliteController$RequestSatelliteEnabledArgument;->isEmergency:Z

    .line 1338
    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteController$RequestSatelliteEnabledArgument;->callback:Ljava/util/function/Consumer;

    .line 1339
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$sfgetsNextSatelliteEnableRequestId()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/satellite/SatelliteController$RequestSatelliteEnabledArgument$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/internal/telephony/satellite/SatelliteController$RequestSatelliteEnabledArgument$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndUpdate(Ljava/util/function/LongUnaryOperator;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$RequestSatelliteEnabledArgument;->requestId:J

    return-void
.end method
