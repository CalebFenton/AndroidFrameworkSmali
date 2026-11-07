.class Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;
.super Ljava/lang/Object;
.source "RadioConfigProxy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RadioConfigProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RadioConfigAidlServiceDeathRecipient"
.end annotation


# instance fields
.field private final blacklist mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

.field private blacklist mService:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/RadioConfig;)V
    .registers 2

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 346
    const-string v0, "RadioConfigAidlSDR"

    const-string v1, "service died."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;->unlinkToDeath()V

    .line 348
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    const/4 v0, 0x2

    .line 349
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 348
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist clear()V
    .registers 2

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;->mService:Landroid/os/IBinder;

    return-void
.end method

.method public blacklist linkToDeath(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_8

    .line 324
    invoke-interface {v0, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void

    .line 326
    :cond_8
    const-string p0, "RadioConfigAidlSDR"

    const-string p1, "linkToDeath: skipping since mService is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setService(Landroid/os/IBinder;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;->mService:Landroid/os/IBinder;

    return-void
.end method

.method public declared-synchronized blacklist unlinkToDeath()V
    .registers 3

    monitor-enter p0

    .line 338
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 339
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;->mService:Landroid/os/IBinder;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception v0

    goto :goto_11

    .line 342
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_d

    throw v0
.end method
