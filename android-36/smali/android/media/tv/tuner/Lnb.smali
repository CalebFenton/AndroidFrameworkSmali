.class public Landroid/media/tv/tuner/Lnb;
.super Ljava/lang/Object;
.source "Lnb.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/Lnb$EventType;,
        Landroid/media/tv/tuner/Lnb$Position;,
        Landroid/media/tv/tuner/Lnb$Tone;,
        Landroid/media/tv/tuner/Lnb$Voltage;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final whitelist EVENT_TYPE_DISEQC_RX_OVERFLOW:I = 0x0

.field public static final whitelist EVENT_TYPE_DISEQC_RX_PARITY_ERROR:I = 0x2

.field public static final whitelist EVENT_TYPE_DISEQC_RX_TIMEOUT:I = 0x1

.field public static final whitelist EVENT_TYPE_LNB_OVERLOAD:I = 0x3

.field public static final whitelist POSITION_A:I = 0x1

.field public static final whitelist POSITION_B:I = 0x2

.field public static final whitelist POSITION_UNDEFINED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "Lnb"

.field public static final whitelist TONE_CONTINUOUS:I = 0x1

.field public static final whitelist TONE_NONE:I = 0x0

.field public static final whitelist VOLTAGE_11V:I = 0x2

.field public static final whitelist VOLTAGE_12V:I = 0x3

.field public static final whitelist VOLTAGE_13V:I = 0x4

.field public static final whitelist VOLTAGE_14V:I = 0x5

.field public static final whitelist VOLTAGE_15V:I = 0x6

.field public static final whitelist VOLTAGE_18V:I = 0x7

.field public static final whitelist VOLTAGE_19V:I = 0x8

.field public static final whitelist VOLTAGE_5V:I = 0x1

.field public static final whitelist VOLTAGE_NONE:I


# instance fields
.field private final blacklist mCallbackLock:Ljava/lang/Object;

.field blacklist mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/tv/tuner/LnbCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mClientId:I

.field private blacklist mIsClosed:Ljava/lang/Boolean;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNativeContext:J

.field blacklist mOwner:Landroid/media/tv/tuner/Tuner;

