.class Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;
.super Ljava/lang/Object;
.source "RcsStats.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/RcsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UceStatsWriterCallback"
.end annotation


# instance fields
.field private blacklist mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/metrics/RcsStats;Lcom/android/internal/telephony/metrics/RcsStats;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    const-string v0, "created Callback"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->logd(Ljava/lang/String;)V

    .line 547
    iput-object p2, p0, Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    return-void
.end method


# virtual methods
.method public blacklist onImsRegistrationFeatureTagStats(ILjava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 552
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/metrics/RcsStats;->onImsRegistrationFeatureTagStats(ILjava/util/List;I)V

    return-void
.end method

.method public blacklist onImsRegistrationServiceDescStats(ILjava/util/List;Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 561
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/metrics/RcsStats;->onImsRegistrationServiceDescStats(ILjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public blacklist onPresenceNotifyEvent(IJLjava/util/List;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz p4, :cond_a8

    .line 612
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_a8

    .line 615
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$sfgetsSubscribeTaskIds()Ljava/util/Map;

    move-result-object v1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 616
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$sfgetsSubscribeTaskIds()Ljava/util/Map;

    move-result-object v1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    :cond_2a
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsContactUceCapability;

    .line 622
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityTuples()Ljava/util/List;

    move-result-object v2

    .line 623
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v3, :cond_52

    .line 625
    iget-object v4, v0, Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    const-string v6, ""

    const/4 v7, 0x1

    const/4 v10, 0x1

    move/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/metrics/RcsStats;->onPresenceNotifyEvent(ILjava/lang/String;ZZZZ)V

    goto :goto_2e

    .line 629
    :cond_52
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    move/from16 v17, v3

    move v15, v8

    move/from16 v16, v9

    :cond_5c
    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/RcsContactPresenceTuple;

    .line 630
    invoke-virtual {v4}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceId()Ljava/lang/String;

    move-result-object v5

    .line 631
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$sfgetRCS_SERVICE_ID_SET()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_78

    goto :goto_96

    .line 634
    :cond_78
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$sfgetMMTEL_SERVICE_ID_SET()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 635
    const-string v6, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.callcomposer"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 636
    const-string v5, "1.0"

    invoke-virtual {v4}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    :goto_96
    move v15, v3

    :goto_97
    move/from16 v17, v7

    goto :goto_5c

    :cond_9a
    move/from16 v16, v3

    goto :goto_97

    .line 646
    :cond_9d
    iget-object v11, v0, Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    const-string v13, ""

    const/4 v14, 0x1

    move/from16 v12, p1

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/telephony/metrics/RcsStats;->onPresenceNotifyEvent(ILjava/lang/String;ZZZZ)V

    goto :goto_2e

    :cond_a8
    :goto_a8
    return-void
.end method

.method public blacklist onStoreCompleteImsRegistrationFeatureTagStats(I)V
    .registers 2

    .line 556
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->onStoreCompleteImsRegistrationFeatureTagStats(I)V

    return-void
.end method

.method public blacklist onStoreCompleteImsRegistrationServiceDescStats(I)V
    .registers 2

    .line 652
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->onStoreCompleteImsRegistrationServiceDescStats(I)V

    return-void
.end method

.method public blacklist onSubscribeResponse(IJI)V
    .registers 12

    const/16 v0, 0xc8

    if-lt p4, v0, :cond_26

    const/16 v0, 0x12b

    if-gt p4, v0, :cond_26

    .line 567
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$sfgetsSubscribeTaskIds()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 568
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$sfgetsSubscribeTaskIds()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    :cond_26
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x2

    move v2, p1

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/metrics/RcsStats;->onUceEventStats(IIZII)V

    return-void
.end method

.method public blacklist onSubscribeTerminated(IJLjava/lang/String;)V
    .registers 13

    .line 598
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$sfgetsSubscribeTaskIds()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 599
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$sfgetsSubscribeTaskIds()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 600
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$sfgetsSubscribeTaskIds()Ljava/util/Map;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    if-ne v0, p2, :cond_39

    .line 604
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/metrics/RcsStats;->onPresenceNotifyEvent(ILjava/lang/String;ZZZZ)V

    :cond_39
    return-void
.end method

.method public blacklist onUceEvent(IIZII)V
    .registers 8

    const/4 v0, 0x1

    if-eqz p2, :cond_d

    const/4 v1, 0x2

    if-eq p2, v0, :cond_f

    const/4 v0, 0x3

    if-eq p2, v1, :cond_d

    if-eq p2, v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x4

    :cond_d
    move p2, v0

    goto :goto_10

    :cond_f
    move p2, v1

    .line 594
    :goto_10
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/metrics/RcsStats;->onUceEventStats(IIZII)V

    return-void
.end method
