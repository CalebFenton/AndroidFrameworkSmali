.class public Landroid/os/SystemVibrator;
.super Landroid/os/Vibrator;
.source "SystemVibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemVibrator$MultiVibratorStateListener;,
        Landroid/os/SystemVibrator$SingleVibratorStateListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field private final blacklist mBrokenListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/SystemVibrator$MultiVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRegisteredListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Vibrator$OnVibratorStateChangedListener;",
            "Landroid/os/SystemVibrator$MultiVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVibratorIds:[I

.field private blacklist mVibratorInfo:Landroid/os/VibratorInfo;

.field private final blacklist mVibratorManager:Landroid/os/VibratorManager;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0, p1}, Landroid/os/Vibrator;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mLock:Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Landroid/os/SystemVibrator;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Landroid/os/SystemVibrator;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/VibratorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorManager;

    iput-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    .line 66
    return-void
.end method

.method private blacklist getVibratorIds()[I
    .registers 4

    .line 289
    iget-object v0, p0, Landroid/os/SystemVibrator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorIds:[I

    if-eqz v1, :cond_b

    .line 291
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorIds:[I

    monitor-exit v0

    return-object v1

    .line 293
    :cond_b
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v1, :cond_19

    .line 294
    const-string v1, "Vibrator"

    const-string v2, "Failed to retrieve vibrator ids; no vibrator manager."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 297
    :cond_19
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v1}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v1

    iput-object v1, p0, Landroid/os/SystemVibrator;->mVibratorIds:[I

    monitor-exit v0

    return-object v1

    .line 298
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method static synthetic blacklist lambda$startVendorSession$0(Landroid/os/vibrator/VendorVibrationSession$Callback;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/vibrator/VendorVibrationSession$Callback;

    .line 273
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/os/vibrator/VendorVibrationSession$Callback;->onFinished(I)V

    return-void
.end method

.method static synthetic blacklist lambda$startVendorSession$1(Landroid/os/vibrator/VendorVibrationSession$Callback;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/vibrator/VendorVibrationSession$Callback;

    .line 280
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/os/vibrator/VendorVibrationSession$Callback;->onFinished(I)V

    return-void
.end method

.method private blacklist tryUnregisterBrokenListeners()V
    .registers 5

    .line 312
    iget-object v0, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 314
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    :goto_9
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_20

    .line 315
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SystemVibrator$MultiVibratorStateListener;

    iget-object v3, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v2, v3}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->unregister(Landroid/os/VibratorManager;)V

    .line 316
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_1f} :catch_23
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    goto :goto_9

    .line 320
    .end local v1    # "i":I
    :cond_20
    goto :goto_2b

    .line 321
    :catchall_21
    move-exception v1

    goto :goto_2d

    .line 318
    :catch_23
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_24
    const-string v2, "Vibrator"

    const-string v3, "Failed to unregister broken listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_2b
    monitor-exit v0

    .line 322
    return-void

    .line 321
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_21

    throw v1
.end method


# virtual methods
.method public whitelist addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 131
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Landroid/os/SystemVibrator;->mContext:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 133
    const-string v0, "Vibrator"

    const-string v1, "Failed to add vibrate state listener; no vibrator context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 136
    :cond_f
    iget-object v0, p0, Landroid/os/SystemVibrator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/SystemVibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    .line 137
    return-void
.end method

.method public whitelist addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 9
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 143
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_12

    .line 146
    const-string v0, "Vibrator"

    const-string v1, "Failed to add vibrate state listener; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 149
    :cond_12
    invoke-direct {p0}, Landroid/os/SystemVibrator;->getVibratorIds()[I

    move-result-object v0

    .line 150
    .local v0, "vibratorIds":[I
    if-nez v0, :cond_20

    .line 151
    const-string v1, "Vibrator"

    const-string v2, "Failed to add vibrate state listener; error retrieving vibrator ids."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 154
    :cond_20
    const/4 v1, 0x0

    .line 156
    .local v1, "delegate":Landroid/os/SystemVibrator$MultiVibratorStateListener;
    :try_start_21
    iget-object v2, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_80

    .line 158
    :try_start_24
    iget-object v3, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 159
    const-string v3, "Vibrator"

    const-string v4, "Listener already registered."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_7d

    .line 168
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->hasRegisteredListeners()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 171
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 172
    :try_start_3f
    iget-object v3, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    monitor-exit v2

    goto :goto_49

    :catchall_46
    move-exception v3

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_46

    throw v3

    .line 175
    :cond_49
    :goto_49
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    .line 160
    return-void

    .line 162
    :cond_4d
    :try_start_4d
    new-instance v3, Landroid/os/SystemVibrator$MultiVibratorStateListener;

    invoke-direct {v3, p1, p2}, Landroid/os/SystemVibrator$MultiVibratorStateListener;-><init>(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_7d

    .line 163
    .end local v1    # "delegate":Landroid/os/SystemVibrator$MultiVibratorStateListener;
    .local v3, "delegate":Landroid/os/SystemVibrator$MultiVibratorStateListener;
    :try_start_52
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v3, v1, v0}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->register(Landroid/os/VibratorManager;[I)V

    .line 164
    iget-object v1, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_78

    .line 165
    const/4 v1, 0x0

    .line 166
    .end local v3    # "delegate":Landroid/os/SystemVibrator$MultiVibratorStateListener;
    .restart local v1    # "delegate":Landroid/os/SystemVibrator$MultiVibratorStateListener;
    :try_start_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_7d

    .line 168
    if-eqz v1, :cond_73

    invoke-virtual {v1}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->hasRegisteredListeners()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 171
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 172
    :try_start_69
    iget-object v3, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    monitor-exit v2

    goto :goto_73

    :catchall_70
    move-exception v3

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_70

    throw v3

    .line 175
    :cond_73
    :goto_73
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    .line 176
    nop

    .line 177
    return-void

    .line 166
    .end local v1    # "delegate":Landroid/os/SystemVibrator$MultiVibratorStateListener;
    .restart local v3    # "delegate":Landroid/os/SystemVibrator$MultiVibratorStateListener;
    :catchall_78
    move-exception v1

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    goto :goto_7e

    .end local v3    # "delegate":Landroid/os/SystemVibrator$MultiVibratorStateListener;
    .restart local v1    # "delegate":Landroid/os/SystemVibrator$MultiVibratorStateListener;
    :catchall_7d
    move-exception v3

    :goto_7e
    :try_start_7e
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    .end local v0    # "vibratorIds":[I
    .end local v1    # "delegate":Landroid/os/SystemVibrator$MultiVibratorStateListener;
    .end local p0    # "this":Landroid/os/SystemVibrator;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/os/Vibrator$OnVibratorStateChangedListener;
    :try_start_7f
    throw v3
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    .line 168
    .restart local v0    # "vibratorIds":[I
    .restart local v1    # "delegate":Landroid/os/SystemVibrator$MultiVibratorStateListener;
    .restart local p0    # "this":Landroid/os/SystemVibrator;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/os/Vibrator$OnVibratorStateChangedListener;
    :catchall_80
    move-exception v2

    if-eqz v1, :cond_96

    invoke-virtual {v1}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->hasRegisteredListeners()Z

    move-result v3

    if-eqz v3, :cond_96

    .line 171
    iget-object v3, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 172
    :try_start_8c
    iget-object v4, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    monitor-exit v3

    goto :goto_96

    :catchall_93
    move-exception v2

    monitor-exit v3
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_93

    throw v2

    .line 175
    :cond_96
    :goto_96
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    .line 176
    throw v2
.end method

.method public whitelist areVendorSessionsSupported()Z
    .registers 3

    .line 203
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/VibratorManager;->hasCapabilities(I)Z

    move-result v0

    return v0
.end method

.method public whitelist cancel()V
    .registers 3

    .line 250
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_c

    .line 251
    const-string v0, "Vibrator"

    const-string v1, "Failed to cancel vibrate; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 254
    :cond_c
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0}, Landroid/os/VibratorManager;->cancel()V

    .line 255
    return-void
.end method

.method public blacklist cancel(I)V
    .registers 4
    .param p1, "usageFilter"    # I

    .line 259
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_c

    .line 260
    const-string v0, "Vibrator"

    const-string v1, "Failed to cancel vibrate; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    .line 263
    :cond_c
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0, p1}, Landroid/os/VibratorManager;->cancel(I)V

    .line 264
    return-void
.end method

.method public blacklist getInfo()Landroid/os/VibratorInfo;
    .registers 9

    .line 70
    iget-object v0, p0, Landroid/os/SystemVibrator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    if-eqz v1, :cond_b

    .line 72
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v1

    .line 74
    :cond_b
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v1, :cond_1a

    .line 75
    const-string v1, "Vibrator"

    const-string v2, "Failed to retrieve vibrator info; no vibrator manager."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v1, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v1

    .line 78
    :cond_1a
    invoke-direct {p0}, Landroid/os/SystemVibrator;->getVibratorIds()[I

    move-result-object v1

    .line 79
    .local v1, "vibratorIds":[I
    if-nez v1, :cond_2b

    .line 80
    const-string v2, "Vibrator"

    const-string v3, "Failed to retrieve vibrator info; error retrieving vibrator ids."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v2, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v2

    .line 83
    :cond_2b
    array-length v2, v1

    if-nez v2, :cond_34

    .line 86
    sget-object v2, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    iput-object v2, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v2

    .line 88
    :cond_34
    array-length v2, v1

    new-array v2, v2, [Landroid/os/VibratorInfo;

    .line 89
    .local v2, "vibratorInfos":[Landroid/os/VibratorInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_38
    array-length v4, v1

    if-ge v3, v4, :cond_6e

    .line 90
    iget-object v4, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    aget v5, v1, v3

    invoke-virtual {v4, v5}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v4

    .line 91
    .local v4, "vibrator":Landroid/os/Vibrator;
    instance-of v5, v4, Landroid/os/NullVibrator;

    if-eqz v5, :cond_65

    .line 92
    const-string v5, "Vibrator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Vibrator manager service not ready; Info not yet available for vibrator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v5, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v5

    .line 98
    :cond_65
    invoke-virtual {v4}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v5

    aput-object v5, v2, v3

    .line 89
    .end local v4    # "vibrator":Landroid/os/Vibrator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 100
    .end local v3    # "i":I
    :cond_6e
    const/4 v3, -0x1

    invoke-static {v3, v2}, Landroid/os/vibrator/VibratorInfoFactory;->create(I[Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo;

    move-result-object v3

    iput-object v3, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v3

    .line 101
    .end local v1    # "vibratorIds":[I
    .end local v2    # "vibratorInfos":[Landroid/os/VibratorInfo;
    :catchall_77
    move-exception v1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_77

    throw v1
.end method

.method public whitelist hasAmplitudeControl()Z
    .registers 2

    .line 198
    invoke-virtual {p0}, Landroid/os/SystemVibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->hasAmplitudeControl()Z

    move-result v0

    return v0
.end method

.method public whitelist hasVibrator()Z
    .registers 5

    .line 106
    invoke-direct {p0}, Landroid/os/SystemVibrator;->getVibratorIds()[I

    move-result-object v0

    .line 107
    .local v0, "vibratorIds":[I
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 108
    const-string v2, "Vibrator"

    const-string v3, "Failed to check if vibrator exists; no vibrator manager."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v1

    .line 111
    :cond_f
    array-length v2, v0

    if-lez v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public whitelist isVibrating()Z
    .registers 7

    .line 116
    invoke-direct {p0}, Landroid/os/SystemVibrator;->getVibratorIds()[I

    move-result-object v0

    .line 117
    .local v0, "vibratorIds":[I
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 118
    const-string v2, "Vibrator"

    const-string v3, "Failed to vibrate; no vibrator manager."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v1

    .line 121
    :cond_f
    array-length v2, v0

    move v3, v1

    :goto_11
    if-ge v3, v2, :cond_26

    aget v4, v0, v3

    .line 122
    .local v4, "vibratorId":I
    iget-object v5, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v5, v4}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Vibrator;->isVibrating()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 123
    const/4 v1, 0x1

    return v1

    .line 121
    .end local v4    # "vibratorId":I
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 126
    :cond_26
    return v1
.end method

.method public blacklist performHapticFeedback(ILjava/lang/String;II)V
    .registers 7
    .param p1, "constant"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "privFlags"    # I

    .line 230
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_c

    .line 231
    const-string v0, "Vibrator"

    const-string v1, "Failed to perform haptic feedback; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 234
    :cond_c
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/VibratorManager;->performHapticFeedback(ILjava/lang/String;II)V

    .line 235
    return-void
.end method

.method public blacklist performHapticFeedbackForInputDevice(IIILjava/lang/String;II)V
    .registers 16
    .param p1, "constant"    # I
    .param p2, "inputDeviceId"    # I
    .param p3, "inputSource"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "privFlags"    # I

    .line 240
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_c

    .line 241
    const-string v0, "Vibrator"

    const-string v1, "Failed to perform haptic feedback for input device; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void

    .line 244
    :cond_c
    iget-object v2, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    .end local p1    # "constant":I
    .end local p2    # "inputDeviceId":I
    .end local p3    # "inputSource":I
    .end local p4    # "reason":Ljava/lang/String;
    .end local p5    # "flags":I
    .end local p6    # "privFlags":I
    .local v3, "constant":I
    .local v4, "inputDeviceId":I
    .local v5, "inputSource":I
    .local v6, "reason":Ljava/lang/String;
    .local v7, "flags":I
    .local v8, "privFlags":I
    invoke-virtual/range {v2 .. v8}, Landroid/os/VibratorManager;->performHapticFeedbackForInputDevice(IIILjava/lang/String;II)V

    .line 246
    return-void
.end method

.method public whitelist removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 181
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_f

    .line 183
    const-string v0, "Vibrator"

    const-string v1, "Failed to remove vibrate state listener; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 186
    :cond_f
    iget-object v0, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 187
    :try_start_12
    iget-object v1, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 188
    iget-object v1, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator$MultiVibratorStateListener;

    .line 189
    .local v1, "delegate":Landroid/os/SystemVibrator$MultiVibratorStateListener;
    iget-object v2, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v1, v2}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->unregister(Landroid/os/VibratorManager;)V

    .line 190
    iget-object v2, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v1    # "delegate":Landroid/os/SystemVibrator$MultiVibratorStateListener;
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_31

    .line 193
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    .line 194
    return-void

    .line 192
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .registers 13
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "alwaysOnId"    # I
    .param p4, "effect"    # Landroid/os/VibrationEffect;
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;

    .line 209
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_d

    .line 210
    const-string v0, "Vibrator"

    const-string v1, "Failed to set always-on effect; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_d
    invoke-static {p4}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v5

    .line 214
    .local v5, "combinedEffect":Landroid/os/CombinedVibration;
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p5

    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "alwaysOnId":I
    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    .local v2, "uid":I
    .local v3, "opPkg":Ljava/lang/String;
    .local v4, "alwaysOnId":I
    .local v6, "attrs":Landroid/os/VibrationAttributes;
    invoke-virtual/range {v1 .. v6}, Landroid/os/VibratorManager;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z

    move-result p1

    return p1
.end method

.method public whitelist startVendorSession(Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/vibrator/VendorVibrationSession$Callback;)V
    .registers 14
    .param p1, "attrs"    # Landroid/os/VibrationAttributes;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/os/vibrator/VendorVibrationSession$Callback;

    .line 270
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    const-string v1, "Vibrator"

    if-nez v0, :cond_14

    .line 271
    const-string v0, "Failed to start vibration session; no vibrator manager."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v0, Landroid/os/SystemVibrator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p5}, Landroid/os/SystemVibrator$$ExternalSyntheticLambda0;-><init>(Landroid/os/vibrator/VendorVibrationSession$Callback;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 274
    return-void

    .line 276
    :cond_14
    invoke-direct {p0}, Landroid/os/SystemVibrator;->getVibratorIds()[I

    move-result-object v2

    .line 277
    .local v2, "vibratorIds":[I
    if-nez v2, :cond_28

    .line 278
    const-string v0, "Failed to start vibration session; error retrieving vibrator ids."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Landroid/os/SystemVibrator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p5}, Landroid/os/SystemVibrator$$ExternalSyntheticLambda1;-><init>(Landroid/os/vibrator/VendorVibrationSession$Callback;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 281
    return-void

    .line 283
    :cond_28
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "attrs":Landroid/os/VibrationAttributes;
    .end local p2    # "reason":Ljava/lang/String;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "callback":Landroid/os/vibrator/VendorVibrationSession$Callback;
    .local v3, "attrs":Landroid/os/VibrationAttributes;
    .local v4, "reason":Ljava/lang/String;
    .local v5, "cancellationSignal":Landroid/os/CancellationSignal;
    .local v6, "executor":Ljava/util/concurrent/Executor;
    .local v7, "callback":Landroid/os/vibrator/VendorVibrationSession$Callback;
    invoke-virtual/range {v1 .. v7}, Landroid/os/VibratorManager;->startVendorSession([ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/vibrator/VendorVibrationSession$Callback;)V

    .line 285
    return-void
.end method

.method public blacklist vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;

    .line 220
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_c

    .line 221
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 224
    :cond_c
    invoke-static {p3}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v5

    .line 225
    .local v5, "combinedEffect":Landroid/os/CombinedVibration;
    iget-object v2, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    move v3, p1

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p4    # "reason":Ljava/lang/String;
    .end local p5    # "attributes":Landroid/os/VibrationAttributes;
    .local v3, "uid":I
    .local v4, "opPkg":Ljava/lang/String;
    .local v6, "reason":Ljava/lang/String;
    .local v7, "attributes":Landroid/os/VibrationAttributes;
    invoke-virtual/range {v2 .. v7}, Landroid/os/VibratorManager;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 226
    return-void
.end method
