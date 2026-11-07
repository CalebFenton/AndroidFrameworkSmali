.class public Lcom/android/internal/telephony/ClientWakelockAccountant;
.super Ljava/lang/Object;
.source "ClientWakelockAccountant.java"


# static fields
.field public static final blacklist LOG_TAG:Ljava/lang/String; = "ClientWakelockAccountant: "


# instance fields
.field public blacklist mPendingRilWakelocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/RilWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mRequestStats:Landroid/telephony/ClientRequestStats;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/telephony/ClientRequestStats;

    invoke-direct {v0}, Landroid/telephony/ClientRequestStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    .line 36
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p0, p1}, Landroid/telephony/ClientRequestStats;->setCallingPackage(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist completeRequest(Lcom/android/internal/telephony/RilWakelockInfo;J)V
    .registers 6

    .line 77
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/RilWakelockInfo;->setResponseTime(J)V

    .line 78
    iget-object p2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    monitor-enter p2

    .line 79
    :try_start_6
    iget-object p3, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getWakelockTimeAttributedToClient()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/telephony/ClientRequestStats;->addCompletedWakelockTime(J)V

    .line 80
    iget-object p3, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p3}, Landroid/telephony/ClientRequestStats;->incrementCompletedRequestsCount()V

    .line 81
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getRilRequestSent()I

    move-result p3

    .line 82
    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getWakelockTimeAttributedToClient()J

    move-result-wide v0

    long-to-int p1, v0

    .line 81
    invoke-virtual {p0, p3, p1}, Landroid/telephony/ClientRequestStats;->updateRequestHistograms(II)V

    .line 83
    monitor-exit p2

    return-void

    :catchall_24
    move-exception p0

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw p0
.end method

.method private blacklist removePendingWakelock(II)Lcom/android/internal/telephony/RilWakelockInfo;
    .registers 10

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 110
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_b
    :goto_b
    if-ge v4, v2, :cond_25

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/internal/telephony/RilWakelockInfo;

    .line 111
    invoke-virtual {v5}, Lcom/android/internal/telephony/RilWakelockInfo;->getTokenNumber()I

    move-result v6

    if-ne v6, p2, :cond_b

    .line 112
    invoke-virtual {v5}, Lcom/android/internal/telephony/RilWakelockInfo;->getRilRequestSent()I

    move-result v6

    if-ne v6, p1, :cond_b

    move-object v3, v5

    goto :goto_b

    :catchall_23
    move-exception p0

    goto :goto_58

    :cond_25
    if-eqz v3, :cond_2c

    .line 117
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_23

    if-nez v3, :cond_57

    .line 121
    const-string v0, "ClientWakelockAccountant: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking for Request<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "> in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    return-object v3

    .line 119
    :goto_58
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_23

    throw p0
.end method


# virtual methods
.method public blacklist changeConcurrentRequests(IJ)V
    .registers 8

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 70
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/RilWakelockInfo;

    .line 71
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/telephony/RilWakelockInfo;->updateConcurrentRequests(IJ)V

    goto :goto_a

    :catchall_18
    move-exception p0

    goto :goto_1c

    .line 73
    :cond_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_18

    throw p0
.end method

.method public blacklist getPendingRequestCount()I
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public blacklist startAttributingWakelock(IIIJ)V
    .registers 12

    .line 43
    new-instance v0, Lcom/android/internal/telephony/RilWakelockInfo;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/RilWakelockInfo;-><init>(IIIJ)V

    .line 44
    iget-object p1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter p1

    .line 45
    :try_start_c
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    monitor-exit p1

    return-void

    :catchall_13
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_13

    throw p0
.end method

.method public blacklist stopAllPendingRequests(J)V
    .registers 8

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 60
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/internal/telephony/RilWakelockInfo;

    .line 61
    invoke-direct {p0, v4, p1, p2}, Lcom/android/internal/telephony/ClientWakelockAccountant;->completeRequest(Lcom/android/internal/telephony/RilWakelockInfo;J)V

    goto :goto_a

    :catchall_18
    move-exception p0

    goto :goto_21

    .line 63
    :cond_1a
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 64
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_18

    throw p0
.end method

.method public blacklist stopAttributingWakelock(IIJ)V
    .registers 5

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ClientWakelockAccountant;->removePendingWakelock(II)Lcom/android/internal/telephony/RilWakelockInfo;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 53
    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/telephony/ClientWakelockAccountant;->completeRequest(Lcom/android/internal/telephony/RilWakelockInfo;J)V

    :cond_9
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientWakelockAccountant{mRequestStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingRilWakelocks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized blacklist updatePendingRequestWakelockTime(J)J
    .registers 11

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3b

    .line 95
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v2, :cond_22

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/internal/telephony/RilWakelockInfo;

    .line 96
    invoke-virtual {v6, p1, p2}, Lcom/android/internal/telephony/RilWakelockInfo;->updateTime(J)V

    .line 97
    invoke-virtual {v6}, Lcom/android/internal/telephony/RilWakelockInfo;->getWakelockTimeAttributedToClient()J

    move-result-wide v6

    add-long/2addr v3, v6

    goto :goto_d

    :catchall_20
    move-exception p1

    goto :goto_3d

    .line 99
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_20

    .line 100
    :try_start_23
    iget-object p1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    monitor-enter p1
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3b

    .line 101
    :try_start_26
    iget-object p2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ClientWakelockAccountant;->getPendingRequestCount()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/telephony/ClientRequestStats;->setPendingRequestsCount(J)V

    .line 102
    iget-object p2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p2, v3, v4}, Landroid/telephony/ClientRequestStats;->setPendingRequestsWakelockTime(J)V

    .line 103
    monitor-exit p1
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_38

    .line 104
    monitor-exit p0

    return-wide v3

    :catchall_38
    move-exception p2

    .line 103
    :try_start_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw p2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p1

    goto :goto_3f

    .line 99
    :goto_3d
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_20

    :try_start_3e
    throw p1

    :goto_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_3b

    throw p1
.end method
