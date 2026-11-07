.class Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;
.super Ljava/lang/Object;
.source "RcsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/RcsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LastSipDelegateStat"
.end annotation


# instance fields
.field public blacklist mLastStat:Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

.field public blacklist mSubId:I

.field private blacklist mSupportedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/metrics/RcsStats;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/metrics/RcsStats;ILjava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput p2, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->mSubId:I

    .line 351
    iput-object p3, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->mSupportedTags:Ljava/util/Set;

    return-void
.end method

.method private blacklist getDefaultSipDelegateStat(I)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;
    .registers 4

    .line 393
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;-><init>()V

    .line 394
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$sfgetRANDOM()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->dimension:I

    .line 395
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->carrierId:I

    .line 396
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p0

    iput p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->slotId:I

    return-object v0
.end method


# virtual methods
.method public blacklist compare(ILjava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 381
    iget v0, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->mSubId:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_29

    if-eqz p2, :cond_29

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_29

    .line 384
    :cond_e
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->mSupportedTags:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    return v1

    :cond_27
    const/4 p0, 0x1

    return p0

    :cond_29
    :goto_29
    return v1
.end method

.method public blacklist conclude(J)V
    .registers 8

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->mLastStat:Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0x3e8

    cmp-long v3, v1, v3

    if-gez v3, :cond_23

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "concludeSipDelegateStat: discarding transient stats, duration= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->logd(Ljava/lang/String;)V

    goto :goto_34

    .line 374
    :cond_23
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$fgetmAtomsStorage(Lcom/android/internal/telephony/metrics/RcsStats;)Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->mLastStat:Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    invoke-static {v1}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$smcopyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSipDelegateStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;)V

    .line 377
    :goto_34
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->mLastStat:Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iput-wide p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    return-void
.end method

.method public blacklist createSipDelegateStat(I)V
    .registers 4

    .line 355
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->getDefaultSipDelegateStat(I)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->mLastStat:Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    .line 357
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->mLastStat:Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->destroyReason:I

    return-void
.end method

.method public blacklist isDestroyed()Z
    .registers 2

    .line 365
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->mLastStat:Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->destroyReason:I

    const/4 v0, -0x1

    if-le p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setSipDelegateDestroyReason(I)V
    .registers 2

    .line 361
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->mLastStat:Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iput p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->destroyReason:I

    return-void
.end method
