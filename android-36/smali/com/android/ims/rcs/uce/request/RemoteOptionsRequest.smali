.class public Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;
.super Ljava/lang/Object;
.source "RemoteOptionsRequest.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/request/UceRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private volatile blacklist mCoordinatorId:J

.field private volatile blacklist mIsFinished:Z

.field private volatile blacklist mIsRemoteNumberBlocked:Z

.field private final blacklist mRemoteFeatureTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRemoteOptResponse:Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;

.field private final blacklist mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

.field private final blacklist mSubId:I

.field private final blacklist mTaskId:J

.field private blacklist mUriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RemoteOptRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "requestMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mSubId:I

    .line 97
    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->generateTaskId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mTaskId:J

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mRemoteFeatureTags:Ljava/util/List;

    .line 99
    new-instance v0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mRemoteOptResponse:Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;

    .line 100
    iput-object p2, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 101
    const-string v0, "created"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->logd(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private blacklist executeRequestInternal()V
    .registers 6

    .line 159
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mUriList:Ljava/util/List;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mUriList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6a

    .line 166
    :cond_d
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mIsFinished:Z

    if-eqz v0, :cond_1e

    .line 167
    const-string v0, "executeRequest: This request is finished"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->logw(Ljava/lang/String;)V

    .line 168
    const/16 v0, 0x1f7

    const-string v1, "Service Unavailable"

    invoke-direct {p0, v0, v1}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->setResponseWithError(ILjava/lang/String;)V

    .line 170
    return-void

    .line 174
    :cond_1e
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mUriList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 175
    .local v0, "contactUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mRemoteFeatureTags:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/ims/rcs/uce/util/FeatureTags;->getContactCapability(Landroid/net/Uri;ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v1

    .line 177
    .local v1, "remoteCaps":Landroid/telephony/ims/RcsContactUceCapability;
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->saveCapabilities(Ljava/util/List;)V

    .line 180
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->getDeviceCapabilities(I)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v2

    .line 182
    .local v2, "deviceCaps":Landroid/telephony/ims/RcsContactUceCapability;
    if-nez v2, :cond_4c

    .line 183
    const-string v3, "executeRequest: The device\'s capabilities is empty"

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->logw(Ljava/lang/String;)V

    .line 184
    const/16 v3, 0x1f4

    const-string v4, "Internal Server Error"

    invoke-direct {p0, v3, v4}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->setResponseWithError(ILjava/lang/String;)V

    goto :goto_69

    .line 187
    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeRequest: Respond to capability request, blocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mIsRemoteNumberBlocked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->logd(Ljava/lang/String;)V

    .line 189
    iget-boolean v3, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mIsRemoteNumberBlocked:Z

    invoke-direct {p0, v2, v3}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->setResponse(Landroid/telephony/ims/RcsContactUceCapability;Z)V

    .line 191
    :goto_69
    return-void

    .line 160
    .end local v0    # "contactUri":Landroid/net/Uri;
    .end local v1    # "remoteCaps":Landroid/telephony/ims/RcsContactUceCapability;
    .end local v2    # "deviceCaps":Landroid/telephony/ims/RcsContactUceCapability;
    :cond_6a
    :goto_6a
    const-string v0, "executeRequest: uri is empty"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->logw(Ljava/lang/String;)V

    .line 161
    const/16 v0, 0x190

    const-string v1, "Bad Request"

    invoke-direct {p0, v0, v1}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->setResponseWithError(ILjava/lang/String;)V

    .line 163
    return-void
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .registers 5

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mTaskId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    return-object v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 203
    sget-object v0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 207
    sget-object v0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method private blacklist setResponse(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    .registers 4
    .param p1, "deviceCaps"    # Landroid/telephony/ims/RcsContactUceCapability;
    .param p2, "isRemoteNumberBlocked"    # Z

    .line 195
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mRemoteOptResponse:Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->setRespondToRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V

    .line 196
    return-void
.end method

.method private blacklist setResponseWithError(ILjava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mRemoteOptResponse:Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->setRespondToRequestWithError(ILjava/lang/String;)V

    .line 200
    return-void
.end method


# virtual methods
.method public blacklist executeRequest()V
    .registers 7

    .line 146
    const-string v0, "executeRequest"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->logd(Ljava/lang/String;)V

    .line 148
    :try_start_5
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->executeRequestInternal()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_14
    .catchall {:try_start_5 .. :try_end_8} :catchall_12

    .line 154
    :goto_8
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v1, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mCoordinatorId:J

    iget-wide v3, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mTaskId:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyRemoteRequestDone(JJ)V

    .line 155
    goto :goto_33

    .line 154
    :catchall_12
    move-exception v0

    goto :goto_34

    .line 149
    :catch_14
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    :try_start_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeRequest: exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->logw(Ljava/lang/String;)V

    .line 151
    const-string v1, "Internal Server Error"

    const/16 v2, 0x1f4

    invoke-direct {p0, v2, v1}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->setResponseWithError(ILjava/lang/String;)V
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_12

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_8

    .line 156
    :goto_33
    return-void

    .line 154
    :goto_34
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v2, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mCoordinatorId:J

    iget-wide v4, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mTaskId:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyRemoteRequestDone(JJ)V

    .line 155
    throw v0
.end method

.method public blacklist getRemoteOptResponse()Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mRemoteOptResponse:Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;

    return-object v0
.end method

.method public blacklist getRequestCoordinatorId()J
    .registers 3

    .line 111
    iget-wide v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mCoordinatorId:J

    return-wide v0
.end method

.method public blacklist getTaskId()J
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mTaskId:J

    return-wide v0
.end method

.method public blacklist onFinish()V
    .registers 2

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mIsFinished:Z

    .line 122
    return-void
.end method

.method public blacklist setContactUri(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mUriList:Ljava/util/List;

    .line 127
    return-void
.end method

.method public blacklist setIsRemoteNumberBlocked(Z)V
    .registers 2
    .param p1, "isBlocked"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mIsRemoteNumberBlocked:Z

    .line 135
    return-void
.end method

.method public blacklist setRemoteFeatureTags(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p1, "remoteFeatureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mRemoteFeatureTags:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 131
    return-void
.end method

.method public blacklist setRequestCoordinatorId(J)V
    .registers 3
    .param p1, "coordinatorId"    # J

    .line 106
    iput-wide p1, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->mCoordinatorId:J

    .line 107
    return-void
.end method