.field blacklist mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$w6-ObV5FiZtq28ldNXCdRcrGlQw(Landroid/media/tv/tuner/Lnb;Landroid/media/tv/tuner/LnbCallback;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Lnb;->lambda$onEvent$0(Landroid/media/tv/tuner/LnbCallback;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xsLEnUznT6SREWpTSGpja6JZA8k(Landroid/media/tv/tuner/Lnb;Landroid/media/tv/tuner/LnbCallback;[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Lnb;->lambda$onDiseqcMessage$1(Landroid/media/tv/tuner/LnbCallback;[B)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 152
    const-string v0, "Lnb"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/tv/tuner/Lnb;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    .line 170
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    .line 173
    return-void
.end method

.method private blacklist acquireTRMSLock(Ljava/lang/String;)V
    .registers 5
    .param p1, "functionNameForLog"    # Ljava/lang/String;

    .line 359
    sget-boolean v0, Landroid/media/tv/tuner/Lnb;->DEBUG:Z

    const-string v1, "Lnb"

    if-eqz v0, :cond_28

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATTEMPT:acquireLock() in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "for clientId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Lnb;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_28
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v2, p0, Landroid/media/tv/tuner/Lnb;->mClientId:I

    invoke-virtual {v0, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->acquireLock(I)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED:acquireLock() in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for clientId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Lnb;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - this can cause deadlock between Tuner API calls and onReclaimResources()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_5a
    return-void
.end method

.method private synthetic blacklist lambda$onDiseqcMessage$1(Landroid/media/tv/tuner/LnbCallback;[B)V
    .registers 5
    .param p1, "callback"    # Landroid/media/tv/tuner/LnbCallback;
    .param p2, "diseqcMessage"    # [B

    .line 250
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    if-eqz p1, :cond_8

    .line 252
    :try_start_5
    invoke-interface {p1, p2}, Landroid/media/tv/tuner/LnbCallback;->onDiseqcMessage([B)V

    .line 254
    :cond_8
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private synthetic blacklist lambda$onEvent$0(Landroid/media/tv/tuner/LnbCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/media/tv/tuner/LnbCallback;
    .param p2, "eventType"    # I

    .line 233
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    if-eqz p1, :cond_8

    .line 235
    :try_start_5
    invoke-interface {p1, p2}, Landroid/media/tv/tuner/LnbCallback;->onEvent(I)V

    .line 237
    :cond_8
    monitor-exit v0

    .line 238
    return-void

    .line 237
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private native blacklist nativeClose()I
.end method

.method private native blacklist nativeSendDiseqcMessage([B)I
.end method

.method private native blacklist nativeSetSatellitePosition(I)I
.end method

.method private native blacklist nativeSetTone(I)I
.end method

.method private native blacklist nativeSetVoltage(I)I
.end method

.method private blacklist onDiseqcMessage([B)V
    .registers 7
    .param p1, "diseqcMessage"    # [B

    .line 245
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tuner/LnbCallback;

    .line 247
    .local v2, "callback":Landroid/media/tv/tuner/LnbCallback;
    iget-object v3, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 248
    .local v3, "executor":Ljava/util/concurrent/Executor;
    if-eqz v2, :cond_2d

    if-eqz v3, :cond_2d

    .line 249
    new-instance v4, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, p1}, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/tuner/Lnb;Landroid/media/tv/tuner/LnbCallback;[B)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 257
    .end local v2    # "callback":Landroid/media/tv/tuner/LnbCallback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    :cond_2d
    goto :goto_d

    .line 258
    :cond_2e
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private blacklist onEvent(I)V
    .registers 7
    .param p1, "eventType"    # I

    .line 228
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tuner/LnbCallback;

    .line 230
    .local v2, "callback":Landroid/media/tv/tuner/LnbCallback;
    iget-object v3, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 231
    .local v3, "executor":Ljava/util/concurrent/Executor;
    if-eqz v2, :cond_2d

    if-eqz v3, :cond_2d

    .line 232
    new-instance v4, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, p1}, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/Lnb;Landroid/media/tv/tuner/LnbCallback;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 240
    .end local v2    # "callback":Landroid/media/tv/tuner/LnbCallback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    :cond_2d
    goto :goto_d

    .line 241
    :cond_2e
    monitor-exit v0

    .line 242
    return-void

    .line 241
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private blacklist releaseTRMSLock()V
    .registers 3

    .line 371
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Lnb;->mClientId:I

    invoke-virtual {v0, v1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseLock(I)Z

    .line 372
    return-void
.end method


# virtual methods
.method public whitelist addCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/tv/tuner/LnbCallback;

    .line 195
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_d
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 2

    .line 350
    const-string v0, "close()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Lnb;->acquireTRMSLock(Ljava/lang/String;)V

    .line 352
    :try_start_5
    invoke-virtual {p0}, Landroid/media/tv/tuner/Lnb;->closeInternal()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 354
    invoke-direct {p0}, Landroid/media/tv/tuner/Lnb;->releaseTRMSLock()V

    .line 355
    nop

    .line 356
    return-void

    .line 354
    :catchall_d
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Lnb;->releaseTRMSLock()V

    .line 355
    throw v0
.end method

.method blacklist closeInternal()V
    .registers 4

    .line 268
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 270
    monitor-exit v0

    return-void

    .line 272
    :cond_d
    invoke-direct {p0}, Landroid/media/tv/tuner/Lnb;->nativeClose()I

    move-result v1

    .line 273
    .local v1, "res":I
    if-eqz v1, :cond_19

    .line 274
    const-string v2, "Failed to close LNB"

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    goto :goto_31

    .line 276
    :cond_19
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    .line 277
    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    if-eqz v2, :cond_2c

    .line 278
    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    invoke-virtual {v2}, Landroid/media/tv/tuner/Tuner;->releaseLnb()V

    .line 279
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    .line 281
    :cond_2c
    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 283
    .end local v1    # "res":I
    :goto_31
    monitor-exit v0

    .line 284
    return-void

    .line 283
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method blacklist isClosed()Z
    .registers 3

    .line 262
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 264
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist removeCallback(Landroid/media/tv/tuner/LnbCallback;)Z
    .registers 4
    .param p1, "callback"    # Landroid/media/tv/tuner/LnbCallback;

    .line 210
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_8
    iget-object v1, p0, Landroid/media/tv/tuner/Lnb;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 213
    .local v1, "result":Z
    :goto_13
    monitor-exit v0

    return v1

    .line 214
    .end local v1    # "result":Z
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist sendDiseqcMessage([B)I
    .registers 5
    .param p1, "message"    # [B

    .line 340
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_3
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 342
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSendDiseqcMessage([B)I

    move-result v1

    monitor-exit v0

    return v1

    .line 343
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method blacklist setCallbackAndOwner(Landroid/media/tv/tuner/Tuner;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V
    .registers 6
    .param p1, "tuner"    # Landroid/media/tv/tuner/Tuner;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/media/tv/tuner/LnbCallback;

    .line 176
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    if-eqz p3, :cond_a

    if-eqz p2, :cond_a

    .line 178
    :try_start_7
    invoke-virtual {p0, p2, p3}, Landroid/media/tv/tuner/Lnb;->addCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V

    .line 180
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_23

    .line 181
    invoke-virtual {p0, p1}, Landroid/media/tv/tuner/Lnb;->setOwner(Landroid/media/tv/tuner/Tuner;)V

    .line 182
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_22

    .line 183
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    invoke-virtual {v0}, Landroid/media/tv/tuner/Tuner;->getTunerResourceManager()Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Lnb;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 184
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    invoke-virtual {v0}, Landroid/media/tv/tuner/Tuner;->getClientId()I

    move-result v0

    iput v0, p0, Landroid/media/tv/tuner/Lnb;->mClientId:I

    .line 186
    :cond_22
    return-void

    .line 180
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method blacklist setOwner(Landroid/media/tv/tuner/Tuner;)V
    .registers 4
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 219
    const-string/jumbo v0, "newOwner must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_9
    iput-object p1, p0, Landroid/media/tv/tuner/Lnb;->mOwner:Landroid/media/tv/tuner/Tuner;

    .line 222
    invoke-virtual {p1}, Landroid/media/tv/tuner/Tuner;->getTunerResourceManager()Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/tuner/Lnb;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 223
    invoke-virtual {p1}, Landroid/media/tv/tuner/Tuner;->getClientId()I

    move-result v1

    iput v1, p0, Landroid/media/tv/tuner/Lnb;->mClientId:I

    .line 224
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist setSatellitePosition(I)I
    .registers 5
    .param p1, "position"    # I

    .line 322
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 324
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSetSatellitePosition(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 325
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist setTone(I)I
    .registers 5
    .param p1, "tone"    # I

    .line 308
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_3
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 310
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSetTone(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 311
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist setVoltage(I)I
    .registers 5
    .param p1, "voltage"    # I

    .line 294
    iget-object v0, p0, Landroid/media/tv/tuner/Lnb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    const-string v1, "Lnb"

    iget-object v2, p0, Landroid/media/tv/tuner/Lnb;->mIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 296
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Lnb;->nativeSetVoltage(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 297
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method
