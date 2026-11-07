.class public Lcom/android/internal/telephony/emergency/RadioOnHelper;
.super Ljava/lang/Object;
.source "RadioOnHelper.java"

# interfaces
.implements Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;


# instance fields
.field private blacklist mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mInProgressListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/emergency/RadioOnStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsRadioReady:Z

.field private blacklist mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/emergency/RadioOnStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mContext:Landroid/content/Context;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mInProgressListeners:Ljava/util/List;

    return-void
.end method

.method private blacklist powerOffSatellite()V
    .registers 3

    .line 154
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/android/internal/telephony/emergency/RadioOnHelper$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/emergency/RadioOnHelper$1;-><init>(Lcom/android/internal/telephony/emergency/RadioOnHelper;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p0, p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V

    return-void
.end method

.method private blacklist powerOnRadio(ZLcom/android/internal/telephony/Phone;Z)V
    .registers 11

    .line 120
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    const-string v4, "RadioOnStateListener"

    if-ge v3, v1, :cond_28

    aget-object v5, v0, v3

    .line 121
    const-string v6, "powerOnRadio, enabling Radio"

    invoke-static {v4, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-eqz p3, :cond_1d

    if-ne v5, p2, :cond_18

    goto :goto_19

    :cond_18
    move v4, v2

    .line 123
    :goto_19
    invoke-interface {v5, v4}, Lcom/android/internal/telephony/PhoneInternalInterface;->setRadioPowerOnForTestEmergencyCall(Z)V

    goto :goto_25

    :cond_1d
    if-ne v5, p2, :cond_21

    move v6, v4

    goto :goto_22

    :cond_21
    move v6, v2

    .line 125
    :goto_22
    invoke-interface {v5, v4, p1, v6, v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->setRadioPower(ZZZZ)V

    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 132
    :cond_28
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "airplane_mode_on"

    invoke-static {p1, p2, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_57

    .line 134
    const-string p1, "==> Turning off airplane mode for emergency call."

    invoke-static {v4, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    const-string p2, "state"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_57
    return-void
.end method

.method private blacklist setupListeners()V
    .registers 4

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    if-nez v0, :cond_c

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    .line 60
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 62
    :goto_16
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_29

    .line 63
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    new-instance v2, Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-direct {v2}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 66
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_4e

    .line 67
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-virtual {v1}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->cleanup()V

    .line 68
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_29

    :cond_4e
    return-void
.end method


# virtual methods
.method public blacklist isOkToCall(Lcom/android/internal/telephony/Phone;IZ)Z
    .registers 4

    .line 180
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 181
    :cond_6
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;->isOkToCall(Lcom/android/internal/telephony/Phone;IZ)Z

    move-result p0

    return p0
.end method

.method public blacklist onComplete(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Z)V
    .registers 4

    .line 171
    iget-boolean v0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mIsRadioReady:Z

    or-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mIsRadioReady:Z

    .line 172
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mInProgressListeners:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 173
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mInProgressListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 174
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    const/4 p2, 0x0

    iget-boolean p0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mIsRadioReady:Z

    invoke-interface {p1, p2, p0}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;->onComplete(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Z)V

    :cond_1e
    return-void
.end method

.method public blacklist onTimeout(Lcom/android/internal/telephony/Phone;IZ)Z
    .registers 4

    .line 186
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 187
    :cond_6
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;->onTimeout(Lcom/android/internal/telephony/Phone;IZ)Z

    move-result p0

    return p0
.end method

.method public blacklist triggerRadioOnAndListen(Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;ZLcom/android/internal/telephony/Phone;ZI)V
    .registers 14

    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/RadioOnHelper;->setupListeners()V

    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mCallback:Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;

    .line 91
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mInProgressListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mIsRadioReady:Z

    move v0, p1

    .line 93
    :goto_e
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 94
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_23

    move-object v4, p0

    move v5, p2

    goto :goto_4c

    :cond_23
    if-ne v3, p3, :cond_27

    move v7, p5

    goto :goto_28

    :cond_27
    move v7, p1

    .line 101
    :goto_28
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mInProgressListeners:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/RadioOnHelper;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/emergency/RadioOnStateListener;

    if-eqz p2, :cond_47

    if-ne v3, p3, :cond_47

    const/4 v1, 0x1

    move v6, v1

    :goto_44
    move-object v4, p0

    move v5, p2

    goto :goto_49

    :cond_47
    move v6, p1

    goto :goto_44

    :goto_49
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/emergency/RadioOnStateListener;->waitForRadioOn(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;ZZI)V

    :goto_4c
    add-int/lit8 v0, v0, 0x1

    move-object p0, v4

    move p2, v5

    goto :goto_e

    :cond_51
    move-object v4, p0

    move v5, p2

    .line 105
    invoke-direct {v4, v5, p3, p4}, Lcom/android/internal/telephony/emergency/RadioOnHelper;->powerOnRadio(ZLcom/android/internal/telephony/Phone;Z)V

    .line 106
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEnabledOrBeingEnabled()Z

    move-result p0

    if-eqz p0, :cond_63

    .line 107
    invoke-direct {v4}, Lcom/android/internal/telephony/emergency/RadioOnHelper;->powerOffSatellite()V

    :cond_63
    return-void
.end method
