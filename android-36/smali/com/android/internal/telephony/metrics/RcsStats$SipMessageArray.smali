.class Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;
.super Ljava/lang/Object;
.source "RcsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/RcsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipMessageArray"
.end annotation


# instance fields
.field private blacklist mCallId:Ljava/lang/String;

.field private blacklist mDirection:I

.field private blacklist mMethod:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/metrics/RcsStats;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallId(Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->mCallId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDirection(Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->mDirection:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMethod(Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->mMethod:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddSipMessageStat(Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;ILjava/lang/String;III)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->addSipMessageStat(ILjava/lang/String;III)V

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

    .line 737
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    iput-object p2, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->mMethod:Ljava/lang/String;

    .line 739
    iput-object p4, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->mCallId:Ljava/lang/String;

    .line 740
    iput p3, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->mDirection:I

    return-void
.end method

.method private declared-synchronized blacklist addSipMessageStat(ILjava/lang/String;III)V
    .registers 8

    monitor-enter p0

    .line 746
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v0

    .line 747
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3c

    if-nez v1, :cond_11

    .line 748
    monitor-exit p0

    return-void

    .line 750
    :cond_11
    :try_start_11
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;-><init>()V

    .line 751
    iput v0, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->carrierId:I

    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->slotId:I

    .line 753
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->convertMessageTypeToValue(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageMethod:I

    .line 754
    iput p3, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageResponse:I

    .line 755
    iput p4, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageDirection:I

    .line 756
    iput p5, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->messageError:I

    const/4 p1, 0x1

    .line 757
    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->count:I

    .line 758
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$fgetmAtomsStorage(Lcom/android/internal/telephony/metrics/RcsStats;)Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSipMessageResponse(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;)V
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_3c

    .line 759
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method
