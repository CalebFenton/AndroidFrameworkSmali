.class Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;
.super Ljava/lang/Object;
.source "RcsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/RcsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipTransportFeatureTags"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;
    }
.end annotation


# instance fields
.field private blacklist mFeatureTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSubId:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/metrics/RcsStats;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/metrics/RcsStats;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 443
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->mFeatureTagMap:Ljava/util/HashMap;

    .line 445
    iput p2, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->mSubId:I

    return-void
.end method

.method private declared-synchronized blacklist addFeatureTagStat(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;J)Z
    .registers 10

    monitor-enter p0

    .line 486
    :try_start_1
    iget-wide v0, p2, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->timeStamp:J

    sub-long/2addr p3, v0

    const-wide/16 v0, 0x3e8

    cmp-long v0, p3, v0

    if-ltz v0, :cond_54

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    iget v1, p2, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->carrierId:I

    .line 488
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_54

    .line 492
    :cond_15
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;-><init>()V

    .line 493
    iget v1, p2, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->state:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v2, :cond_31

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2a

    .line 504
    iput v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeniedReason:I

    .line 505
    iput v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeregisteredReason:I

    goto :goto_37

    :catchall_28
    move-exception p1

    goto :goto_77

    .line 495
    :cond_2a
    iget v1, p2, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->reason:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeniedReason:I

    .line 496
    iput v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeregisteredReason:I

    goto :goto_37

    .line 499
    :cond_31
    iput v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeniedReason:I

    .line 500
    iget v1, p2, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->reason:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeregisteredReason:I

    .line 509
    :goto_37
    iget v1, p2, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->carrierId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->carrierId:I

    .line 510
    iget p2, p2, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->slotId:I

    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->slotId:I

    .line 511
    iput-wide p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    .line 512
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->convertTagNameToValue(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->featureTagName:I

    .line 513
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$fgetmAtomsStorage(Lcom/android/internal/telephony/metrics/RcsStats;)Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSipTransportFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;)V
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_28

    .line 514
    monitor-exit p0

    return v2

    .line 489
    :cond_54
    :goto_54
    :try_start_54
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conclude: discarding transient stats, duration= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", carrierId = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->carrierId:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->logd(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_54 .. :try_end_74} :catchall_28

    .line 516
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_77
    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_28

    throw p1
.end method

.method private blacklist create(Ljava/lang/String;IIIIJ)Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;
    .registers 16

    .line 535
    new-instance v0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;-><init>(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;IIIIJ)V

    .line 537
    iget-object p0, v1, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->mFeatureTagMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private blacklist updateTimeStamp(ILjava/lang/String;J)V
    .registers 5

    .line 520
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-static {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$fgetmLastFeatureTagStatMap(Lcom/android/internal/telephony/metrics/RcsStats;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;

    if-eqz p0, :cond_29

    .line 523
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->getLastTagStates()Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 524
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 525
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;

    if-eqz p0, :cond_29

    .line 527
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->update(J)V

    :cond_29
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist conclude(J)V
    .registers 6

    monitor-enter p0

    .line 473
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 474
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->mFeatureTagMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 475
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 476
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 477
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;

    .line 478
    invoke-direct {p0, v2, v1, p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->addFeatureTagStat(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;J)Z

    .line 479
    iget v1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->mSubId:I

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->updateTimeStamp(ILjava/lang/String;J)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_34

    goto :goto_13

    :catchall_34
    move-exception p1

    goto :goto_38

    .line 481
    :cond_36
    monitor-exit p0

    return-void

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_34

    throw p1
.end method

.method public blacklist getLastTagStates()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;",
            ">;"
        }
    .end annotation

    .line 449
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->mFeatureTagMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public declared-synchronized blacklist updateLastFeatureTagState(Ljava/lang/String;IIJ)V
    .registers 16

    monitor-enter p0

    .line 455
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    iget v1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v4

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->this$0:Lcom/android/internal/telephony/metrics/RcsStats;

    iget v1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result v5

    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->mFeatureTagMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->mFeatureTagMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_3b

    if-eqz v0, :cond_2f

    .line 460
    :try_start_23
    invoke-direct {p0, p1, v0, p4, p5}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->addFeatureTagStat(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;J)Z

    .line 461
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->update(IIJ)V
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_2b

    move-object v2, p0

    goto :goto_46

    :catchall_2b
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_48

    :cond_2f
    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    move-wide v8, p4

    .line 463
    :try_start_34
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->create(Ljava/lang/String;IIIIJ)Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;

    goto :goto_46

    :catchall_38
    move-exception v0

    :goto_39
    move-object p1, v0

    goto :goto_48

    :catchall_3b
    move-exception v0

    move-object v2, p0

    goto :goto_39

    :cond_3e
    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    move-wide v8, p4

    .line 467
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->create(Ljava/lang/String;IIIIJ)Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_38

    .line 469
    :goto_46
    monitor-exit v2

    return-void

    :goto_48
    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_38

    throw p1
.end method
