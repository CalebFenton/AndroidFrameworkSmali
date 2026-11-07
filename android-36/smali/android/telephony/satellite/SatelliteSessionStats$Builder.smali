.class public final Landroid/telephony/satellite/SatelliteSessionStats$Builder;
.super Ljava/lang/Object;
.source "SatelliteSessionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/SatelliteSessionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCountOfSuccessfulUserMessages:I

.field private blacklist mCountOfTimedOutUserMessagesWaitingForAck:I

.field private blacklist mCountOfTimedOutUserMessagesWaitingForConnection:I

.field private blacklist mCountOfUnsuccessfulUserMessages:I

.field private blacklist mCountOfUserMessagesInQueueToBeSent:I

.field private blacklist mLastMessageLatency:J

.field private blacklist mLatencyOfSuccessfulUserMessages:J

.field private blacklist mMaxLatency:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCountOfSuccessfulUserMessages(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfSuccessfulUserMessages:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfTimedOutUserMessagesWaitingForAck(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfTimedOutUserMessagesWaitingForAck:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfTimedOutUserMessagesWaitingForConnection(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfUnsuccessfulUserMessages(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfUnsuccessfulUserMessages:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfUserMessagesInQueueToBeSent(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfUserMessagesInQueueToBeSent:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLatencyOfSuccessfulUserMessages(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mLatencyOfSuccessfulUserMessages:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/satellite/SatelliteSessionStats;
    .registers 2

    .line 453
    new-instance v0, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteSessionStats;-><init>(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)V

    return-object v0
.end method

.method public blacklist setCountOfSuccessfulUserMessages(I)Landroid/telephony/satellite/SatelliteSessionStats$Builder;
    .registers 2
    .param p1, "count"    # I

    .line 388
    iput p1, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfSuccessfulUserMessages:I

    .line 389
    return-object p0
.end method

.method public blacklist setCountOfTimedOutUserMessagesWaitingForAck(I)Landroid/telephony/satellite/SatelliteSessionStats$Builder;
    .registers 2
    .param p1, "count"    # I

    .line 418
    iput p1, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfTimedOutUserMessagesWaitingForAck:I

    .line 419
    return-object p0
.end method

.method public blacklist setCountOfTimedOutUserMessagesWaitingForConnection(I)Landroid/telephony/satellite/SatelliteSessionStats$Builder;
    .registers 2
    .param p1, "count"    # I

    .line 408
    iput p1, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    .line 409
    return-object p0
.end method

.method public blacklist setCountOfUnsuccessfulUserMessages(I)Landroid/telephony/satellite/SatelliteSessionStats$Builder;
    .registers 2
    .param p1, "count"    # I

    .line 398
    iput p1, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfUnsuccessfulUserMessages:I

    .line 399
    return-object p0
.end method

.method public blacklist setCountOfUserMessagesInQueueToBeSent(I)Landroid/telephony/satellite/SatelliteSessionStats$Builder;
    .registers 2
    .param p1, "count"    # I

    .line 428
    iput p1, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfUserMessagesInQueueToBeSent:I

    .line 429
    return-object p0
.end method

.method public blacklist setLastLatency(J)Landroid/telephony/satellite/SatelliteSessionStats$Builder;
    .registers 3
    .param p1, "lastLatency"    # J

    .line 446
    iput-wide p1, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mLastMessageLatency:J

    .line 447
    return-object p0
.end method

.method public blacklist setLatencyOfSuccessfulUserMessages(J)Landroid/telephony/satellite/SatelliteSessionStats$Builder;
    .registers 3
    .param p1, "latency"    # J

    .line 434
    iput-wide p1, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mLatencyOfSuccessfulUserMessages:J

    .line 435
    return-object p0
.end method

.method public blacklist setMaxLatency(J)Landroid/telephony/satellite/SatelliteSessionStats$Builder;
    .registers 3
    .param p1, "maxLatency"    # J

    .line 440
    iput-wide p1, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mMaxLatency:J

    .line 441
    return-object p0
.end method
