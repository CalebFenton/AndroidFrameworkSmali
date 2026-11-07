.class public Landroid/telephony/ims/compat/ImsService;
.super Landroid/app/Service;
.source "ImsService.java"


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsService(Compat)"

.field public static final greylist-max-o SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.ims.compat.ImsService"


# instance fields
.field private final greylist-max-o mFeaturesBySlot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/compat/feature/ImsFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final greylist-max-r mImsServiceController:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddImsFeatureStatusCallback(Landroid/telephony/ims/compat/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/compat/ImsService;->addImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateEmergencyMMTelFeatureInternal(Landroid/telephony/ims/compat/ImsService;I)Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/compat/ImsService;->createEmergencyMMTelFeatureInternal(I)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateMMTelFeatureInternal(Landroid/telephony/ims/compat/ImsService;I)Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/compat/ImsService;->createMMTelFeatureInternal(I)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateRcsFeatureInternal(Landroid/telephony/ims/compat/ImsService;I)Lcom/android/ims/internal/IImsRcsFeature;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/compat/ImsService;->createRcsFeatureInternal(I)Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveImsFeature(Landroid/telephony/ims/compat/ImsService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/compat/ImsService;->removeImsFeature(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveImsFeatureStatusCallback(Landroid/telephony/ims/compat/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/compat/ImsService;->removeImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 127
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    .line 90
    new-instance v0, Landroid/telephony/ims/compat/ImsService$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/compat/ImsService$1;-><init>(Landroid/telephony/ims/compat/ImsService;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mImsServiceController:Landroid/os/IBinder;

    .line 128
    return-void
.end method

.method private greylist-max-o addImsFeature(IILandroid/telephony/ims/compat/feature/ImsFeature;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "f"    # Landroid/telephony/ims/compat/feature/ImsFeature;

    .line 188
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 190
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 191
    .local v1, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/compat/feature/ImsFeature;>;"
    if-nez v1, :cond_18

    .line 193
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 194
    iget-object v2, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    :cond_18
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    .end local v1    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/compat/feature/ImsFeature;>;"
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private blacklist addImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 202
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 204
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 205
    .local v1, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/compat/feature/ImsFeature;>;"
    if-nez v1, :cond_27

    .line 206
    const-string v2, "ImsService(Compat)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not add ImsFeatureStatusCallback. No ImsFeatures exist on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    monitor-exit v0

    return-void

    .line 210
    :cond_27
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/compat/feature/ImsFeature;

    .line 211
    .local v2, "f":Landroid/telephony/ims/compat/feature/ImsFeature;
    if-eqz v2, :cond_32

    .line 212
    invoke-virtual {v2, p3}, Landroid/telephony/ims/compat/feature/ImsFeature;->addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 214
    .end local v1    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/compat/feature/ImsFeature;>;"
    .end local v2    # "f":Landroid/telephony/ims/compat/feature/ImsFeature;
    :cond_32
    monitor-exit v0

    .line 215
    return-void

    .line 214
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private blacklist createEmergencyMMTelFeatureInternal(I)Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 4
    .param p1, "slotId"    # I

    .line 151
    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/ImsService;->onCreateEmergencyMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;

    move-result-object v0

    .line 152
    .local v0, "f":Landroid/telephony/ims/compat/feature/MMTelFeature;
    if-eqz v0, :cond_f

    .line 153
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/telephony/ims/compat/ImsService;->setupFeature(Landroid/telephony/ims/compat/feature/ImsFeature;II)V

    .line 154
    invoke-virtual {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getBinder()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v1

    return-object v1

    .line 156
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist createMMTelFeatureInternal(I)Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 4
    .param p1, "slotId"    # I

    .line 161
    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/ImsService;->onCreateMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;

    move-result-object v0

    .line 162
    .local v0, "f":Landroid/telephony/ims/compat/feature/MMTelFeature;
    if-eqz v0, :cond_f

    .line 163
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/telephony/ims/compat/ImsService;->setupFeature(Landroid/telephony/ims/compat/feature/ImsFeature;II)V

    .line 164
    invoke-virtual {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getBinder()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v1

    return-object v1

    .line 166
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist createRcsFeatureInternal(I)Lcom/android/ims/internal/IImsRcsFeature;
    .registers 4
    .param p1, "slotId"    # I

    .line 171
    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/ImsService;->onCreateRcsFeature(I)Landroid/telephony/ims/compat/feature/RcsFeature;

    move-result-object v0

    .line 172
    .local v0, "f":Landroid/telephony/ims/compat/feature/RcsFeature;
    if-eqz v0, :cond_f

    .line 173
    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Landroid/telephony/ims/compat/ImsService;->setupFeature(Landroid/telephony/ims/compat/feature/ImsFeature;II)V

    .line 174
    invoke-virtual {v0}, Landroid/telephony/ims/compat/feature/RcsFeature;->getBinder()Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object v1

    return-object v1

    .line 176
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist removeImsFeature(II)V
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I

    .line 235
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 238
    .local v1, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/compat/feature/ImsFeature;>;"
    if-nez v1, :cond_27

    .line 239
    const-string v2, "ImsService(Compat)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not remove ImsFeature. No ImsFeatures exist on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    monitor-exit v0

    return-void

    .line 243
    :cond_27
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/compat/feature/ImsFeature;

    .line 244
    .local v2, "f":Landroid/telephony/ims/compat/feature/ImsFeature;
    if-nez v2, :cond_53

    .line 245
    const-string v3, "ImsService(Compat)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not remove ImsFeature. No feature with type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exists on slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    monitor-exit v0

    return-void

    .line 249
    :cond_53
    invoke-virtual {v2}, Landroid/telephony/ims/compat/feature/ImsFeature;->onFeatureRemoved()V

    .line 250
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 251
    .end local v1    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/compat/feature/ImsFeature;>;"
    .end local v2    # "f":Landroid/telephony/ims/compat/feature/ImsFeature;
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method private blacklist removeImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 219
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 221
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 222
    .local v1, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/compat/feature/ImsFeature;>;"
    if-nez v1, :cond_27

    .line 223
    const-string v2, "ImsService(Compat)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not remove ImsFeatureStatusCallback. No ImsFeatures exist on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    monitor-exit v0

    return-void

    .line 227
    :cond_27
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/compat/feature/ImsFeature;

    .line 228
    .local v2, "f":Landroid/telephony/ims/compat/feature/ImsFeature;
    if-eqz v2, :cond_32

    .line 229
    invoke-virtual {v2, p3}, Landroid/telephony/ims/compat/feature/ImsFeature;->removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 231
    .end local v1    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/compat/feature/ImsFeature;>;"
    .end local v2    # "f":Landroid/telephony/ims/compat/feature/ImsFeature;
    :cond_32
    monitor-exit v0

    .line 232
    return-void

    .line 231
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private blacklist setupFeature(Landroid/telephony/ims/compat/feature/ImsFeature;II)V
    .registers 4
    .param p1, "f"    # Landroid/telephony/ims/compat/feature/ImsFeature;
    .param p2, "slotId"    # I
    .param p3, "featureType"    # I

    .line 181
    invoke-virtual {p1, p0}, Landroid/telephony/ims/compat/feature/ImsFeature;->setContext(Landroid/content/Context;)V

    .line 182
    invoke-virtual {p1, p2}, Landroid/telephony/ims/compat/feature/ImsFeature;->setSlotId(I)V

    .line 183
    invoke-direct {p0, p2, p3, p1}, Landroid/telephony/ims/compat/ImsService;->addImsFeature(IILandroid/telephony/ims/compat/feature/ImsFeature;)V

    .line 184
    invoke-virtual {p1}, Landroid/telephony/ims/compat/feature/ImsFeature;->onFeatureReady()V

    .line 185
    return-void
.end method


# virtual methods
.method public greylist-max-o getFeatures(I)Landroid/util/SparseArray;
    .registers 3
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/compat/feature/ImsFeature;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 135
    const-string v0, "android.telephony.ims.compat.ImsService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 136
    const-string v0, "ImsService(Compat)"

    const-string v1, "ImsService(Compat) Bound."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object v0

    .line 139
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o onCreateEmergencyMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;
    .registers 3
    .param p1, "slotId"    # I

    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o onCreateMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;
    .registers 3
    .param p1, "slotId"    # I

    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o onCreateRcsFeature(I)Landroid/telephony/ims/compat/feature/RcsFeature;
    .registers 3
    .param p1, "slotId"    # I

    .line 277
    const/4 v0, 0x0

    return-object v0
.end method
