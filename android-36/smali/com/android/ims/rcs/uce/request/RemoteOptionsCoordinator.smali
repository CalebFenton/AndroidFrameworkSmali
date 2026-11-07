.class public Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;
.super Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
.source "RemoteOptionsCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator$RequestResultCreator;,
        Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator$Builder;
    }
.end annotation


# static fields
.field private static final blacklist sRemoteResponseCreator:Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator$RequestResultCreator;


# instance fields
.field private blacklist mOptionsReqCallback:Landroid/telephony/ims/aidl/IOptionsRequestCallback;

.field private final blacklist mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->sRemoteResponseCreator:Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator$RequestResultCreator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)V
    .registers 6
    .param p1, "subId"    # I
    .param p3, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .param p4, "instance"    # Lcom/android/ims/rcs/uce/UceStatsWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/android/ims/rcs/uce/request/UceRequest;",
            ">;",
            "Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;",
            "Lcom/android/ims/rcs/uce/UceStatsWriter;",
            ")V"
        }
    .end annotation

    .line 92
    .local p2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V

    .line 93
    iput-object p4, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 94
    const-string v0, "RemoteOptionsCoordinator: created"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->logd(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)V

    return-void
.end method

.method private blacklist checkAndFinishRequestCoordinator()V
    .registers 5

    .line 183
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mActivatedRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 186
    monitor-exit v0

    return-void

    .line 189
    :cond_d
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v2, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mCoordinatorId:J

    invoke-interface {v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyRequestCoordinatorFinished(J)V

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndFinishRequestCoordinator: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mCoordinatorId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->logd(Ljava/lang/String;)V

    .line 191
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private blacklist handleRemoteRequestDone(Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;)V
    .registers 8
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;

    .line 133
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->getRemoteOptResponse()Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;

    move-result-object v0

    .line 134
    .local v0, "response":Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->getRcsContactCapability()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v1

    .line 135
    .local v1, "capability":Landroid/telephony/ims/RcsContactUceCapability;
    if-eqz v1, :cond_12

    .line 136
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->isNumberBlocked()Z

    move-result v2

    .line 137
    .local v2, "isNumberBlocked":Z
    invoke-direct {p0, v1, v2}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->triggerOptionsReqCallback(Landroid/telephony/ims/RcsContactUceCapability;Z)V

    .line 138
    .end local v2    # "isNumberBlocked":Z
    goto :goto_35

    .line 139
    :cond_12
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->getErrorSipCode()Ljava/util/Optional;

    move-result-object v2

    const/16 v3, 0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 140
    .local v2, "errorCode":I
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->getErrorReason()Ljava/util/Optional;

    move-result-object v3

    const-string v4, "Service Unavailable"

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 141
    .local v3, "reason":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->triggerOptionsReqWithErrorCallback(ILjava/lang/String;)V

    .line 145
    .end local v2    # "errorCode":I
    .end local v3    # "reason":Ljava/lang/String;
    :goto_35
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->onFinish()V

    .line 148
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 149
    .local v2, "taskId":Ljava/lang/Long;
    sget-object v3, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->sRemoteResponseCreator:Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator$RequestResultCreator;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator$RequestResultCreator;->createRequestResult(JLcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v3

    .line 150
    .local v3, "requestResult":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->moveRequestToFinishedCollection(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)V

    .line 151
    return-void
.end method

.method static synthetic blacklist lambda$static$0(JLcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 7
    .param p0, "taskId"    # J
    .param p2, "response"    # Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;

    .line 76
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->getRcsContactCapability()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    .line 77
    .local v0, "capability":Landroid/telephony/ims/RcsContactUceCapability;
    if-eqz v0, :cond_b

    .line 78
    invoke-static {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createSuccessResult(J)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v1

    return-object v1

    .line 80
    :cond_b
    invoke-virtual {p2}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->getErrorSipCode()Ljava/util/Optional;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 81
    .local v1, "errorCode":I
    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object v2

    return-object v2
.end method

.method private blacklist triggerOptionsReqCallback(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    .registers 11
    .param p1, "deviceCaps"    # Landroid/telephony/ims/RcsContactUceCapability;
    .param p2, "isRemoteNumberBlocked"    # Z

    .line 156
    const-string v1, "triggerOptionsReqCallback: done"

    :try_start_2
    const-string v0, "triggerOptionsReqCallback: start"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->logd(Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v3, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mSubId:I

    const/4 v6, 0x0

    const/16 v7, 0xc8

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setUceEvent(IIZII)V

    .line 160
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mOptionsReqCallback:Landroid/telephony/ims/aidl/IOptionsRequestCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IOptionsRequestCallback;->respondToCapabilityRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_1e
    .catchall {:try_start_2 .. :try_end_18} :catchall_1c

    .line 164
    :goto_18
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->logd(Ljava/lang/String;)V

    .line 165
    goto :goto_36

    .line 164
    :catchall_1c
    move-exception v0

    goto :goto_37

    .line 161
    :catch_1e
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerOptionsReqCallback exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->logw(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_1c

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_18

    .line 166
    :goto_36
    return-void

    .line 164
    :goto_37
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->logd(Ljava/lang/String;)V

    .line 165
    throw v0
.end method

.method private blacklist triggerOptionsReqWithErrorCallback(ILjava/lang/String;)V
    .registers 11
    .param p1, "errorCode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 170
    const-string v1, "triggerOptionsReqWithErrorCallback: done"

    :try_start_2
    const-string v0, "triggerOptionsReqWithErrorCallback: start"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->logd(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v3, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mSubId:I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_22
    .catchall {:try_start_2 .. :try_end_b} :catchall_1e

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x2

    move v7, p1

    .end local p1    # "errorCode":I
    .local v7, "errorCode":I
    :try_start_f
    invoke-virtual/range {v2 .. v7}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setUceEvent(IIZII)V

    .line 174
    iget-object p1, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mOptionsReqCallback:Landroid/telephony/ims/aidl/IOptionsRequestCallback;

    invoke-interface {p1, v7, p2}, Landroid/telephony/ims/aidl/IOptionsRequestCallback;->respondToCapabilityRequestWithError(ILjava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_1b
    .catchall {:try_start_f .. :try_end_17} :catchall_3d

    .line 178
    :goto_17
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->logd(Ljava/lang/String;)V

    .line 179
    goto :goto_3c

    .line 175
    :catch_1b
    move-exception v0

    move-object p1, v0

    goto :goto_25

    .line 178
    .end local v7    # "errorCode":I
    .restart local p1    # "errorCode":I
    :catchall_1e
    move-exception v0

    move v7, p1

    move-object p1, v0

    .end local p1    # "errorCode":I
    .restart local v7    # "errorCode":I
    goto :goto_3f

    .line 175
    .end local v7    # "errorCode":I
    .restart local p1    # "errorCode":I
    :catch_22
    move-exception v0

    move v7, p1

    move-object p1, v0

    .line 176
    .restart local v7    # "errorCode":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_25
    :try_start_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerOptionsReqWithErrorCallback exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->logw(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_3d

    .end local p1    # "e":Landroid/os/RemoteException;
    goto :goto_17

    .line 180
    :goto_3c
    return-void

    .line 178
    :catchall_3d
    move-exception v0

    move-object p1, v0

    :goto_3f
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->logd(Ljava/lang/String;)V

    .line 179
    throw p1
.end method


# virtual methods
.method public blacklist getActivatedRequest()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/ims/rcs/uce/request/UceRequest;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mActivatedRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFinishedRequest()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mFinishedRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onFinish()V
    .registers 2

    .line 103
    const-string v0, "RemoteOptionsCoordinator: onFinish"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->logd(Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mOptionsReqCallback:Landroid/telephony/ims/aidl/IOptionsRequestCallback;

    .line 105
    invoke-super {p0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->onFinish()V

    .line 106
    return-void
.end method

.method public blacklist onRequestUpdated(JI)V
    .registers 8
    .param p1, "taskId"    # J
    .param p3, "event"    # I

    .line 110
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mIsFinished:Z

    if-eqz v0, :cond_5

    return-void

    .line 111
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->getUceRequest(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequest;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;

    .line 112
    .local v0, "request":Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;
    if-nez v0, :cond_28

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestUpdated: Cannot find RemoteOptionsRequest taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->logw(Ljava/lang/String;)V

    .line 114
    return-void

    .line 117
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestUpdated: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->REQUEST_EVENT_DESC:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->logd(Ljava/lang/String;)V

    .line 118
    packed-switch p3, :pswitch_data_76

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestUpdated: invalid event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->logw(Ljava/lang/String;)V

    goto :goto_72

    .line 120
    :pswitch_6e
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->handleRemoteRequestDone(Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;)V

    .line 121
    nop

    .line 128
    :goto_72
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->checkAndFinishRequestCoordinator()V

    .line 129
    return-void

    :pswitch_data_76
    .packed-switch 0x8
        :pswitch_6e
    .end packed-switch
.end method

.method public blacklist setOptionsRequestCallback(Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IOptionsRequestCallback;

    .line 98
    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->mOptionsReqCallback:Landroid/telephony/ims/aidl/IOptionsRequestCallback;

    .line 99
    return-void
.end method
