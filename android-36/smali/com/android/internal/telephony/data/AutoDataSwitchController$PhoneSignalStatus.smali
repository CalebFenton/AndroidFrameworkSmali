.class Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;
.super Ljava/lang/Object;
.source "AutoDataSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/AutoDataSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneSignalStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;
    }
.end annotation


# instance fields
.field private blacklist mDataRegState:I

.field private blacklist mDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private blacklist mListeningForEvents:Z

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mSignalStrength:Landroid/telephony/SignalStrength;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataRegState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mDataRegState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListeningForEvents(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mListeningForEvents:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSignalStrength(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Landroid/telephony/SignalStrength;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDataRegState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mDataRegState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisplayInfo(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmListeningForEvents(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mListeningForEvents:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSignalStrength(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;Landroid/telephony/SignalStrength;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRatSignalScore(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->getRatSignalScore()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetUsableState(Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;)Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->getUsableState()Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 282
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mDataRegState:I

    .line 286
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/DisplayInfoController;->getTelephonyDisplayInfo()Landroid/telephony/TelephonyDisplayInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 287
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/AutoDataSwitchController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method private blacklist getRatSignalScore()I
    .registers 3

    .line 295
    iget v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mDataRegState:I

    invoke-static {v0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->-$$Nest$smisInService(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 296
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 297
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchScore(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/SignalStrength;)I

    move-result p0

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getUsableState()Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 306
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 308
    :goto_12
    iget v2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mDataRegState:I

    if-eq v2, v1, :cond_44

    const/4 v1, 0x5

    if-eq v2, v1, :cond_1c

    .line 325
    sget-object p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->NOT_USABLE:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    return-object p0

    :cond_1c
    if-eqz v0, :cond_31

    .line 315
    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isIgnoringDataRoamingSettingForSatellite()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 317
    sget-object p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->NON_TERRESTRIAL:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    return-object p0

    .line 319
    :cond_31
    iget-object p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataRoamingEnabled()Z

    move-result p0

    if-eqz p0, :cond_41

    if-eqz v0, :cond_3e

    .line 321
    sget-object p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->NON_TERRESTRIAL:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    return-object p0

    :cond_3e
    sget-object p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->ROAMING_ENABLED:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    return-object p0

    .line 323
    :cond_41
    sget-object p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->NOT_USABLE:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    return-object p0

    :cond_44
    if-eqz v0, :cond_49

    .line 311
    sget-object p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->NON_TERRESTRIAL:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    return-object p0

    :cond_49
    sget-object p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;->HOME:Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    return-object p0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->getRatSignalScore()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dataRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mDataRegState:I

    .line 333
    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->getUsableState()Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus$UsableState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " signalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 335
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listeningForEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$PhoneSignalStatus;->mListeningForEvents:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
