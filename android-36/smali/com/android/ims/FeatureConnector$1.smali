.class Lcom/android/ims/FeatureConnector$1;
.super Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;
.source "FeatureConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/FeatureConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/FeatureConnector;


# direct methods
.method public static synthetic blacklist $r8$lambda$p0EOPbPqDT84Dn4uBMLlTHV-hiY(Lcom/android/ims/FeatureConnector$1;ZLcom/android/ims/FeatureUpdates;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/FeatureConnector$1;->lambda$imsStatusChanged$1(ZLcom/android/ims/FeatureUpdates;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tOtMPTTn9vGBXjPWNxg9ls-iqrE(Lcom/android/ims/FeatureConnector$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/FeatureConnector$1;->lambda$imsFeatureRemoved$0(I)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/ims/FeatureConnector;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/android/ims/FeatureConnector$1;, "Lcom/android/ims/FeatureConnector$1;"
    iput-object p1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$imsFeatureRemoved$0(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 149
    .local p0, "this":Lcom/android/ims/FeatureConnector$1;, "Lcom/android/ims/FeatureConnector$1;"
    iget-object v0, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v0}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmListener(Lcom/android/ims/FeatureConnector;)Lcom/android/ims/FeatureConnector$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/FeatureConnector$Listener;->connectionUnavailable(I)V

    return-void
.end method

.method private synthetic blacklist lambda$imsStatusChanged$1(ZLcom/android/ims/FeatureUpdates;I)V
    .registers 7
    .param p1, "isReady"    # Z
    .param p2, "manager"    # Lcom/android/ims/FeatureUpdates;
    .param p3, "subId"    # I

    .line 175
    .local p0, "this":Lcom/android/ims/FeatureConnector$1;, "Lcom/android/ims/FeatureConnector$1;"
    if-eqz p1, :cond_8

    .line 176
    :try_start_2
    iget-object v0, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v0, p2, p3}, Lcom/android/ims/FeatureConnector;->-$$Nest$mnotifyReady(Lcom/android/ims/FeatureConnector;Lcom/android/ims/FeatureUpdates;I)V

    goto :goto_d

    .line 178
    :cond_8
    iget-object v0, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v0}, Lcom/android/ims/FeatureConnector;->-$$Nest$mnotifyNotReady(Lcom/android/ims/FeatureConnector;)V
    :try_end_d
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_d} :catch_e

    .line 187
    :goto_d
    goto :goto_27

    .line 180
    :catch_e
    move-exception v0

    .line 181
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getCode()I

    move-result v1

    const/16 v2, 0x96

    if-ne v1, v2, :cond_22

    .line 183
    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v1}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmListener(Lcom/android/ims/FeatureConnector;)Lcom/android/ims/FeatureConnector$Listener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/ims/FeatureConnector$Listener;->connectionUnavailable(I)V

    goto :goto_27

    .line 185
    :cond_22
    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v1}, Lcom/android/ims/FeatureConnector;->-$$Nest$mnotifyNotReady(Lcom/android/ims/FeatureConnector;)V

    .line 188
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_27
    return-void
.end method


