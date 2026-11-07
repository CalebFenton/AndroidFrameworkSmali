.class Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;
.super Ljava/lang/Object;
.source "RcsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/RcsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipTransportSessionArray"
.end annotation


# instance fields
.field private blacklist mCallId:Ljava/lang/String;

.field private blacklist mDirection:I

.field private blacklist mMethod:Ljava/lang/String;

.field private blacklist mSipResponse:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/metrics/RcsStats;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallId(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->mCallId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDirection(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->mDirection:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMethod(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->mMethod:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSipResponse(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->mSipResponse:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddSipTransportSessionStat(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;ILjava/lang/String;IIZ)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->addSipTransportSessionStat(ILjava/lang/String;IIZ)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/metrics/RcsStats;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 768
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    iput-object p2, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->mMethod:Ljava/lang/String;

    .line 770
    iput-object p4, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->mCallId:Ljava/lang/String;

    .line 771
    iput p3, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->mDirection:I

    const/4 p1, 0x0

    .line 772
    iput p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->mSipResponse:I

    return-void
.end method

.method private declared-synchronized blacklist addSipTransportSessionStat(ILjava/lang/String;IIZ)V
    .registers 8

    monitor-enter p0

    .line 778
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v0

    .line 779
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3e

    if-nez v1, :cond_11

    .line 780
    monitor-exit p0

    return-void

    .line 782
    :cond_11
    :try_start_11
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;-><init>()V

    .line 783
    iput v0, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->carrierId:I

    .line 784
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->slotId:I

    .line 785
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->convertMessageTypeToValue(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionMethod:I

    .line 786
    iput p3, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipMessageDirection:I

    .line 787
    iput p4, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipResponse:I

    const/4 p1, 0x1

    .line 788
    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionCount:I

    .line 789
    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->endedGracefullyCount:I

    .line 790
    iput-boolean p5, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->isEndedGracefully:Z

    .line 791
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$fgetmAtomsStorage(Lcom/android/internal/telephony/metrics/RcsStats;)Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addCompleteSipTransportSession(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;)V
    :try_end_3c
    .catchall {:try_start_11 .. :try_end_3c} :catchall_3e

    .line 792
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1
.end method
