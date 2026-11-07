.class Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;
.super Ljava/lang/Object;
.source "RadioConfigProxy.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RadioConfigProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RadioConfigHidlServiceDeathRecipient"
.end annotation


# instance fields
.field private final blacklist mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

.field private blacklist mService:Landroid/hardware/radio/config/V1_1/IRadioConfig;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/RadioConfig;)V
    .registers 2

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;->mService:Landroid/hardware/radio/config/V1_1/IRadioConfig;

    return-void
.end method

.method public blacklist linkToDeath(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;->mService:Landroid/hardware/radio/config/V1_1/IRadioConfig;

    if-eqz v0, :cond_8

    .line 285
    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/radio/config/V1_1/IRadioConfig;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    return-void

    .line 287
    :cond_8
    const-string p0, "RadioConfigHidlSDR"

    const-string p1, "linkToDeath: skipping since mService is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist serviceDied(J)V
    .registers 5

    .line 298
    const-string v0, "RadioConfigHidlSDR"

    const-string v1, "serviceDied"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 300
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 299
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist setService(Landroid/hardware/radio/config/V1_1/IRadioConfig;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;->mService:Landroid/hardware/radio/config/V1_1/IRadioConfig;

    return-void
.end method
