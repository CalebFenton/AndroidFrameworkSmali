.class Lcom/android/internal/telephony/MultiSimSettingController$DataSettingsControllerCallback;
.super Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
.source "MultiSimSettingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MultiSimSettingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataSettingsControllerCallback"
.end annotation


# instance fields
.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 176
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    .line 177
    iput-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController$DataSettingsControllerCallback;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method


# virtual methods
.method public blacklist onDataRoamingEnabledChanged(Z)V
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController$DataSettingsControllerCallback;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 194
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 195
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController$DataSettingsControllerCallback;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->notifyRoamingDataEnabled(IZ)V

    :cond_19
    return-void
.end method

.method public blacklist onUserDataEnabledChanged(ZLjava/lang/String;)V
    .registers 4

    .line 182
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController$DataSettingsControllerCallback;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    .line 185
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 186
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    .line 187
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->notifyUserDataEnabled(IZ)V

    :cond_23
    return-void
.end method
