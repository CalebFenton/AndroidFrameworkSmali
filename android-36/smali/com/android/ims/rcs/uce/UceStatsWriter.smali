.class public Lcom/android/ims/rcs/uce/UceStatsWriter;
.super Ljava/lang/Object;
.source "UceStatsWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;,
        Lcom/android/ims/rcs/uce/UceStatsWriter$UceEventType;
    }
.end annotation


# static fields
.field public static final blacklist INCOMING_OPTION_EVENT:I = 0x2

.field public static final blacklist OUTGOING_OPTION_EVENT:I = 0x3

.field public static final blacklist PUBLISH_EVENT:I = 0x0

.field public static final blacklist SUBSCRIBE_EVENT:I = 0x1

.field private static blacklist sInstance:Lcom/android/ims/rcs/uce/UceStatsWriter;


# instance fields
.field private blacklist mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/ims/rcs/uce/UceStatsWriter;->sInstance:Lcom/android/ims/rcs/uce/UceStatsWriter;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    .line 262
    return-void
.end method

.method public static blacklist getInstance()Lcom/android/ims/rcs/uce/UceStatsWriter;
    .registers 2

    .line 139
    const-class v0, Lcom/android/ims/rcs/uce/UceStatsWriter;

    monitor-enter v0

    .line 140
    :try_start_3
    sget-object v1, Lcom/android/ims/rcs/uce/UceStatsWriter;->sInstance:Lcom/android/ims/rcs/uce/UceStatsWriter;

    monitor-exit v0

    return-object v1

    .line 141
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static blacklist init(Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;)Lcom/android/ims/rcs/uce/UceStatsWriter;
    .registers 3
    .param p0, "callback"    # Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    .line 127
    const-class v0, Lcom/android/ims/rcs/uce/UceStatsWriter;

    monitor-enter v0

    .line 128
    :try_start_3
    sget-object v1, Lcom/android/ims/rcs/uce/UceStatsWriter;->sInstance:Lcom/android/ims/rcs/uce/UceStatsWriter;

    if-nez v1, :cond_e

    .line 129
    new-instance v1, Lcom/android/ims/rcs/uce/UceStatsWriter;

    invoke-direct {v1, p0}, Lcom/android/ims/rcs/uce/UceStatsWriter;-><init>(Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;)V

    sput-object v1, Lcom/android/ims/rcs/uce/UceStatsWriter;->sInstance:Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 131
    :cond_e
    sget-object v1, Lcom/android/ims/rcs/uce/UceStatsWriter;->sInstance:Lcom/android/ims/rcs/uce/UceStatsWriter;

    monitor-exit v0

    return-object v1

    .line 132
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public blacklist setImsRegistrationFeatureTagStats(ILjava/util/List;I)V
    .registers 5
    .param p1, "subId"    # I
    .param p3, "registrationTech"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 153
    .local p2, "featureTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    if-nez v0, :cond_5

    .line 154
    return-void

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;->onImsRegistrationFeatureTagStats(ILjava/util/List;I)V

    .line 157
    return-void
.end method

.method public blacklist setImsRegistrationServiceDescStats(ILjava/util/List;I)V
    .registers 9
    .param p1, "subId"    # I
    .param p3, "registrationTech"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;I)V"
        }
    .end annotation

    .line 180
    .local p2, "tupleList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactPresenceTuple;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    if-nez v0, :cond_5

    .line 181
    return-void

    .line 183
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "svcId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v1, "svcVersion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RcsContactPresenceTuple;

    .line 187
    .local v3, "tuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v3    # "tuple":Landroid/telephony/ims/RcsContactPresenceTuple;
    goto :goto_13

    .line 190
    :cond_2e
    iget-object v2, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    invoke-interface {v2, p1, v0, v1, p3}, Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;->onImsRegistrationServiceDescStats(ILjava/util/List;Ljava/util/List;I)V

    .line 191
    return-void
.end method

.method public blacklist setPresenceNotifyEvent(IJLjava/util/List;)V
    .registers 6
    .param p1, "subId"    # I
    .param p2, "taskId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p4, "updatedCapList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    if-eqz v0, :cond_13

    if-eqz p4, :cond_13

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_13

    .line 231
    :cond_d
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;->onPresenceNotifyEvent(IJLjava/util/List;)V

    .line 232
    return-void

    .line 229
    :cond_13
    :goto_13
    return-void
.end method

.method public blacklist setStoreCompleteImsRegistrationFeatureTagStats(I)V
    .registers 3
    .param p1, "subId"    # I

    .line 164
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    if-nez v0, :cond_5

    .line 165
    return-void

    .line 167
    :cond_5
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;->onStoreCompleteImsRegistrationFeatureTagStats(I)V

    .line 168
    return-void
.end method

.method public blacklist setSubscribeResponse(IJI)V
    .registers 6
    .param p1, "subId"    # I
    .param p2, "taskId"    # J
    .param p4, "networkResponse"    # I

    .line 200
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    if-eqz v0, :cond_9

    .line 201
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;->onSubscribeResponse(IJI)V

    .line 203
    :cond_9
    return-void
.end method

.method public blacklist setSubscribeTerminated(IJLjava/lang/String;)V
    .registers 6
    .param p1, "subId"    # I
    .param p2, "taskId"    # J
    .param p4, "reason"    # Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    if-eqz v0, :cond_9

    .line 242
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;->onSubscribeTerminated(IJLjava/lang/String;)V

    .line 244
    :cond_9
    return-void
.end method

.method public blacklist setUceEvent(IIZII)V
    .registers 13
    .param p1, "subId"    # I
    .param p2, "type"    # I
    .param p3, "successful"    # Z
    .param p4, "commandCode"    # I
    .param p5, "networkResponse"    # I

    .line 215
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    if-eqz v0, :cond_f

    .line 216
    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "subId":I
    .end local p2    # "type":I
    .end local p3    # "successful":Z
    .end local p4    # "commandCode":I
    .end local p5    # "networkResponse":I
    .local v2, "subId":I
    .local v3, "type":I
    .local v4, "successful":Z
    .local v5, "commandCode":I
    .local v6, "networkResponse":I
    invoke-interface/range {v1 .. v6}, Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;->onUceEvent(IIZII)V

    goto :goto_14

    .line 215
    .end local v2    # "subId":I
    .end local v3    # "type":I
    .end local v4    # "successful":Z
    .end local v5    # "commandCode":I
    .end local v6    # "networkResponse":I
    .restart local p1    # "subId":I
    .restart local p2    # "type":I
    .restart local p3    # "successful":Z
    .restart local p4    # "commandCode":I
    .restart local p5    # "networkResponse":I
    :cond_f
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 218
    .end local p1    # "subId":I
    .end local p2    # "type":I
    .end local p3    # "successful":Z
    .end local p4    # "commandCode":I
    .end local p5    # "networkResponse":I
    .restart local v2    # "subId":I
    .restart local v3    # "type":I
    .restart local v4    # "successful":Z
    .restart local v5    # "commandCode":I
    .restart local v6    # "networkResponse":I
    :goto_14
    return-void
.end method

.method public blacklist setUnPublish(I)V
    .registers 3
    .param p1, "subId"    # I

    .line 254
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    if-eqz v0, :cond_9

    .line 255
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceStatsWriter;->mCallBack:Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;->onStoreCompleteImsRegistrationServiceDescStats(I)V

    .line 257
    :cond_9
    return-void
.end method
