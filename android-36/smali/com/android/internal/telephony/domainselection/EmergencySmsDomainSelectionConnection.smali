.class public Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;
.super Lcom/android/internal/telephony/domainselection/SmsDomainSelectionConnection;
.source "EmergencySmsDomainSelectionConnection.java"


# instance fields
.field private blacklist mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPreferredTransportType:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V
    .registers 4

    .line 47
    invoke-static {}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getInstance()Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/domainselection/DomainSelectionController;Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/domainselection/DomainSelectionController;Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)V
    .registers 5

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/domainselection/SmsDomainSelectionConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/domainselection/DomainSelectionController;Z)V

    .line 40
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->mLock:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->mPreferredTransportType:I

    .line 54
    const-string p1, "DomainSelectionConnection-EmergencySMS"

    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mTag:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    return-void
.end method

.method private blacklist changePreferredTransport(I)V
    .registers 5

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change preferred transport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->logi(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->initHandler()V

    .line 161
    iput p1, p0, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->mPreferredTransportType:I

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->registerForQualifiedNetworksChanged(Landroid/os/Handler;I)V

    .line 164
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyEmergencyDomainSelected(I)V

    return-void
.end method


# virtual methods
.method public blacklist finishSelection()V
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_9
    iget v2, p0, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->mPreferredTransportType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    .line 136
    iput v3, p0, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->mPreferredTransportType:I

    .line 137
    iget-object v2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->unregisterForQualifiedNetworksChanged(Landroid/os/Handler;)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1d

    .line 139
    :cond_18
    :goto_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_16

    .line 141
    invoke-super {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->finishSelection()V

    return-void

    .line 139
    :goto_1d
    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_16

    throw p0
.end method

.method public blacklist onDomainSelected(IZ)V
    .registers 6

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget v1, p0, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->mPreferredTransportType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    .line 109
    const-string p1, "Domain selection completion is in progress"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->logi(Ljava/lang/String;)V

    .line 110
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_2f

    :cond_11
    if-eqz p2, :cond_2a

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2a

    .line 116
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v1

    const/16 v2, 0x200

    .line 117
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransport(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    .line 119
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->changePreferredTransport(I)V

    .line 122
    monitor-exit v0

    return-void

    .line 126
    :cond_2a
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onDomainSelected(IZ)V

    .line 127
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_f

    throw p0
.end method

.method protected blacklist onQualifiedNetworksChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x200

    .line 146
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getPreferredTransport(ILjava/util/List;)I

    move-result p1

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_9
    iget v1, p0, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->mPreferredTransportType:I

    if-ne p1, v1, :cond_23

    const/4 p1, -0x1

    .line 150
    iput p1, p0, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->mPreferredTransportType:I

    const/4 p1, 0x2

    const/4 v1, 0x1

    .line 151
    invoke-super {p0, p1, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onDomainSelected(IZ)V

    .line 152
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object p1

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->unregisterForQualifiedNetworksChanged(Landroid/os/Handler;)V

    goto :goto_23

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 155
    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_21

    throw p0
.end method

.method public blacklist onWlanSelected(Z)V
    .registers 6

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_3
    iget v1, p0, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->mPreferredTransportType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    .line 68
    const-string p1, "Domain selection completion is in progress"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->logi(Ljava/lang/String;)V

    .line 69
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_31

    .line 72
    :cond_11
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->onEmergencyTransportChanged(II)V

    if-eqz p1, :cond_2c

    .line 78
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v1

    const/16 v3, 0x200

    .line 79
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransport(I)I

    move-result v1

    if-eq v1, v2, :cond_2c

    .line 81
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->changePreferredTransport(I)V

    .line 84
    monitor-exit v0

    return-void

    .line 88
    :cond_2c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onWlanSelected(Z)V

    .line 89
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_f

    throw p0
.end method

.method public blacklist onWwanSelected()V
    .registers 3

    .line 94
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/EmergencySmsDomainSelectionConnection;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->onEmergencyTransportChanged(II)V

    return-void
.end method