# virtual methods
.method public blacklist imsFeatureCreated(Lcom/android/ims/ImsFeatureContainer;I)V
    .registers 7
    .param p1, "c"    # Lcom/android/ims/ImsFeatureContainer;
    .param p2, "subId"    # I

    .line 119
    .local p0, "this":Lcom/android/ims/FeatureConnector$1;, "Lcom/android/ims/FeatureConnector$1;"
    iget-object v0, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsFeatureCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/FeatureConnector;->-$$Nest$mlog(Lcom/android/ims/FeatureConnector;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v0}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmLock(Lcom/android/ims/FeatureConnector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 121
    :try_start_29
    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v1}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmManager(Lcom/android/ims/FeatureConnector;)Lcom/android/ims/FeatureUpdates;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/ims/FeatureUpdates;->associate(Lcom/android/ims/ImsFeatureContainer;I)V

    .line 122
    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v1}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmManager(Lcom/android/ims/FeatureConnector;)Lcom/android/ims/FeatureUpdates;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ims/ImsFeatureContainer;->getCapabilities()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/ims/FeatureUpdates;->updateFeatureCapabilities(J)V

    .line 123
    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/ims/FeatureConnector;->-$$Nest$fputmDisconnectedReason(Lcom/android/ims/FeatureConnector;Ljava/lang/Integer;)V

    .line 124
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_4e

    .line 126
    invoke-virtual {p1}, Lcom/android/ims/ImsFeatureContainer;->getState()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/ims/FeatureConnector$1;->imsStatusChanged(II)V

    .line 127
    return-void

    .line 124
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public blacklist imsFeatureRemoved(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 131
    .local p0, "this":Lcom/android/ims/FeatureConnector$1;, "Lcom/android/ims/FeatureConnector$1;"
    iget-object v0, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsFeatureRemoved: reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/FeatureConnector;->-$$Nest$mlog(Lcom/android/ims/FeatureConnector;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v0}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmLock(Lcom/android/ims/FeatureConnector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 136
    :try_start_1f
    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v1}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmDisconnectedReason(Lcom/android/ims/FeatureConnector;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v1}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmDisconnectedReason(Lcom/android/ims/FeatureConnector;)Ljava/lang/Integer;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_49

    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v1}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmDisconnectedReason(Lcom/android/ims/FeatureConnector;)Ljava/lang/Integer;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_49

    .line 139
    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    const-string v2, "imsFeatureRemoved: ignore"

    invoke-static {v1, v2}, Lcom/android/ims/FeatureConnector;->-$$Nest$mlog(Lcom/android/ims/FeatureConnector;Ljava/lang/String;)V

    .line 140
    monitor-exit v0

    return-void

    .line 142
    :cond_49
    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ims/FeatureConnector;->-$$Nest$fputmDisconnectedReason(Lcom/android/ims/FeatureConnector;Ljava/lang/Integer;)V

    .line 145
    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/ims/FeatureConnector;->-$$Nest$fputmLastReadyState(Lcom/android/ims/FeatureConnector;Z)V

    .line 146
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_1f .. :try_end_59} :catchall_71

    .line 149
    iget-object v0, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v0}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmExecutor(Lcom/android/ims/FeatureConnector;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/FeatureConnector$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 150
    iget-object v0, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v0}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmManager(Lcom/android/ims/FeatureConnector;)Lcom/android/ims/FeatureUpdates;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/FeatureUpdates;->invalidate()V

    .line 151
    return-void

    .line 146
    :catchall_71
    move-exception v1

    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public blacklist imsStatusChanged(II)V
    .registers 9
    .param p1, "status"    # I
    .param p2, "subId"    # I

    .line 155
    .local p0, "this":Lcom/android/ims/FeatureConnector$1;, "Lcom/android/ims/FeatureConnector$1;"
    iget-object v0, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsStatusChanged: status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/ims/feature/ImsFeature;->STATE_LOG_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/FeatureConnector;->-$$Nest$mlog(Lcom/android/ims/FeatureConnector;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v0}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmLock(Lcom/android/ims/FeatureConnector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 159
    :try_start_2b
    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v1}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmDisconnectedReason(Lcom/android/ims/FeatureConnector;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 160
    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    const-string v2, "imsStatusChanged: ignore"

    invoke-static {v1, v2}, Lcom/android/ims/FeatureConnector;->-$$Nest$mlog(Lcom/android/ims/FeatureConnector;Ljava/lang/String;)V

    .line 161
    monitor-exit v0

    return-void

    .line 163
    :cond_3c
    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v1}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmManager(Lcom/android/ims/FeatureConnector;)Lcom/android/ims/FeatureUpdates;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/ims/FeatureUpdates;->updateFeatureState(I)V

    .line 164
    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v1}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmManager(Lcom/android/ims/FeatureConnector;)Lcom/android/ims/FeatureUpdates;

    move-result-object v1

    .line 165
    .local v1, "manager":Lcom/android/ims/FeatureUpdates;, "TU;"
    iget-object v2, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v2}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmReadyFilter(Lcom/android/ims/FeatureConnector;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 166
    .local v2, "isReady":Z
    iget-object v3, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v3}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmLastReadyState(Lcom/android/ims/FeatureConnector;)Z

    move-result v3

    xor-int/2addr v3, v2

    .line 167
    .local v3, "didReadyChange":Z
    iget-object v4, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v4, v2}, Lcom/android/ims/FeatureConnector;->-$$Nest$fputmLastReadyState(Lcom/android/ims/FeatureConnector;Z)V

    .line 168
    if-nez v3, :cond_70

    .line 169
    iget-object v4, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    const-string v5, "imsStatusChanged: ready didn\'t change, ignore"

    invoke-static {v4, v5}, Lcom/android/ims/FeatureConnector;->-$$Nest$mlog(Lcom/android/ims/FeatureConnector;Ljava/lang/String;)V

    .line 170
    monitor-exit v0

    return-void

    .line 172
    .end local v3    # "didReadyChange":Z
    :cond_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_2b .. :try_end_71} :catchall_80

    .line 173
    iget-object v0, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v0}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmExecutor(Lcom/android/ims/FeatureConnector;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v3, Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, v1, p2}, Lcom/android/ims/FeatureConnector$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/FeatureConnector$1;ZLcom/android/ims/FeatureUpdates;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 189
    return-void

    .line 172
    .end local v1    # "manager":Lcom/android/ims/FeatureUpdates;, "TU;"
    .end local v2    # "isReady":Z
    :catchall_80
    move-exception v1

    :try_start_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v1
.end method

.method public blacklist updateCapabilities(J)V
    .registers 6
    .param p1, "caps"    # J

    .line 193
    .local p0, "this":Lcom/android/ims/FeatureConnector$1;, "Lcom/android/ims/FeatureConnector$1;"
    iget-object v0, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCapabilities: capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Landroid/telephony/ims/ImsService;->getCapabilitiesString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/FeatureConnector;->-$$Nest$mlog(Lcom/android/ims/FeatureConnector;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v0}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmLock(Lcom/android/ims/FeatureConnector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 195
    :try_start_23
    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v1}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmDisconnectedReason(Lcom/android/ims/FeatureConnector;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 196
    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    const-string v2, "updateCapabilities: ignore"

    invoke-static {v1, v2}, Lcom/android/ims/FeatureConnector;->-$$Nest$mlog(Lcom/android/ims/FeatureConnector;Ljava/lang/String;)V

    .line 197
    monitor-exit v0

    return-void

    .line 199
    :cond_34
    iget-object v1, p0, Lcom/android/ims/FeatureConnector$1;->this$0:Lcom/android/ims/FeatureConnector;

    invoke-static {v1}, Lcom/android/ims/FeatureConnector;->-$$Nest$fgetmManager(Lcom/android/ims/FeatureConnector;)Lcom/android/ims/FeatureUpdates;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/ims/FeatureUpdates;->updateFeatureCapabilities(J)V

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_3f

    throw v1
.end method
