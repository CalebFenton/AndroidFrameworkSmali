.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "ConsumerIrService.java"


# static fields
.field private static final MAX_XMIT_TIME:I = 0x1e8480

.field private static final TAG:Ljava/lang/String; = "ConsumerIrService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHalLock:Ljava/lang/Object;

.field private final mNativeHal:J

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 41
    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    #@6
    .line 39
    new-instance v1, Ljava/lang/Object;

    #@8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    #@d
    .line 42
    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    #@f
    .line 44
    const-string/jumbo v1, "power"

    #@12
    .line 43
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/os/PowerManager;

    #@18
    .line 45
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "ConsumerIrService"

    #@1b
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@21
    .line 46
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@23
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@26
    .line 48
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halOpen()J

    #@29
    move-result-wide v2

    #@2a
    iput-wide v2, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    #@2c
    .line 49
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    #@2e
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@31
    move-result-object v1

    #@32
    const-string/jumbo v2, "android.hardware.consumerir"

    #@35
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_0

    #@3b
    .line 50
    iget-wide v2, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    #@3d
    cmp-long v1, v2, v4

    #@3f
    if-nez v1, :cond_1

    #@41
    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    #@43
    const-string/jumbo v2, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    #@46
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@49
    throw v1

    #@4a
    .line 53
    :cond_0
    iget-wide v2, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    #@4c
    cmp-long v1, v2, v4

    #@4e
    if-eqz v1, :cond_1

    #@50
    .line 54
    new-instance v1, Ljava/lang/RuntimeException;

    #@52
    const-string/jumbo v2, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    #@55
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@58
    throw v1

    #@59
    .line 41
    :cond_1
    return-void
.end method

.method private static native halGetCarrierFrequencies(J)[I
.end method

.method private static native halOpen()J
.end method

.method private static native halTransmit(JI[I)I
.end method

.method private throwIfNoIrEmitter()V
    .locals 4

    #@0
    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@a
    const-string/jumbo v1, "IR emitter not available"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public getCarrierFrequencies()[I
    .locals 4

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.TRANSMIT_IR"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 106
    new-instance v0, Ljava/lang/SecurityException;

    #@d
    const-string/jumbo v1, "Requires TRANSMIT_IR permission"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    #@17
    .line 111
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    #@19
    monitor-enter v1

    #@1a
    .line 112
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    #@1c
    invoke-static {v2, v3}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies(J)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v0

    #@20
    monitor-exit v1

    #@21
    return-object v0

    #@22
    .line 111
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method

.method public hasIrEmitter()Z
    .locals 4

    #@0
    .prologue
    .line 60
    iget-wide v0, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public transmit(Ljava/lang/String;I[I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "carrierFrequency"    # I
    .param p3, "pattern"    # [I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 72
    iget-object v5, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v6, "android.permission.TRANSMIT_IR"

    #@6
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 74
    new-instance v4, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v5, "Requires TRANSMIT_IR permission"

    #@11
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v4

    #@15
    .line 77
    :cond_0
    const-wide/16 v2, 0x0

    #@17
    .line 79
    .local v2, "totalXmitTime":J
    array-length v5, p3

    #@18
    :goto_0
    if-ge v4, v5, :cond_2

    #@1a
    aget v1, p3, v4

    #@1c
    .line 80
    .local v1, "slice":I
    if-gtz v1, :cond_1

    #@1e
    .line 81
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v5, "Non-positive IR slice"

    #@23
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v4

    #@27
    .line 83
    :cond_1
    int-to-long v6, v1

    #@28
    add-long/2addr v2, v6

    #@29
    .line 79
    add-int/lit8 v4, v4, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 86
    .end local v1    # "slice":I
    :cond_2
    const-wide/32 v4, 0x1e8480

    #@2f
    cmp-long v4, v2, v4

    #@31
    if-lez v4, :cond_3

    #@33
    .line 87
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@35
    const-string/jumbo v5, "IR pattern too long"

    #@38
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v4

    #@3c
    .line 90
    :cond_3
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    #@3f
    .line 93
    iget-object v5, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    #@41
    monitor-enter v5

    #@42
    .line 94
    :try_start_0
    iget-wide v6, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    #@44
    invoke-static {v6, v7, p2, p3}, Lcom/android/server/ConsumerIrService;->halTransmit(JI[I)I

    #@47
    move-result v0

    #@48
    .line 96
    .local v0, "err":I
    if-gez v0, :cond_4

    #@4a
    .line 97
    const-string/jumbo v4, "ConsumerIrService"

    #@4d
    new-instance v6, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v7, "Error transmitting: "

    #@55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v6

    #@61
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    :cond_4
    monitor-exit v5

    #@65
    .line 71
    return-void

    #@66
    .line 93
    .end local v0    # "err":I
    :catchall_0
    move-exception v4

    #@67
    monitor-exit v5

    #@68
    throw v4
.end method
