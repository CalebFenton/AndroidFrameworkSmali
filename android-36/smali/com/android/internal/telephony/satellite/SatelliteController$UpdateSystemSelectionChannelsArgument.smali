.class final Lcom/android/internal/telephony/satellite/SatelliteController$UpdateSystemSelectionChannelsArgument;
.super Ljava/lang/Object;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateSystemSelectionChannelsArgument"
.end annotation


# instance fields
.field public blacklist requestId:J

.field public blacklist result:Landroid/os/ResultReceiver;

.field public blacklist systemSelectionSpecifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SystemSelectionSpecifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$j8PbIkdUpmHEvV79tveIoGt6LuI(J)J
    .registers 4

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    const-wide v0, 0x7fffffffffffffffL

    .line 1385
    rem-long/2addr p0, v0

    return-wide p0
.end method

.method constructor blacklist <init>(Ljava/util/List;Landroid/os/ResultReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SystemSelectionSpecifier;",
            ">;",
            "Landroid/os/ResultReceiver;",
            ")V"
        }
    .end annotation

    .line 1381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1382
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$UpdateSystemSelectionChannelsArgument;->systemSelectionSpecifiers:Ljava/util/List;

    .line 1383
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$UpdateSystemSelectionChannelsArgument;->result:Landroid/os/ResultReceiver;

    .line 1384
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$sfgetsNextSystemSelectionChannelsUpdateRequestId()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/satellite/SatelliteController$UpdateSystemSelectionChannelsArgument$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/internal/telephony/satellite/SatelliteController$UpdateSystemSelectionChannelsArgument$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndUpdate(Ljava/util/function/LongUnaryOperator;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$UpdateSystemSelectionChannelsArgument;->requestId:J

    return-void
.end method
